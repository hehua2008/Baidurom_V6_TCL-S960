.class public Lorg/cybergarage/upnp/std/av/renderer/ConnectionManager;
.super Ljava/lang/Object;
.source "ConnectionManager.java"

# interfaces
.implements Lorg/cybergarage/upnp/control/ActionListener;
.implements Lorg/cybergarage/upnp/control/QueryListener;


# static fields
.field public static final AVTRANSPORTID:Ljava/lang/String; = "AVTransportID"

.field public static final CONNECTIONCOMPLETE:Ljava/lang/String; = "ConnectionComplete"

.field public static final CONNECTIONID:Ljava/lang/String; = "ConnectionID"

.field public static final CONNECTIONIDS:Ljava/lang/String; = "ConnectionIDs"

.field public static final CONTENTFORMATMISMATCH:Ljava/lang/String; = "ContentFormatMismatch"

.field public static final CURRENTCONNECTIONIDS:Ljava/lang/String; = "CurrentConnectionIDs"

.field public static final DIRECTION:Ljava/lang/String; = "Direction"

.field public static final GETCURRENTCONNECTIONIDS:Ljava/lang/String; = "GetCurrentConnectionIDs"

.field public static final GETCURRENTCONNECTIONINFO:Ljava/lang/String; = "GetCurrentConnectionInfo"

.field public static final GETPROTOCOLINFO:Ljava/lang/String; = "GetProtocolInfo"

.field public static final HTTP_GET:Ljava/lang/String; = "http-get"

.field public static final INPUT:Ljava/lang/String; = "Input"

.field public static final INSUFFICIENTBANDWIDTH:Ljava/lang/String; = "InsufficientBandwidth"

.field public static final OK:Ljava/lang/String; = "OK"

.field public static final OUTPUT:Ljava/lang/String; = "Output"

.field public static final PEERCONNECTIONID:Ljava/lang/String; = "PeerConnectionID"

.field public static final PEERCONNECTIONMANAGER:Ljava/lang/String; = "PeerConnectionManager"

.field public static final PREPAREFORCONNECTION:Ljava/lang/String; = "PrepareForConnection"

.field public static final PROTOCOLINFO:Ljava/lang/String; = "ProtocolInfo"

.field public static final RCSID:Ljava/lang/String; = "RcsID"

.field public static final REMOTEPROTOCOLINFO:Ljava/lang/String; = "RemoteProtocolInfo"

