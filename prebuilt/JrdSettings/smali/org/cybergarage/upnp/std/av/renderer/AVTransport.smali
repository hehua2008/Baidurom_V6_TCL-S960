.class public Lorg/cybergarage/upnp/std/av/renderer/AVTransport;
.super Ljava/lang/Object;
.source "AVTransport.java"

# interfaces
.implements Lorg/cybergarage/upnp/control/ActionListener;
.implements Lorg/cybergarage/upnp/control/QueryListener;


# static fields
.field public static final ABSCOUNT:Ljava/lang/String; = "AbsCount"

.field public static final ABSOLUTECOUNTERPOSITION:Ljava/lang/String; = "AbsoluteCounterPosition"

.field public static final ABSOLUTETIMEPOSITION:Ljava/lang/String; = "AbsoluteTimePosition"

.field public static final ABSTIME:Ljava/lang/String; = "AbsTime"

.field public static final ACTIONS:Ljava/lang/String; = "Actions"

.field public static final AVTRANSPORTURI:Ljava/lang/String; = "AVTransportURI"

.field public static final AVTRANSPORTURIMETADATA:Ljava/lang/String; = "AVTransportURIMetaData"

.field public static final CURRENTMEDIADURATION:Ljava/lang/String; = "CurrentMediaDuration"

.field public static final CURRENTPLAYMODE:Ljava/lang/String; = "CurrentPlayMode"

.field public static final CURRENTRECORDQUALITYMODE:Ljava/lang/String; = "CurrentRecordQualityMode"

.field public static final CURRENTSPEED:Ljava/lang/String; = "CurrentSpeed"

.field public static final CURRENTTRACK:Ljava/lang/String; = "CurrentTrack"

.field public static final CURRENTTRACKDURATION:Ljava/lang/String; = "CurrentTrackDuration"

.field public static final CURRENTTRACKMETADATA:Ljava/lang/String; = "CurrentTrackMetaData"

.field public static final CURRENTTRACKURI:Ljava/lang/String; = "CurrentTrackURI"

.field public static final CURRENTTRANSPORTACTIONS:Ljava/lang/String; = "CurrentTransportActions"

.field public static final CURRENTTRANSPORTSTATE:Ljava/lang/String; = "CurrentTransportState"

.field public static final CURRENTTRANSPORTSTATUS:Ljava/lang/String; = "CurrentTransportStatus"

.field public static final CURRENTURI:Ljava/lang/String; = "CurrentURI"

.field public static final CURRENTURIMETADATA:Ljava/lang/String; = "CurrentURIMetaData"

.field public static final ERROR_OCCURRED:Ljava/lang/String; = "ERROR_OCCURRED"

.field public static final GETCURRENTTRANSPORTACTIONS:Ljava/lang/String; = "GetCurrentTransportActions"

.field public static final GETDEVICECAPABILITIES:Ljava/lang/String; = "GetDeviceCapabilities"

.field public static final GETMEDIAINFO:Ljava/lang/String; = "GetMediaInfo"

.field public static final GETPOSITIONINFO:Ljava/lang/String; = "GetPositionInfo"

.field public static final GETTRANSPORTINFO:Ljava/lang/String; = "GetTransportInfo"

.field public static final GETTRANSPORTSETTINGS:Ljava/lang/String; = "GetTransportSettings"

.field public static final INSTANCEID:Ljava/lang/String; = "InstanceID"

.field public static final LASTCHANGE:Ljava/lang/String; = "LastChange"

.field public static final MEDIADURATION:Ljava/lang/String; = "MediaDuration"

.field public static final NEWPLAYMODE:Ljava/lang/String; = "NewPlayMode"

.field public static final NEWRECORDQUALITYMODE:Ljava/lang/String; = "NewRecordQualityMode"

.field public static final NEXT:Ljava/lang/String; = "Next"

.field public static final NEXTAVTRANSPORTURI:Ljava/lang/String; = "NextAVTransportURI"

.field public static final NEXTAVTRANSPORTURIMETADATA:Ljava/lang/String; = "NextAVTransportURIMetaData"

.field public static final NEXTURI:Ljava/lang/String; = "NextURI"

.field public static final NEXTURIMETADATA:Ljava/lang/String; = "NextURIMetaData"

.field public static final NORMAL:Ljava/lang/String; = "NORMAL"

