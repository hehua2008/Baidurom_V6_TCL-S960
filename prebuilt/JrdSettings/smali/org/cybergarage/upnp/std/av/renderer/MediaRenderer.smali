.class public Lorg/cybergarage/upnp/std/av/renderer/MediaRenderer;
.super Lorg/cybergarage/upnp/Device;
.source "MediaRenderer.java"


# static fields
.field public static final DEFAULT_HTTP_PORT:I = 0x9a60

.field public static final DESCRIPTION:Ljava/lang/String; = "<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<root xmlns=\"urn:schemas-upnp-org:device-1-0\">\n   <specVersion>\n      <major>1</major>\n      <minor>0</minor>\n   </specVersion>\n   <device>\n      <deviceType>urn:schemas-upnp-org:device:MediaRenderer:1</deviceType>\n      <friendlyName>TCL Media Render</friendlyName>\n      <manufacturer>TCL</manufacturer>\n      <manufacturerURL>http://www.tcl.com</manufacturerURL>\n      <modelDescription>Media Renderer device</modelDescription>\n      <modelName>TCL Media Render</modelName>\n      <modelNumber>1.0</modelNumber>\n      <modelURL>http://www.tcl.com</modelURL>\n      <equipmentID>tcl_tv_renderer_001</equipmentID>\n      <deviceDescriptionID>tcl00000001</deviceDescriptionID>\n      <UDN>uuid:362d9414-31a0-48b6-b684-2b4bd38391d0</UDN>\n      <iconList>\n         <icon>\n            <mimetype>image/jpeg</mimetype>\n            <width>48</width>\n            <height>48</height>\n            <depth>24</depth>\n            <url>icon_s.jpeg</url>\n          </icon>\n         <icon>\n            <mimetype>image/jpeg</mimetype>\n            <width>120</width>\n            <height>120</height>\n            <depth>24</depth>\n            <url>icon_l.jpeg</url>\n          </icon>\n         <icon>\n            <mimetype>image/png</mimetype>\n            <width>48</width>\n            <height>48</height>\n            <depth>24</depth>\n            <url>icon_s.png</url>\n          </icon>\n         <icon>\n            <mimetype>image/png</mimetype>\n            <width>120</width>\n            <height>120</height>\n            <depth>24</depth>\n            <url>icon_l.png</url>\n          </icon>\n      </iconList>\n      <serviceList>\n         <service>\n            <serviceType>urn:schemas-upnp-org:service:ConnectionManager:1</serviceType>\n            <serviceId>urn:upnp-org:serviceId:ConnectionManager</serviceId>\n\t\t\t <SCPDURL>_urn:schemas-upnp-org:service:ConnectionManager_scpd.xml</SCPDURL>\n\t\t\t <controlURL>_urn:schemas-upnp-org:service:ConnectionManager_control</controlURL>\n\t\t\t <eventSubURL>_urn:schemas-upnp-org:service:ConnectionManager_event</eventSubURL>\n         </service>\n         <service>\n            <serviceType>urn:schemas-upnp-org:service:AVTransport:1</serviceType>\n\t\t\t <SCPDURL>_urn:schemas-upnp-org:service:AVTransport_scpd.xml</SCPDURL>\n\t\t\t <controlURL>_urn:schemas-upnp-org:service:AVTransport_control</controlURL>\n\t\t\t <eventSubURL>_urn:schemas-upnp-org:service:AVTransport_event</eventSubURL>\n            <serviceId>urn:upnp-org:serviceId:AVTransport</serviceId>\n         </service>\n         <service>\n            <serviceType>urn:schemas-upnp-org:service:RenderingControl:1</serviceType>\n            <serviceId>urn:upnp-org:serviceId:RenderingControl</serviceId>\n\t\t\t <SCPDURL>_urn:schemas-upnp-org:service:RenderingControl_scpd.xml</SCPDURL>\n\t\t\t <controlURL>_urn:schemas-upnp-org:service:RenderingControl_control</controlURL>\n\t\t\t <eventSubURL>_urn:schemas-upnp-org:service:RenderingControl_event</eventSubURL>\n         </service>\n      </serviceList>\n   </device>\n</root>"

.field private static final DESCRIPTION_FILE_NAME:Ljava/lang/String; = "description/description.xml"

.field public static final DEVICE_TYPE:Ljava/lang/String; = "urn:schemas-upnp-org:device:MediaRenderer:1"


# instance fields
.field private actionListener:Lorg/cybergarage/upnp/control/ActionListener;

.field private avTrans:Lorg/cybergarage/upnp/std/av/renderer/AVTransport;

.field private conMan:Lorg/cybergarage/upnp/std/av/renderer/ConnectionManager;