.field public static final SCPD:Ljava/lang/String; = "<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<scpd xmlns=\"urn:schemas-upnp-org:service-1-0\">\n   <specVersion>\n      <major>1</major>\n      <minor>0</minor>\n\t</specVersion>\n\t<actionList>\n\t\t<action>\n         <name>GetCurrentConnectionInfo</name>\n         <argumentList>\n            <argument>\n               <name>ConnectionID</name>\n               <direction>in</direction>\n               <relatedStateVariable>A_ARG_TYPE_ConnectionID</relatedStateVariable>\n            </argument>\n            <argument>\n               <name>RcsID</name>\n               <direction>out</direction>\n               <relatedStateVariable>A_ARG_TYPE_RcsID</relatedStateVariable>\n            </argument>\n            <argument>\n               <name>AVTransportID</name>\n               <direction>out</direction>\n               <relatedStateVariable>A_ARG_TYPE_AVTransportID</relatedStateVariable>\n            </argument>\n            <argument>\n               <name>ProtocolInfo</name>\n               <direction>out</direction>\n               <relatedStateVariable>A_ARG_TYPE_ProtocolInfo</relatedStateVariable>\n            </argument>\n            <argument>\n               <name>PeerConnectionManager</name>\n               <direction>out</direction>\n               <relatedStateVariable>A_ARG_TYPE_ConnectionManager</relatedStateVariable>\n            </argument>\n            <argument>\n               <name>PeerConnectionID</name>\n               <direction>out</direction>\n               <relatedStateVariable>A_ARG_TYPE_ConnectionID</relatedStateVariable>\n            </argument>\n            <argument>\n               <name>Direction</name>\n               <direction>out</direction>\n               <relatedStateVariable>A_ARG_TYPE_Direction</relatedStateVariable>\n            </argument>\n            <argument>\n               <name>Status</name>\n               <direction>out</direction>\n               <relatedStateVariable>A_ARG_TYPE_ConnectionStatus</relatedStateVariable>\n            </argument>\n         </argumentList>\n      </action>\n      <action>\n         <name>GetProtocolInfo</name>\n         <argumentList>\n            <argument>\n               <name>Source</name>\n               <direction>out</direction>\n               <relatedStateVariable>SourceProtocolInfo</relatedStateVariable>\n            </argument>\n            <argument>\n               <name>Sink</name>\n               <direction>out</direction>\n               <relatedStateVariable>SinkProtocolInfo</relatedStateVariable>\n            </argument>\n         </argumentList>\n      </action>\n      <action>\n         <name>GetCurrentConnectionIDs</name>\n         <argumentList>\n            <argument>\n               <name>ConnectionIDs</name>\n               <direction>out</direction>\n               <relatedStateVariable>CurrentConnectionIDs</relatedStateVariable>\n            </argument>\n         </argumentList>\n      </action>\n   </actionList>\n   <serviceStateTable>\n      <stateVariable sendEvents=\"yes\">\n         <name>CurrentConnectionIDs</name>\n         <sendEventsAttribute>yes</sendEventsAttribute>         <dataType>string</dataType>\n      </stateVariable>\n      <stateVariable sendEvents=\"yes\">\n         <name>SourceProtocolInfo</name>\n         <sendEventsAttribute>yes</sendEventsAttribute>         <dataType>string</dataType>\n      </stateVariable>\n      <stateVariable sendEvents=\"yes\">\n         <name>SinkProtocolInfo</name>\n         <sendEventsAttribute>yes</sendEventsAttribute>         <dataType>string</dataType>\n      </stateVariable>\n      <stateVariable sendEvents=\"no\">\n         <name>A_ARG_TYPE_ProtocolInfo</name>\n         <dataType>string</dataType>\n      </stateVariable>\n      <stateVariable sendEvents=\"no\">\n         <name>A_ARG_TYPE_ConnectionStatus</name>\n         <dataType>string</dataType>\n         <allowedValueList>\n            <allowedValue>OK</allowedValue>\n            <allowedValue>ContentFormatMismatch</allowedValue>\n            <allowedValue>InsufficientBandwidth</allowedValue>\n            <allowedValue>UnreliableChannel</allowedValue>\n            <allowedValue>Unknown</allowedValue>\n         </allowedValueList>\n      </stateVariable>\n      <stateVariable sendEvents=\"no\">\n         <name>A_ARG_TYPE_AVTransportID</name>\n         <dataType>i4</dataType>\n      </stateVariable>\n      <stateVariable sendEvents=\"no\">\n         <name>A_ARG_TYPE_RcsID</name>\n         <dataType>i4</dataType>\n      </stateVariable>\n      <stateVariable sendEvents=\"no\">\n         <name>A_ARG_TYPE_ConnectionID</name>\n         <dataType>i4</dataType>\n      </stateVariable>\n      <stateVariable sendEvents=\"no\">\n         <name>A_ARG_TYPE_ConnectionManager</name>\n         <dataType>string</dataType>\n      </stateVariable>\n      <stateVariable sendEvents=\"no\">\n         <name>A_ARG_TYPE_Direction</name>\n         <dataType>string</dataType>\n         <allowedValueList>\n            <allowedValue>Input</allowedValue>\n            <allowedValue>Output</allowedValue>\n         </allowedValueList>\n      </stateVariable>\n   </serviceStateTable>\n</scpd>\n"

.field public static final SERVICE_TYPE:Ljava/lang/String; = "urn:schemas-upnp-org:service:ConnectionManager:1"

.field public static final SINK:Ljava/lang/String; = "Sink"

.field public static final SINKPROTOCOLINFO:Ljava/lang/String; = "SinkProtocolInfo"

.field public static final SOURCE:Ljava/lang/String; = "Source"

.field public static final SOURCEPROTOCOLINFO:Ljava/lang/String; = "SourceProtocolInfo"

.field public static final STATUS:Ljava/lang/String; = "Status"

.field public static final UNKNOWN:Ljava/lang/String; = "Unknown"

.field public static final UNRELIABLECHANNEL:Ljava/lang/String; = "UnreliableChannel"


# instance fields
.field private conInfoList:Lorg/cybergarage/upnp/std/av/renderer/ConnectionInfoList;

.field private maxConnectionID:I

.field private mediaRenderer:Lorg/cybergarage/upnp/std/av/renderer/MediaRenderer;

.field private mutex:Lorg/cybergarage/util/Mutex;


