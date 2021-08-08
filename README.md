# Solution Builder for LabVIEW

Solution Builder is a tool for building LabVIEW project build specifications in the correct order and, when some of those build specifications generate *Packed Project Libraries* (PPL, which have a .lvlibp extension), replacement are made in memory to allow dependent components to relink to build output instead of the original source.

## Table of Contents

- [List of Features](#list-of-features)
- [Minimum Compatible LabVIEW Version](#minimum-compatible-labview-version)
- [Use Case](#use-case)
- [Usage](#usage)
- [How to Build](#how-to-build)
- [How to Test](#how-to-test)
- [Contributions](#contributions)
- [Known Issues](#known-issues)

## List of Features


<table>
<tr><td style="text-align:center;font-weight:bold">Feature Description</td><td style="text-align:center;font-weight:bold">Minimum Version</td></tr>
<tr><td>

Accepts the following inputs:

- A single project file
- A directory containing project files to build in 1 session
- A custom file that defines which projects to build in 1 session

See [Usage](#usage).

</td><td>1.0.1</td></tr><tr><td>

Supports building of all Build Specifications.
>Note: Zip files operate on files on disk, not files and their changes currently only in memory.

</td><td>1.0.1</td></tr><tr><td>

Does not make a copy of the source before building nor does the tool modify the original source code. Changes are made in memory.

</td><td>1.0.1</td></tr><tr><td>

Has mechanism to provides the path to a pre-built Packed Library so its source Library can be replaced at build-time. See [Usage](#usage).

</td><td>1.0.1</td></tr><tr><td>

Supports the use of customized Build Specifications.

</td><td>1.0.1</td></tr><tr><td>

Can be invoked from the command-line. See [Invoking by Command-line](#invoking-by-command-line).

</td><td>1.0.1</td></tr><tr><td>

Support building the Build Specifications specified under different Targets within the project. Refer to the tests for examples.

</td><td>1.0.1</td></tr><tr><td>

Support replacing a PPL with a Target-specific PPL at build-time.

</td><td>1.0.1</td></tr><tr><td>

Incremental builds. When building, a `.incrb` file is generated next to the project/solution file keeping track of files that last built.

</td><td>1.0.2</td></tr>
</table>

## Minimum Compatible LabVIEW Version

__LabVIEW 2019 SP1__ - Solution Builder uses a VI Server method introduced in LabVIEW 2019 to replace project items in memory, and benefits from improvements made to SP1 for in-memory replacement.

This tool is maintained using:

|Name|Version|
|---|---|
|LabVIEW 2019|19.0.1f3|
|LabVIEW Real-Time Module*|2019 f1|
|NI CompactRIO*|19.6|

>Note: * These modules only installed to test multi-target build support and are __not required__ for the tool to work as expected.

## Use Case

### Common Source File Layout And Dependency Relationships

Source files are commonly organized by Component containing all related files and functionality. Dependencies for source files can span across components given that all the source is on disk when pulling a Git Repo.

#### Source Files on Disk

The following example shows the file structure of source files.

<table>
<tr><td style="text-align:center;font-weight:bold">Component A</td><td style="text-align:center;font-weight:bold">Component B</td></tr>
<tr><td>

```
MyAppRepo
└── obj/
└── releases/
└── src/Component A/
	└── myProjectA.lvproj
	└── CompA.lvlib
	└── myProgram.vi (CompA.lvlib:myProgram.vi)
```

</td><td>


```
MyAppRepo
└── obj/
└── releases/
└── src/Component B/
	└── myProjectB.lvproj
	└── CompB.lvlib
	└── myFunction.vi (CompB.lvlib:myFunction.vi)
```

</td></tr></table>

Where `CompA.lvlib:myProgram.vi` calls and depends on `CompB.lvlib:myFunction.vi`. Loading both of these source VIs from disks succeeds.

#### LabVIEW Project Structure

The following example shows the structure of the LabVIEW project files.

<table>
<tr><td style="text-align:center;font-weight:bold">myProjectA.lvproj</td><td style="text-align:center;font-weight:bold">myProjectB.lvproj</td></tr>
<tr><td>

```
└── My Computer
    └── CompA.lvlib
        └── myProgram.vi (CompA.lvlib:myProgram.vi)
    └── Dependencies
        └── CompB.lvlib
            └── myFunction.vi (CompB.lvlib:myFunction.vi)
    └── Build Specifications
        └── ComponentA (Packed Library)
```

</td><td>


```
└── My Computer
    └── CompB.lvlib
        └── myFunction.vi (CompB.lvlib:myFunction.vi)
    └── Dependencies
    └── Build Specifications
        └── ComponentB (Packed Library)
 
 
```

</td></tr>
</table>

Where the project Build Specifications have the additional Exclusions as follows:

- [ ] Disconnect type definitions
- [ ] Remove unused polymorphic VI instances
- [ ] Remove unused members of project libraries
- [x] __Exclude dependent packed libraries__
- [ ] Exclude dependent shared libraries

### Build Artifacts and Layout

Using the current LabVIEW Application Builder, the build results are not in the desired state because the build results are as follows:

<table>
<tr><td style="text-align:center;font-weight:bold">Component A</td><td style="text-align:center;font-weight:bold">Component B</td></tr>
<tr><td>

```
MyAppRepo
└── obj/
	└── CompA.lvlibp
		└── myProgram.vi (CompA.lvlibp:myProgram.vi)
		└── CompB.lvlib (CompA.lvlibp:CompB.lvlib)
			└── myFunction.vi (CompA.lvlibp:CompB.lvlib:myFunction.vi)
└── src/Component A/
```

</td><td>


```
MyAppRepo
└── obj/
	└── CompB.lvlibp
		└── myProgram.vi (CompB.lvlibp:myFunction.vi)
└── src/Component B/
 
 
```

</td></tr>
</table>

Where `Component B` is correctly built because it has not dependencies, but notice that `Component A` pulled in its own copy of its dependency where `CompA.lvlibp:myProgram.vi` calls and depends on `CompA.lvlibp:CompB.lvlib:myFunction.vi` which is not what we want. 

> Note: The exception exists when this is the desired state for shared helper code that, for isolution from revisional and breaking changes, we do want to pull in that namespaced copy.

Instead, for major components that are versioned like in our example, the desired state is that when `Component A` builds it switches its dependency to the built packed libary of `Component B` at build-time resulting in the following:

<table>
<tr><td style="text-align:center;font-weight:bold">Component A</td><td style="text-align:center;font-weight:bold">Component B</td></tr>
<tr><td>

```
MyAppRepo
└── obj/
	└── CompA.lvlibp
		└── myProgram.vi (CompA.lvlibp:myProgram.vi) -- depends on -->
└── src/Component A/
```

</td><td>


```
MyAppRepo
└── obj/
	└── CompB.lvlibp
		└── myFunction.vi (CompB.lvlibp:myFunction.vi)
└── src/Component B/
```

</td></tr>
</table>

Where `CompA.lvlibp:myProgram.vi` calls and depends on `CompB.lvlibp:myFunction.vi` looking similar to source namespacing and component boundaries.

### Cascading Packed Library Builds

To accomplish the correct build result the build needs to calculate the build order and then replace links to build results before building the next caller in the following fashion.

1. Analyze projects and their dependencies
1. Order the build specifications bottom-up
1. Build the first items with no dependencies
1. Find the next level that needs to build, whose dependencies have been built
1. Relink that next level to depend on the built components
1. Build that next level
1. Repeat the process from step 3 until there is nothing left to build.

### Multiple PPLs and Build Specification in a Single Project

The following example shows the structure of the LabVIEW project files and result when a single project contains multiple libraries that depend on each other and produce separate PPLs.

<table>
<tr><td style="text-align:center;font-weight:bold">myProjectA.lvproj (Source)</td><td style="text-align:center;font-weight:bold">Component A (Build Result)</td></tr>
<tr><td>

```
└── My Computer
    └── CompA.lvlib
        └── myProgram.vi (CompA.lvlib:myProgram.vi)
    └── subCompC.lvlib
        └── myFunctionC.vi (subCompC.lvlib:myFunctionC.vi)
    └── subCompD.lvlib
        └── myFunctionD.vi (subCompD.lvlib:myFunctionD.vi)
    └── Dependencies
        └── CompB.lvlib
            └── myFunction.vi (CompB.lvlib:myFunction.vi)
    └── Build Specifications
        └── ComponentA (Packed Library)
        └── subComponentC (Packed Library)
        └── subComponentD (Packed Library)
```

</td><td>


```
MyAppRepo
└── obj/
	└── CompA.lvlibp
		└── myProgram.vi (CompA.lvlibp:myProgram.vi)
	└── subCompC.lvlibp
		└── myFunctionC.vi (subCompC.lvlibp:myFunctionC.vi)
	└── subCompD.lvlibp
		└── myFunctionD.vi (subCompD.lvlibp:myFunctionD.vi)
└── src/Component A/
└── src/subComponent C/
└── src/subComponent D/



```

</td></tr>
</table>


## Usage

Solution Builder can be operated on through its user interface or [by command-line](#invoking-by-command-line).

![Solution Builder UI](docs/SolutionBuilderUI.png)

* __Path__ : Path to the file or folder to execute on. The following are accepted:

<table>
<tr><td style="text-align:center;font-weight:bold">Example</td><td style="text-align:center;font-weight:bold">Explanation</td></tr>
<tr><td>C:\This\Folder</td><td>Folder containing .lvproj files (all files will be processed as one)</td></tr>
<tr><td>C:\This\Folder\Project.lvproj</td><td>A single .lvproj file (only this file will be processed)</td></tr>
<tr><td>C:\This\Folder\solution file.slnfile</td><td>A file (the extension is ignored) listing the projects to build and any associated pre-built PPLs needed to build the projects.)</td></tr>
</table>

* __Log file path__ : Path to the file containing log information regarding decisions to rebuild an item or skip it because a previous build was deemed sufficient.

* __Preview__ : Will run the algorithm to determine the dependency build order, but will not execute the projects' build specification.

* __Force Rebuild__ : Ignores the incremental build information from previous runs and rebuilds everything.

* __Cancel Build__ : Aborts a build, but waits for the current item to complete.

* __Results Table__ : Displays the found build specification outputs and show their build status.

* __Error/Warning Bar__ : Return any build errors or status from the utility.

When using a solution file, the following is an example valid content tags:
```
<Solution>
	<ProjectPath></ProjectPath>
	<AddPackedLib></AddPackedLib>
</Solution>
```

<table>
<tr><td style="text-align:center;font-weight:bold">Tag</td><td style="text-align:center;font-weight:bold">Explanation</td></tr>
<tr><td>Solution</td><td>Root node in the file</td></tr>
<tr><td>ProjectPath</td><td>Node that contains a path value used by solution builder to find build specifications. Multiple <i>ProjectPath</i> tags can be listed in a file. Valid path formats are as follows:

```
	<ProjectPath>C:\This\Is\A Windows Absolute Path.lvproj</ProjectPath>
	<ProjectPath>Relative\Path.lvproj</ProjectPath>
	<ProjectPath>..\Relative\Path.lvproj</ProjectPath>
	<ProjectPath>Relate Path/Forward Slash.lvproj</ProjectPath>
	<ProjectPath>../Relate Path/Forward Slash.lvproj</ProjectPath>
	<ProjectPath>/C/Linux/Absolute/Path.lvproj</ProjectPath>
```
</td></tr>
<tr><td>AddPackedLib</td><td>Node that contains a path value to a pre-built PPL to be used during the specified build. Multiple <i>AddPackedLib</i> tags can be listed in a file. Additionally and optionally, when a source Library is named differently than its PPL counterpart, and the Target under which to make this substitution can be listed. The following sub-token are supported:

- `PATH=` Path to specify the path to the build PPL. This sub-token is required.
- `NAME=` Name of the original library. This sub-token is optional. If no name is listed, the filename from the path will be used, minus the "p" in the extension. `ThisLib.lvlibp` will become `ThisLib.lvlib`.
- `TARGET=` Name of the project's TargetItem. This sub-token is optional. If not Target is listed, `My Computer` will be used.

Valid formats are as follows and the path can be formated similar to ProjectPath paths:

```
	<AddPackedLib>PATH=Relative\Path.lvlibp</AddPackedLib>  # Will implicitly append "::NAME=Path.lvlib::TARGET=My Computer" 
	<AddPackedLib>PATH=..\Relative\Path.lvlibp::NAME=OriginalName.lvlib</AddPackedLib>  # Will implicitly append "::TARGET=My Computer" 
	<AddPackedLib>PATH=..\Relative\OtherPath.lvlibp::NAME=OriginalName.lvlib::TARGET=cRIO-9082</AddPackedLib>
```
</td></tr>
</table>

### Invoking by Command-line

>Note: It's important to close LabVIEW between invocations of the tool from the command-line since LabVIEW only reads command-line arguments on launch. To read the new command-line arguments, LabVIEW must close and relaunch with the new arguments. To help with exiting LabVIEW between calls, use the `-Quiet` option.

Invoking the packed tool from its LLB requires a command similar to the following:

```
Path_to_repo> "C:\program files\national instruments\LabVIEW 2020\LabVIEW.exe" <path_to_llb_obj>\SolutionBuilder.llb\SolutionBuilder.vi -- -Path <path_to_some_project>\myProject.lvproj -LogFile <path_to_some_log>\file.log -Quiet -AddPackedLib PATH=<path_to_some_ppl>\TheFile.lvlibp::NAME=TheOriginalLib.lvlib::TARGET=cRIO-9068 -Rebuild
```

The accepted command-line arguments are:

- `-Path` : Path to the folder, project, or solution file. Refer to the Path token section for details.
- `-LogFile` : Path to the file containing log information regarding decisions to rebuild an item or skip it because a previous build was deemed sufficient.
- `-AddPackedLib` : Path to a pre-built PPL. Refer to the AddPackedLib token section for details.
- `-Quiet` : Auto close once build as completed (should not be used with -Preview)
- `-Preview` : Does not build but instead displays the list and build order of each build specification. Recommended for validation.
- `-Rebuild` : Ignores the incremental build information from previous runs and rebuilds everything.

### Incremental Builds

Solution Builder supports some incremental builds. This means that the tool will do its best to determine if a Project Build Specification needs to rebuild. The algorithm to determine if an build specifation needs to rebuild is as follows:

1. The `Rebuild` flag is set to `true` either from the command line or from the UI.
2. The destination of the build output does not exist.
3. The source files associated with the build specification have changed.
4. Static dependencies of the source files associated with the build specification have changed.

> Note: the tool determines that a source file has changed if the MD5 hash of a file does not match its previous hash. Hashes from previous runs are stored in a `.incrb` file next to the project/solution file.

#### **Limitations of Incremental Builds**

Source distribution currently do not know before they build which source files they are associated with. As a result, source distributions always rebuild.

## How to Build

The owning LabVIEW project contains a build specification to create a self-contained LLB.

1. Open the project
1. Right-click the build specifications and select *Build*.

## How to Test

Open and run `/src/_test/RunTheTests.vi` then verify that the results all pass.

>Note: To avoid the issue listed in the [Known Issues](#known-issues), run the main test VI directly instead of from the owning project.

## Contributions

This project welcomes Issues, Discussions, and Pull Requests.

1. Add new tests for the added functionality
1. Verify that all the tests pass (refer to the [How to Test](#how-to-test) section)
1. Submit a PR and fill out the template fully.

## Known Issues

<table>
<tr><td style="text-align:center;font-weight:bold">ID</td><td style="text-align:center;font-weight:bold">Issue</td><td style="text-align:center;font-weight:bold">Workaround</td></tr>
<tr><td>1</td><td>

When running `SolutionBuilder.vi` from its parent project, if the application returns an error, there is a possibility that on the next runs an LV Application Builder error will be returned for reasons unexplained. The error is:

```
Error 1370 occurred at an unidentified location
Possible reason(s):
LabVIEW: (Hex 0x55A) The selected build failed to complete.
```

</td><td>

There are a few ways around the issue:
<ul>
<li>Exit LabVIEW and retry to build.</li>
<li>Instead of running SolutionBuilder from its owning project, open the VI directly from `/src`.</li>
<li>Instead of running SolutionBuilder from its owning project, open the VI directly from the built release LLB.</li>
</ul>

</td></tr>

</table>