.field public static final NRTRACKS:Ljava/lang/String; = "NrTracks"

.field public static final NUMBEROFTRACKS:Ljava/lang/String; = "NumberOfTracks"

.field public static final OK:Ljava/lang/String; = "OK"

.field public static final PAUSE:Ljava/lang/String; = "Pause"

.field public static final PLAY:Ljava/lang/String; = "Play"

.field public static final PLAYBACKSTORAGEMEDIUM:Ljava/lang/String; = "PlaybackStorageMedium"

.field public static final PLAYING:Ljava/lang/String; = "PLAYING"

.field public static final PLAYMEDIA:Ljava/lang/String; = "PlayMedia"

.field public static final PLAYMEDIUM:Ljava/lang/String; = "PlayMedium"

.field public static final PLAYMODE:Ljava/lang/String; = "PlayMode"

.field public static final POSSIBLEPLAYBACKSTORAGEMEDIA:Ljava/lang/String; = "PossiblePlaybackStorageMedia"

.field public static final POSSIBLERECORDQUALITYMODES:Ljava/lang/String; = "PossibleRecordQualityModes"

.field public static final POSSIBLERECORDSTORAGEMEDIA:Ljava/lang/String; = "PossibleRecordStorageMedia"

.field public static final PREVIOUS:Ljava/lang/String; = "Previous"

.field public static final RECMEDIA:Ljava/lang/String; = "RecMedia"

.field public static final RECORD:Ljava/lang/String; = "Record"

.field public static final RECORDMEDIUM:Ljava/lang/String; = "RecordMedium"

.field public static final RECORDMEDIUMWRITESTATUS:Ljava/lang/String; = "RecordMediumWriteStatus"

.field public static final RECORDSTORAGEMEDIUM:Ljava/lang/String; = "RecordStorageMedium"

.field public static final RECQUALITYMODE:Ljava/lang/String; = "RecQualityMode"

.field public static final RECQUALITYMODES:Ljava/lang/String; = "RecQualityModes"

.field public static final RELATIVECOUNTERPOSITION:Ljava/lang/String; = "RelativeCounterPosition"

.field public static final RELATIVETIMEPOSITION:Ljava/lang/String; = "RelativeTimePosition"

.field public static final RELCOUNT:Ljava/lang/String; = "RelCount"

.field public static final RELTIME:Ljava/lang/String; = "RelTime"