# direct methods
.method public constructor <init>(Lorg/cybergarage/upnp/std/av/renderer/MediaRenderer;)V
    .locals 1
    .parameter "render"

    .prologue
    .line 255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 280
    new-instance v0, Lorg/cybergarage/util/Mutex;

    invoke-direct {v0}, Lorg/cybergarage/util/Mutex;-><init>()V

    iput-object v0, p0, Lorg/cybergarage/upnp/std/av/renderer/ConnectionManager;->mutex:Lorg/cybergarage/util/Mutex;

    .line 311
    new-instance v0, Lorg/cybergarage/upnp/std/av/renderer/ConnectionInfoList;

    invoke-direct {v0}, Lorg/cybergarage/upnp/std/av/renderer/ConnectionInfoList;-><init>()V

    iput-object v0, p0, Lorg/cybergarage/upnp/std/av/renderer/ConnectionManager;->conInfoList:Lorg/cybergarage/upnp/std/av/renderer/ConnectionInfoList;

    .line 256
    const/4 v0, 0x0

    iput v0, p0, Lorg/cybergarage/upnp/std/av/renderer/ConnectionManager;->maxConnectionID:I

    .line 257
    invoke-direct {p0, p1}, Lorg/cybergarage/upnp/std/av/renderer/ConnectionManager;->setMediaRenderer(Lorg/cybergarage/upnp/std/av/renderer/MediaRenderer;)V

    .line 258
    return-void
.end method

.method private getCurrentConnectionIDs(Lorg/cybergarage/upnp/Action;)Z
    .locals 6
    .parameter "action"

    .prologue
    .line 388
    const-string v0, ""

    .line 389
    .local v0, conIDs:Ljava/lang/String;
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/renderer/ConnectionManager;->lock()V

    .line 390
    iget-object v4, p0, Lorg/cybergarage/upnp/std/av/renderer/ConnectionManager;->conInfoList:Lorg/cybergarage/upnp/std/av/renderer/ConnectionInfoList;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v3

    .line 391
    .local v3, size:I
    const/4 v2, 0x0

    .local v2, n:I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 392
    iget-object v4, p0, Lorg/cybergarage/upnp/std/av/renderer/ConnectionManager;->conInfoList:Lorg/cybergarage/upnp/std/av/renderer/ConnectionInfoList;

    invoke-virtual {v4, v2}, Lorg/cybergarage/upnp/std/av/renderer/ConnectionInfoList;->getConnectionInfo(I)Lorg/cybergarage/upnp/std/av/renderer/ConnectionInfo;

    move-result-object v1

    .line 393
    .local v1, info:Lorg/cybergarage/upnp/std/av/renderer/ConnectionInfo;
    if-lez v2, :cond_0

    .line 394
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 395
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lorg/cybergarage/upnp/std/av/renderer/ConnectionInfo;->getID()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 391
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 397
    .end local v1           #info:Lorg/cybergarage/upnp/std/av/renderer/ConnectionInfo;
    :cond_1
    const-string v4, "ConnectionIDs"

    invoke-virtual {p1, v4}, Lorg/cybergarage/upnp/Action;->getArgument(Ljava/lang/String;)Lorg/cybergarage/upnp/Argument;

    move-result-object v4

    invoke-virtual {v4, v0}, Lorg/cybergarage/upnp/Argument;->setValue(Ljava/lang/String;)V

    .line 398
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/renderer/ConnectionManager;->unlock()V

    .line 399
    const/4 v4, 0x1

    return v4
.end method