.field private renCon:Lorg/cybergarage/upnp/std/av/renderer/RenderingControl;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    .line 124
    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;-><init>()V

    .line 126
    :try_start_0
    const-string v1, "<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<root xmlns=\"urn:schemas-upnp-org:device-1-0\">\n   <specVersion>\n      <major>1</major>\n      <minor>0</minor>\n   </specVersion>\n   <device>\n      <deviceType>urn:schemas-upnp-org:device:MediaRenderer:1</deviceType>\n      <friendlyName>TCL Media Render</friendlyName>\n      <manufacturer>TCL</manufacturer>\n      <manufacturerURL>http://www.tcl.com</manufacturerURL>\n      <modelDescription>Media Renderer device</modelDescription>\n      <modelName>TCL Media Render</modelName>\n      <modelNumber>1.0</modelNumber>\n      <modelURL>http://www.tcl.com</modelURL>\n      <equipmentID>tcl_tv_renderer_001</equipmentID>\n      <deviceDescriptionID>tcl00000001</deviceDescriptionID>\n      <UDN>uuid:362d9414-31a0-48b6-b684-2b4bd38391d0</UDN>\n      <iconList>\n         <icon>\n            <mimetype>image/jpeg</mimetype>\n            <width>48</width>\n            <height>48</height>\n            <depth>24</depth>\n            <url>icon_s.jpeg</url>\n          </icon>\n         <icon>\n            <mimetype>image/jpeg</mimetype>\n            <width>120</width>\n            <height>120</height>\n            <depth>24</depth>\n            <url>icon_l.jpeg</url>\n          </icon>\n         <icon>\n            <mimetype>image/png</mimetype>\n            <width>48</width>\n            <height>48</height>\n            <depth>24</depth>\n            <url>icon_s.png</url>\n          </icon>\n         <icon>\n            <mimetype>image/png</mimetype>\n            <width>120</width>\n            <height>120</height>\n            <depth>24</depth>\n            <url>icon_l.png</url>\n          </icon>\n      </iconList>\n      <serviceList>\n         <service>\n            <serviceType>urn:schemas-upnp-org:service:ConnectionManager:1</serviceType>\n            <serviceId>urn:upnp-org:serviceId:ConnectionManager</serviceId>\n\t\t\t <SCPDURL>_urn:schemas-upnp-org:service:ConnectionManager_scpd.xml</SCPDURL>\n\t\t\t <controlURL>_urn:schemas-upnp-org:service:ConnectionManager_control</controlURL>\n\t\t\t <eventSubURL>_urn:schemas-upnp-org:service:ConnectionManager_event</eventSubURL>\n         </service>\n         <service>\n            <serviceType>urn:schemas-upnp-org:service:AVTransport:1</serviceType>\n\t\t\t <SCPDURL>_urn:schemas-upnp-org:service:AVTransport_scpd.xml</SCPDURL>\n\t\t\t <controlURL>_urn:schemas-upnp-org:service:AVTransport_control</controlURL>\n\t\t\t <eventSubURL>_urn:schemas-upnp-org:service:AVTransport_event</eventSubURL>\n            <serviceId>urn:upnp-org:serviceId:AVTransport</serviceId>\n         </service>\n         <service>\n            <serviceType>urn:schemas-upnp-org:service:RenderingControl:1</serviceType>\n            <serviceId>urn:upnp-org:serviceId:RenderingControl</serviceId>\n\t\t\t <SCPDURL>_urn:schemas-upnp-org:service:RenderingControl_scpd.xml</SCPDURL>\n\t\t\t <controlURL>_urn:schemas-upnp-org:service:RenderingControl_control</controlURL>\n\t\t\t <eventSubURL>_urn:schemas-upnp-org:service:RenderingControl_event</eventSubURL>\n         </service>\n      </serviceList>\n   </device>\n</root>"

    const-string v2, "<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<scpd xmlns=\"urn:schemas-upnp-org:service-1-0\">\n   <specVersion>\n      <major>1</major>\n      <minor>0</minor>\n\t</specVersion>\n  <serviceStateTable>\n    <stateVariable>\n      <name>PresetNameList</name> <sendEventsAttribute>no</sendEventsAttribute>\n      <dataType>string</dataType>\n    </stateVariable>\n    <stateVariable sendEvents=\"yes\">       <name>LastChange</name> <sendEventsAttribute>yes</sendEventsAttribute>\n      <dataType>string</dataType>\n    </stateVariable>\n    <stateVariable><Optional/>\n      <name>Brightness</name> <sendEventsAttribute>no</sendEventsAttribute>\n      <dataType>ui2</dataType>\n\t<allowedValueRange>\n\t\t<minimum>0</minimum>\n\t\t<step>1</step>\n\t</allowedValueRange>\n    </stateVariable>\n    <stateVariable><Optional/>\n      <name>Contrast</name> <sendEventsAttribute>no</sendEventsAttribute>\n      <dataType>ui2</dataType>\n\t<allowedValueRange>\n\t\t<minimum>0</minimum>\n\t\t<step>1</step>\n\t</allowedValueRange>\n    </stateVariable>\n    <stateVariable><Optional/>\n      <name>Sharpness</name> <sendEventsAttribute>no</sendEventsAttribute>\n      <dataType>ui2</dataType>\n\t<allowedValueRange>\n\t\t<minimum>0</minimum>\n\t\t<step>1</step>\n\t</allowedValueRange>\n    </stateVariable>\n    <stateVariable><Optional/>\n      <name>RedVideoGain</name> <sendEventsAttribute>no</sendEventsAttribute>\n      <dataType>ui2</dataType>\n\t<allowedValueRange>\n\t\t<minimum>0</minimum>\n       <maximum>255</maximum>\n\t\t<step>1</step>\n\t</allowedValueRange>\n    </stateVariable>\n    <stateVariable><Optional/>\n      <name>GreenVideoGain</name> <sendEventsAttribute>no</sendEventsAttribute>\n      <dataType>ui2</dataType>\n\t<allowedValueRange>\n\t\t<minimum>0</minimum>\n\t\t<step>1</step>\n\t</allowedValueRange>\n    </stateVariable>\n    <stateVariable><Optional/>\n      <name>BlueVideoGain</name> <sendEventsAttribute>no</sendEventsAttribute>\n      <dataType>ui2</dataType>\n\t<allowedValueRange>\n\t\t<minimum>0</minimum>\n\t\t<step>1</step>\n\t</allowedValueRange>\n    </stateVariable>\n    <stateVariable><Optional/>\n      <name>RedVideoBlackLevel</name> <sendEventsAttribute>no</sendEventsAttribute>\n      <dataType>ui2</dataType>\n\t<allowedValueRange>\n\t\t<minimum>0</minimum>\n\t\t<step>1</step>\n\t</allowedValueRange>\n    </stateVariable>\n    <stateVariable><Optional/>\n      <name>GreenVideoBlackLevel</name> <sendEventsAttribute>no</sendEventsAttribute>\n      <dataType>ui2</dataType>\n\t<allowedValueRange>\n\t\t<minimum>0</minimum>\n\t\t<step>1</step>\n\t</allowedValueRange>\n    </stateVariable>\n    <stateVariable><Optional/>\n      <name>BlueVideoBlackLevel</name> <sendEventsAttribute>no</sendEventsAttribute>\n      <dataType>ui2</dataType>\n\t<allowedValueRange>\n\t\t<minimum>0</minimum>\n\t\t<step>1</step>\n\t</allowedValueRange>\n    </stateVariable>\n    <stateVariable><Optional/>\n      <name>ColorTemperature</name> <sendEventsAttribute>no</sendEventsAttribute>\n      <dataType>ui2</dataType>\n\t<allowedValueRange>\n\t\t<minimum>0</minimum>\n\t\t<step>1</step>\n\t</allowedValueRange>\n    </stateVariable>\n    <stateVariable><Optional/>\n      <name>HorizontalKeystone</name> <sendEventsAttribute>no</sendEventsAttribute>\n      <dataType>i2</dataType>\n\t<allowedValueRange>\n\t\t<step>1</step>\n\t</allowedValueRange>\n    </stateVariable>\n    <stateVariable><Optional/>\n      <name>VerticalKeystone</name> <sendEventsAttribute>no</sendEventsAttribute>\n      <dataType>i2</dataType>\n\t<allowedValueRange>\n\t\t<step>1</step>\n\t</allowedValueRange>\n    </stateVariable>\n    <stateVariable>\n      <name>Mute</name> <sendEventsAttribute>no</sendEventsAttribute>\n      <dataType>boolean</dataType>\n    </stateVariable>\n    <stateVariable>\n      <name>Volume</name> <sendEventsAttribute>no</sendEventsAttribute>\n\t    <allowedValueRange>\n        <minimum>0</minimum>\n        <maximum>100</maximum>\n\t\t <step>1</step>\n\t    </allowedValueRange>\n      <dataType>ui2</dataType>\n\t<allowedValueRange>\n\t\t<minimum>0</minimum>\n\t\t<step>1</step>\n\t</allowedValueRange>\n    </stateVariable>\n    <stateVariable><Optional/>\n      <name>VolumeDB</name> <sendEventsAttribute>no</sendEventsAttribute>\n      <dataType>i2</dataType>\n      <allowedValueRange>\n        <minimum>-32767</minimum>\n        <maximum>32767</maximum>\n      </allowedValueRange>\n    </stateVariable>\n    <stateVariable><Optional/>\n      <name>Loudness</name> <sendEventsAttribute>no</sendEventsAttribute>\n      <dataType>boolean</dataType>\n    </stateVariable>\n    <stateVariable><Optional/>\n      <name>A_ARG_TYPE_Channel</name> <sendEventsAttribute>no</sendEventsAttribute>\n      <dataType>string</dataType>\n      <allowedValueList>\n        <allowedValue>Master</allowedValue>\n      </allowedValueList>\n    </stateVariable>\n    <stateVariable><Optional/>\n      <name>A_ARG_TYPE_InstanceID</name> <sendEventsAttribute>no</sendEventsAttribute>\n      <dataType>ui4</dataType>\n    </stateVariable>\n    <stateVariable>\n      <name>A_ARG_TYPE_PresetName</name> <sendEventsAttribute>no</sendEventsAttribute>\n      <dataType>string</dataType>\n      <allowedValueList>\n        <allowedValue>FactoryDefaults</allowedValue>\n      </allowedValueList>\n    </stateVariable>\n  </serviceStateTable>\n  <actionList>\n    <action>\n    <name>ListPresets</name>\n      <argumentList>\n        <argument>\n          <name>InstanceID</name>\n          <direction>in</direction>\n          <relatedStateVariable>A_ARG_TYPE_InstanceID</relatedStateVariable>\n        </argument>\n        <argument>\n          <name>CurrentPresetNameList</name>\n          <direction>out</direction>\n          <relatedStateVariable>PresetNameList</relatedStateVariable>\n        </argument>\n      </argumentList>\n    </action>\n    <action>\n    <name>SelectPreset</name>\n      <argumentList>\n        <argument>\n          <name>InstanceID</name>\n          <direction>in</direction>\n          <relatedStateVariable>A_ARG_TYPE_InstanceID</relatedStateVariable>\n        </argument>\n        <argument>\n          <name>PresetName</name>\n          <direction>in</direction>\n          <relatedStateVariable>A_ARG_TYPE_PresetName</relatedStateVariable>\n        </argument>\n      </argumentList>\n    </action>\n    <action><Optional/>\n    <name>GetBrightness</name>\n      <argumentList>\n        <argument>\n          <name>InstanceID</name>\n          <direction>in</direction>\n          <relatedStateVariable>A_ARG_TYPE_InstanceID</relatedStateVariable>\n        </argument>\n        <argument>\n          <name>CurrentBrightness</name>\n          <direction>out</direction>\n          <relatedStateVariable>Brightness</relatedStateVariable>\n        </argument>\n      </argumentList>\n    </action>\n    <action><Optional/>\n    <name>SetBrightness</name>\n      <argumentList>\n        <argument>\n          <name>InstanceID</name>\n          <direction>in</direction>\n          <relatedStateVariable>A_ARG_TYPE_InstanceID</relatedStateVariable>\n        </argument>\n        <argument>\n          <name>DesiredBrightness</name>\n          <direction>in</direction>\n          <relatedStateVariable>Brightness</relatedStateVariable>\n        </argument>\n      </argumentList>\n    </action>\n    <action><Optional/>\n    <name>GetContrast</name>\n      <argumentList>\n        <argument>\n          <name>InstanceID</name>\n          <direction>in</direction>\n          <relatedStateVariable>A_ARG_TYPE_InstanceID</relatedStateVariable>\n        </argument>\n        <argument>\n          <name>CurrentContrast</name>\n          <direction>out</direction>\n          <relatedStateVariable>Contrast</relatedStateVariable>\n        </argument>\n      </argumentList>\n    </action>\n    <action><Optional/>\n    <name>SetContrast</name>\n      <argumentList>\n        <argument>\n          <name>InstanceID</name>\n          <direction>in</direction>\n          <relatedStateVariable>A_ARG_TYPE_InstanceID</relatedStateVariable>\n        </argument>\n        <argument>\n          <name>DesiredContrast</name>\n          <direction>in</direction>\n          <relatedStateVariable>Contrast</relatedStateVariable>\n        </argument>\n      </argumentList>\n    </action>\n    <action><Optional/>\n    <name>GetSharpness</name>\n      <argumentList>\n        <argument>\n          <name>InstanceID</name>\n          <direction>in</direction>\n          <relatedStateVariable>A_ARG_TYPE_InstanceID</relatedStateVariable>\n        </argument>\n        <argument>\n          <name>CurrentSharpness</name>\n          <direction>out</direction>\n          <relatedStateVariable>Sharpness</relatedStateVariable>\n        </argument>\n      </argumentList>\n    </action>\n    <action><Optional/>\n    <name>SetSharpness</name>\n      <argumentList>\n        <argument>\n          <name>InstanceID</name>\n          <direction>in</direction>\n          <relatedStateVariable>A_ARG_TYPE_InstanceID</relatedStateVariable>\n        </argument>\n        <argument>\n          <name>DesiredSharpness</name>\n          <direction>in</direction>\n          <relatedStateVariable>Sharpness</relatedStateVariable>\n        </argument>\n      </argumentList>\n    </action>\n    <action><Optional/>\n    <name>GetRedVideoGain</name>\n      <argumentList>\n        <argument>\n          <name>InstanceID</name>\n          <direction>in</direction>\n          <relatedStateVariable>A_ARG_TYPE_InstanceID</relatedStateVariable>\n        </argument>\n        <argument>\n          <name>CurrentRedVideoGain</name>\n          <direction>out</direction>\n          <relatedStateVariable>RedVideoGain</relatedStateVariable>\n        </argument>\n      </argumentList>\n    </action>\n    <action><Optional/>\n    <name>SetRedVideoGain</name>\n      <argumentList>\n        <argument>\n          <name>InstanceID</name>\n          <direction>in</direction>\n          <relatedStateVariable>A_ARG_TYPE_InstanceID</relatedStateVariable>\n        </argument>\n        <argument>\n          <name>DesiredRedVideoGain</name>\n          <direction>in</direction>\n          <relatedStateVariable>RedVideoGain</relatedStateVariable>\n        </argument>\n      </argumentList>\n    </action>\n    <action><Optional/>\n    <name>GetGreenVideoGain</name>\n      <argumentList>\n        <argument>\n          <name>InstanceID</name>\n          <direction>in</direction>\n          <relatedStateVariable>A_ARG_TYPE_InstanceID</relatedStateVariable>\n        </argument>\n        <argument>\n          <name>CurrentGreenVideoGain</name>\n          <direction>out</direction>\n          <relatedStateVariable>GreenVideoGain</relatedStateVariable>\n        </argument>\n      </argumentList>\n    </action>\n    <action><Optional/>\n    <name>SetGreenVideoGain</name>\n      <argumentList>\n        <argument>\n          <name>InstanceID</name>\n          <direction>in</direction>\n          <relatedStateVariable>A_ARG_TYPE_InstanceID</relatedStateVariable>\n        </argument>\n        <argument>\n          <name>DesiredGreenVideoGain</name>\n          <direction>in</direction>\n          <relatedStateVariable>GreenVideoGain</relatedStateVariable>\n        </argument>\n      </argumentList>\n    </action>\n    <action><Optional/>\n    <name>GetBlueVideoGain</name>\n      <argumentList>\n        <argument>\n          <name>InstanceID</name>\n          <direction>in</direction>\n          <relatedStateVariable>A_ARG_TYPE_InstanceID</relatedStateVariable>\n        </argument>\n        <argument>\n          <name>CurrentBlueVideoGain</name>\n          <direction>out</direction>\n          <relatedStateVariable>BlueVideoGain</relatedStateVariable>\n        </argument>\n      </argumentList>\n    </action>\n    <action><Optional/>\n    <name>SetBlueVideoGain</name>\n      <argumentList>\n        <argument>\n          <name>InstanceID</name>\n          <direction>in</direction>\n          <relatedStateVariable>A_ARG_TYPE_InstanceID</relatedStateVariable>\n        </argument>\n        <argument>\n          <name>DesiredBlueVideoGain</name>\n          <direction>in</direction>\n          <relatedStateVariable>BlueVideoGain</relatedStateVariable>\n        </argument>\n      </argumentList>\n    </action>\n   <action><Optional/>\n    <name>GetRedVideoBlackLevel</name>\n      <argumentList>\n        <argument>\n          <name>InstanceID</name>\n          <direction>in</direction>\n          <relatedStateVariable>A_ARG_TYPE_InstanceID</relatedStateVariable>\n        </argument>\n        <argument>\n          <name>CurrentRedVideoBlackLevel</name>\n          <direction>out</direction>\n          <relatedStateVariable>RedVideoBlackLevel</relatedStateVariable>\n        </argument>\n      </argumentList>\n    </action>\n    <action><Optional/>\n    <name>SetRedVideoBlackLevel</name>\n      <argumentList>\n        <argument>\n          <name>InstanceID</name>\n          <direction>in</direction>\n          <relatedStateVariable>A_ARG_TYPE_InstanceID</relatedStateVariable>\n        </argument>\n        <argument>\n          <name>DesiredRedVideoBlackLevel</name>\n          <direction>in</direction>\n          <relatedStateVariable>RedVideoBlackLevel</relatedStateVariable>\n        </argument>\n      </argumentList>\n    </action>\n    <action><Optional/>\n    <name>GetGreenVideoBlackLevel</name>\n      <argumentList>\n        <argument>\n          <name>InstanceID</name>\n          <direction>in</direction>\n          <relatedStateVariable>A_ARG_TYPE_InstanceID</relatedStateVariable>\n        </argument>\n        <argument>\n          <name>CurrentGreenVideoBlackLevel</name>\n          <direction>out</direction>\n          <relatedStateVariable>GreenVideoBlackLevel</relatedStateVariable>\n        </argument>\n      </argumentList>\n    </action>\n    <action><Optional/>\n    <name>SetGreenVideoBlackLevel</name>\n      <argumentList>\n        <argument>\n          <name>InstanceID</name>\n          <direction>in</direction>\n          <relatedStateVariable>A_ARG_TYPE_InstanceID</relatedStateVariable>\n        </argument>\n        <argument>\n          <name>DesiredGreenVideoBlackLevel</name>\n          <direction>in</direction>\n          <relatedStateVariable>GreenVideoBlackLevel</relatedStateVariable>\n        </argument>\n      </argumentList>\n    </action>\n    <action><Optional/>\n    <name>GetBlueVideoBlackLevel</name>\n      <argumentList>\n        <argument>\n          <name>InstanceID</name>\n          <direction>in</direction>\n          <relatedStateVariable>A_ARG_TYPE_InstanceID</relatedStateVariable>\n        </argument>\n        <argument>\n          <name>CurrentBlueVideoBlackLevel</name>\n          <direction>out</direction>\n          <relatedStateVariable>BlueVideoBlackLevel</relatedStateVariable>\n        </argument>\n      </argumentList>\n    </action>\n    <action><Optional/>\n    <name>SetBlueVideoBlackLevel</name>\n      <argumentList>\n        <argument>\n          <name>InstanceID</name>\n          <direction>in</direction>\n          <relatedStateVariable>A_ARG_TYPE_InstanceID</relatedStateVariable>\n        </argument>\n        <argument>\n          <name>DesiredBlueVideoBlackLevel</name>\n    <direction>in</direction>\n  <relatedStateVariable>BlueVideoBlackLevel</relatedStateVariable>\n        </argument>\n      </argumentList>\n    </action>\n    <action><Optional/>\n    <name>GetColorTemperature </name>\n      <argumentList>\n        <argument>\n          <name>InstanceID</name>\n          <direction>in</direction>\n          <relatedStateVariable>A_ARG_TYPE_InstanceID</relatedStateVariable>\n        </argument>\n        <argument>\n          <name>CurrentColorTemperature</name>\n          <direction>out</direction>\n          <relatedStateVariable>ColorTemperature</relatedStateVariable>\n        </argument>\n      </argumentList>\n    </action>\n    <action><Optional/>\n    <name>SetColorTemperature</name>\n      <argumentList>\n        <argument>\n          <name>InstanceID</name>\n          <direction>in</direction>\n          <relatedStateVariable>A_ARG_TYPE_InstanceID</relatedStateVariable>\n        </argument>\n        <argument>\n          <name>DesiredColorTemperature</name>\n          <direction>in</direction>\n          <relatedStateVariable>ColorTemperature</relatedStateVariable>\n        </argument>\n      </argumentList>\n    </action>\n    <action><Optional/>\n    <name>GetHorizontalKeystone</name>\n      <argumentList>\n        <argument>\n          <name>InstanceID</name>\n          <direction>in</direction>\n          <relatedStateVariable>A_ARG_TYPE_InstanceID</relatedStateVariable>\n        </argument>\n        <argument>\n          <name>CurrentHorizontalKeystone</name>\n          <direction>out</direction>\n          <relatedStateVariable>HorizontalKeystone</relatedStateVariable>\n        </argument>\n      </argumentList>\n    </action>\n    <action><Optional/>\n    <name>SetHorizontalKeystone</name>\n      <argumentList>\n        <argument>\n          <name>InstanceID</name>\n          <direction>in</direction>\n          <relatedStateVariable>A_ARG_TYPE_InstanceID</relatedStateVariable>\n        </argument>\n        <argument>\n          <name>DesiredHorizontalKeystone</name>\n          <direction>in</direction>\n          <relatedStateVariable>HorizontalKeystone</relatedStateVariable>\n        </argument>\n      </argumentList>\n    </action>\n    <action><Optional/>\n    <name>GetVerticalKeystone</name>\n      <argumentList>\n        <argument>\n          <name>InstanceID</name>\n          <direction>in</direction>\n          <relatedStateVariable>A_ARG_TYPE_InstanceID</relatedStateVariable>\n        </argument>\n        <argument>\n          <name>CurrentVerticalKeystone</name>\n          <direction>out</direction>\n          <relatedStateVariable>VerticalKeystone</relatedStateVariable>\n        </argument>\n      </argumentList>\n    </action>\n    <action><Optional/>\n    <name>SetVerticalKeystone</name>\n      <argumentList>\n        <argument>\n          <name>InstanceID</name>\n          <direction>in</direction>\n          <relatedStateVariable>A_ARG_TYPE_InstanceID</relatedStateVariable>\n        </argument>\n        <argument>\n          <name>DesiredVerticalKeystone</name>\n          <direction>in</direction>\n          <relatedStateVariable>VerticalKeystone</relatedStateVariable>\n        </argument>\n      </argumentList>\n    </action>\n    <action><Optional/>\n    <name>GetMute</name>\n      <argumentList>\n        <argument>\n          <name>InstanceID</name>\n          <direction>in</direction>\n          <relatedStateVariable>A_ARG_TYPE_InstanceID</relatedStateVariable>\n        </argument>\n        <argument>\n          <name>Channel</name>\n          <direction>in</direction>\n          <relatedStateVariable>A_ARG_TYPE_Channel</relatedStateVariable>\n        </argument>\n        <argument>\n          <name>CurrentMute</name>\n          <direction>out</direction>\n          <relatedStateVariable>Mute</relatedStateVariable>\n        </argument>\n      </argumentList>\n    </action>\n    <action>\n    <name>SetMute</name>\n      <argumentList>\n        <argument>\n          <name>InstanceID</name>\n          <direction>in</direction>\n          <relatedStateVariable>A_ARG_TYPE_InstanceID</relatedStateVariable>\n        </argument>\n        <argument>\n          <name>Channel</name>\n          <direction>in</direction>\n          <relatedStateVariable>A_ARG_TYPE_Channel</relatedStateVariable>\n        </argument>\n        <argument>\n          <name>DesiredMute</name>\n          <direction>in</direction>\n          <relatedStateVariable>Mute</relatedStateVariable>\n        </argument>\n      </argumentList>\n    </action>\n    <action>\n    <name>GetVolume</name>\n      <argumentList>\n        <argument>\n          <name>InstanceID</name>\n          <direction>in</direction>\n          <relatedStateVariable>A_ARG_TYPE_InstanceID</relatedStateVariable>\n        </argument>\n        <argument>\n          <name>Channel</name>\n          <direction>in</direction>\n          <relatedStateVariable>A_ARG_TYPE_Channel</relatedStateVariable>\n        </argument>\n        <argument>\n          <name>CurrentVolume</name>\n          <direction>out</direction>\n          <relatedStateVariable>Volume</relatedStateVariable>\n        </argument>\n      </argumentList>\n    </action>\n    <action>\n    <name>SetVolume</name>\n      <argumentList>\n        <argument>\n          <name>InstanceID</name>\n          <direction>in</direction>\n          <relatedStateVariable>A_ARG_TYPE_InstanceID</relatedStateVariable>\n        </argument>\n        <argument>\n          <name>Channel</name>\n          <direction>in</direction>\n          <relatedStateVariable>A_ARG_TYPE_Channel</relatedStateVariable>\n        </argument>\n        <argument>\n          <name>DesiredVolume</name>\n          <direction>in</direction>\n          <relatedStateVariable>Volume</relatedStateVariable>\n        </argument>\n      </argumentList>\n    </action>\n    <action><Optional/>\n    <name>GetVolumeDB</name>\n      <argumentList>\n        <argument>\n          <name>InstanceID</name>\n          <direction>in</direction>\n          <relatedStateVariable>A_ARG_TYPE_InstanceID</relatedStateVariable>\n        </argument>\n        <argument>\n          <name>Channel</name>\n          <direction>in</direction>\n          <relatedStateVariable>A_ARG_TYPE_Channel</relatedStateVariable>\n        </argument>\n        <argument>\n          <name>CurrentVolume</name>\n          <direction>out</direction>\n          <relatedStateVariable>VolumeDB</relatedStateVariable>\n        </argument>\n      </argumentList>\n    </action>\n    <action><Optional/>\n    <name>SetVolumeDB</name>\n      <argumentList>\n        <argument>\n          <name>InstanceID</name>\n          <direction>in</direction>\n          <relatedStateVariable>A_ARG_TYPE_InstanceID</relatedStateVariable>\n        </argument>\n        <argument>\n          <name>Channel</name>\n          <direction>in</direction>\n          <relatedStateVariable>A_ARG_TYPE_Channel</relatedStateVariable>\n        </argument>\n        <argument>\n          <name>DesiredVolume</name>\n          <direction>in</direction>\n          <relatedStateVariable>VolumeDB</relatedStateVariable>\n        </argument>\n      </argumentList>\n    </action>\n    <action><Optional/>\n    <name>GetVolumeDBRange</name>\n      <argumentList>\n        <argument>\n          <name>InstanceID</name>\n          <direction>in</direction>\n          <relatedStateVariable>A_ARG_TYPE_InstanceID</relatedStateVariable>\n        </argument>\n        <argument>\n          <name>Channel</name>\n          <direction>in</direction>\n          <relatedStateVariable>A_ARG_TYPE_Channel</relatedStateVariable>\n        </argument>\n        <argument>\n          <name>MinValue</name>\n          <direction>out</direction>\n          <relatedStateVariable>VolumeDB</relatedStateVariable>\n        </argument>\n        <argument>\n          <name>MaxValue</name>\n          <direction>out</direction>\n          <relatedStateVariable>VolumeDB</relatedStateVariable>\n        </argument>\n      </argumentList>\n    </action>\n    <action><Optional/>\n    <name>GetLoudness</name>\n      <argumentList>\n        <argument>\n          <name>InstanceID</name>\n          <direction>in</direction>\n          <relatedStateVariable>A_ARG_TYPE_InstanceID</relatedStateVariable>\n        </argument>\n        <argument>\n          <name>Channel</name>\n          <direction>in</direction>\n          <relatedStateVariable>A_ARG_TYPE_Channel</relatedStateVariable>\n        </argument>\n        <argument>\n          <name>CurrentLoudness</name>\n          <direction>out</direction>\n          <relatedStateVariable>Loudness</relatedStateVariable>\n        </argument>\n      </argumentList>\n    </action>\n    <action><Optional/>\n    <name>SetLoudness</name>\n      <argumentList>\n        <argument>\n          <name>InstanceID</name>\n          <direction>in</direction>\n          <relatedStateVariable>A_ARG_TYPE_InstanceID</relatedStateVariable>\n        </argument>\n        <argument>\n          <name>Channel</name>\n          <direction>in</direction>\n          <relatedStateVariable>A_ARG_TYPE_Channel</relatedStateVariable>\n        </argument>\n        <argument>\n          <name>DesiredLoudness</name>\n          <direction>in</direction>\n          <relatedStateVariable>Loudness</relatedStateVariable>\n        </argument>\n      </argumentList>\n    </action>\n  </actionList>\n</scpd>\n"

    const-string v3, "<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<scpd xmlns=\"urn:schemas-upnp-org:service-1-0\">\n   <specVersion>\n      <major>1</major>\n      <minor>0</minor>\n\t</specVersion>\n\t<actionList>\n\t\t<action>\n         <name>GetCurrentConnectionInfo</name>\n         <argumentList>\n            <argument>\n               <name>ConnectionID</name>\n               <direction>in</direction>\n               <relatedStateVariable>A_ARG_TYPE_ConnectionID</relatedStateVariable>\n            </argument>\n            <argument>\n               <name>RcsID</name>\n               <direction>out</direction>\n               <relatedStateVariable>A_ARG_TYPE_RcsID</relatedStateVariable>\n            </argument>\n            <argument>\n               <name>AVTransportID</name>\n               <direction>out</direction>\n               <relatedStateVariable>A_ARG_TYPE_AVTransportID</relatedStateVariable>\n            </argument>\n            <argument>\n               <name>ProtocolInfo</name>\n               <direction>out</direction>\n               <relatedStateVariable>A_ARG_TYPE_ProtocolInfo</relatedStateVariable>\n            </argument>\n            <argument>\n               <name>PeerConnectionManager</name>\n               <direction>out</direction>\n               <relatedStateVariable>A_ARG_TYPE_ConnectionManager</relatedStateVariable>\n            </argument>\n            <argument>\n               <name>PeerConnectionID</name>\n               <direction>out</direction>\n               <relatedStateVariable>A_ARG_TYPE_ConnectionID</relatedStateVariable>\n            </argument>\n            <argument>\n               <name>Direction</name>\n               <direction>out</direction>\n               <relatedStateVariable>A_ARG_TYPE_Direction</relatedStateVariable>\n            </argument>\n            <argument>\n               <name>Status</name>\n               <direction>out</direction>\n               <relatedStateVariable>A_ARG_TYPE_ConnectionStatus</relatedStateVariable>\n            </argument>\n         </argumentList>\n      </action>\n      <action>\n         <name>GetProtocolInfo</name>\n         <argumentList>\n            <argument>\n               <name>Source</name>\n               <direction>out</direction>\n               <relatedStateVariable>SourceProtocolInfo</relatedStateVariable>\n            </argument>\n            <argument>\n               <name>Sink</name>\n               <direction>out</direction>\n               <relatedStateVariable>SinkProtocolInfo</relatedStateVariable>\n            </argument>\n         </argumentList>\n      </action>\n      <action>\n         <name>GetCurrentConnectionIDs</name>\n         <argumentList>\n            <argument>\n               <name>ConnectionIDs</name>\n               <direction>out</direction>\n               <relatedStateVariable>CurrentConnectionIDs</relatedStateVariable>\n            </argument>\n         </argumentList>\n      </action>\n   </actionList>\n   <serviceStateTable>\n      <stateVariable sendEvents=\"yes\">\n         <name>CurrentConnectionIDs</name>\n         <sendEventsAttribute>yes</sendEventsAttribute>         <dataType>string</dataType>\n      </stateVariable>\n      <stateVariable sendEvents=\"yes\">\n         <name>SourceProtocolInfo</name>\n         <sendEventsAttribute>yes</sendEventsAttribute>         <dataType>string</dataType>\n      </stateVariable>\n      <stateVariable sendEvents=\"yes\">\n         <name>SinkProtocolInfo</name>\n         <sendEventsAttribute>yes</sendEventsAttribute>         <dataType>string</dataType>\n      </stateVariable>\n      <stateVariable sendEvents=\"no\">\n         <name>A_ARG_TYPE_ProtocolInfo</name>\n         <dataType>string</dataType>\n      </stateVariable>\n      <stateVariable sendEvents=\"no\">\n         <name>A_ARG_TYPE_ConnectionStatus</name>\n         <dataType>string</dataType>\n         <allowedValueList>\n            <allowedValue>OK</allowedValue>\n            <allowedValue>ContentFormatMismatch</allowedValue>\n            <allowedValue>InsufficientBandwidth</allowedValue>\n            <allowedValue>UnreliableChannel</allowedValue>\n            <allowedValue>Unknown</allowedValue>\n         </allowedValueList>\n      </stateVariable>\n      <stateVariable sendEvents=\"no\">\n         <name>A_ARG_TYPE_AVTransportID</name>\n         <dataType>i4</dataType>\n      </stateVariable>\n      <stateVariable sendEvents=\"no\">\n         <name>A_ARG_TYPE_RcsID</name>\n         <dataType>i4</dataType>\n      </stateVariable>\n      <stateVariable sendEvents=\"no\">\n         <name>A_ARG_TYPE_ConnectionID</name>\n         <dataType>i4</dataType>\n      </stateVariable>\n      <stateVariable sendEvents=\"no\">\n         <name>A_ARG_TYPE_ConnectionManager</name>\n         <dataType>string</dataType>\n      </stateVariable>\n      <stateVariable sendEvents=\"no\">\n         <name>A_ARG_TYPE_Direction</name>\n         <dataType>string</dataType>\n         <allowedValueList>\n            <allowedValue>Input</allowedValue>\n            <allowedValue>Output</allowedValue>\n         </allowedValueList>\n      </stateVariable>\n   </serviceStateTable>\n</scpd>\n"

    const-string v4, "<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<scpd xmlns=\"urn:schemas-upnp-org:service-1-0\">\n   <specVersion>\n      <major>1</major>\n      <minor>0</minor>\n\t</specVersion>\n    <serviceStateTable>        <stateVariable>            <name>TransportState</name>            <sendEventsAttribute>no</sendEventsAttribute>            <dataType>string</dataType>            <allowedValueList>                <allowedValue>STOPPED</allowedValue>                <allowedValue>PLAYING</allowedValue>                <allowedValue>PAUSED_PLAYBACK</allowedValue>                <allowedValue>TRANSITIONING</allowedValue>                <allowedValue>NO_MEDIA_PRESENT</allowedValue>            </allowedValueList>        </stateVariable>        <stateVariable sendEvents=\"yes\">            <name>LastChange</name>            <sendEventsAttribute>yes</sendEventsAttribute>            <dataType>string</dataType>        </stateVariable>        <stateVariable>            <name>TransportStatus</name>            <sendEventsAttribute>no</sendEventsAttribute>            <dataType>string</dataType>            <allowedValueList>                <allowedValue>OK</allowedValue>                <allowedValue>ERROR_OCCURRED</allowedValue>                       </allowedValueList>        </stateVariable>        <stateVariable>            <name>PlaybackStorageMedium</name>            <sendEventsAttribute>no</sendEventsAttribute>            <dataType>string</dataType>        </stateVariable>\t     <stateVariable>            <name>RecordStorageMedium</name>            <sendEventsAttribute>no</sendEventsAttribute>            <dataType>string</dataType>              </stateVariable>        <stateVariable>            <name>PossiblePlaybackStorageMedia</name>            <sendEventsAttribute>no</sendEventsAttribute>            <dataType>string</dataType>        </stateVariable>        <stateVariable>            <name>PossibleRecordStorageMedia</name>            <sendEventsAttribute>no</sendEventsAttribute>            <dataType>string</dataType>        </stateVariable>        <stateVariable>            <name>CurrentPlayMode</name>            <sendEventsAttribute>no</sendEventsAttribute>            <dataType>string</dataType>            <allowedValueList>                <allowedValue>NORMAL</allowedValue>            </allowedValueList>            <defaultValue>NORMAL</defaultValue>        </stateVariable>        <stateVariable>            <name>TransportPlaySpeed</name>            <sendEventsAttribute>no</sendEventsAttribute>            <dataType>string</dataType>\t         <allowedValueList>                <allowedValue>1</allowedValue>            </allowedValueList>        </stateVariable>        <stateVariable>            <name>RecordMediumWriteStatus</name>            <sendEventsAttribute>no</sendEventsAttribute>            <dataType>string</dataType>\t         <allowedValueList>                <allowedValue>WRITABLE</allowedValue>                <allowedValue>PROTECTED</allowedValue>                <allowedValue>NOT_WRITABLE</allowedValue>                <allowedValue>UNKNOWN</allowedValue>                <allowedValue>NOT_IMPLEMENTED</allowedValue>            </allowedValueList>         </stateVariable>        <stateVariable>            <name>CurrentRecordQualityMode</name>            <sendEventsAttribute>no</sendEventsAttribute>            <dataType>string</dataType>          </stateVariable>        <stateVariable>            <name>PossibleRecordQualityModes</name>            <sendEventsAttribute>no</sendEventsAttribute>            <dataType>string</dataType>        </stateVariable>        <stateVariable>            <name>NumberOfTracks</name>            <sendEventsAttribute>no</sendEventsAttribute>            <dataType>ui4</dataType>\t\t     <allowedValueRange>\t\t\t     <minimum>0</minimum>\t\t     </allowedValueRange>         </stateVariable>        <stateVariable>            <name>CurrentTrack</name>            <sendEventsAttribute>no</sendEventsAttribute>            <dataType>ui4</dataType>\t\t     <allowedValueRange>\t\t\t    <minimum>0</minimum>\t\t\t    <step>1</step>\t\t     </allowedValueRange>        </stateVariable>        <stateVariable>            <name>CurrentTrackDuration</name>            <sendEventsAttribute>no</sendEventsAttribute>            <dataType>string</dataType>        </stateVariable>\t     <stateVariable>            <name>CurrentMediaDuration</name>            <sendEventsAttribute>no</sendEventsAttribute>            <dataType>string</dataType>        </stateVariable>        <stateVariable>            <name>CurrentTrackMetaData</name>            <sendEventsAttribute>no</sendEventsAttribute>            <dataType>string</dataType>        </stateVariable>        <stateVariable>            <name>CurrentTrackURI</name>            <sendEventsAttribute>no</sendEventsAttribute>            <dataType>string</dataType>        </stateVariable>        <stateVariable>            <name>AVTransportURI</name>            <sendEventsAttribute>no</sendEventsAttribute>            <dataType>string</dataType>        </stateVariable>        <stateVariable>            <name>AVTransportURIMetaData</name>            <sendEventsAttribute>no</sendEventsAttribute>            <dataType>string</dataType>        </stateVariable>        <stateVariable>            <name>NextAVTransportURI</name>            <sendEventsAttribute>no</sendEventsAttribute>            <dataType>string</dataType>        </stateVariable>        <stateVariable>            <name>NextAVTransportURIMetaData</name>            <sendEventsAttribute>no</sendEventsAttribute>            <dataType>string</dataType>        </stateVariable>        <stateVariable>            <name>RelativeTimePosition</name>            <sendEventsAttribute>no</sendEventsAttribute>            <dataType>string</dataType>        </stateVariable>        <stateVariable>            <name>AbsoluteTimePosition</name>            <sendEventsAttribute>no</sendEventsAttribute>            <dataType>string</dataType>        </stateVariable>        <stateVariable>            <name>RelativeCounterPosition</name>            <sendEventsAttribute>no</sendEventsAttribute>            <dataType>i4</dataType>        </stateVariable>        <stateVariable>            <name>AbsoluteCounterPosition</name>            <sendEventsAttribute>no</sendEventsAttribute>            <dataType>i4</dataType>        </stateVariable>        <stateVariable>            <name>A_ARG_TYPE_SeekMode</name>            <sendEventsAttribute>no</sendEventsAttribute>            <dataType>string</dataType>            <allowedValueList>                 <allowedValue>TRACK_NR</allowedValue>                 <allowedValue>REL_TIME</allowedValue>            </allowedValueList>        </stateVariable>        <stateVariable>            <name>A_ARG_TYPE_SeekTarget</name>            <sendEventsAttribute>no</sendEventsAttribute>            <dataType>string</dataType>        </stateVariable>        <stateVariable>            <name>A_ARG_TYPE_InstanceID</name>            <sendEventsAttribute>no</sendEventsAttribute>            <dataType>ui4</dataType>        </stateVariable>    </serviceStateTable>    <actionList>        <action>            <name>SetAVTransportURI</name>            <argumentList>                <argument>                    <name>InstanceID</name>                    <direction>in</direction>                    <relatedStateVariable>A_ARG_TYPE_InstanceID</relatedStateVariable>                </argument>                <argument>                    <name>CurrentURI</name>                    <direction>in</direction>                    <relatedStateVariable>AVTransportURI</relatedStateVariable>                </argument>                <argument>                    <name>CurrentURIMetaData</name>                    <direction>in</direction>                    <relatedStateVariable>AVTransportURIMetaData</relatedStateVariable>                </argument>            </argumentList>        </action>        <action>            <name>GetMediaInfo</name>            <argumentList>                <argument>                    <name>InstanceID</name>                    <direction>in</direction>                 <relatedStateVariable>A_ARG_TYPE_InstanceID</relatedStateVariable>                </argument>                <argument>                    <name>NrTracks</name>                    <direction>out</direction>                    <relatedStateVariable>NumberOfTracks</relatedStateVariable>                </argument>                <argument>                    <name>MediaDuration</name>                    <direction>out</direction>                    <relatedStateVariable>CurrentMediaDuration</relatedStateVariable>                </argument>                <argument>                    <name>CurrentURI</name>                    <direction>out</direction>                    <relatedStateVariable>AVTransportURI</relatedStateVariable>                </argument>\t\t         <argument>                    <name>CurrentURIMetaData</name>                    <direction>out</direction>                    <relatedStateVariable>AVTransportURIMetaData</relatedStateVariable>                </argument>                <argument>                    <name>NextURI</name>                    <direction>out</direction>                    <relatedStateVariable>NextAVTransportURI</relatedStateVariable>                </argument>\t\t         <argument>                    <name>NextURIMetaData</name>                    <direction>out</direction>                    <relatedStateVariable>NextAVTransportURIMetaData</relatedStateVariable>                </argument>                <argument>                    <name>PlayMedium</name>                    <direction>out</direction>                    <relatedStateVariable>PlaybackStorageMedium</relatedStateVariable>                </argument>                <argument>                    <name>RecordMedium</name>                    <direction>out</direction>                    <relatedStateVariable>RecordStorageMedium</relatedStateVariable>                </argument>                <argument>                    <name>WriteStatus</name>                    <direction>out</direction>                    <relatedStateVariable>RecordMediumWriteStatus </relatedStateVariable>                </argument>            </argumentList>        </action>        <action>            <name>GetTransportInfo</name>            <argumentList>                <argument>                    <name>InstanceID</name>                    <direction>in</direction>                    <relatedStateVariable>A_ARG_TYPE_InstanceID</relatedStateVariable>                </argument>                <argument>                    <name>CurrentTransportState</name>                    <direction>out</direction>                    <relatedStateVariable>TransportState</relatedStateVariable>                </argument>                <argument>                    <name>CurrentTransportStatus</name>                    <direction>out</direction>                    <relatedStateVariable>TransportStatus</relatedStateVariable>                </argument>                <argument>                    <name>CurrentSpeed</name>                    <direction>out</direction>                    <relatedStateVariable>TransportPlaySpeed</relatedStateVariable>                </argument>            </argumentList>        </action>        <action>            <name>GetPositionInfo</name>            <argumentList>                <argument>                    <name>InstanceID</name>                    <direction>in</direction>                    <relatedStateVariable>A_ARG_TYPE_InstanceID</relatedStateVariable>                </argument>                <argument>                    <name>Track</name>                    <direction>out</direction>                    <relatedStateVariable>CurrentTrack</relatedStateVariable>                </argument>                <argument>                    <name>TrackDuration</name>                    <direction>out</direction>                    <relatedStateVariable>CurrentTrackDuration</relatedStateVariable>                </argument>                <argument>                    <name>TrackMetaData</name>                    <direction>out</direction>                    <relatedStateVariable>CurrentTrackMetaData</relatedStateVariable>                </argument>                <argument>                    <name>TrackURI</name>                    <direction>out</direction>                    <relatedStateVariable>CurrentTrackURI</relatedStateVariable>                </argument>                <argument>                    <name>RelTime</name>                    <direction>out</direction>                    <relatedStateVariable>RelativeTimePosition</relatedStateVariable>                </argument>                <argument>                    <name>AbsTime</name>                    <direction>out</direction>                    <relatedStateVariable>AbsoluteTimePosition</relatedStateVariable>                </argument>                <argument>                    <name>RelCount</name>                    <direction>out</direction>                    <relatedStateVariable>RelativeCounterPosition</relatedStateVariable>                </argument>                <argument>                    <name>AbsCount</name>                    <direction>out</direction>                    <relatedStateVariable>AbsoluteCounterPosition</relatedStateVariable>                </argument>            </argumentList>        </action>        <action>            <name>GetDeviceCapabilities</name>            <argumentList>                <argument>                    <name>InstanceID</name>                    <direction>in</direction>                    <relatedStateVariable>A_ARG_TYPE_InstanceID</relatedStateVariable>                </argument>                <argument>                    <name>PlayMedia</name>                    <direction>out</direction>                    <relatedStateVariable>PossiblePlaybackStorageMedia</relatedStateVariable>                </argument>                <argument>                    <name>RecMedia</name>                    <direction>out</direction>                    <relatedStateVariable>PossibleRecordStorageMedia</relatedStateVariable>                </argument>                <argument>                    <name>RecQualityModes</name>                    <direction>out</direction>                    <relatedStateVariable>PossibleRecordQualityModes</relatedStateVariable>                </argument>            </argumentList>        </action>        <action>            <name>GetTransportSettings</name>            <argumentList>                <argument>                    <name>InstanceID</name>                    <direction>in</direction>                    <relatedStateVariable>A_ARG_TYPE_InstanceID</relatedStateVariable>                </argument>                <argument>                    <name>PlayMode</name>                    <direction>out</direction>                    <relatedStateVariable>CurrentPlayMode</relatedStateVariable>                </argument>                <argument>                    <name>RecQualityMode</name>                    <direction>out</direction>                 <relatedStateVariable>CurrentRecordQualityMode</relatedStateVariable>                </argument>            </argumentList>        </action>        <action>            <name>Stop</name>            <argumentList>                <argument>                    <name>InstanceID</name>                    <direction>in</direction>                    <relatedStateVariable>A_ARG_TYPE_InstanceID</relatedStateVariable>                </argument>            </argumentList>        </action>        <action>            <name>Play</name>            <argumentList>                <argument>                    <name>InstanceID</name>                    <direction>in</direction>                    <relatedStateVariable>A_ARG_TYPE_InstanceID</relatedStateVariable>                </argument>                <argument>                    <name>Speed</name>                    <direction>in</direction>                    <relatedStateVariable>TransportPlaySpeed</relatedStateVariable>                </argument>            </argumentList>        </action>        <action>            <name>Pause</name>            <argumentList>                <argument>                    <name>InstanceID</name>                    <direction>in</direction>                    <relatedStateVariable>A_ARG_TYPE_InstanceID</relatedStateVariable>                </argument>            </argumentList>        </action>        <action>            <name>Seek</name>            <argumentList>                <argument>                    <name>InstanceID</name>                    <direction>in</direction>                    <relatedStateVariable>A_ARG_TYPE_InstanceID</relatedStateVariable>                </argument>                <argument>                    <name>Unit</name>                    <direction>in</direction>                    <relatedStateVariable>A_ARG_TYPE_SeekMode</relatedStateVariable>                </argument>                <argument>                    <name>Target</name>                    <direction>in</direction>                    <relatedStateVariable>A_ARG_TYPE_SeekTarget</relatedStateVariable>                </argument>            </argumentList>        </action>        <action>            <name>Next</name>            <argumentList>                <argument>                    <name>InstanceID</name>                    <direction>in</direction>                    <relatedStateVariable>A_ARG_TYPE_InstanceID</relatedStateVariable>                </argument>            </argumentList>        </action>        <action>            <name>Previous</name>            <argumentList>                <argument>                    <name>InstanceID</name>                    <direction>in</direction>                    <relatedStateVariable>A_ARG_TYPE_InstanceID</relatedStateVariable>                </argument>            </argumentList>        </action>    </actionList></scpd>"

    invoke-direct {p0, v1, v2, v3, v4}, Lorg/cybergarage/upnp/std/av/renderer/MediaRenderer;->initialize(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/cybergarage/upnp/device/InvalidDescriptionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    :goto_0
    return-void

    .line 128
    :catch_0
    move-exception v0

    .line 129
    .local v0, ide:Lorg/cybergarage/upnp/device/InvalidDescriptionException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

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
    .line 118
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/cybergarage/upnp/Device;-><init>(Ljava/io/File;)V

    .line 119
    invoke-direct {p0}, Lorg/cybergarage/upnp/std/av/renderer/MediaRenderer;->initialize()V

    .line 120
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "description"
    .parameter "renderCtrlSCPD"
    .parameter "conMgrSCPD"
    .parameter "avTransSCPD"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/cybergarage/upnp/device/InvalidDescriptionException;
        }
    .end annotation

    .prologue
    .line 135
    invoke-direct {p0}, Lorg/cybergarage/upnp/Device;-><init>()V

    .line 136
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/cybergarage/upnp/std/av/renderer/MediaRenderer;->initialize(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    return-void
.end method

.method private initialize()V
    .locals 4

    .prologue
    .line 158
    const/16 v3, 0x9

    invoke-static {v3}, Lorg/cybergarage/upnp/UPnP;->setEnable(I)V

    .line 161
    const v3, 0x9a60

    invoke-virtual {p0, v3}, Lorg/cybergarage/upnp/Device;->setHTTPPort(I)V

    .line 163
    new-instance v3, Lorg/cybergarage/upnp/std/av/renderer/RenderingControl;

    invoke-direct {v3, p0}, Lorg/cybergarage/upnp/std/av/renderer/RenderingControl;-><init>(Lorg/cybergarage/upnp/std/av/renderer/MediaRenderer;)V

    iput-object v3, p0, Lorg/cybergarage/upnp/std/av/renderer/MediaRenderer;->renCon:Lorg/cybergarage/upnp/std/av/renderer/RenderingControl;

    .line 164
    new-instance v3, Lorg/cybergarage/upnp/std/av/renderer/ConnectionManager;

    invoke-direct {v3, p0}, Lorg/cybergarage/upnp/std/av/renderer/ConnectionManager;-><init>(Lorg/cybergarage/upnp/std/av/renderer/MediaRenderer;)V

    iput-object v3, p0, Lorg/cybergarage/upnp/std/av/renderer/MediaRenderer;->conMan:Lorg/cybergarage/upnp/std/av/renderer/ConnectionManager;

    .line 165
    new-instance v3, Lorg/cybergarage/upnp/std/av/renderer/AVTransport;

    invoke-direct {v3, p0}, Lorg/cybergarage/upnp/std/av/renderer/AVTransport;-><init>(Lorg/cybergarage/upnp/std/av/renderer/MediaRenderer;)V

    iput-object v3, p0, Lorg/cybergarage/upnp/std/av/renderer/MediaRenderer;->avTrans:Lorg/cybergarage/upnp/std/av/renderer/AVTransport;

    .line 167
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lorg/cybergarage/upnp/std/av/renderer/MediaRenderer;->setActionListener(Lorg/cybergarage/upnp/control/ActionListener;)V

    .line 169
    const-string v3, "urn:schemas-upnp-org:service:AVTransport:1"

    invoke-virtual {p0, v3}, Lorg/cybergarage/upnp/Device;->getService(Ljava/lang/String;)Lorg/cybergarage/upnp/Service;

    move-result-object v2

    .line 170
    .local v2, svcTranport:Lorg/cybergarage/upnp/Service;
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/renderer/MediaRenderer;->getAVTransport()Lorg/cybergarage/upnp/std/av/renderer/AVTransport;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/cybergarage/upnp/Service;->setActionListener(Lorg/cybergarage/upnp/control/ActionListener;)V

    .line 172
    const-string v3, "urn:schemas-upnp-org:service:RenderingControl:1"

    invoke-virtual {p0, v3}, Lorg/cybergarage/upnp/Device;->getService(Ljava/lang/String;)Lorg/cybergarage/upnp/Service;

    move-result-object v1

    .line 173
    .local v1, svcRenderCtrl:Lorg/cybergarage/upnp/Service;
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/renderer/MediaRenderer;->getRenderingControl()Lorg/cybergarage/upnp/std/av/renderer/RenderingControl;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/cybergarage/upnp/Service;->setActionListener(Lorg/cybergarage/upnp/control/ActionListener;)V

    .line 175
    const-string v3, "urn:schemas-upnp-org:service:ConnectionManager:1"

    invoke-virtual {p0, v3}, Lorg/cybergarage/upnp/Device;->getService(Ljava/lang/String;)Lorg/cybergarage/upnp/Service;

    move-result-object v0

    .line 176
    .local v0, svcConnMgr:Lorg/cybergarage/upnp/Service;
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/renderer/MediaRenderer;->getConnectionManager()Lorg/cybergarage/upnp/std/av/renderer/ConnectionManager;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/cybergarage/upnp/Service;->setActionListener(Lorg/cybergarage/upnp/control/ActionListener;)V

    .line 177
    return-void
.end method

.method private initialize(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "description"
    .parameter "renderCtrlSCPD"
    .parameter "conMgrSCPD"
    .parameter "avTransSCPD"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/cybergarage/upnp/device/InvalidDescriptionException;
        }
    .end annotation

    .prologue
    .line 141
    invoke-virtual {p0, p1}, Lorg/cybergarage/upnp/Device;->loadDescription(Ljava/lang/String;)Z

    .line 143
    const-string v3, "urn:schemas-upnp-org:service:RenderingControl:1"

    invoke-virtual {p0, v3}, Lorg/cybergarage/upnp/Device;->getService(Ljava/lang/String;)Lorg/cybergarage/upnp/Service;

    move-result-object v2

    .line 144
    .local v2, renCtrlService:Lorg/cybergarage/upnp/Service;
    invoke-virtual {v2, p2}, Lorg/cybergarage/upnp/Service;->loadSCPD(Ljava/lang/String;)Z

    .line 146
    const-string v3, "urn:schemas-upnp-org:service:ConnectionManager:1"

    invoke-virtual {p0, v3}, Lorg/cybergarage/upnp/Device;->getService(Ljava/lang/String;)Lorg/cybergarage/upnp/Service;

    move-result-object v1

    .line 147
    .local v1, conManService:Lorg/cybergarage/upnp/Service;
    invoke-virtual {v1, p3}, Lorg/cybergarage/upnp/Service;->loadSCPD(Ljava/lang/String;)Z

    .line 149
    const-string v3, "urn:schemas-upnp-org:service:AVTransport:1"

    invoke-virtual {p0, v3}, Lorg/cybergarage/upnp/Device;->getService(Ljava/lang/String;)Lorg/cybergarage/upnp/Service;

    move-result-object v0

    .line 150
    .local v0, avTransService:Lorg/cybergarage/upnp/Service;
    invoke-virtual {v0, p4}, Lorg/cybergarage/upnp/Service;->loadSCPD(Ljava/lang/String;)Z

    .line 152
    invoke-direct {p0}, Lorg/cybergarage/upnp/std/av/renderer/MediaRenderer;->initialize()V

    .line 153
    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 0

    .prologue
    .line 182
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/renderer/MediaRenderer;->stop()Z

    .line 183
    return-void
.end method

.method public getAVTransport()Lorg/cybergarage/upnp/std/av/renderer/AVTransport;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lorg/cybergarage/upnp/std/av/renderer/MediaRenderer;->avTrans:Lorg/cybergarage/upnp/std/av/renderer/AVTransport;

    return-object v0
.end method

.method public getActionListener()Lorg/cybergarage/upnp/control/ActionListener;
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lorg/cybergarage/upnp/std/av/renderer/MediaRenderer;->actionListener:Lorg/cybergarage/upnp/control/ActionListener;

    return-object v0
.end method

.method public getConnectionManager()Lorg/cybergarage/upnp/std/av/renderer/ConnectionManager;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lorg/cybergarage/upnp/std/av/renderer/MediaRenderer;->conMan:Lorg/cybergarage/upnp/std/av/renderer/ConnectionManager;

    return-object v0
.end method

.method public getInterfaceAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 219
    invoke-static {}, Lorg/cybergarage/net/HostInterface;->getInterface()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRenderingControl()Lorg/cybergarage/upnp/std/av/renderer/RenderingControl;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lorg/cybergarage/upnp/std/av/renderer/MediaRenderer;->renCon:Lorg/cybergarage/upnp/std/av/renderer/RenderingControl;

    return-object v0
.end method

.method public getSvcConnMgr()Lorg/cybergarage/upnp/Service;
    .locals 1

    .prologue
    .line 301
    const-string v0, "urn:schemas-upnp-org:service:ConnectionManager:1"

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/Device;->getService(Ljava/lang/String;)Lorg/cybergarage/upnp/Service;

    move-result-object v0

    return-object v0
.end method

.method public getSvcRenderCtrl()Lorg/cybergarage/upnp/Service;
    .locals 1

    .prologue
    .line 293
    const-string v0, "urn:schemas-upnp-org:service:RenderingControl:1"

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/Device;->getService(Ljava/lang/String;)Lorg/cybergarage/upnp/Service;

    move-result-object v0

    return-object v0
.end method

.method public getSvcTranport()Lorg/cybergarage/upnp/Service;
    .locals 1

    .prologue
    .line 285
    const-string v0, "urn:schemas-upnp-org:service:AVTransport:1"

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/Device;->getService(Ljava/lang/String;)Lorg/cybergarage/upnp/Service;

    move-result-object v0

    return-object v0
.end method

.method public httpRequestRecieved(Lorg/cybergarage/http/HTTPRequest;)V
    .locals 3
    .parameter "httpReq"

    .prologue
    .line 228
    invoke-virtual {p1}, Lorg/cybergarage/http/HTTPRequest;->getURI()Ljava/lang/String;

    move-result-object v0

    .line 229
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

    .line 238
    invoke-super {p0, p1}, Lorg/cybergarage/upnp/Device;->httpRequestRecieved(Lorg/cybergarage/http/HTTPRequest;)V

    .line 239
    return-void
.end method

.method public setActionListener(Lorg/cybergarage/upnp/control/ActionListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 249
    iput-object p1, p0, Lorg/cybergarage/upnp/std/av/renderer/MediaRenderer;->actionListener:Lorg/cybergarage/upnp/control/ActionListener;

    .line 250
    return-void
.end method

.method public setInterfaceAddress(Ljava/lang/String;)V
    .locals 0
    .parameter "ifaddr"

    .prologue
    .line 214
    invoke-static {p1}, Lorg/cybergarage/net/HostInterface;->setInterface(Ljava/lang/String;)V

    .line 215
    return-void
.end method

.method public start()Z
    .locals 1

    .prologue
    .line 263
    invoke-super {p0}, Lorg/cybergarage/upnp/Device;->start()Z

    .line 264
    const/4 v0, 0x1

    return v0
.end method

.method public stop()Z
    .locals 1

    .prologue
    .line 269
    invoke-super {p0}, Lorg/cybergarage/upnp/Device;->stop()Z

    .line 270
    const/4 v0, 0x1

    return v0
.end method

.method public update()V
    .locals 0

    .prologue
    .line 279
    return-void
.end method
