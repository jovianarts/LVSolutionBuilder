<?xml version='1.0' encoding='UTF-8'?>
<Project Type="Project" LVVersion="19008000">
	<Property Name="NI.LV.All.SourceOnly" Type="Bool">true</Property>
	<Item Name="My Computer" Type="My Computer">
		<Property Name="server.app.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.control.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.tcp.enabled" Type="Bool">false</Property>
		<Property Name="server.tcp.port" Type="Int">0</Property>
		<Property Name="server.tcp.serviceName" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.tcp.serviceName.default" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.vi.callsEnabled" Type="Bool">true</Property>
		<Property Name="server.vi.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="specify.custom.address" Type="Bool">false</Property>
		<Item Name="Level1Class.lvlib" Type="Library" URL="../Level1Class/Level1Class.lvlib"/>
		<Item Name="Dependencies" Type="Dependencies">
			<Item Name="BaseClassDependency.lvlib" Type="Library" URL="../BaseClassDependency/BaseClassDependency.lvlib"/>
		</Item>
		<Item Name="Build Specifications" Type="Build">
			<Item Name="Level1Class" Type="Packed Library">
				<Property Name="Bld_buildCacheID" Type="Str">{720F262C-9C10-458D-BBA7-0A847861C420}</Property>
				<Property Name="Bld_buildSpecName" Type="Str">Level1Class</Property>
				<Property Name="Bld_excludeDependentPPLs" Type="Bool">true</Property>
				<Property Name="Bld_localDestDir" Type="Path">../obj/DependencyTests</Property>
				<Property Name="Bld_localDestDirType" Type="Str">relativeToCommon</Property>
				<Property Name="Bld_previewCacheID" Type="Str">{11EEE4CF-231D-4E84-8BE6-B7BD61066DFE}</Property>
				<Property Name="Bld_version.major" Type="Int">1</Property>
				<Property Name="Destination[0].destName" Type="Str">Level1Class.lvlibp</Property>
				<Property Name="Destination[0].path" Type="Path">../obj/DependencyTests/NI_AB_PROJECTNAME.lvlibp</Property>
				<Property Name="Destination[0].preserveHierarchy" Type="Bool">true</Property>
				<Property Name="Destination[0].type" Type="Str">App</Property>
				<Property Name="Destination[1].destName" Type="Str">Support Directory</Property>
				<Property Name="Destination[1].path" Type="Path">../obj/DependencyTests</Property>
				<Property Name="DestinationCount" Type="Int">2</Property>
				<Property Name="PackedLib_callersAdapt" Type="Bool">true</Property>
				<Property Name="Source[0].itemID" Type="Str">{1766539E-1FCB-490F-9936-5E879245F26A}</Property>
				<Property Name="Source[0].type" Type="Str">Container</Property>
				<Property Name="Source[1].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[1].itemID" Type="Ref">/My Computer/Level1Class.lvlib</Property>
				<Property Name="Source[1].Library.allowMissingMembers" Type="Bool">true</Property>
				<Property Name="Source[1].Library.atomicCopy" Type="Bool">true</Property>
				<Property Name="Source[1].Library.LVLIBPtopLevel" Type="Bool">true</Property>
				<Property Name="Source[1].preventRename" Type="Bool">true</Property>
				<Property Name="Source[1].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[1].type" Type="Str">Library</Property>
				<Property Name="SourceCount" Type="Int">2</Property>
				<Property Name="TgtF_companyName" Type="Str">National Instruments</Property>
				<Property Name="TgtF_fileDescription" Type="Str">Level1Class</Property>
				<Property Name="TgtF_internalName" Type="Str">Level1Class</Property>
				<Property Name="TgtF_legalCopyright" Type="Str">Copyright © 2022 National Instruments</Property>
				<Property Name="TgtF_productName" Type="Str">Level1Class</Property>
				<Property Name="TgtF_targetfileGUID" Type="Str">{AF144A82-6AB9-47DA-BC0D-E4C4D9FB91F3}</Property>
				<Property Name="TgtF_targetfileName" Type="Str">Level1Class.lvlibp</Property>
				<Property Name="TgtF_versionIndependent" Type="Bool">true</Property>
			</Item>
		</Item>
	</Item>
</Project>
