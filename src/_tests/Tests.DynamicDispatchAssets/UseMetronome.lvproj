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
		<Item Name="UseMetronome.lvlib" Type="Library" URL="../UseMetronome.lvlib"/>
		<Item Name="Dependencies" Type="Dependencies">
			<Item Name="ActorInternalUse.lvclass" Type="LVClass" URL="../ActorInternalUse.lvclass"/>
			<Item Name="Metronome.lvclass" Type="LVClass" URL="../Metronome.lvclass"/>
			<Item Name="ParallelProcess.lvlib" Type="Library" URL="../ParallelProcess.lvlib"/>
			<Item Name="SendMsg.lvlib" Type="Library" URL="../SendMsg.lvlib"/>
		</Item>
		<Item Name="Build Specifications" Type="Build">
			<Item Name="UseMetronome" Type="Packed Library">
				<Property Name="Bld_buildCacheID" Type="Str">{67A705A6-7E09-4C7A-9FC0-097DEA0421EB}</Property>
				<Property Name="Bld_buildSpecName" Type="Str">UseMetronome</Property>
				<Property Name="Bld_excludeDependentPPLs" Type="Bool">true</Property>
				<Property Name="Bld_localDestDir" Type="Path">../obj/DynamicDispatchAssets</Property>
				<Property Name="Bld_localDestDirType" Type="Str">relativeToCommon</Property>
				<Property Name="Bld_previewCacheID" Type="Str">{055285FE-9C0F-40DA-B1EA-50AA9D41236F}</Property>
				<Property Name="Bld_version.major" Type="Int">1</Property>
				<Property Name="Destination[0].destName" Type="Str">UseMetronome.lvlibp</Property>
				<Property Name="Destination[0].path" Type="Path">../obj/DynamicDispatchAssets/NI_AB_PROJECTNAME.lvlibp</Property>
				<Property Name="Destination[0].preserveHierarchy" Type="Bool">true</Property>
				<Property Name="Destination[0].type" Type="Str">App</Property>
				<Property Name="Destination[1].destName" Type="Str">Support Directory</Property>
				<Property Name="Destination[1].path" Type="Path">../obj/DynamicDispatchAssets</Property>
				<Property Name="DestinationCount" Type="Int">2</Property>
				<Property Name="PackedLib_callersAdapt" Type="Bool">true</Property>
				<Property Name="Source[0].itemID" Type="Str">{90DF2159-9F66-4999-8BAB-463ED1FF71FC}</Property>
				<Property Name="Source[0].type" Type="Str">Container</Property>
				<Property Name="Source[1].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[1].itemID" Type="Ref">/My Computer/UseMetronome.lvlib</Property>
				<Property Name="Source[1].Library.allowMissingMembers" Type="Bool">true</Property>
				<Property Name="Source[1].Library.atomicCopy" Type="Bool">true</Property>
				<Property Name="Source[1].Library.LVLIBPtopLevel" Type="Bool">true</Property>
				<Property Name="Source[1].preventRename" Type="Bool">true</Property>
				<Property Name="Source[1].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[1].type" Type="Str">Library</Property>
				<Property Name="SourceCount" Type="Int">2</Property>
				<Property Name="TgtF_companyName" Type="Str">National Instruments</Property>
				<Property Name="TgtF_fileDescription" Type="Str">UseMetronome</Property>
				<Property Name="TgtF_internalName" Type="Str">UseMetronome</Property>
				<Property Name="TgtF_legalCopyright" Type="Str">Copyright © 2021 National Instruments</Property>
				<Property Name="TgtF_productName" Type="Str">UseMetronome</Property>
				<Property Name="TgtF_targetfileGUID" Type="Str">{0DB6C50C-7649-4C69-9366-154197619C8C}</Property>
				<Property Name="TgtF_targetfileName" Type="Str">UseMetronome.lvlibp</Property>
				<Property Name="TgtF_versionIndependent" Type="Bool">true</Property>
			</Item>
		</Item>
	</Item>
</Project>