.field public static final SCPD:Ljava/lang/String; = "<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<scpd xmlns=\"urn:schemas-upnp-org:service-1-0\">\n   <specVersion>\n      <major>1</major>\n      <minor>0</minor>\n\t</specVersion>\n    <serviceStateTable>        <stateVariable>            <name>TransportState</name>            <sendEventsAttribute>no</sendEventsAttribute>            <dataType>string</dataType>            <allowedValueList>                <allowedValue>STOPPED</allowedValue>                <allowedValue>PLAYING</allowedValue>                <allowedValue>PAUSED_PLAYBACK</allowedValue>                <allowedValue>TRANSITIONING</allowedValue>                <allowedValue>NO_MEDIA_PRESENT</allowedValue>            </allowedValueList>        </stateVariable>        <stateVariable sendEvents=\"yes\">            <name>LastChange</name>            <sendEventsAttribute>yes</sendEventsAttribute>            <dataType>string</dataType>        </stateVariable>        <stateVariable>            <name>TransportStatus</name>            <sendEventsAttribute>no</sendEventsAttribute>            <dataType>string</dataType>            <allowedValueList>                <allowedValue>OK</allowedValue>                <allowedValue>ERROR_OCCURRED</allowedValue>                       </allowedValueList>        </stateVariable>        <stateVariable>            <name>PlaybackStorageMedium</name>            <sendEventsAttribute>no</sendEventsAttribute>            <dataType>string</dataType>        </stateVariable>\t     <stateVariable>            <name>RecordStorageMedium</name>            <sendEventsAttribute>no</sendEventsAttribute>            <dataType>string</dataType>              </stateVariable>        <stateVariable>            <name>PossiblePlaybackStorageMedia</name>            <sendEventsAttribute>no</sendEventsAttribute>            <dataType>string</dataType>        </stateVariable>        <stateVariable>            <name>PossibleRecordStorageMedia</name>            <sendEventsAttribute>no</sendEventsAttribute>            <dataType>string</dataType>        </stateVariable>        <stateVariable>            <name>CurrentPlayMode</name>            <sendEventsAttribute>no</sendEventsAttribute>            <dataType>string</dataType>            <allowedValueList>                <allowedValue>NORMAL</allowedValue>            </allowedValueList>            <defaultValue>NORMAL</defaultValue>        </stateVariable>        <stateVariable>            <name>TransportPlaySpeed</name>            <sendEventsAttribute>no</sendEventsAttribute>            <dataType>string</dataType>\t         <allowedValueList>                <allowedValue>1</allowedValue>            </allowedValueList>        </stateVariable>        <stateVariable>            <name>RecordMediumWriteStatus</name>            <sendEventsAttribute>no</sendEventsAttribute>            <dataType>string</dataType>\t         <allowedValueList>                <allowedValue>WRITABLE</allowedValue>                <allowedValue>PROTECTED</allowedValue>                <allowedValue>NOT_WRITABLE</allowedValue>                <allowedValue>UNKNOWN</allowedValue>                <allowedValue>NOT_IMPLEMENTED</allowedValue>            </allowedValueList>         </stateVariable>        <stateVariable>            <name>CurrentRecordQualityMode</name>            <sendEventsAttribute>no</sendEventsAttribute>            <dataType>string</dataType>          </stateVariable>        <stateVariable>            <name>PossibleRecordQualityModes</name>            <sendEventsAttribute>no</sendEventsAttribute>            <dataType>string</dataType>        </stateVariable>        <stateVariable>            <name>NumberOfTracks</name>            <sendEventsAttribute>no</sendEventsAttribute>            <dataType>ui4</dataType>\t\t     <allowedValueRange>\t\t\t     <minimum>0</minimum>\t\t     </allowedValueRange>         </stateVariable>        <stateVariable>            <name>CurrentTrack</name>            <sendEventsAttribute>no</sendEventsAttribute>            <dataType>ui4</dataType>\t\t     <allowedValueRange>\t\t\t    <minimum>0</minimum>\t\t\t    <step>1</step>\t\t     </allowedValueRange>        </stateVariable>        <stateVariable>            <name>CurrentTrackDuration</name>            <sendEventsAttribute>no</sendEventsAttribute>            <dataType>string</dataType>        </stateVariable>\t     <stateVariable>            <name>CurrentMediaDuration</name>            <sendEventsAttribute>no</sendEventsAttribute>            <dataType>string</dataType>        </stateVariable>        <stateVariable>            <name>CurrentTrackMetaData</name>            <sendEventsAttribute>no</sendEventsAttribute>            <dataType>string</dataType>        </stateVariable>        <stateVariable>            <name>CurrentTrackURI</name>            <sendEventsAttribute>no</sendEventsAttribute>            <dataType>string</dataType>        </stateVariable>        <stateVariable>            <name>AVTransportURI</name>            <sendEventsAttribute>no</sendEventsAttribute>            <dataType>string</dataType>        </stateVariable>        <stateVariable>            <name>AVTransportURIMetaData</name>            <sendEventsAttribute>no</sendEventsAttribute>            <dataType>string</dataType>        </stateVariable>        <stateVariable>            <name>NextAVTransportURI</name>            <sendEventsAttribute>no</sendEventsAttribute>            <dataType>string</dataType>        </stateVariable>        <stateVariable>            <name>NextAVTransportURIMetaData</name>            <sendEventsAttribute>no</sendEventsAttribute>            <dataType>string</dataType>        </stateVariable>        <stateVariable>            <name>RelativeTimePosition</name>            <sendEventsAttribute>no</sendEventsAttribute>            <dataType>string</dataType>        </stateVariable>        <stateVariable>            <name>AbsoluteTimePosition</name>            <sendEventsAttribute>no</sendEventsAttribute>            <dataType>string</dataType>        </stateVariable>        <stateVariable>            <name>RelativeCounterPosition</name>            <sendEventsAttribute>no</sendEventsAttribute>            <dataType>i4</dataType>        </stateVariable>        <stateVariable>            <name>AbsoluteCounterPosition</name>            <sendEventsAttribute>no</sendEventsAttribute>            <dataType>i4</dataType>        </stateVariable>        <stateVariable>            <name>A_ARG_TYPE_SeekMode</name>            <sendEventsAttribute>no</sendEventsAttribute>            <dataType>string</dataType>            <allowedValueList>                 <allowedValue>TRACK_NR</allowedValue>                 <allowedValue>REL_TIME</allowedValue>            </allowedValueList>        </stateVariable>        <stateVariable>            <name>A_ARG_TYPE_SeekTarget</name>            <sendEventsAttribute>no</sendEventsAttribute>            <dataType>string</dataType>        </stateVariable>        <stateVariable>            <name>A_ARG_TYPE_InstanceID</name>            <sendEventsAttribute>no</sendEventsAttribute>            <dataType>ui4</dataType>        </stateVariable>    </serviceStateTable>    <actionList>        <action>            <name>SetAVTransportURI</name>            <argumentList>                <argument>                    <name>InstanceID</name>                    <direction>in</direction>                    <relatedStateVariable>A_ARG_TYPE_InstanceID</relatedStateVariable>                </argument>                <argument>                    <name>CurrentURI</name>                    <direction>in</direction>                    <relatedStateVariable>AVTransportURI</relatedStateVariable>                </argument>                <argument>                    <name>CurrentURIMetaData</name>                    <direction>in</direction>                    <relatedStateVariable>AVTransportURIMetaData</relatedStateVariable>                </argument>            </argumentList>        </action>        <action>            <name>GetMediaInfo</name>            <argumentList>                <argument>                    <name>InstanceID</name>                    <direction>in</direction>                 <relatedStateVariable>A_ARG_TYPE_InstanceID</relatedStateVariable>                </argument>                <argument>                    <name>NrTracks</name>                    <direction>out</direction>                    <relatedStateVariable>NumberOfTracks</relatedStateVariable>                </argument>                <argument>                    <name>MediaDuration</name>                    <direction>out</direction>                    <relatedStateVariable>CurrentMediaDuration</relatedStateVariable>                </argument>                <argument>                    <name>CurrentURI</name>                    <direction>out</direction>                    <relatedStateVariable>AVTransportURI</relatedStateVariable>                </argument>\t\t         <argument>                    <name>CurrentURIMetaData</name>                    <direction>out</direction>                    <relatedStateVariable>AVTransportURIMetaData</relatedStateVariable>                </argument>                <argument>                    <name>NextURI</name>                    <direction>out</direction>                    <relatedStateVariable>NextAVTransportURI</relatedStateVariable>                </argument>\t\t         <argument>                    <name>NextURIMetaData</name>                    <direction>out</direction>                    <relatedStateVariable>NextAVTransportURIMetaData</relatedStateVariable>                </argument>                <argument>                    <name>PlayMedium</name>                    <direction>out</direction>                    <relatedStateVariable>PlaybackStorageMedium</relatedStateVariable>                </argument>                <argument>                    <name>RecordMedium</name>                    <direction>out</direction>                    <relatedStateVariable>RecordStorageMedium</relatedStateVariable>                </argument>                <argument>                    <name>WriteStatus</name>                    <direction>out</direction>                    <relatedStateVariable>RecordMediumWriteStatus </relatedStateVariable>                </argument>            </argumentList>        </action>        <action>            <name>GetTransportInfo</name>            <argumentList>                <argument>                    <name>InstanceID</name>                    <direction>in</direction>                    <relatedStateVariable>A_ARG_TYPE_InstanceID</relatedStateVariable>                </argument>                <argument>                    <name>CurrentTransportState</name>                    <direction>out</direction>                    <relatedStateVariable>TransportState</relatedStateVariable>                </argument>                <argument>                    <name>CurrentTransportStatus</name>                    <direction>out</direction>                    <relatedStateVariable>TransportStatus</relatedStateVariable>                </argument>                <argument>                    <name>CurrentSpeed</name>                    <direction>out</direction>                    <relatedStateVariable>TransportPlaySpeed</relatedStateVariable>                </argument>            </argumentList>        </action>        <action>            <name>GetPositionInfo</name>            <argumentList>                <argument>                    <name>InstanceID</name>                    <direction>in</direction>                    <relatedStateVariable>A_ARG_TYPE_InstanceID</relatedStateVariable>                </argument>                <argument>                    <name>Track</name>                    <direction>out</direction>                    <relatedStateVariable>CurrentTrack</relatedStateVariable>                </argument>                <argument>                    <name>TrackDuration</name>                    <direction>out</direction>                    <relatedStateVariable>CurrentTrackDuration</relatedStateVariable>                </argument>                <argument>                    <name>TrackMetaData</name>                    <direction>out</direction>                    <relatedStateVariable>CurrentTrackMetaData</relatedStateVariable>                </argument>                <argument>                    <name>TrackURI</name>                    <direction>out</direction>                    <relatedStateVariable>CurrentTrackURI</relatedStateVariable>                </argument>                <argument>                    <name>RelTime</name>                    <direction>out</direction>                    <relatedStateVariable>RelativeTimePosition</relatedStateVariable>                </argument>                <argument>                    <name>AbsTime</name>                    <direction>out</direction>                    <relatedStateVariable>AbsoluteTimePosition</relatedStateVariable>                </argument>                <argument>                    <name>RelCount</name>                    <direction>out</direction>                    <relatedStateVariable>RelativeCounterPosition</relatedStateVariable>                </argument>                <argument>                    <name>AbsCount</name>                    <direction>out</direction>                    <relatedStateVariable>AbsoluteCounterPosition</relatedStateVariable>                </argument>            </argumentList>        </action>        <action>            <name>GetDeviceCapabilities</name>            <argumentList>                <argument>                    <name>InstanceID</name>                    <direction>in</direction>                    <relatedStateVariable>A_ARG_TYPE_InstanceID</relatedStateVariable>                </argument>                <argument>                    <name>PlayMedia</name>                    <direction>out</direction>                    <relatedStateVariable>PossiblePlaybackStorageMedia</relatedStateVariable>                </argument>                <argument>                    <name>RecMedia</name>                    <direction>out</direction>                    <relatedStateVariable>PossibleRecordStorageMedia</relatedStateVariable>                </argument>                <argument>                    <name>RecQualityModes</name>                    <direction>out</direction>                    <relatedStateVariable>PossibleRecordQualityModes</relatedStateVariable>                </argument>            </argumentList>        </action>        <action>            <name>GetTransportSettings</name>            <argumentList>                <argument>                    <name>InstanceID</name>                    <direction>in</direction>                    <relatedStateVariable>A_ARG_TYPE_InstanceID</relatedStateVariable>                </argument>                <argument>                    <name>PlayMode</name>                    <direction>out</direction>                    <relatedStateVariable>CurrentPlayMode</relatedStateVariable>                </argument>                <argument>                    <name>RecQualityMode</name>                    <direction>out</direction>                 <relatedStateVariable>CurrentRecordQualityMode</relatedStateVariable>                </argument>            </argumentList>        </action>        <action>            <name>Stop</name>            <argumentList>                <argument>                    <name>InstanceID</name>                    <direction>in</direction>                    <relatedStateVariable>A_ARG_TYPE_InstanceID</relatedStateVariable>                </argument>            </argumentList>        </action>        <action>            <name>Play</name>            <argumentList>                <argument>                    <name>InstanceID</name>                    <direction>in</direction>                    <relatedStateVariable>A_ARG_TYPE_InstanceID</relatedStateVariable>                </argument>                <argument>                    <name>Speed</name>                    <direction>in</direction>                    <relatedStateVariable>TransportPlaySpeed</relatedStateVariable>                </argument>            </argumentList>        </action>        <action>            <name>Pause</name>            <argumentList>                <argument>                    <name>InstanceID</name>                    <direction>in</direction>                    <relatedStateVariable>A_ARG_TYPE_InstanceID</relatedStateVariable>                </argument>            </argumentList>        </action>        <action>            <name>Seek</name>            <argumentList>                <argument>                    <name>InstanceID</name>                    <direction>in</direction>                    <relatedStateVariable>A_ARG_TYPE_InstanceID</relatedStateVariable>                </argument>                <argument>                    <name>Unit</name>                    <direction>in</direction>                    <relatedStateVariable>A_ARG_TYPE_SeekMode</relatedStateVariable>                </argument>                <argument>                    <name>Target</name>                    <direction>in</direction>                    <relatedStateVariable>A_ARG_TYPE_SeekTarget</relatedStateVariable>                </argument>            </argumentList>        </action>        <action>            <name>Next</name>            <argumentList>                <argument>                    <name>InstanceID</name>                    <direction>in</direction>                    <relatedStateVariable>A_ARG_TYPE_InstanceID</relatedStateVariable>                </argument>            </argumentList>        </action>        <action>            <name>Previous</name>            <argumentList>                <argument>                    <name>InstanceID</name>                    <direction>in</direction>                    <relatedStateVariable>A_ARG_TYPE_InstanceID</relatedStateVariable>                </argument>            </argumentList>        </action>    </actionList></scpd>"

