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
		<Item Name="SampleDependentLibPPL.lvlib" Type="Library" URL="../TargetsDifferentCompilersAdvancedPPL/SampleDependentLibPPL.lvlib"/>
		<Item Name="SampleLibPPL.lvlib" Type="Library" URL="../TargetsDifferentCompilersAdvancedPPL/SampleLibPPL.lvlib"/>
		<Item Name="Dependencies" Type="Dependencies">
			<Item Name="ExternalDepClass.lvclass" Type="LVClass" URL="../../obj/SampleProjectTargets/My Computer/ExtDependency.lvlibp/ExternalDepClass/ExternalDepClass.lvclass"/>
		</Item>
		<Item Name="Build Specifications" Type="Build">
			<Item Name="SampleDependentLib" Type="Packed Library">
				<Property Name="Bld_autoIncrement" Type="Bool">true</Property>
				<Property Name="Bld_buildCacheID" Type="Str">{4C30A696-4A56-441C-8DB3-612D022F74DB}</Property>
				<Property Name="Bld_buildSpecName" Type="Str">SampleDependentLib</Property>
				<Property Name="Bld_excludeDependentPPLs" Type="Bool">true</Property>
				<Property Name="Bld_localDestDir" Type="Path">../obj/NI_AB_PROJECTNAME/NI_AB_TARGETNAME</Property>
				<Property Name="Bld_localDestDirType" Type="Str">relativeToCommon</Property>
				<Property Name="Bld_previewCacheID" Type="Str">{068BDDF8-273C-4651-B96A-D63D236AF69C}</Property>
				<Property Name="Bld_version.major" Type="Int">1</Property>
				<Property Name="Destination[0].destName" Type="Str">SampleDependentLib.lvlibp</Property>
				<Property Name="Destination[0].path" Type="Path">../obj/NI_AB_PROJECTNAME/NI_AB_TARGETNAME/SampleDependentLib.lvlibp</Property>
				<Property Name="Destination[0].preserveHierarchy" Type="Bool">true</Property>
				<Property Name="Destination[0].type" Type="Str">App</Property>
				<Property Name="Destination[1].destName" Type="Str">Support Directory</Property>
				<Property Name="Destination[1].path" Type="Path">../obj/NI_AB_PROJECTNAME/NI_AB_TARGETNAME</Property>
				<Property Name="DestinationCount" Type="Int">2</Property>
				<Property Name="PackedLib_callersAdapt" Type="Bool">true</Property>
				<Property Name="Source[0].itemID" Type="Str">{3D1E749A-7755-4BB7-A211-00C181D7AC03}</Property>
				<Property Name="Source[0].type" Type="Str">Container</Property>
				<Property Name="Source[1].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[1].itemID" Type="Ref">/My Computer/SampleDependentLibPPL.lvlib</Property>
				<Property Name="Source[1].Library.allowMissingMembers" Type="Bool">true</Property>
				<Property Name="Source[1].Library.atomicCopy" Type="Bool">true</Property>
				<Property Name="Source[1].Library.LVLIBPtopLevel" Type="Bool">true</Property>
				<Property Name="Source[1].preventRename" Type="Bool">true</Property>
				<Property Name="Source[1].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[1].type" Type="Str">Library</Property>
				<Property Name="SourceCount" Type="Int">2</Property>
				<Property Name="TgtF_companyName" Type="Str">National Instruments</Property>
				<Property Name="TgtF_fileDescription" Type="Str">SampleDependentLib</Property>
				<Property Name="TgtF_internalName" Type="Str">SampleDependentLib</Property>
				<Property Name="TgtF_legalCopyright" Type="Str">Copyright © 2021 National Instruments</Property>
				<Property Name="TgtF_productName" Type="Str">SampleDependentLib</Property>
				<Property Name="TgtF_targetfileGUID" Type="Str">{A306D57E-3D21-458C-A28C-A0FD6D201C32}</Property>
				<Property Name="TgtF_targetfileName" Type="Str">SampleDependentLib.lvlibp</Property>
				<Property Name="TgtF_versionIndependent" Type="Bool">true</Property>
			</Item>
			<Item Name="SampleLib" Type="Packed Library">
				<Property Name="Bld_autoIncrement" Type="Bool">true</Property>
				<Property Name="Bld_buildCacheID" Type="Str">{AD1CE8BC-F081-4200-B41D-BF771329A9B3}</Property>
				<Property Name="Bld_buildSpecName" Type="Str">SampleLib</Property>
				<Property Name="Bld_excludeDependentPPLs" Type="Bool">true</Property>
				<Property Name="Bld_localDestDir" Type="Path">../obj/NI_AB_PROJECTNAME/NI_AB_TARGETNAME</Property>
				<Property Name="Bld_localDestDirType" Type="Str">relativeToCommon</Property>
				<Property Name="Bld_previewCacheID" Type="Str">{37996603-370F-4536-96D8-0DA4E94A93A9}</Property>
				<Property Name="Bld_version.major" Type="Int">1</Property>
				<Property Name="Destination[0].destName" Type="Str">SampleLib.lvlibp</Property>
				<Property Name="Destination[0].path" Type="Path">../obj/NI_AB_PROJECTNAME/NI_AB_TARGETNAME/SampleLib.lvlibp</Property>
				<Property Name="Destination[0].preserveHierarchy" Type="Bool">true</Property>
				<Property Name="Destination[0].type" Type="Str">App</Property>
				<Property Name="Destination[1].destName" Type="Str">Support Directory</Property>
				<Property Name="Destination[1].path" Type="Path">../obj/NI_AB_PROJECTNAME/NI_AB_TARGETNAME</Property>
				<Property Name="DestinationCount" Type="Int">2</Property>
				<Property Name="PackedLib_callersAdapt" Type="Bool">true</Property>
				<Property Name="Source[0].itemID" Type="Str">{3D1E749A-7755-4BB7-A211-00C181D7AC03}</Property>
				<Property Name="Source[0].type" Type="Str">Container</Property>
				<Property Name="Source[1].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[1].itemID" Type="Ref">/My Computer/SampleLibPPL.lvlib</Property>
				<Property Name="Source[1].Library.allowMissingMembers" Type="Bool">true</Property>
				<Property Name="Source[1].Library.atomicCopy" Type="Bool">true</Property>
				<Property Name="Source[1].Library.LVLIBPtopLevel" Type="Bool">true</Property>
				<Property Name="Source[1].preventRename" Type="Bool">true</Property>
				<Property Name="Source[1].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[1].type" Type="Str">Library</Property>
				<Property Name="SourceCount" Type="Int">2</Property>
				<Property Name="TgtF_companyName" Type="Str">National Instruments</Property>
				<Property Name="TgtF_fileDescription" Type="Str">SampleLib</Property>
				<Property Name="TgtF_internalName" Type="Str">SampleLib</Property>
				<Property Name="TgtF_legalCopyright" Type="Str">Copyright © 2021 National Instruments</Property>
				<Property Name="TgtF_productName" Type="Str">SampleLib</Property>
				<Property Name="TgtF_targetfileGUID" Type="Str">{B82F235D-DCBF-427A-A9B9-FE84A419A37E}</Property>
				<Property Name="TgtF_targetfileName" Type="Str">SampleLib.lvlibp</Property>
				<Property Name="TgtF_versionIndependent" Type="Bool">true</Property>
			</Item>
		</Item>
	</Item>
	<Item Name="cRIO-9067" Type="RT CompactRIO">
		<Property Name="alias.name" Type="Str">cRIO-9067</Property>
		<Property Name="alias.value" Type="Str">0.0.0.0</Property>
		<Property Name="CCSymbols" Type="Str">TARGET_TYPE,RT;OS,Linux;CPU,ARM;DeviceCode,7744;</Property>
		<Property Name="crio.ControllerPID" Type="Str">7744</Property>
		<Property Name="host.ResponsivenessCheckEnabled" Type="Bool">true</Property>
		<Property Name="host.ResponsivenessCheckPingDelay" Type="UInt">5000</Property>
		<Property Name="host.ResponsivenessCheckPingTimeout" Type="UInt">1000</Property>
		<Property Name="host.TargetCPUID" Type="UInt">8</Property>
		<Property Name="host.TargetOSID" Type="UInt">8</Property>
		<Property Name="target.cleanupVisa" Type="Bool">false</Property>
		<Property Name="target.FPProtocolGlobals_ControlTimeLimit" Type="Int">300</Property>
		<Property Name="target.getDefault-&gt;WebServer.Port" Type="Int">80</Property>
		<Property Name="target.getDefault-&gt;WebServer.Timeout" Type="Int">60</Property>
		<Property Name="target.IOScan.Faults" Type="Str"></Property>
		<Property Name="target.IOScan.NetVarPeriod" Type="UInt">100</Property>
		<Property Name="target.IOScan.NetWatchdogEnabled" Type="Bool">false</Property>
		<Property Name="target.IOScan.Period" Type="UInt">10000</Property>
		<Property Name="target.IOScan.PowerupMode" Type="UInt">0</Property>
		<Property Name="target.IOScan.Priority" Type="UInt">0</Property>
		<Property Name="target.IOScan.ReportModeConflict" Type="Bool">true</Property>
		<Property Name="target.IsRemotePanelSupported" Type="Bool">true</Property>
		<Property Name="target.RTCPULoadMonitoringEnabled" Type="Bool">true</Property>
		<Property Name="target.RTDebugWebServerHTTPPort" Type="Int">8001</Property>
		<Property Name="target.RTTarget.ApplicationPath" Type="Path">/c/ni-rt/startup/startup.rtexe</Property>
		<Property Name="target.RTTarget.EnableFileSharing" Type="Bool">true</Property>
		<Property Name="target.RTTarget.IPAccess" Type="Str">+*</Property>
		<Property Name="target.RTTarget.LaunchAppAtBoot" Type="Bool">false</Property>
		<Property Name="target.RTTarget.VIPath" Type="Path">/home/lvuser/natinst/bin</Property>
		<Property Name="target.server.app.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="target.server.control.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="target.server.tcp.access" Type="Str">+*</Property>
		<Property Name="target.server.tcp.enabled" Type="Bool">false</Property>
		<Property Name="target.server.tcp.paranoid" Type="Bool">true</Property>
		<Property Name="target.server.tcp.port" Type="Int">3363</Property>
		<Property Name="target.server.tcp.serviceName" Type="Str">Main Application Instance/VI Server</Property>
		<Property Name="target.server.tcp.serviceName.default" Type="Str">Main Application Instance/VI Server</Property>
		<Property Name="target.server.vi.access" Type="Str">+*</Property>
		<Property Name="target.server.vi.callsEnabled" Type="Bool">true</Property>
		<Property Name="target.server.vi.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="target.WebServer.Enabled" Type="Bool">false</Property>
		<Property Name="target.WebServer.LogEnabled" Type="Bool">false</Property>
		<Property Name="target.WebServer.LogPath" Type="Path">/c/ni-rt/system/www/www.log</Property>
		<Property Name="target.WebServer.Port" Type="Int">80</Property>
		<Property Name="target.WebServer.RootPath" Type="Path">/c/ni-rt/system/www</Property>
		<Property Name="target.WebServer.TcpAccess" Type="Str">c+*</Property>
		<Property Name="target.WebServer.Timeout" Type="Int">60</Property>
		<Property Name="target.WebServer.ViAccess" Type="Str">+*</Property>
		<Property Name="target.webservices.SecurityAPIKey" Type="Str">PqVr/ifkAQh+lVrdPIykXlFvg12GhhQFR8H9cUhphgg=:pTe9HRlQuMfJxAG6QCGq7UvoUpJzAzWGKy5SbZ+roSU=</Property>
		<Property Name="target.webservices.ValidTimestampWindow" Type="Int">15</Property>
		<Item Name="Chassis" Type="cRIO Chassis">
			<Property Name="crio.ProgrammingMode" Type="Str">express</Property>
			<Property Name="crio.ResourceID" Type="Str">RIO0</Property>
			<Property Name="crio.Type" Type="Str">cRIO-9067</Property>
			<Property Name="NI.SortType" Type="Int">3</Property>
			<Item Name="Real-Time Scan Resources" Type="Module Container">
				<Property Name="crio.ModuleContainerType" Type="Str">crio.RSIModuleContainer</Property>
			</Item>
		</Item>
		<Item Name="SampleDependentLibPPL.lvlib" Type="Library" URL="../TargetsDifferentCompilersAdvancedPPL/SampleDependentLibPPL.lvlib"/>
		<Item Name="SampleLibPPL.lvlib" Type="Library" URL="../TargetsDifferentCompilersAdvancedPPL/SampleLibPPL.lvlib"/>
		<Item Name="Dependencies" Type="Dependencies">
			<Item Name="ExternalDepClass.lvclass" Type="LVClass" URL="../../obj/SampleProjectTargets/My Computer/ExtDependency.lvlibp/ExternalDepClass/ExternalDepClass.lvclass"/>
		</Item>
		<Item Name="Build Specifications" Type="Build">
			<Item Name="SampleDependentLib" Type="Packed Library">
				<Property Name="Bld_autoIncrement" Type="Bool">true</Property>
				<Property Name="Bld_buildCacheID" Type="Str">{7CADD4DB-5312-4086-BA2E-8798CBCEBABB}</Property>
				<Property Name="Bld_buildSpecName" Type="Str">SampleDependentLib</Property>
				<Property Name="Bld_excludeDependentPPLs" Type="Bool">true</Property>
				<Property Name="Bld_localDestDir" Type="Path">../obj/NI_AB_PROJECTNAME/NI_AB_TARGETNAME</Property>
				<Property Name="Bld_localDestDirType" Type="Str">relativeToCommon</Property>
				<Property Name="Bld_previewCacheID" Type="Str">{908E482A-3B73-4BB8-8D2C-8CA90F3BBEF3}</Property>
				<Property Name="Bld_targetDestDir" Type="Path">/home/lvuser/natinst/bin</Property>
				<Property Name="Bld_version.major" Type="Int">1</Property>
				<Property Name="Destination[0].destName" Type="Str">SampleDependentLib.lvlibp</Property>
				<Property Name="Destination[0].path" Type="Path">/home/lvuser/natinst/bin/SampleDependentLib.lvlibp</Property>
				<Property Name="Destination[0].path.type" Type="Str">&lt;none&gt;</Property>
				<Property Name="Destination[0].preserveHierarchy" Type="Bool">true</Property>
				<Property Name="Destination[0].type" Type="Str">App</Property>
				<Property Name="Destination[1].destName" Type="Str">Support Directory</Property>
				<Property Name="Destination[1].path" Type="Path">/home/lvuser/natinst/bin</Property>
				<Property Name="Destination[1].path.type" Type="Str">&lt;none&gt;</Property>
				<Property Name="DestinationCount" Type="Int">2</Property>
				<Property Name="Source[0].itemID" Type="Str">{94A5254C-37FC-46EC-B5D5-36364455AA45}</Property>
				<Property Name="Source[0].type" Type="Str">Container</Property>
				<Property Name="Source[1].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[1].itemID" Type="Ref">/cRIO-9067/SampleDependentLibPPL.lvlib</Property>
				<Property Name="Source[1].Library.allowMissingMembers" Type="Bool">true</Property>
				<Property Name="Source[1].Library.atomicCopy" Type="Bool">true</Property>
				<Property Name="Source[1].Library.LVLIBPtopLevel" Type="Bool">true</Property>
				<Property Name="Source[1].preventRename" Type="Bool">true</Property>
				<Property Name="Source[1].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[1].type" Type="Str">Library</Property>
				<Property Name="SourceCount" Type="Int">2</Property>
				<Property Name="TgtF_companyName" Type="Str">National Instruments</Property>
				<Property Name="TgtF_fileDescription" Type="Str">SampleDependentLib</Property>
				<Property Name="TgtF_internalName" Type="Str">SampleDependentLib</Property>
				<Property Name="TgtF_legalCopyright" Type="Str">Copyright © 2021 National Instruments</Property>
				<Property Name="TgtF_productName" Type="Str">SampleDependentLib</Property>
				<Property Name="TgtF_targetfileGUID" Type="Str">{3F8CA8F7-FB47-4B56-9E34-B77554822F44}</Property>
				<Property Name="TgtF_targetfileName" Type="Str">SampleDependentLib.lvlibp</Property>
				<Property Name="TgtF_versionIndependent" Type="Bool">true</Property>
			</Item>
			<Item Name="SampleLib" Type="Packed Library">
				<Property Name="Bld_autoIncrement" Type="Bool">true</Property>
				<Property Name="Bld_buildCacheID" Type="Str">{8AE9D7FD-36D5-45EA-9A09-BD87FFC9E242}</Property>
				<Property Name="Bld_buildSpecName" Type="Str">SampleLib</Property>
				<Property Name="Bld_excludeDependentPPLs" Type="Bool">true</Property>
				<Property Name="Bld_localDestDir" Type="Path">../obj/NI_AB_PROJECTNAME/NI_AB_TARGETNAME</Property>
				<Property Name="Bld_localDestDirType" Type="Str">relativeToCommon</Property>
				<Property Name="Bld_previewCacheID" Type="Str">{50260A85-C47B-40FB-9C85-B3FD6B66DD8F}</Property>
				<Property Name="Bld_targetDestDir" Type="Path">/home/lvuser/natinst/bin</Property>
				<Property Name="Bld_version.major" Type="Int">1</Property>
				<Property Name="Destination[0].destName" Type="Str">SampleLib.lvlibp</Property>
				<Property Name="Destination[0].path" Type="Path">/home/lvuser/natinst/bin/SampleLib.lvlibp</Property>
				<Property Name="Destination[0].path.type" Type="Str">&lt;none&gt;</Property>
				<Property Name="Destination[0].preserveHierarchy" Type="Bool">true</Property>
				<Property Name="Destination[0].type" Type="Str">App</Property>
				<Property Name="Destination[1].destName" Type="Str">Support Directory</Property>
				<Property Name="Destination[1].path" Type="Path">/home/lvuser/natinst/bin</Property>
				<Property Name="Destination[1].path.type" Type="Str">&lt;none&gt;</Property>
				<Property Name="DestinationCount" Type="Int">2</Property>
				<Property Name="Source[0].itemID" Type="Str">{94A5254C-37FC-46EC-B5D5-36364455AA45}</Property>
				<Property Name="Source[0].type" Type="Str">Container</Property>
				<Property Name="Source[1].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[1].itemID" Type="Ref">/cRIO-9067/SampleLibPPL.lvlib</Property>
				<Property Name="Source[1].Library.allowMissingMembers" Type="Bool">true</Property>
				<Property Name="Source[1].Library.atomicCopy" Type="Bool">true</Property>
				<Property Name="Source[1].Library.LVLIBPtopLevel" Type="Bool">true</Property>
				<Property Name="Source[1].preventRename" Type="Bool">true</Property>
				<Property Name="Source[1].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[1].type" Type="Str">Library</Property>
				<Property Name="SourceCount" Type="Int">2</Property>
				<Property Name="TgtF_companyName" Type="Str">National Instruments</Property>
				<Property Name="TgtF_fileDescription" Type="Str">SampleLib</Property>
				<Property Name="TgtF_internalName" Type="Str">SampleLib</Property>
				<Property Name="TgtF_legalCopyright" Type="Str">Copyright © 2021 National Instruments</Property>
				<Property Name="TgtF_productName" Type="Str">SampleLib</Property>
				<Property Name="TgtF_targetfileGUID" Type="Str">{647D2424-FB20-413D-AFD9-8EF59386A90F}</Property>
				<Property Name="TgtF_targetfileName" Type="Str">SampleLib.lvlibp</Property>
				<Property Name="TgtF_versionIndependent" Type="Bool">true</Property>
			</Item>
		</Item>
	</Item>
	<Item Name="cRIO-9068" Type="RT CompactRIO">
		<Property Name="alias.name" Type="Str">cRIO-9068</Property>
		<Property Name="alias.value" Type="Str">0.0.0.0</Property>
		<Property Name="CCSymbols" Type="Str">TARGET_TYPE,RT;OS,Linux;CPU,ARM;DeviceCode,76D6;</Property>
		<Property Name="crio.ControllerPID" Type="Str">76D6</Property>
		<Property Name="host.ResponsivenessCheckEnabled" Type="Bool">true</Property>
		<Property Name="host.ResponsivenessCheckPingDelay" Type="UInt">5000</Property>
		<Property Name="host.ResponsivenessCheckPingTimeout" Type="UInt">1000</Property>
		<Property Name="host.TargetCPUID" Type="UInt">8</Property>
		<Property Name="host.TargetOSID" Type="UInt">8</Property>
		<Property Name="target.cleanupVisa" Type="Bool">false</Property>
		<Property Name="target.FPProtocolGlobals_ControlTimeLimit" Type="Int">300</Property>
		<Property Name="target.getDefault-&gt;WebServer.Port" Type="Int">80</Property>
		<Property Name="target.getDefault-&gt;WebServer.Timeout" Type="Int">60</Property>
		<Property Name="target.IOScan.Faults" Type="Str"></Property>
		<Property Name="target.IOScan.NetVarPeriod" Type="UInt">100</Property>
		<Property Name="target.IOScan.NetWatchdogEnabled" Type="Bool">false</Property>
		<Property Name="target.IOScan.Period" Type="UInt">10000</Property>
		<Property Name="target.IOScan.PowerupMode" Type="UInt">0</Property>
		<Property Name="target.IOScan.Priority" Type="UInt">0</Property>
		<Property Name="target.IOScan.ReportModeConflict" Type="Bool">true</Property>
		<Property Name="target.IsRemotePanelSupported" Type="Bool">true</Property>
		<Property Name="target.RTCPULoadMonitoringEnabled" Type="Bool">true</Property>
		<Property Name="target.RTDebugWebServerHTTPPort" Type="Int">8001</Property>
		<Property Name="target.RTTarget.ApplicationPath" Type="Path">/c/ni-rt/startup/startup.rtexe</Property>
		<Property Name="target.RTTarget.EnableFileSharing" Type="Bool">true</Property>
		<Property Name="target.RTTarget.IPAccess" Type="Str">+*</Property>
		<Property Name="target.RTTarget.LaunchAppAtBoot" Type="Bool">false</Property>
		<Property Name="target.RTTarget.VIPath" Type="Path">/home/lvuser/natinst/bin</Property>
		<Property Name="target.server.app.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="target.server.control.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="target.server.tcp.access" Type="Str">+*</Property>
		<Property Name="target.server.tcp.enabled" Type="Bool">false</Property>
		<Property Name="target.server.tcp.paranoid" Type="Bool">true</Property>
		<Property Name="target.server.tcp.port" Type="Int">3363</Property>
		<Property Name="target.server.tcp.serviceName" Type="Str">Main Application Instance/VI Server</Property>
		<Property Name="target.server.tcp.serviceName.default" Type="Str">Main Application Instance/VI Server</Property>
		<Property Name="target.server.vi.access" Type="Str">+*</Property>
		<Property Name="target.server.vi.callsEnabled" Type="Bool">true</Property>
		<Property Name="target.server.vi.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="target.WebServer.Enabled" Type="Bool">false</Property>
		<Property Name="target.WebServer.LogEnabled" Type="Bool">false</Property>
		<Property Name="target.WebServer.LogPath" Type="Path">/c/ni-rt/system/www/www.log</Property>
		<Property Name="target.WebServer.Port" Type="Int">80</Property>
		<Property Name="target.WebServer.RootPath" Type="Path">/c/ni-rt/system/www</Property>
		<Property Name="target.WebServer.TcpAccess" Type="Str">c+*</Property>
		<Property Name="target.WebServer.Timeout" Type="Int">60</Property>
		<Property Name="target.WebServer.ViAccess" Type="Str">+*</Property>
		<Property Name="target.webservices.SecurityAPIKey" Type="Str">PqVr/ifkAQh+lVrdPIykXlFvg12GhhQFR8H9cUhphgg=:pTe9HRlQuMfJxAG6QCGq7UvoUpJzAzWGKy5SbZ+roSU=</Property>
		<Property Name="target.webservices.ValidTimestampWindow" Type="Int">15</Property>
		<Item Name="Chassis" Type="cRIO Chassis">
			<Property Name="crio.ProgrammingMode" Type="Str">express</Property>
			<Property Name="crio.ResourceID" Type="Str">RIO0</Property>
			<Property Name="crio.Type" Type="Str">cRIO-9068</Property>
			<Property Name="NI.SortType" Type="Int">3</Property>
			<Item Name="Real-Time Scan Resources" Type="Module Container">
				<Property Name="crio.ModuleContainerType" Type="Str">crio.RSIModuleContainer</Property>
			</Item>
		</Item>
		<Item Name="SampleDependentLibPPL.lvlib" Type="Library" URL="../TargetsDifferentCompilersAdvancedPPL/SampleDependentLibPPL.lvlib"/>
		<Item Name="SampleLibPPL.lvlib" Type="Library" URL="../TargetsDifferentCompilersAdvancedPPL/SampleLibPPL.lvlib"/>
		<Item Name="Dependencies" Type="Dependencies">
			<Item Name="ExternalDepClass.lvclass" Type="LVClass" URL="../../obj/SampleProjectTargets/My Computer/ExtDependency.lvlibp/ExternalDepClass/ExternalDepClass.lvclass"/>
		</Item>
		<Item Name="Build Specifications" Type="Build">
			<Item Name="SampleDependentLib" Type="Packed Library">
				<Property Name="Bld_autoIncrement" Type="Bool">true</Property>
				<Property Name="Bld_buildCacheID" Type="Str">{5231A4F5-6B5C-40CD-BCCD-987925868A28}</Property>
				<Property Name="Bld_buildSpecName" Type="Str">SampleDependentLib</Property>
				<Property Name="Bld_excludeDependentPPLs" Type="Bool">true</Property>
				<Property Name="Bld_localDestDir" Type="Path">../obj/NI_AB_PROJECTNAME/NI_AB_TARGETNAME</Property>
				<Property Name="Bld_localDestDirType" Type="Str">relativeToCommon</Property>
				<Property Name="Bld_previewCacheID" Type="Str">{19003779-FF86-47B6-9DB7-F00773FA93AA}</Property>
				<Property Name="Bld_targetDestDir" Type="Path">/home/lvuser/natinst/bin</Property>
				<Property Name="Bld_version.major" Type="Int">1</Property>
				<Property Name="Destination[0].destName" Type="Str">SampleDependentLib.lvlibp</Property>
				<Property Name="Destination[0].path" Type="Path">/home/lvuser/natinst/bin/SampleDependentLib.lvlibp</Property>
				<Property Name="Destination[0].path.type" Type="Str">&lt;none&gt;</Property>
				<Property Name="Destination[0].preserveHierarchy" Type="Bool">true</Property>
				<Property Name="Destination[0].type" Type="Str">App</Property>
				<Property Name="Destination[1].destName" Type="Str">Support Directory</Property>
				<Property Name="Destination[1].path" Type="Path">/home/lvuser/natinst/bin</Property>
				<Property Name="Destination[1].path.type" Type="Str">&lt;none&gt;</Property>
				<Property Name="DestinationCount" Type="Int">2</Property>
				<Property Name="Source[0].itemID" Type="Str">{C0FB1F0B-04CC-4A48-A630-035E4AF15D5A}</Property>
				<Property Name="Source[0].type" Type="Str">Container</Property>
				<Property Name="Source[1].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[1].itemID" Type="Ref">/cRIO-9068/SampleDependentLibPPL.lvlib</Property>
				<Property Name="Source[1].Library.allowMissingMembers" Type="Bool">true</Property>
				<Property Name="Source[1].Library.atomicCopy" Type="Bool">true</Property>
				<Property Name="Source[1].Library.LVLIBPtopLevel" Type="Bool">true</Property>
				<Property Name="Source[1].preventRename" Type="Bool">true</Property>
				<Property Name="Source[1].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[1].type" Type="Str">Library</Property>
				<Property Name="SourceCount" Type="Int">2</Property>
				<Property Name="TgtF_companyName" Type="Str">National Instruments</Property>
				<Property Name="TgtF_fileDescription" Type="Str">SampleDependentLib</Property>
				<Property Name="TgtF_internalName" Type="Str">SampleDependentLib</Property>
				<Property Name="TgtF_legalCopyright" Type="Str">Copyright © 2021 National Instruments</Property>
				<Property Name="TgtF_productName" Type="Str">SampleDependentLib</Property>
				<Property Name="TgtF_targetfileGUID" Type="Str">{491ACE47-09F6-4533-868D-2CB65FABB099}</Property>
				<Property Name="TgtF_targetfileName" Type="Str">SampleDependentLib.lvlibp</Property>
				<Property Name="TgtF_versionIndependent" Type="Bool">true</Property>
			</Item>
			<Item Name="SampleLib" Type="Packed Library">
				<Property Name="Bld_autoIncrement" Type="Bool">true</Property>
				<Property Name="Bld_buildCacheID" Type="Str">{26108C4E-F419-4410-B3F6-D4B006A78028}</Property>
				<Property Name="Bld_buildSpecName" Type="Str">SampleLib</Property>
				<Property Name="Bld_excludeDependentPPLs" Type="Bool">true</Property>
				<Property Name="Bld_localDestDir" Type="Path">../obj/NI_AB_PROJECTNAME/NI_AB_TARGETNAME</Property>
				<Property Name="Bld_localDestDirType" Type="Str">relativeToCommon</Property>
				<Property Name="Bld_previewCacheID" Type="Str">{2BD48881-E5FD-4669-9E34-CB4D7729DBD6}</Property>
				<Property Name="Bld_targetDestDir" Type="Path">/home/lvuser/natinst/bin</Property>
				<Property Name="Bld_version.major" Type="Int">1</Property>
				<Property Name="Destination[0].destName" Type="Str">SampleLib.lvlibp</Property>
				<Property Name="Destination[0].path" Type="Path">/home/lvuser/natinst/bin/SampleLib.lvlibp</Property>
				<Property Name="Destination[0].path.type" Type="Str">&lt;none&gt;</Property>
				<Property Name="Destination[0].preserveHierarchy" Type="Bool">true</Property>
				<Property Name="Destination[0].type" Type="Str">App</Property>
				<Property Name="Destination[1].destName" Type="Str">Support Directory</Property>
				<Property Name="Destination[1].path" Type="Path">/home/lvuser/natinst/bin</Property>
				<Property Name="Destination[1].path.type" Type="Str">&lt;none&gt;</Property>
				<Property Name="DestinationCount" Type="Int">2</Property>
				<Property Name="Source[0].itemID" Type="Str">{C0FB1F0B-04CC-4A48-A630-035E4AF15D5A}</Property>
				<Property Name="Source[0].type" Type="Str">Container</Property>
				<Property Name="Source[1].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[1].itemID" Type="Ref">/cRIO-9068/SampleLibPPL.lvlib</Property>
				<Property Name="Source[1].Library.allowMissingMembers" Type="Bool">true</Property>
				<Property Name="Source[1].Library.atomicCopy" Type="Bool">true</Property>
				<Property Name="Source[1].Library.LVLIBPtopLevel" Type="Bool">true</Property>
				<Property Name="Source[1].preventRename" Type="Bool">true</Property>
				<Property Name="Source[1].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[1].type" Type="Str">Library</Property>
				<Property Name="SourceCount" Type="Int">2</Property>
				<Property Name="TgtF_companyName" Type="Str">National Instruments</Property>
				<Property Name="TgtF_fileDescription" Type="Str">SampleLib</Property>
				<Property Name="TgtF_internalName" Type="Str">SampleLib</Property>
				<Property Name="TgtF_legalCopyright" Type="Str">Copyright © 2021 National Instruments</Property>
				<Property Name="TgtF_productName" Type="Str">SampleLib</Property>
				<Property Name="TgtF_targetfileGUID" Type="Str">{CD7BF30A-1D71-4290-81E6-79C66F61F949}</Property>
				<Property Name="TgtF_targetfileName" Type="Str">SampleLib.lvlibp</Property>
				<Property Name="TgtF_versionIndependent" Type="Bool">true</Property>
			</Item>
		</Item>
	</Item>
</Project>
