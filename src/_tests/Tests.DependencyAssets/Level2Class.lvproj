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
		<Item Name="Level2Class.lvlib" Type="Library" URL="../Level2Class/Level2Class.lvlib"/>
		<Item Name="Dependencies" Type="Dependencies">
			<Item Name="BaseClassDependency.lvlib" Type="Library" URL="../BaseClassDependency/BaseClassDependency.lvlib"/>
			<Item Name="Level1Class.lvlib" Type="Library" URL="../Level1Class/Level1Class.lvlib"/>
		</Item>
		<Item Name="Build Specifications" Type="Build">
			<Item Name="Level2Class" Type="Packed Library">
				<Property Name="Bld_buildCacheID" Type="Str">{01FAE21A-F1E0-41E1-9C53-E29000BDE026}</Property>
				<Property Name="Bld_buildSpecName" Type="Str">Level2Class</Property>
				<Property Name="Bld_excludeDependentPPLs" Type="Bool">true</Property>
				<Property Name="Bld_localDestDir" Type="Path">../obj/DependencyTests</Property>
				<Property Name="Bld_localDestDirType" Type="Str">relativeToCommon</Property>
				<Property Name="Bld_previewCacheID" Type="Str">{77CD5547-9F1C-40C9-A65C-8FE443D1ACA9}</Property>
				<Property Name="Bld_version.major" Type="Int">1</Property>
				<Property Name="Destination[0].destName" Type="Str">Level2Class.lvlibp</Property>
				<Property Name="Destination[0].path" Type="Path">../obj/DependencyTests/NI_AB_PROJECTNAME.lvlibp</Property>
				<Property Name="Destination[0].preserveHierarchy" Type="Bool">true</Property>
				<Property Name="Destination[0].type" Type="Str">App</Property>
				<Property Name="Destination[1].destName" Type="Str">Support Directory</Property>
				<Property Name="Destination[1].path" Type="Path">../obj/DependencyTests</Property>
				<Property Name="DestinationCount" Type="Int">2</Property>
				<Property Name="PackedLib_callersAdapt" Type="Bool">true</Property>
				<Property Name="Source[0].itemID" Type="Str">{25C2FDAC-70B2-4985-9DF6-7E2716B23731}</Property>
				<Property Name="Source[0].type" Type="Str">Container</Property>
				<Property Name="Source[1].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[1].itemID" Type="Ref">/My Computer/Level2Class.lvlib</Property>
				<Property Name="Source[1].Library.allowMissingMembers" Type="Bool">true</Property>
				<Property Name="Source[1].Library.atomicCopy" Type="Bool">true</Property>
				<Property Name="Source[1].Library.LVLIBPtopLevel" Type="Bool">true</Property>
				<Property Name="Source[1].preventRename" Type="Bool">true</Property>
				<Property Name="Source[1].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[1].type" Type="Str">Library</Property>
				<Property Name="SourceCount" Type="Int">2</Property>
				<Property Name="TgtF_companyName" Type="Str">National Instruments</Property>
				<Property Name="TgtF_fileDescription" Type="Str">Level2Class</Property>
				<Property Name="TgtF_internalName" Type="Str">Level2Class</Property>
				<Property Name="TgtF_legalCopyright" Type="Str">Copyright © 2022 National Instruments</Property>
				<Property Name="TgtF_productName" Type="Str">Level2Class</Property>
				<Property Name="TgtF_targetfileGUID" Type="Str">{10D05685-64FE-4957-B112-0228258BF177}</Property>
				<Property Name="TgtF_targetfileName" Type="Str">Level2Class.lvlibp</Property>
				<Property Name="TgtF_versionIndependent" Type="Bool">true</Property>
			</Item>
		</Item>
	</Item>
</Project>