.field public static final SEEK:Ljava/lang/String; = "Seek"

.field public static final SERVICE_TYPE:Ljava/lang/String; = "urn:schemas-upnp-org:service:AVTransport:1"

.field public static final SETAVTRANSPORTURI:Ljava/lang/String; = "SetAVTransportURI"

.field public static final SETNEXTAVTRANSPORTURI:Ljava/lang/String; = "SetNextAVTransportURI"

.field public static final SETPLAYMODE:Ljava/lang/String; = "SetPlayMode"

.field public static final SETRECORDQUALITYMODE:Ljava/lang/String; = "SetRecordQualityMode"

.field public static final SPEED:Ljava/lang/String; = "Speed"

.field public static final STOP:Ljava/lang/String; = "Stop"

.field public static final STOPPED:Ljava/lang/String; = "STOPPED"

.field public static final TARGET:Ljava/lang/String; = "Target"

.field public static final TRACK:Ljava/lang/String; = "Track"

.field public static final TRACKDURATION:Ljava/lang/String; = "TrackDuration"

.field public static final TRACKMETADATA:Ljava/lang/String; = "TrackMetaData"

.field public static final TRACKURI:Ljava/lang/String; = "TrackURI"

.field public static final TRACK_NR:Ljava/lang/String; = "TRACK_NR"

