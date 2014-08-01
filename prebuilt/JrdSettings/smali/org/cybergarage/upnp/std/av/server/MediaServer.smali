.class public Lorg/cybergarage/upnp/std/av/server/MediaServer;
.super Lorg/cybergarage/upnp/Device;
.source "MediaServer.java"


# static fields
.field public static final DEFAULT_HTTP_PORT:I = 0x9678

.field public static final DESCRIPTION:Ljava/lang/String; = "<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<root xmlns=\"urn:schemas-upnp-org:device-1-0\">\n   <specVersion>\n      <major>1</major>\n      <minor>0</minor>\n   </specVersion>\n   <device>\n      <deviceType>urn:schemas-upnp-org:device:MediaServer:1</deviceType>\n      <friendlyName>TCL Media Server</friendlyName>\n      <manufacturer>TCL</manufacturer>\n      <manufacturerURL>http://www.tcl.com</manufacturerURL>\n      <modelDescription>Provides content through UPnP ContentDirectory service</modelDescription>\n      <modelName>TCL Media Server</modelName>\n      <modelNumber>1.0</modelNumber>\n      <modelURL>http://www.tcl.com</modelURL>\n      <equipmentID>tcl_tv_server_001</equipmentID>\n      <UDN>uuid:362d9414-31a0-48b6-b684-2b4bd38391d0</UDN>\n\t   <iconList>\n \t\t   \t<icon>\n\t\t   \t\t<mimetype>image/png</mimetype>\n\t\t\t\t<width>32</width>\n\t\t\t\t<height>32</height>\n\t\t\t\t<depth>24</depth>\n\t\t\t\t<url>/DeviceIcons?id=0</url>\n\t\t\t</icon>\n\t\t</iconList>\n      <serviceList>\n         <service>\n            <serviceType>urn:schemas-upnp-org:service:ContentDirectory:1</serviceType>\n            <serviceId>urn:upnp-org:serviceId:ContentDirectory</serviceId>\n            <SCPDURL>_urn:schemas-upnp-org:service:ContentDirectory1.xml</SCPDURL>\n            <controlURL>_urn:schemas-upnp-org:service:ContentDirectory_control</controlURL>\n            <eventSubURL>_urn:schemas-upnp-org:service:ContentDirectory_event</eventSubURL>\n         </service>\n         <service>\n            <serviceType>urn:schemas-upnp-org:service:ConnectionManager:1</serviceType>\n            <serviceId>urn:upnp-org:serviceId:ConnectionManager</serviceId>\n            <SCPDURL>_urn:schemas-upnp-org:service:ConnectionManager1.xml</SCPDURL>\n            <controlURL>_urn:schemas-upnp-org:service:ConnectionManager_control</controlURL>\n            <eventSubURL>_urn:schemas-upnp-org:service:ConnectionManager_event</eventSubURL>\n         </service>\n      </serviceList>\n   </device>\n</root>"

.field private static final DESCRIPTION_FILE_NAME:Ljava/lang/String; = "description/description.xml"

.field public static final DEVICE_TYPE:Ljava/lang/String; = "urn:schemas-upnp-org:device:MediaServer:1"


# instance fields
.field private conDir:Lorg/cybergarage/upnp/std/av/server/ContentDirectory;

