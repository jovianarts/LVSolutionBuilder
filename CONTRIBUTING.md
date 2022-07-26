# Contributing to LV Solution Builder

This project welcomes Issues, Discussions, and Pull Requests.

1. Verify that the code in your PR loads correctly with no missing VIs/dependencies.
1. Adding new command-line tokens or UI checkboxes will require documentation (README.md) updates to match. 
   - UI updates will require new screenshots.
   - Use and run the same test project as the current screenshot when creating a new one. (/src/_tests/Tests.AdvancedAssets/SplitProjectTargets.slnbld)
1. Add new tests for the added functionality.
1. Verify that all the tests pass (refer to the [How to Test](https://github.com/jovianarts/LVSolutionBuilder/blob/main/README.md#how-to-test) section).
1. Submit a PR and fill out the template fully.

## LabVIEW Coding Guidelines

This project adheres to the following coding guidelines and convensions:

1. All source code is currently in LabVIEW 2019.
1. VI names:
   - VI names do not contain spaces and are CamelCased.
   - Top-level VIs or main class method VIs have descriptive names, are not prefixed, and reside in a folder next to the class or library.
   - SubVIs only called from top-level of main class methods are prefixed with `sub` and reside in a subfolder.
   - Utility VIs are not prefixed.
1. Avoid unnecessary whitespace (gaps) on VI block diagrams, especially when moving code with nested structures, check the other cases.
1. Avoid unnecessary wire bends. If code needs to move up or down to minimize bends, do so. Also align terminals that enter and exit structures when possible.
1. Leave a little whitespace close to all edges of structures for readability.
1. VIs have icons that match the library or class they belong to. VIs not part of a class or library use an icon similar to other VIs in that saved location.
1. Keep the UI of the main VI application small and concise. Do not leave unnecessary space. UI changes will be thoroughly reviewed.


## Developer Certificate of Origin (DCO)

   Developer's Certificate of Origin 1.1

   By making a contribution to this project, I certify that:

   (a) The contribution was created in whole or in part by me and I
       have the right to submit it under the open source license
       indicated in the file; or

   (b) The contribution is based upon previous work that, to the best
       of my knowledge, is covered under an appropriate open source
       license and I have the right under that license to submit that
       work with modifications, whether created in whole or in part
       by me, under the same open source license (unless I am
       permitted to submit under a different license), as indicated
       in the file; or

   (c) The contribution was provided directly to me by some other
       person who certified (a), (b) or (c) and I have not modified
       it.

   (d) I understand and agree that this project and the contribution
       are public and that a record of the contribution (including all
       personal information I submit with it, including my sign-off) is
       maintained indefinitely and may be redistributed consistent with
       this project or the open source license(s) involved.

(taken from [developercertificate.org](https://developercertificate.org/))

See [LICENSE](https://github.com/jovianarts/LVSolutionBuilder/blob/main/LICENSE)
for details about how LV Solution Builder is licensed.