.field public static final TRANSPORTPLAYSPEED:Ljava/lang/String; = "TransportPlaySpeed"

.field public static final TRANSPORTSTATE:Ljava/lang/String; = "TransportState"

.field public static final TRANSPORTSTATUS:Ljava/lang/String; = "TransportStatus"

.field public static final UNIT:Ljava/lang/String; = "Unit"

.field public static final WRITESTATUS:Ljava/lang/String; = "WriteStatus"


# instance fields
.field private avTransInfoList:Lorg/cybergarage/upnp/std/av/renderer/AVTransportInfoList;

.field private mediaRenderer:Lorg/cybergarage/upnp/std/av/renderer/MediaRenderer;

.field private mutex:Lorg/cybergarage/util/Mutex;


# direct methods
.method public constructor <init>(Lorg/cybergarage/upnp/std/av/renderer/MediaRenderer;)V
    .locals 1
    .parameter "render"

    .prologue
    .line 667
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 693
    new-instance v0, Lorg/cybergarage/util/Mutex;

    invoke-direct {v0}, Lorg/cybergarage/util/Mutex;-><init>()V

    iput-object v0, p0, Lorg/cybergarage/upnp/std/av/renderer/AVTransport;->mutex:Lorg/cybergarage/util/Mutex;

    .line 668
    invoke-direct {p0, p1}, Lorg/cybergarage/upnp/std/av/renderer/AVTransport;->setMediaRenderer(Lorg/cybergarage/upnp/std/av/renderer/MediaRenderer;)V

    .line 670
    new-instance v0, Lorg/cybergarage/upnp/std/av/renderer/AVTransportInfoList;

    invoke-direct {v0}, Lorg/cybergarage/upnp/std/av/renderer/AVTransportInfoList;-><init>()V

    iput-object v0, p0, Lorg/cybergarage/upnp/std/av/renderer/AVTransport;->avTransInfoList:Lorg/cybergarage/upnp/std/av/renderer/AVTransportInfoList;

    .line 671
    return-void
