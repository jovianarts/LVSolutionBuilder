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
		<Item Name="ParallelProcess.lvlib" Type="Library" URL="../ParallelProcess.lvlib"/>
		<Item Name="Dependencies" Type="Dependencies">
			<Item Name="SendMsg.lvlib" Type="Library" URL="../SendMsg.lvlib"/>
		</Item>
		<Item Name="Build Specifications" Type="Build">
			<Item Name="ParallelProcess" Type="Packed Library">
				<Property Name="Bld_buildCacheID" Type="Str">{A24FA746-0F68-49CE-932C-FC5CFD158B1B}</Property>
				<Property Name="Bld_buildSpecName" Type="Str">ParallelProcess</Property>
				<Property Name="Bld_excludeDependentPPLs" Type="Bool">true</Property>
				<Property Name="Bld_localDestDir" Type="Path">../obj/DynamicDispatchAssets</Property>
				<Property Name="Bld_localDestDirType" Type="Str">relativeToCommon</Property>
				<Property Name="Bld_previewCacheID" Type="Str">{CE5B736D-8460-4585-93BC-703F0730267B}</Property>
				<Property Name="Bld_version.major" Type="Int">1</Property>
				<Property Name="Destination[0].destName" Type="Str">ParallelProcess.lvlibp</Property>
				<Property Name="Destination[0].path" Type="Path">../obj/DynamicDispatchAssets/NI_AB_PROJECTNAME.lvlibp</Property>
				<Property Name="Destination[0].preserveHierarchy" Type="Bool">true</Property>
				<Property Name="Destination[0].type" Type="Str">App</Property>
				<Property Name="Destination[1].destName" Type="Str">Support Directory</Property>
				<Property Name="Destination[1].path" Type="Path">../obj/DynamicDispatchAssets</Property>
				<Property Name="DestinationCount" Type="Int">2</Property>
				<Property Name="PackedLib_callersAdapt" Type="Bool">true</Property>
				<Property Name="Source[0].itemID" Type="Str">{ABB598DD-EC11-4B95-AF7F-D5FE57367FAE}</Property>
				<Property Name="Source[0].type" Type="Str">Container</Property>
				<Property Name="Source[1].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[1].itemID" Type="Ref">/My Computer/ParallelProcess.lvlib</Property>
				<Property Name="Source[1].Library.allowMissingMembers" Type="Bool">true</Property>
				<Property Name="Source[1].Library.atomicCopy" Type="Bool">true</Property>
				<Property Name="Source[1].Library.LVLIBPtopLevel" Type="Bool">true</Property>
				<Property Name="Source[1].preventRename" Type="Bool">true</Property>
				<Property Name="Source[1].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[1].type" Type="Str">Library</Property>
				<Property Name="SourceCount" Type="Int">2</Property>
				<Property Name="TgtF_companyName" Type="Str">National Instruments</Property>
				<Property Name="TgtF_fileDescription" Type="Str">ParallelProcess</Property>
				<Property Name="TgtF_internalName" Type="Str">ParallelProcess</Property>
				<Property Name="TgtF_legalCopyright" Type="Str">Copyright © 2021 National Instruments</Property>
				<Property Name="TgtF_productName" Type="Str">ParallelProcess</Property>
				<Property Name="TgtF_targetfileGUID" Type="Str">{44B4A6A5-AE20-47CD-A85D-BE68418B540D}</Property>
				<Property Name="TgtF_targetfileName" Type="Str">ParallelProcess.lvlibp</Property>
				<Property Name="TgtF_versionIndependent" Type="Bool">true</Property>
			</Item>
		</Item>
	</Item>
</Project>