.method private getCurrentConnectionInfo(Lorg/cybergarage/upnp/Action;)Z
    .locals 5
    .parameter "action"

    .prologue
    const/4 v4, -0x1

    .line 408
    const-string v2, "RcsID"

    invoke-virtual {p1, v2}, Lorg/cybergarage/upnp/Action;->getArgument(Ljava/lang/String;)Lorg/cybergarage/upnp/Argument;

    move-result-object v2

    invoke-virtual {v2}, Lorg/cybergarage/upnp/Argument;->getIntegerValue()I

    move-result v0

    .line 409
    .local v0, id:I
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/renderer/ConnectionManager;->lock()V

    .line 410
    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/std/av/renderer/ConnectionManager;->getConnectionInfo(I)Lorg/cybergarage/upnp/std/av/renderer/ConnectionInfo;

    move-result-object v1

    .line 411
    .local v1, info:Lorg/cybergarage/upnp/std/av/renderer/ConnectionInfo;
    if-eqz v1, :cond_0

    .line 412
    const-string v2, "RcsID"

    invoke-virtual {p1, v2}, Lorg/cybergarage/upnp/Action;->getArgument(Ljava/lang/String;)Lorg/cybergarage/upnp/Argument;

    move-result-object v2

    invoke-virtual {v1}, Lorg/cybergarage/upnp/std/av/renderer/ConnectionInfo;->getRcsID()I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/cybergarage/upnp/Argument;->setValue(I)V

    .line 413
    const-string v2, "AVTransportID"

    invoke-virtual {p1, v2}, Lorg/cybergarage/upnp/Action;->getArgument(Ljava/lang/String;)Lorg/cybergarage/upnp/Argument;

    move-result-object v2

    invoke-virtual {v1}, Lorg/cybergarage/upnp/std/av/renderer/ConnectionInfo;->getAVTransportID()I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/cybergarage/upnp/Argument;->setValue(I)V

    .line 414
    const-string v2, "PeerConnectionManager"

    invoke-virtual {p1, v2}, Lorg/cybergarage/upnp/Action;->getArgument(Ljava/lang/String;)Lorg/cybergarage/upnp/Argument;

    move-result-object v2

    invoke-virtual {v1}, Lorg/cybergarage/upnp/std/av/renderer/ConnectionInfo;->getPeerConnectionManager()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/cybergarage/upnp/Argument;->setValue(Ljava/lang/String;)V

    .line 415
    const-string v2, "PeerConnectionID"

    invoke-virtual {p1, v2}, Lorg/cybergarage/upnp/Action;->getArgument(Ljava/lang/String;)Lorg/cybergarage/upnp/Argument;

    move-result-object v2

    invoke-virtual {v1}, Lorg/cybergarage/upnp/std/av/renderer/ConnectionInfo;->getPeerConnectionID()I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/cybergarage/upnp/Argument;->setValue(I)V

    .line 416
    const-string v2, "Direction"

    invoke-virtual {p1, v2}, Lorg/cybergarage/upnp/Action;->getArgument(Ljava/lang/String;)Lorg/cybergarage/upnp/Argument;

    move-result-object v2

    invoke-virtual {v1}, Lorg/cybergarage/upnp/std/av/renderer/ConnectionInfo;->getDirection()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/cybergarage/upnp/Argument;->setValue(Ljava/lang/String;)V

    .line 417
    const-string v2, "Status"

    invoke-virtual {p1, v2}, Lorg/cybergarage/upnp/Action;->getArgument(Ljava/lang/String;)Lorg/cybergarage/upnp/Argument;

    move-result-object v2

    invoke-virtual {v1}, Lorg/cybergarage/upnp/std/av/renderer/ConnectionInfo;->getStatus()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/cybergarage/upnp/Argument;->setValue(Ljava/lang/String;)V

    .line 427
    :goto_0
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/renderer/ConnectionManager;->unlock()V

    .line 428
    const/4 v2, 0x1

    return v2

    .line 420
    :cond_0
    const-string v2, "RcsID"

    invoke-virtual {p1, v2}, Lorg/cybergarage/upnp/Action;->getArgument(Ljava/lang/String;)Lorg/cybergarage/upnp/Argument;

    move-result-object v2

    invoke-virtual {v2, v4}, Lorg/cybergarage/upnp/Argument;->setValue(I)V

    .line 421
    const-string v2, "AVTransportID"

    invoke-virtual {p1, v2}, Lorg/cybergarage/upnp/Action;->getArgument(Ljava/lang/String;)Lorg/cybergarage/upnp/Argument;

    move-result-object v2

    invoke-virtual {v2, v4}, Lorg/cybergarage/upnp/Argument;->setValue(I)V

    .line 422
    const-string v2, "PeerConnectionManager"

    invoke-virtual {p1, v2}, Lorg/cybergarage/upnp/Action;->getArgument(Ljava/lang/String;)Lorg/cybergarage/upnp/Argument;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Lorg/cybergarage/upnp/Argument;->setValue(Ljava/lang/String;)V

    .line 423
    const-string v2, "PeerConnectionID"

    invoke-virtual {p1, v2}, Lorg/cybergarage/upnp/Action;->getArgument(Ljava/lang/String;)Lorg/cybergarage/upnp/Argument;

    move-result-object v2

    invoke-virtual {v2, v4}, Lorg/cybergarage/upnp/Argument;->setValue(I)V

    .line 424
    const-string v2, "Direction"

    invoke-virtual {p1, v2}, Lorg/cybergarage/upnp/Action;->getArgument(Ljava/lang/String;)Lorg/cybergarage/upnp/Argument;

    move-result-object v2

    const-string v3, "Output"

    invoke-virtual {v2, v3}, Lorg/cybergarage/upnp/Argument;->setValue(Ljava/lang/String;)V

    .line 425
    const-string v2, "Status"

    invoke-virtual {p1, v2}, Lorg/cybergarage/upnp/Action;->getArgument(Ljava/lang/String;)Lorg/cybergarage/upnp/Argument;

    move-result-object v2

    const-string v3, "Unknown"

    invoke-virtual {v2, v3}, Lorg/cybergarage/upnp/Argument;->setValue(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setMediaRenderer(Lorg/cybergarage/upnp/std/av/renderer/MediaRenderer;)V
    .locals 0
    .parameter "render"

    .prologue
    .line 268
    iput-object p1, p0, Lorg/cybergarage/upnp/std/av/renderer/ConnectionManager;->mediaRenderer:Lorg/cybergarage/upnp/std/av/renderer/MediaRenderer;

    .line 269
    return-void
.end method


# virtual methods
.method public actionControlReceived(Lorg/cybergarage/upnp/Action;)Z
    .locals 4
    .parameter "action"

    .prologue
    .line 365
    invoke-virtual {p1}, Lorg/cybergarage/upnp/Action;->getName()Ljava/lang/String;

    move-result-object v0

    .line 367
    .local v0, actionName:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 368
    const/4 v2, 0x0

    .line 379
    :cond_0
    :goto_0
    return v2

    .line 370
    :cond_1
    const/4 v2, 0x0

    .line 372
    .local v2, isActionSuccess:Z
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/renderer/ConnectionManager;->getMediaRenderer()Lorg/cybergarage/upnp/std/av/renderer/MediaRenderer;

    move-result-object v1

    .line 373
    .local v1, dmr:Lorg/cybergarage/upnp/std/av/renderer/MediaRenderer;
    if-eqz v1, :cond_0

    .line 374
    invoke-virtual {v1}, Lorg/cybergarage/upnp/std/av/renderer/MediaRenderer;->getActionListener()Lorg/cybergarage/upnp/control/ActionListener;

    move-result-object v3

    .line 375
    .local v3, listener:Lorg/cybergarage/upnp/control/ActionListener;
    if-eqz v3, :cond_0

    .line 376
    invoke-interface {v3, p1}, Lorg/cybergarage/upnp/control/ActionListener;->actionControlReceived(Lorg/cybergarage/upnp/Action;)Z

    move-result v2

    goto :goto_0
.end method

.method public addConnectionInfo(Lorg/cybergarage/upnp/std/av/renderer/ConnectionInfo;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 331
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/renderer/ConnectionManager;->lock()V

    .line 332
    iget-object v0, p0, Lorg/cybergarage/upnp/std/av/renderer/ConnectionManager;->conInfoList:Lorg/cybergarage/upnp/std/av/renderer/ConnectionInfoList;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 333
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/renderer/ConnectionManager;->unlock()V

    .line 334
    return-void
.end method

.method public getConnectionInfo(I)Lorg/cybergarage/upnp/std/av/renderer/ConnectionInfo;
    .locals 4
    .parameter "id"

    .prologue
    .line 320
    iget-object v3, p0, Lorg/cybergarage/upnp/std/av/renderer/ConnectionManager;->conInfoList:Lorg/cybergarage/upnp/std/av/renderer/ConnectionInfoList;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v2

    .line 321
    .local v2, size:I
    const/4 v1, 0x0

    .local v1, n:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 322
    iget-object v3, p0, Lorg/cybergarage/upnp/std/av/renderer/ConnectionManager;->conInfoList:Lorg/cybergarage/upnp/std/av/renderer/ConnectionInfoList;

    invoke-virtual {v3, v1}, Lorg/cybergarage/upnp/std/av/renderer/ConnectionInfoList;->getConnectionInfo(I)Lorg/cybergarage/upnp/std/av/renderer/ConnectionInfo;

    move-result-object v0

    .line 323
    .local v0, info:Lorg/cybergarage/upnp/std/av/renderer/ConnectionInfo;
    invoke-virtual {v0}, Lorg/cybergarage/upnp/std/av/renderer/ConnectionInfo;->getID()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 326
    .end local v0           #info:Lorg/cybergarage/upnp/std/av/renderer/ConnectionInfo;
    :goto_1
    return-object v0

    .line 321
    .restart local v0       #info:Lorg/cybergarage/upnp/std/av/renderer/ConnectionInfo;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 326
    .end local v0           #info:Lorg/cybergarage/upnp/std/av/renderer/ConnectionInfo;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getConnectionInfoList()Lorg/cybergarage/upnp/std/av/renderer/ConnectionInfoList;
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lorg/cybergarage/upnp/std/av/renderer/ConnectionManager;->conInfoList:Lorg/cybergarage/upnp/std/av/renderer/ConnectionInfoList;

    return-object v0
.end method

.method public getMediaRenderer()Lorg/cybergarage/upnp/std/av/renderer/MediaRenderer;
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lorg/cybergarage/upnp/std/av/renderer/ConnectionManager;->mediaRenderer:Lorg/cybergarage/upnp/std/av/renderer/MediaRenderer;

    return-object v0
.end method

.method public getNextConnectionID()I
    .locals 1

    .prologue
    .line 300
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/renderer/ConnectionManager;->lock()V

    .line 301
    iget v0, p0, Lorg/cybergarage/upnp/std/av/renderer/ConnectionManager;->maxConnectionID:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/cybergarage/upnp/std/av/renderer/ConnectionManager;->maxConnectionID:I

    .line 302
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/renderer/ConnectionManager;->unlock()V

    .line 303
    iget v0, p0, Lorg/cybergarage/upnp/std/av/renderer/ConnectionManager;->maxConnectionID:I

    return v0
.end method

.method public lock()V
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lorg/cybergarage/upnp/std/av/renderer/ConnectionManager;->mutex:Lorg/cybergarage/util/Mutex;

    invoke-virtual {v0}, Lorg/cybergarage/util/Mutex;->lock()V

    .line 285
    return-void
.end method

.method public queryControlReceived(Lorg/cybergarage/upnp/StateVariable;)Z
    .locals 1
    .parameter "stateVar"

    .prologue
    .line 437
    const/4 v0, 0x0

    return v0
.end method

.method public removeConnectionInfo(I)V
    .locals 4
    .parameter "id"

    .prologue
    .line 338
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/renderer/ConnectionManager;->lock()V

    .line 339
    iget-object v3, p0, Lorg/cybergarage/upnp/std/av/renderer/ConnectionManager;->conInfoList:Lorg/cybergarage/upnp/std/av/renderer/ConnectionInfoList;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v2

    .line 340
    .local v2, size:I
    const/4 v1, 0x0

    .local v1, n:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 341
    iget-object v3, p0, Lorg/cybergarage/upnp/std/av/renderer/ConnectionManager;->conInfoList:Lorg/cybergarage/upnp/std/av/renderer/ConnectionInfoList;

    invoke-virtual {v3, v1}, Lorg/cybergarage/upnp/std/av/renderer/ConnectionInfoList;->getConnectionInfo(I)Lorg/cybergarage/upnp/std/av/renderer/ConnectionInfo;

    move-result-object v0

    .line 342
    .local v0, info:Lorg/cybergarage/upnp/std/av/renderer/ConnectionInfo;
    invoke-virtual {v0}, Lorg/cybergarage/upnp/std/av/renderer/ConnectionInfo;->getID()I

    move-result v3

    if-ne v3, p1, :cond_1

    .line 343
    iget-object v3, p0, Lorg/cybergarage/upnp/std/av/renderer/ConnectionManager;->conInfoList:Lorg/cybergarage/upnp/std/av/renderer/ConnectionInfoList;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 347
    .end local v0           #info:Lorg/cybergarage/upnp/std/av/renderer/ConnectionInfo;
    :cond_0
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/renderer/ConnectionManager;->unlock()V

    .line 348
    return-void

    .line 340
    .restart local v0       #info:Lorg/cybergarage/upnp/std/av/renderer/ConnectionInfo;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public removeConnectionInfo(Lorg/cybergarage/upnp/std/av/renderer/ConnectionInfo;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 352
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/renderer/ConnectionManager;->lock()V

    .line 353
    iget-object v0, p0, Lorg/cybergarage/upnp/std/av/renderer/ConnectionManager;->conInfoList:Lorg/cybergarage/upnp/std/av/renderer/ConnectionInfoList;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 354
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/renderer/ConnectionManager;->unlock()V

    .line 355
    return-void
.end method

.method public unlock()V
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lorg/cybergarage/upnp/std/av/renderer/ConnectionManager;->mutex:Lorg/cybergarage/util/Mutex;

    invoke-virtual {v0}, Lorg/cybergarage/util/Mutex;->unlock()V

    .line 290
    return-void
.end method