.end method

.method private setMediaRenderer(Lorg/cybergarage/upnp/std/av/renderer/MediaRenderer;)V
    .locals 0
    .parameter "render"

    .prologue
    .line 681
    iput-object p1, p0, Lorg/cybergarage/upnp/std/av/renderer/AVTransport;->mediaRenderer:Lorg/cybergarage/upnp/std/av/renderer/MediaRenderer;

    .line 682
    return-void
.end method


# virtual methods
.method public actionControlReceived(Lorg/cybergarage/upnp/Action;)Z
    .locals 4
    .parameter "action"

    .prologue
    .line 773
    invoke-virtual {p1}, Lorg/cybergarage/upnp/Action;->getName()Ljava/lang/String;

    move-result-object v0

    .line 775
    .local v0, actionName:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 776
    const/4 v2, 0x0

    .line 861
    :cond_0
    :goto_0
    return v2

    .line 778
    :cond_1
    const/4 v2, 0x0

    .line 854
    .local v2, isActionSuccess:Z
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/renderer/AVTransport;->getMediaRenderer()Lorg/cybergarage/upnp/std/av/renderer/MediaRenderer;

    move-result-object v1

    .line 855
    .local v1, dmr:Lorg/cybergarage/upnp/std/av/renderer/MediaRenderer;
    if-eqz v1, :cond_0

    .line 856
    invoke-virtual {v1}, Lorg/cybergarage/upnp/std/av/renderer/MediaRenderer;->getActionListener()Lorg/cybergarage/upnp/control/ActionListener;

    move-result-object v3

    .line 857
    .local v3, listener:Lorg/cybergarage/upnp/control/ActionListener;
    if-eqz v3, :cond_0

    .line 858
    invoke-interface {v3, p1}, Lorg/cybergarage/upnp/control/ActionListener;->actionControlReceived(Lorg/cybergarage/upnp/Action;)Z

    move-result v2

    goto :goto_0
