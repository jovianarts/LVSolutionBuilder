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
		<Item Name="Library C.lvlib" Type="Library" URL="../TargetsDifferentCompilePPLHierarchy/Library C.lvlib"/>
		<Item Name="Dependencies" Type="Dependencies">
			<Item Name="Library A.lvlibp" Type="LVLibp" URL="../../obj/TargetsDifferentCompilePPLHierarchy/Windows (x86)/Libraries/Library A.lvlibp">
				<Item Name="Function.vi" Type="VI" URL="../../obj/TargetsDifferentCompilePPLHierarchy/Windows (x86)/Libraries/Library A.lvlibp/Library A/Function.vi"/>
			</Item>
			<Item Name="Library B.lvlibp" Type="LVLibp" URL="../../obj/TargetsDifferentCompilePPLHierarchy/Windows (x86)/Libraries/Library B.lvlibp">
				<Item Name="Function.vi" Type="VI" URL="../../obj/TargetsDifferentCompilePPLHierarchy/Windows (x86)/Libraries/Library B.lvlibp/Library B/Function.vi"/>
			</Item>
		</Item>
		<Item Name="Build Specifications" Type="Build">
			<Item Name="Library C" Type="Packed Library">
				<Property Name="Bld_autoIncrement" Type="Bool">true</Property>
				<Property Name="Bld_buildCacheID" Type="Str">{7A0CC212-9FF1-49C7-BC0D-C83E82237548}</Property>
				<Property Name="Bld_buildSpecName" Type="Str">Library C</Property>
				<Property Name="Bld_excludeDependentDLLs" Type="Bool">true</Property>
				<Property Name="Bld_excludeDependentPPLs" Type="Bool">true</Property>
				<Property Name="Bld_excludeLibraryItems" Type="Bool">true</Property>
				<Property Name="Bld_excludePolymorphicVIs" Type="Bool">true</Property>
				<Property Name="Bld_localDestDir" Type="Path">../obj/TargetsDifferentCompilePPLHierarchy/Windows (x86)/Libraries</Property>
				<Property Name="Bld_localDestDirType" Type="Str">relativeToCommon</Property>
				<Property Name="Bld_modifyLibraryFile" Type="Bool">true</Property>
				<Property Name="Bld_previewCacheID" Type="Str">{88FEF274-7EDC-444B-AF87-8A57AACEE21B}</Property>
				<Property Name="Bld_version.build" Type="Int">8</Property>
				<Property Name="Bld_version.major" Type="Int">1</Property>
				<Property Name="Destination[0].destName" Type="Str">Library C.lvlibp</Property>
				<Property Name="Destination[0].path" Type="Path">../obj/TargetsDifferentCompilePPLHierarchy/Windows (x86)/Libraries/Library C.lvlibp</Property>
				<Property Name="Destination[0].preserveHierarchy" Type="Bool">true</Property>
				<Property Name="Destination[0].type" Type="Str">App</Property>
				<Property Name="Destination[1].destName" Type="Str">Support Directory</Property>
				<Property Name="Destination[1].path" Type="Path">../obj/TargetsDifferentCompilePPLHierarchy/Windows (x86)/Libraries</Property>
				<Property Name="DestinationCount" Type="Int">2</Property>
				<Property Name="PackedLib_callersAdapt" Type="Bool">true</Property>
				<Property Name="Source[0].itemID" Type="Str">{4CB31DA1-AF9F-454A-B507-2831E3E62E3B}</Property>
				<Property Name="Source[0].type" Type="Str">Container</Property>
				<Property Name="Source[1].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[1].itemID" Type="Ref">/My Computer/Library C.lvlib</Property>
				<Property Name="Source[1].Library.allowMissingMembers" Type="Bool">true</Property>
				<Property Name="Source[1].Library.atomicCopy" Type="Bool">true</Property>
				<Property Name="Source[1].Library.LVLIBPtopLevel" Type="Bool">true</Property>
				<Property Name="Source[1].preventRename" Type="Bool">true</Property>
				<Property Name="Source[1].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[1].type" Type="Str">Library</Property>
				<Property Name="SourceCount" Type="Int">2</Property>
				<Property Name="TgtF_companyName" Type="Str">Averna B.V.</Property>
				<Property Name="TgtF_enableDebugging" Type="Bool">true</Property>
				<Property Name="TgtF_fileDescription" Type="Str">Library C</Property>
				<Property Name="TgtF_internalName" Type="Str">Library C</Property>
				<Property Name="TgtF_legalCopyright" Type="Str">Copyright © 2021 Averna B.V.</Property>
				<Property Name="TgtF_productName" Type="Str">Library C</Property>
				<Property Name="TgtF_targetfileGUID" Type="Str">{4398F983-F4E0-4ABD-9129-E88DC604C990}</Property>
				<Property Name="TgtF_targetfileName" Type="Str">Library C.lvlibp</Property>
				<Property Name="TgtF_versionIndependent" Type="Bool">true</Property>
			</Item>
		</Item>
	</Item>
</Project>