.field private conMan:Lorg/cybergarage/upnp/std/av/server/ConnectionManager;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 103
    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;-><init>()V

    .line 105
    :try_start_0
    const-string v0, "<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<root xmlns=\"urn:schemas-upnp-org:device-1-0\">\n   <specVersion>\n      <major>1</major>\n      <minor>0</minor>\n   </specVersion>\n   <device>\n      <deviceType>urn:schemas-upnp-org:device:MediaServer:1</deviceType>\n      <friendlyName>TCL Media Server</friendlyName>\n      <manufacturer>TCL</manufacturer>\n      <manufacturerURL>http://www.tcl.com</manufacturerURL>\n      <modelDescription>Provides content through UPnP ContentDirectory service</modelDescription>\n      <modelName>TCL Media Server</modelName>\n      <modelNumber>1.0</modelNumber>\n      <modelURL>http://www.tcl.com</modelURL>\n      <equipmentID>tcl_tv_server_001</equipmentID>\n      <UDN>uuid:362d9414-31a0-48b6-b684-2b4bd38391d0</UDN>\n\t   <iconList>\n \t\t   \t<icon>\n\t\t   \t\t<mimetype>image/png</mimetype>\n\t\t\t\t<width>32</width>\n\t\t\t\t<height>32</height>\n\t\t\t\t<depth>24</depth>\n\t\t\t\t<url>/DeviceIcons?id=0</url>\n\t\t\t</icon>\n\t\t</iconList>\n      <serviceList>\n         <service>\n            <serviceType>urn:schemas-upnp-org:service:ContentDirectory:1</serviceType>\n            <serviceId>urn:upnp-org:serviceId:ContentDirectory</serviceId>\n            <SCPDURL>_urn:schemas-upnp-org:service:ContentDirectory1.xml</SCPDURL>\n            <controlURL>_urn:schemas-upnp-org:service:ContentDirectory_control</controlURL>\n            <eventSubURL>_urn:schemas-upnp-org:service:ContentDirectory_event</eventSubURL>\n         </service>\n         <service>\n            <serviceType>urn:schemas-upnp-org:service:ConnectionManager:1</serviceType>\n            <serviceId>urn:upnp-org:serviceId:ConnectionManager</serviceId>\n            <SCPDURL>_urn:schemas-upnp-org:service:ConnectionManager1.xml</SCPDURL>\n            <controlURL>_urn:schemas-upnp-org:service:ConnectionManager_control</controlURL>\n            <eventSubURL>_urn:schemas-upnp-org:service:ConnectionManager_event</eventSubURL>\n         </service>\n      </serviceList>\n   </device>\n</root>"

    const-string v1, "<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<scpd xmlns=\"urn:schemas-upnp-org:service-1-0\">\n   <specVersion>\n      <major>1</major>\n      <minor>0</minor>\n   </specVersion>\n   <actionList>\n      <action>\n         <name>ExportResource</name>\n         <argumentList>\n            <argument>\n               <name>SourceURI</name>\n               <direction>in</direction>\n               <relatedStateVariable>A_ARG_TYPE_URI</relatedStateVariable>\n            </argument>\n            <argument>\n               <name>DestinationURI</name>\n               <direction>in</direction>\n               <relatedStateVariable>A_ARG_TYPE_URI</relatedStateVariable>\n            </argument>\n            <argument>\n               <name>TransferID</name>\n               <direction>out</direction>\n               <relatedStateVariable>A_ARG_TYPE_TransferID</relatedStateVariable>\n            </argument>\n         </argumentList>\n      </action>\n      <action>\n         <name>StopTransferResource</name>\n         <argumentList>\n            <argument>\n               <name>TransferID</name>\n               <direction>in</direction>\n               <relatedStateVariable>A_ARG_TYPE_TransferID</relatedStateVariable>\n            </argument>\n         </argumentList>\n      </action>\n      <action>\n         <name>DestroyObject</name>\n         <argumentList>\n            <argument>\n               <name>ObjectID</name>\n               <direction>in</direction>\n               <relatedStateVariable>A_ARG_TYPE_ObjectID</relatedStateVariable>\n            </argument>\n         </argumentList>\n      </action>\n      <action>\n         <name>DeleteResource</name>\n         <argumentList>\n            <argument>\n               <name>ResourceURI</name>\n               <direction>in</direction>\n               <relatedStateVariable>A_ARG_TYPE_URI</relatedStateVariable>\n            </argument>\n         </argumentList>\n      </action>\n      <action>\n         <name>UpdateObject</name>\n         <argumentList>\n            <argument>\n               <name>ObjectID</name>\n               <direction>in</direction>\n               <relatedStateVariable>A_ARG_TYPE_ObjectID</relatedStateVariable>\n            </argument>\n            <argument>\n               <name>CurrentTagValue</name>\n               <direction>in</direction>\n               <relatedStateVariable>A_ARG_TYPE_TagValueList</relatedStateVariable>\n            </argument>\n            <argument>\n               <name>NewTagValue</name>\n               <direction>in</direction>\n               <relatedStateVariable>A_ARG_TYPE_TagValueList</relatedStateVariable>\n            </argument>\n         </argumentList>\n      </action>\n      <action>\n         <name>Browse</name>\n         <argumentList>\n            <argument>\n               <name>ObjectID</name>\n               <direction>in</direction>\n               <relatedStateVariable>A_ARG_TYPE_ObjectID</relatedStateVariable>\n            </argument>\n            <argument>\n               <name>BrowseFlag</name>\n               <direction>in</direction>\n               <relatedStateVariable>A_ARG_TYPE_BrowseFlag</relatedStateVariable>\n            </argument>\n            <argument>\n               <name>Filter</name>\n               <direction>in</direction>\n               <relatedStateVariable>A_ARG_TYPE_Filter</relatedStateVariable>\n            </argument>\n            <argument>\n               <name>StartingIndex</name>\n               <direction>in</direction>\n               <relatedStateVariable>A_ARG_TYPE_Index</relatedStateVariable>\n            </argument>\n            <argument>\n               <name>RequestedCount</name>\n               <direction>in</direction>\n               <relatedStateVariable>A_ARG_TYPE_Count</relatedStateVariable>\n            </argument>\n            <argument>\n               <name>SortCriteria</name>\n               <direction>in</direction>\n               <relatedStateVariable>A_ARG_TYPE_SortCriteria</relatedStateVariable>\n            </argument>\n            <argument>\n               <name>Result</name>\n               <direction>out</direction>\n               <relatedStateVariable>A_ARG_TYPE_Result</relatedStateVariable>\n            </argument>\n            <argument>\n               <name>NumberReturned</name>\n               <direction>out</direction>\n               <relatedStateVariable>A_ARG_TYPE_Count</relatedStateVariable>\n            </argument>\n            <argument>\n               <name>TotalMatches</name>\n               <direction>out</direction>\n               <relatedStateVariable>A_ARG_TYPE_Count</relatedStateVariable>\n            </argument>\n            <argument>\n               <name>UpdateID</name>\n               <direction>out</direction>\n               <relatedStateVariable>A_ARG_TYPE_UpdateID</relatedStateVariable>\n            </argument>\n         </argumentList>\n      </action>\n      <action>\n         <name>GetTransferProgress</name>\n         <argumentList>\n            <argument>\n               <name>TransferID</name>\n               <direction>in</direction>\n               <relatedStateVariable>A_ARG_TYPE_TransferID</relatedStateVariable>\n            </argument>\n            <argument>\n               <name>TransferStatus</name>\n               <direction>out</direction>\n               <relatedStateVariable>A_ARG_TYPE_TransferStatus</relatedStateVariable>\n            </argument>\n            <argument>\n               <name>TransferLength</name>\n               <direction>out</direction>\n               <relatedStateVariable>A_ARG_TYPE_TransferLength</relatedStateVariable>\n            </argument>\n            <argument>\n               <name>TransferTotal</name>\n               <direction>out</direction>\n               <relatedStateVariable>A_ARG_TYPE_TransferTotal</relatedStateVariable>\n            </argument>\n         </argumentList>\n      </action>\n      <action>\n         <name>GetSearchCapabilities</name>\n         <argumentList>\n            <argument>\n               <name>SearchCaps</name>\n               <direction>out</direction>\n               <relatedStateVariable>SearchCapabilities</relatedStateVariable>\n            </argument>\n         </argumentList>\n      </action>\n      <action>\n         <name>CreateObject</name>\n         <argumentList>\n            <argument>\n               <name>ContainerID</name>\n               <direction>in</direction>\n               <relatedStateVariable>A_ARG_TYPE_ObjectID</relatedStateVariable>\n            </argument>\n            <argument>\n               <name>Elements</name>\n               <direction>in</direction>\n               <relatedStateVariable>A_ARG_TYPE_Result</relatedStateVariable>\n            </argument>\n            <argument>\n               <name>ObjectID</name>\n               <direction>out</direction>\n               <relatedStateVariable>A_ARG_TYPE_ObjectID</relatedStateVariable>\n            </argument>\n            <argument>\n               <name>Result</name>\n               <direction>out</direction>\n               <relatedStateVariable>A_ARG_TYPE_Result</relatedStateVariable>\n            </argument>\n         </argumentList>\n      </action>\n      <action>\n         <name>Search</name>\n         <argumentList>\n            <argument>\n               <name>ContainerID</name>\n               <direction>in</direction>\n               <relatedStateVariable>A_ARG_TYPE_ObjectID</relatedStateVariable>\n            </argument>\n            <argument>\n               <name>SearchCriteria</name>\n               <direction>in</direction>\n               <relatedStateVariable>A_ARG_TYPE_SearchCriteria</relatedStateVariable>\n            </argument>\n            <argument>\n               <name>Filter</name>\n               <direction>in</direction>\n               <relatedStateVariable>A_ARG_TYPE_Filter</relatedStateVariable>\n            </argument>\n            <argument>\n               <name>StartingIndex</name>\n               <direction>in</direction>\n               <relatedStateVariable>A_ARG_TYPE_Index</relatedStateVariable>\n            </argument>\n            <argument>\n               <name>RequestedCount</name>\n               <direction>in</direction>\n               <relatedStateVariable>A_ARG_TYPE_Count</relatedStateVariable>\n            </argument>\n            <argument>\n               <name>SortCriteria</name>\n               <direction>in</direction>\n               <relatedStateVariable>A_ARG_TYPE_SortCriteria</relatedStateVariable>\n            </argument>\n            <argument>\n               <name>Result</name>\n               <direction>out</direction>\n               <relatedStateVariable>A_ARG_TYPE_Result</relatedStateVariable>\n            </argument>\n            <argument>\n               <name>NumberReturned</name>\n               <direction>out</direction>\n               <relatedStateVariable>A_ARG_TYPE_Count</relatedStateVariable>\n            </argument>\n            <argument>\n               <name>TotalMatches</name>\n               <direction>out</direction>\n               <relatedStateVariable>A_ARG_TYPE_Count</relatedStateVariable>\n            </argument>\n            <argument>\n               <name>UpdateID</name>\n               <direction>out</direction>\n               <relatedStateVariable>A_ARG_TYPE_UpdateID</relatedStateVariable>\n            </argument>\n         </argumentList>\n      </action>\n      <action>\n         <name>GetSortCapabilities</name>\n         <argumentList>\n            <argument>\n               <name>SortCaps</name>\n               <direction>out</direction>\n               <relatedStateVariable>SortCapabilities</relatedStateVariable>\n            </argument>\n         </argumentList>\n      </action>\n      <action>\n         <name>ImportResource</name>\n         <argumentList>\n            <argument>\n               <name>SourceURI</name>\n               <direction>in</direction>\n               <relatedStateVariable>A_ARG_TYPE_URI</relatedStateVariable>\n            </argument>\n            <argument>\n               <name>DestinationURI</name>\n               <direction>in</direction>\n               <relatedStateVariable>A_ARG_TYPE_URI</relatedStateVariable>\n            </argument>\n            <argument>\n               <name>TransferID</name>\n               <direction>out</direction>\n               <relatedStateVariable>A_ARG_TYPE_TransferID</relatedStateVariable>\n            </argument>\n         </argumentList>\n      </action>\n      <action>\n         <name>CreateReference</name>\n         <argumentList>\n            <argument>\n               <name>ContainerID</name>\n               <direction>in</direction>\n               <relatedStateVariable>A_ARG_TYPE_ObjectID</relatedStateVariable>\n            </argument>\n            <argument>\n               <name>ObjectID</name>\n               <direction>in</direction>\n               <relatedStateVariable>A_ARG_TYPE_ObjectID</relatedStateVariable>\n            </argument>\n            <argument>\n               <name>NewID</name>\n               <direction>out</direction>\n               <relatedStateVariable>A_ARG_TYPE_ObjectID</relatedStateVariable>\n            </argument>\n         </argumentList>\n      </action>\n      <action>\n         <name>GetSystemUpdateID</name>\n         <argumentList>\n            <argument>\n              <name>Id</name>\n               <direction>out</direction>\n               <relatedStateVariable>SystemUpdateID</relatedStateVariable>\n            </argument>\n         </argumentList>\n      </action>\n\t   <action>\t\t  <name>GetFeatureList</name>\t\t  <argumentList>\t\t  \t<argument>\t\t\t\t<name>FeatureList</name>\t\t\t\t<direction>out</direction>\t\t\t\t<relatedStateVariable>FeatureList</relatedStateVariable>\t\t\t</argument>\t\t  </argumentList>\t   </action>   </actionList>\n   <serviceStateTable>\n      <stateVariable sendEvents=\"no\">\n         <name>A_ARG_TYPE_SortCriteria</name>\n         <dataType>string</dataType>\n      </stateVariable>\n      <stateVariable sendEvents=\"no\">\n         <name>A_ARG_TYPE_TransferLength</name>\n         <dataType>string</dataType>\n      </stateVariable>\n      <stateVariable sendEvents=\"yes\">\n         <name>TransferIDs</name>\n         <dataType>string</dataType>\n      </stateVariable>\n      <stateVariable sendEvents=\"no\">\n         <name>A_ARG_TYPE_UpdateID</name>\n         <dataType>ui4</dataType>\n      </stateVariable>\n      <stateVariable sendEvents=\"no\">\n         <name>A_ARG_TYPE_SearchCriteria</name>\n         <dataType>string</dataType>\n      </stateVariable>\n      <stateVariable sendEvents=\"no\">\n         <name>A_ARG_TYPE_Filter</name>\n         <dataType>string</dataType>\n      </stateVariable>\n      <stateVariable sendEvents=\"yes\">\n         <name>ContainerUpdateIDs</name>\n         <dataType>string</dataType>\n      </stateVariable>\n      <stateVariable sendEvents=\"no\">\n         <name>A_ARG_TYPE_Result</name>\n         <dataType>string</dataType>\n      </stateVariable>\n      <stateVariable sendEvents=\"no\">\n         <name>A_ARG_TYPE_Index</name>\n         <dataType>ui4</dataType>\n      </stateVariable>\n      <stateVariable sendEvents=\"no\">\n         <name>A_ARG_TYPE_TransferID</name>\n         <dataType>ui4</dataType>\n      </stateVariable>\n\t   <stateVariable>\t\t  <name>FeatureList</name>\t\t  <sendEventsAttribute>no</sendEventsAttribute>\t\t  <dataType>string</dataType>\t   </stateVariable>      <stateVariable sendEvents=\"no\">\n         <name>A_ARG_TYPE_TagValueList</name>\n         <dataType>string</dataType>\n      </stateVariable>\n      <stateVariable sendEvents=\"no\">\n         <name>A_ARG_TYPE_URI</name>\n         <dataType>uri</dataType>\n      </stateVariable>\n      <stateVariable sendEvents=\"no\">\n         <name>A_ARG_TYPE_ObjectID</name>\n         <dataType>string</dataType>\n      </stateVariable>\n      <stateVariable sendEvents=\"no\">\n         <name>SortCapabilities</name>\n         <dataType>string</dataType>\n      </stateVariable>\n      <stateVariable sendEvents=\"no\">\n         <name>SearchCapabilities</name>\n         <dataType>string</dataType>\n      </stateVariable>\n      <stateVariable sendEvents=\"no\">\n         <name>A_ARG_TYPE_Count</name>\n         <dataType>ui4</dataType>\n      </stateVariable>\n      <stateVariable sendEvents=\"no\">\n         <name>A_ARG_TYPE_BrowseFlag</name>\n         <dataType>string</dataType>\n         <allowedValueList>\n            <allowedValue>BrowseMetadata</allowedValue>\n            <allowedValue>BrowseDirectChildren</allowedValue>\n         </allowedValueList>\n      </stateVariable>\n      <stateVariable sendEvents=\"yes\">\n         <name>SystemUpdateID</name>\n         <dataType>ui4</dataType>\n      </stateVariable>\n      <stateVariable sendEvents=\"no\">\n         <name>A_ARG_TYPE_TransferStatus</name>\n         <dataType>string</dataType>\n         <allowedValueList>\n            <allowedValue>COMPLETED</allowedValue>\n            <allowedValue>ERROR</allowedValue>\n            <allowedValue>IN_PROGRESS</allowedValue>\n            <allowedValue>STOPPED</allowedValue>\n         </allowedValueList>\n      </stateVariable>\n      <stateVariable sendEvents=\"no\">\n         <name>A_ARG_TYPE_TransferTotal</name>\n         <dataType>string</dataType>\n      </stateVariable>\n   </serviceStateTable>\n</scpd>"

    const-string v2, "<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<scpd xmlns=\"urn:schemas-upnp-org:service-1-0\">\n   <specVersion>\n      <major>1</major>\n      <minor>0</minor>\n\t</specVersion>\n\t<actionList>\n\t\t<action>\n         <name>GetCurrentConnectionInfo</name>\n         <argumentList>\n            <argument>\n               <name>ConnectionID</name>\n               <direction>in</direction>\n               <relatedStateVariable>A_ARG_TYPE_ConnectionID</relatedStateVariable>\n            </argument>\n            <argument>\n               <name>RcsID</name>\n               <direction>out</direction>\n               <relatedStateVariable>A_ARG_TYPE_RcsID</relatedStateVariable>\n            </argument>\n            <argument>\n               <name>AVTransportID</name>\n               <direction>out</direction>\n               <relatedStateVariable>A_ARG_TYPE_AVTransportID</relatedStateVariable>\n            </argument>\n            <argument>\n               <name>ProtocolInfo</name>\n               <direction>out</direction>\n               <relatedStateVariable>A_ARG_TYPE_ProtocolInfo</relatedStateVariable>\n            </argument>\n            <argument>\n               <name>PeerConnectionManager</name>\n               <direction>out</direction>\n               <relatedStateVariable>A_ARG_TYPE_ConnectionManager</relatedStateVariable>\n            </argument>\n            <argument>\n               <name>PeerConnectionID</name>\n               <direction>out</direction>\n               <relatedStateVariable>A_ARG_TYPE_ConnectionID</relatedStateVariable>\n            </argument>\n            <argument>\n               <name>Direction</name>\n               <direction>out</direction>\n               <relatedStateVariable>A_ARG_TYPE_Direction</relatedStateVariable>\n            </argument>\n            <argument>\n               <name>Status</name>\n               <direction>out</direction>\n               <relatedStateVariable>A_ARG_TYPE_ConnectionStatus</relatedStateVariable>\n            </argument>\n         </argumentList>\n      </action>\n      <action>\n         <name>GetProtocolInfo</name>\n         <argumentList>\n            <argument>\n               <name>Source</name>\n               <direction>out</direction>\n               <relatedStateVariable>SourceProtocolInfo</relatedStateVariable>\n            </argument>\n            <argument>\n               <name>Sink</name>\n               <direction>out</direction>\n               <relatedStateVariable>SinkProtocolInfo</relatedStateVariable>\n            </argument>\n         </argumentList>\n      </action>\n      <action>\n         <name>GetCurrentConnectionIDs</name>\n         <argumentList>\n            <argument>\n               <name>ConnectionIDs</name>\n               <direction>out</direction>\n               <relatedStateVariable>CurrentConnectionIDs</relatedStateVariable>\n            </argument>\n         </argumentList>\n      </action>\n   </actionList>\n   <serviceStateTable>\n      <stateVariable sendEvents=\"no\">\n         <name>A_ARG_TYPE_ProtocolInfo</name>\n         <dataType>string</dataType>\n      </stateVariable>\n      <stateVariable sendEvents=\"no\">\n         <name>A_ARG_TYPE_ConnectionStatus</name>\n         <dataType>string</dataType>\n         <allowedValueList>\n            <allowedValue>OK</allowedValue>\n            <allowedValue>ContentFormatMismatch</allowedValue>\n            <allowedValue>InsufficientBandwidth</allowedValue>\n            <allowedValue>UnreliableChannel</allowedValue>\n            <allowedValue>Unknown</allowedValue>\n         </allowedValueList>\n      </stateVariable>\n      <stateVariable sendEvents=\"no\">\n         <name>A_ARG_TYPE_AVTransportID</name>\n         <dataType>i4</dataType>\n      </stateVariable>\n      <stateVariable sendEvents=\"no\">\n         <name>A_ARG_TYPE_RcsID</name>\n         <dataType>i4</dataType>\n      </stateVariable>\n      <stateVariable sendEvents=\"no\">\n         <name>A_ARG_TYPE_ConnectionID</name>\n         <dataType>i4</dataType>\n      </stateVariable>\n      <stateVariable sendEvents=\"no\">\n         <name>A_ARG_TYPE_ConnectionManager</name>\n         <dataType>string</dataType>\n      </stateVariable>\n      <stateVariable sendEvents=\"yes\">\n         <name>SourceProtocolInfo</name>\n         <dataType>string</dataType>\n      </stateVariable>\n      <stateVariable sendEvents=\"yes\">\n         <name>SinkProtocolInfo</name>\n         <dataType>string</dataType>\n      </stateVariable>\n      <stateVariable sendEvents=\"no\">\n         <name>A_ARG_TYPE_Direction</name>\n         <dataType>string</dataType>\n         <allowedValueList>\n            <allowedValue>Input</allowedValue>\n            <allowedValue>Output</allowedValue>\n         </allowedValueList>\n      </stateVariable>\n      <stateVariable sendEvents=\"yes\">\n         <name>CurrentConnectionIDs</name>\n         <dataType>string</dataType>\n      </stateVariable>\n   </serviceStateTable>\n</scpd>"

    invoke-direct {p0, v0, v1, v2}, Lorg/cybergarage/upnp/std/av/server/MediaServer;->initialize(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/cybergarage/upnp/device/InvalidDescriptionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    :goto_0
    return-void

    .line 107
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "descriptionFileName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/cybergarage/upnp/device/InvalidDescriptionException;
        }
    .end annotation

    .prologue
    .line 97
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/cybergarage/upnp/Device;-><init>(Ljava/io/File;)V

    .line 98
    invoke-direct {p0}, Lorg/cybergarage/upnp/std/av/server/MediaServer;->initialize()V

    .line 99
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "description"
    .parameter "contentDirectorySCPD"
    .parameter "connectionManagerSCPD"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/cybergarage/upnp/device/InvalidDescriptionException;
        }
    .end annotation

    .prologue
    .line 112
    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;-><init>()V

    .line 113
    invoke-direct {p0, p1, p2, p3}, Lorg/cybergarage/upnp/std/av/server/MediaServer;->initialize(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    return-void
.end method

.method private initialize()V
    .locals 3

    .prologue
    .line 132
    const/16 v2, 0x9

    invoke-static {v2}, Lorg/cybergarage/upnp/UPnP;->setEnable(I)V

    .line 135
    const v2, 0x9678

    invoke-virtual {p0, v2}, Lorg/cybergarage/upnp/Device;->setHTTPPort(I)V

    .line 137
    new-instance v2, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;

    invoke-direct {v2, p0}, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;-><init>(Lorg/cybergarage/upnp/std/av/server/MediaServer;)V

    iput-object v2, p0, Lorg/cybergarage/upnp/std/av/server/MediaServer;->conDir:Lorg/cybergarage/upnp/std/av/server/ContentDirectory;

    .line 138
    new-instance v2, Lorg/cybergarage/upnp/std/av/server/ConnectionManager;

    invoke-direct {v2, p0}, Lorg/cybergarage/upnp/std/av/server/ConnectionManager;-><init>(Lorg/cybergarage/upnp/std/av/server/MediaServer;)V

    iput-object v2, p0, Lorg/cybergarage/upnp/std/av/server/MediaServer;->conMan:Lorg/cybergarage/upnp/std/av/server/ConnectionManager;

    .line 140
    const-string v2, "urn:schemas-upnp-org:service:ContentDirectory:1"

    invoke-virtual {p0, v2}, Lorg/cybergarage/upnp/Device;->getService(Ljava/lang/String;)Lorg/cybergarage/upnp/Service;

    move-result-object v0

    .line 141
    .local v0, servConDir:Lorg/cybergarage/upnp/Service;
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/MediaServer;->getContentDirectory()Lorg/cybergarage/upnp/std/av/server/ContentDirectory;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/cybergarage/upnp/Service;->setActionListener(Lorg/cybergarage/upnp/control/ActionListener;)V

    .line 142
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/MediaServer;->getContentDirectory()Lorg/cybergarage/upnp/std/av/server/ContentDirectory;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/cybergarage/upnp/Service;->setQueryListener(Lorg/cybergarage/upnp/control/QueryListener;)V

    .line 144
    const-string v2, "urn:schemas-upnp-org:service:ConnectionManager:1"

    invoke-virtual {p0, v2}, Lorg/cybergarage/upnp/Device;->getService(Ljava/lang/String;)Lorg/cybergarage/upnp/Service;

    move-result-object v1

    .line 145
    .local v1, servConMan:Lorg/cybergarage/upnp/Service;
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/MediaServer;->getConnectionManager()Lorg/cybergarage/upnp/std/av/server/ConnectionManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/cybergarage/upnp/Service;->setActionListener(Lorg/cybergarage/upnp/control/ActionListener;)V

    .line 146
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/MediaServer;->getConnectionManager()Lorg/cybergarage/upnp/std/av/server/ConnectionManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/cybergarage/upnp/Service;->setQueryListener(Lorg/cybergarage/upnp/control/QueryListener;)V

    .line 147
    return-void
.end method

.method private initialize(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "description"
    .parameter "contentDirectorySCPD"
    .parameter "connectionManagerSCPD"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/cybergarage/upnp/device/InvalidDescriptionException;
        }
    .end annotation

    .prologue
    .line 118
    invoke-virtual {p0, p1}, Lorg/cybergarage/upnp/Device;->loadDescription(Ljava/lang/String;)Z

    .line 120
    const-string v2, "urn:schemas-upnp-org:service:ContentDirectory:1"

    invoke-virtual {p0, v2}, Lorg/cybergarage/upnp/Device;->getService(Ljava/lang/String;)Lorg/cybergarage/upnp/Service;

    move-result-object v0

    .line 121
    .local v0, servConDir:Lorg/cybergarage/upnp/Service;
    invoke-virtual {v0, p2}, Lorg/cybergarage/upnp/Service;->loadSCPD(Ljava/lang/String;)Z

    .line 123
    const-string v2, "urn:schemas-upnp-org:service:ConnectionManager:1"

    invoke-virtual {p0, v2}, Lorg/cybergarage/upnp/Device;->getService(Ljava/lang/String;)Lorg/cybergarage/upnp/Service;

    move-result-object v1

    .line 124
    .local v1, servConMan:Lorg/cybergarage/upnp/Service;
    invoke-virtual {v1, p3}, Lorg/cybergarage/upnp/Service;->loadSCPD(Ljava/lang/String;)Z

    .line 126
    invoke-direct {p0}, Lorg/cybergarage/upnp/std/av/server/MediaServer;->initialize()V

    .line 127
    return-void
.end method


# virtual methods
.method public addContentDirectory(Lorg/cybergarage/upnp/std/av/server/Directory;)V
    .locals 1
    .parameter "dir"

    .prologue
    .line 177
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/MediaServer;->getContentDirectory()Lorg/cybergarage/upnp/std/av/server/ContentDirectory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->addDirectory(Lorg/cybergarage/upnp/std/av/server/Directory;)Z

    .line 178
    return-void
.end method

.method public addPlugIn(Lorg/cybergarage/upnp/std/av/server/object/Format;)Z
    .locals 1
    .parameter "format"

    .prologue
    .line 206
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/MediaServer;->getContentDirectory()Lorg/cybergarage/upnp/std/av/server/ContentDirectory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->addPlugIn(Lorg/cybergarage/upnp/std/av/server/object/Format;)Z

    move-result v0

    return v0
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 151
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/MediaServer;->stop()Z

    .line 152
    return-void
.end method

.method public getConnectionManager()Lorg/cybergarage/upnp/std/av/server/ConnectionManager;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lorg/cybergarage/upnp/std/av/server/MediaServer;->conMan:Lorg/cybergarage/upnp/std/av/server/ConnectionManager;

    return-object v0
.end method

.method public getContentDirectory()Lorg/cybergarage/upnp/std/av/server/ContentDirectory;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lorg/cybergarage/upnp/std/av/server/MediaServer;->conDir:Lorg/cybergarage/upnp/std/av/server/ContentDirectory;

    return-object v0
.end method

.method public getContentDirectory(I)Lorg/cybergarage/upnp/std/av/server/Directory;
    .locals 1
    .parameter "n"

    .prologue
    .line 197
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/MediaServer;->getContentDirectory()Lorg/cybergarage/upnp/std/av/server/ContentDirectory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->getDirectory(I)Lorg/cybergarage/upnp/std/av/server/Directory;

    move-result-object v0

    return-object v0
.end method

.method public getIconStream(Lorg/cybergarage/upnp/Icon;)Ljava/io/InputStream;
    .locals 4
    .parameter "icon"

    .prologue
    .line 240
    const/4 v1, 0x0

    .line 242
    .local v1, fi:Ljava/io/FileInputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-virtual {p1}, Lorg/cybergarage/upnp/Icon;->getURL()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #fi:Ljava/io/FileInputStream;
    .local v2, fi:Ljava/io/FileInputStream;
    move-object v1, v2

    .line 245
    .end local v2           #fi:Ljava/io/FileInputStream;
    .restart local v1       #fi:Ljava/io/FileInputStream;
    :goto_0
    return-object v2

    .line 244
    :catch_0
    move-exception v0

    .line 245
    .local v0, e:Ljava/io/FileNotFoundException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getInterfaceAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 220
    invoke-static {}, Lorg/cybergarage/net/HostInterface;->getInterface()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNContentDirectories()I
    .locals 1

    .prologue
    .line 192
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/MediaServer;->getContentDirectory()Lorg/cybergarage/upnp/std/av/server/ContentDirectory;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->getNDirectories()I

    move-result v0

    return v0
.end method

.method public httpRequestRecieved(Lorg/cybergarage/http/HTTPRequest;)V
    .locals 3
    .parameter "httpReq"

    .prologue
    .line 229
    invoke-virtual {p1}, Lorg/cybergarage/http/HTTPRequest;->getURI()Ljava/lang/String;

    move-result-object v0

    .line 230
    .local v0, uri:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "uri = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 232
    const-string v1, "/ExportContent"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 233
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/MediaServer;->getContentDirectory()Lorg/cybergarage/upnp/std/av/server/ContentDirectory;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->contentExportRequestRecieved(Lorg/cybergarage/http/HTTPRequest;)V

    .line 238
    :goto_0
    return-void

    .line 237
    :cond_0
    invoke-super {p0, p1}, Lorg/cybergarage/upnp/Device;->httpRequestRecieved(Lorg/cybergarage/http/HTTPRequest;)V

    goto :goto_0
.end method

.method public removeAllContentDirectories()V
    .locals 1

    .prologue
    .line 187
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/MediaServer;->getContentDirectory()Lorg/cybergarage/upnp/std/av/server/ContentDirectory;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->removeAllDirectories()Z

    .line 188
    return-void
.end method

.method public removeContentDirectory(Ljava/lang/String;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 182
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/MediaServer;->getContentDirectory()Lorg/cybergarage/upnp/std/av/server/ContentDirectory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->removeDirectory(Ljava/lang/String;)Z

    .line 183
    return-void
.end method

.method public setInterfaceAddress(Ljava/lang/String;)V
    .locals 0
    .parameter "ifaddr"

    .prologue
    .line 215
    invoke-static {p1}, Lorg/cybergarage/net/HostInterface;->setInterface(Ljava/lang/String;)V

    .line 216
    return-void
.end method

.method public start()Z
    .locals 1

    .prologue
    .line 255
    invoke-super {p0}, Lorg/cybergarage/upnp/Device;->start()Z

    .line 256
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/MediaServer;->getContentDirectory()Lorg/cybergarage/upnp/std/av/server/ContentDirectory;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cybergarage/util/ThreadCore;->start()V

    .line 257
    const/4 v0, 0x1

    return v0
.end method

.method public stop()Z
    .locals 1

    .prologue
    .line 262
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/MediaServer;->getContentDirectory()Lorg/cybergarage/upnp/std/av/server/ContentDirectory;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cybergarage/util/ThreadCore;->stop()V

    .line 263
    invoke-super {p0}, Lorg/cybergarage/upnp/Device;->stop()Z

    .line 264
    const/4 v0, 0x1

    return v0
.end method

.method public update()V
    .locals 0

    .prologue
    .line 273
    return-void
.end method