.end method

.method public getAvTransInfoList()Lorg/cybergarage/upnp/std/av/renderer/AVTransportInfoList;
    .locals 1

    .prologue
    .line 713
    iget-object v0, p0, Lorg/cybergarage/upnp/std/av/renderer/AVTransport;->avTransInfoList:Lorg/cybergarage/upnp/std/av/renderer/AVTransportInfoList;

    return-object v0
.end method

.method public getCurrentAvTransInfo()Lorg/cybergarage/upnp/std/av/renderer/AVTransportInfo;
    .locals 4

    .prologue
    .line 732
    const/4 v0, 0x0

    .line 733
    .local v0, avTransInfo:Lorg/cybergarage/upnp/std/av/renderer/AVTransportInfo;
    iget-object v2, p0, Lorg/cybergarage/upnp/std/av/renderer/AVTransport;->avTransInfoList:Lorg/cybergarage/upnp/std/av/renderer/AVTransportInfoList;

    monitor-enter v2

    .line 734
    :try_start_0
    iget-object v1, p0, Lorg/cybergarage/upnp/std/av/renderer/AVTransport;->avTransInfoList:Lorg/cybergarage/upnp/std/av/renderer/AVTransportInfoList;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    const/4 v3, 0x1

    if-ge v1, v3, :cond_0

    .line 735
    const/4 v1, 0x0

    monitor-exit v2

    .line 738
    :goto_0
    return-object v1

    .line 736
    :cond_0
    iget-object v1, p0, Lorg/cybergarage/upnp/std/av/renderer/AVTransport;->avTransInfoList:Lorg/cybergarage/upnp/std/av/renderer/AVTransportInfoList;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lorg/cybergarage/upnp/std/av/renderer/AVTransportInfoList;->getAVTransportInfo(I)Lorg/cybergarage/upnp/std/av/renderer/AVTransportInfo;

    move-result-object v0

    .line 737
    monitor-exit v2

    move-object v1, v0

    .line 738
    goto :goto_0

    .line 737
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getMediaRenderer()Lorg/cybergarage/upnp/std/av/renderer/MediaRenderer;
    .locals 1

    .prologue
    .line 686
    iget-object v0, p0, Lorg/cybergarage/upnp/std/av/renderer/AVTransport;->mediaRenderer:Lorg/cybergarage/upnp/std/av/renderer/MediaRenderer;

    return-object v0
.end method

