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
		<Item Name="ActorInternalUse.lvclass" Type="LVClass" URL="../ActorInternalUse.lvclass"/>
		<Item Name="Metronome.lvclass" Type="LVClass" URL="../Metronome.lvclass"/>
		<Item Name="ParallelProcess.lvlib" Type="Library" URL="../ParallelProcess.lvlib"/>
		<Item Name="SendMsg.lvlib" Type="Library" URL="../SendMsg.lvlib"/>
		<Item Name="UseMetronome.lvlib" Type="Library" URL="../UseMetronome.lvlib"/>
		<Item Name="Dependencies" Type="Dependencies"/>
		<Item Name="Build Specifications" Type="Build"/>
	</Item>
</Project>