.method public getNextAvTransInfo()Lorg/cybergarage/upnp/std/av/renderer/AVTransportInfo;
    .locals 4

    .prologue
    .line 756
    const/4 v0, 0x0

    .line 757
    .local v0, avTransInfo:Lorg/cybergarage/upnp/std/av/renderer/AVTransportInfo;
    iget-object v2, p0, Lorg/cybergarage/upnp/std/av/renderer/AVTransport;->avTransInfoList:Lorg/cybergarage/upnp/std/av/renderer/AVTransportInfoList;

    monitor-enter v2

    .line 758
    :try_start_0
    iget-object v1, p0, Lorg/cybergarage/upnp/std/av/renderer/AVTransport;->avTransInfoList:Lorg/cybergarage/upnp/std/av/renderer/AVTransportInfoList;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    const/4 v3, 0x2

    if-ge v1, v3, :cond_0

    .line 759
    const/4 v1, 0x0

    monitor-exit v2

    .line 762
    :goto_0
    return-object v1

    .line 760
    :cond_0
    iget-object v1, p0, Lorg/cybergarage/upnp/std/av/renderer/AVTransport;->avTransInfoList:Lorg/cybergarage/upnp/std/av/renderer/AVTransportInfoList;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lorg/cybergarage/upnp/std/av/renderer/AVTransportInfoList;->getAVTransportInfo(I)Lorg/cybergarage/upnp/std/av/renderer/AVTransportInfo;

    move-result-object v0

    .line 761
    monitor-exit v2

    move-object v1, v0

    .line 762
    goto :goto_0

    .line 761
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public lock()V
    .locals 1

    .prologue
    .line 697
    iget-object v0, p0, Lorg/cybergarage/upnp/std/av/renderer/AVTransport;->mutex:Lorg/cybergarage/util/Mutex;

    invoke-virtual {v0}, Lorg/cybergarage/util/Mutex;->lock()V

    .line 698
    return-void
.end method

.method public queryControlReceived(Lorg/cybergarage/upnp/StateVariable;)Z
    .locals 2
    .parameter "stateVar"

    .prologue
    .line 870
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Var Name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lorg/cybergarage/upnp/StateVariable;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lorg/cybergarage/upnp/StateVariable;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 871
    const/4 v0, 0x1

    return v0
.end method

.method public setCurrentAvTransInfo(Lorg/cybergarage/upnp/std/av/renderer/AVTransportInfo;)V
    .locals 3
    .parameter "avTransInfo"

    .prologue
    .line 722
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/renderer/AVTransport;->getAvTransInfoList()Lorg/cybergarage/upnp/std/av/renderer/AVTransportInfoList;

    move-result-object v0

    .line 723
    .local v0, avTransInfoList:Lorg/cybergarage/upnp/std/av/renderer/AVTransportInfoList;
    monitor-enter v0

    .line 724
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v2

    if-gt v1, v2, :cond_0

    .line 725
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    .line 726
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    .line 727
    monitor-exit v0

    .line 728
    return-void

    .line 727
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setNextAvTransInfo(Lorg/cybergarage/upnp/std/av/renderer/AVTransportInfo;)V
    .locals 3
    .parameter "avTransInfo"

    .prologue
    .line 747
    iget-object v1, p0, Lorg/cybergarage/upnp/std/av/renderer/AVTransport;->avTransInfoList:Lorg/cybergarage/upnp/std/av/renderer/AVTransportInfoList;

    monitor-enter v1

    .line 748
    const/4 v0, 0x2

    :try_start_0
    iget-object v2, p0, Lorg/cybergarage/upnp/std/av/renderer/AVTransport;->avTransInfoList:Lorg/cybergarage/upnp/std/av/renderer/AVTransportInfoList;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-gt v0, v2, :cond_0

    .line 749
    iget-object v0, p0, Lorg/cybergarage/upnp/std/av/renderer/AVTransport;->avTransInfoList:Lorg/cybergarage/upnp/std/av/renderer/AVTransportInfoList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    .line 750
    :cond_0
    iget-object v0, p0, Lorg/cybergarage/upnp/std/av/renderer/AVTransport;->avTransInfoList:Lorg/cybergarage/upnp/std/av/renderer/AVTransportInfoList;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    .line 751
    monitor-exit v1

    .line 752
    return-void

    .line 751
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unlock()V
    .locals 1

    .prologue
    .line 702
    iget-object v0, p0, Lorg/cybergarage/upnp/std/av/renderer/AVTransport;->mutex:Lorg/cybergarage/util/Mutex;

    invoke-virtual {v0}, Lorg/cybergarage/util/Mutex;->unlock()V

    .line 703
    return-void
.end method
