.class public Lorg/cybergarage/upnp/ControlPoint;
.super Ljava/lang/Object;
.source "ControlPoint.java"

# interfaces
.implements Lorg/cybergarage/http/HTTPRequestListener;


# static fields
.field private static final DEFAULT_EVENTSUB_PORT:I = 0x2362

.field private static final DEFAULT_EVENTSUB_URI:Ljava/lang/String; = "/evetSub"

.field private static final DEFAULT_EXPIRED_DEVICE_MONITORING_INTERVAL:I = 0x3c

.field private static final DEFAULT_SSDP_PORT:I = 0x2330

.field private static final TAG:Ljava/lang/String; = "ControlPoint"

.field private static final mLock:Ljava/util/concurrent/locks/Lock;


# instance fields
.field private volatile devNodeList:Lorg/cybergarage/xml/NodeList;

.field deviceChangeListenerList:Lorg/cybergarage/util/ListenerList;

.field private deviceDisposer:Lorg/cybergarage/upnp/device/Disposer;

.field private deviceNotifyListenerList:Lorg/cybergarage/util/ListenerList;

.field private deviceSearchResponseListenerList:Lorg/cybergarage/util/ListenerList;

.field private eventListenerList:Lorg/cybergarage/util/ListenerList;

.field private eventSubURI:Ljava/lang/String;

.field private expiredDeviceMonitoringInterval:J

.field private httpPort:I

.field private httpServerList:Lorg/cybergarage/http/HTTPServerList;

.field private nmprMode:Z

.field private renewSubscriber:Lorg/cybergarage/upnp/control/RenewSubscriber;

.field private searchMx:I

.field private ssdpNotifySocketList:Lorg/cybergarage/upnp/ssdp/SSDPNotifySocketList;

.field private ssdpPort:I

.field private ssdpSearchResponseSocketList:Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocketList;

.field private userData:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 168
    invoke-static {}, Lorg/cybergarage/upnp/UPnP;->initialize()V

    .line 210
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Lorg/cybergarage/upnp/ControlPoint;->mLock:Ljava/util/concurrent/locks/Lock;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 197
    const/16 v0, 0x2330

    const/16 v1, 0x2362

    invoke-direct {p0, v0, v1}, Lorg/cybergarage/upnp/ControlPoint;-><init>(II)V

    .line 198
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .parameter "ssdpPort"
    .parameter "httpPort"

    .prologue
    .line 192
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/cybergarage/upnp/ControlPoint;-><init>(II[Ljava/net/InetAddress;)V

    .line 193
    return-void
.end method

.method public constructor <init>(II[Ljava/net/InetAddress;)V
    .locals 4
    .parameter "ssdpPort"
    .parameter "httpPort"
    .parameter "binds"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 227
    iput v3, p0, Lorg/cybergarage/upnp/ControlPoint;->ssdpPort:I

    .line 241
    iput v3, p0, Lorg/cybergarage/upnp/ControlPoint;->httpPort:I

    .line 271
    new-instance v0, Lorg/cybergarage/xml/NodeList;

    invoke-direct {v0}, Lorg/cybergarage/xml/NodeList;-><init>()V

    iput-object v0, p0, Lorg/cybergarage/upnp/ControlPoint;->devNodeList:Lorg/cybergarage/xml/NodeList;

    .line 588
    new-instance v0, Lorg/cybergarage/util/ListenerList;

    invoke-direct {v0}, Lorg/cybergarage/util/ListenerList;-><init>()V

    iput-object v0, p0, Lorg/cybergarage/upnp/ControlPoint;->deviceNotifyListenerList:Lorg/cybergarage/util/ListenerList;

    .line 617
    new-instance v0, Lorg/cybergarage/util/ListenerList;

    invoke-direct {v0}, Lorg/cybergarage/util/ListenerList;-><init>()V

    iput-object v0, p0, Lorg/cybergarage/upnp/ControlPoint;->deviceSearchResponseListenerList:Lorg/cybergarage/util/ListenerList;

    .line 651
    new-instance v0, Lorg/cybergarage/util/ListenerList;

    invoke-direct {v0}, Lorg/cybergarage/util/ListenerList;-><init>()V

    iput-object v0, p0, Lorg/cybergarage/upnp/ControlPoint;->deviceChangeListenerList:Lorg/cybergarage/util/ListenerList;

    .line 725
    const/4 v0, 0x3

    iput v0, p0, Lorg/cybergarage/upnp/ControlPoint;->searchMx:I

    .line 759
    new-instance v0, Lorg/cybergarage/http/HTTPServerList;

    invoke-direct {v0}, Lorg/cybergarage/http/HTTPServerList;-><init>()V

    iput-object v0, p0, Lorg/cybergarage/upnp/ControlPoint;->httpServerList:Lorg/cybergarage/http/HTTPServerList;

    .line 796
    new-instance v0, Lorg/cybergarage/util/ListenerList;

    invoke-direct {v0}, Lorg/cybergarage/util/ListenerList;-><init>()V

    iput-object v0, p0, Lorg/cybergarage/upnp/ControlPoint;->eventListenerList:Lorg/cybergarage/util/ListenerList;

    .line 821
    const-string v0, "/evetSub"

    iput-object v0, p0, Lorg/cybergarage/upnp/ControlPoint;->eventSubURI:Ljava/lang/String;

    .line 1154
    iput-object v2, p0, Lorg/cybergarage/upnp/ControlPoint;->userData:Ljava/lang/Object;

    .line 176
    new-instance v0, Lorg/cybergarage/upnp/ssdp/SSDPNotifySocketList;

    invoke-direct {v0, p3}, Lorg/cybergarage/upnp/ssdp/SSDPNotifySocketList;-><init>([Ljava/net/InetAddress;)V

    iput-object v0, p0, Lorg/cybergarage/upnp/ControlPoint;->ssdpNotifySocketList:Lorg/cybergarage/upnp/ssdp/SSDPNotifySocketList;

    .line 177
    new-instance v0, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocketList;

    invoke-direct {v0, p3}, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocketList;-><init>([Ljava/net/InetAddress;)V

    iput-object v0, p0, Lorg/cybergarage/upnp/ControlPoint;->ssdpSearchResponseSocketList:Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocketList;

    .line 179
    invoke-virtual {p0, p1}, Lorg/cybergarage/upnp/ControlPoint;->setSSDPPort(I)V

    .line 180
    invoke-virtual {p0, p2}, Lorg/cybergarage/upnp/ControlPoint;->setHTTPPort(I)V

    .line 182
    invoke-virtual {p0, v2}, Lorg/cybergarage/upnp/ControlPoint;->setDeviceDisposer(Lorg/cybergarage/upnp/device/Disposer;)V

    .line 183
    const-wide/16 v0, 0x3c

    invoke-virtual {p0, v0, v1}, Lorg/cybergarage/upnp/ControlPoint;->setExpiredDeviceMonitoringInterval(J)V

    .line 185
    invoke-virtual {p0, v2}, Lorg/cybergarage/upnp/ControlPoint;->setRenewSubscriber(Lorg/cybergarage/upnp/control/RenewSubscriber;)V

    .line 187
    invoke-virtual {p0, v3}, Lorg/cybergarage/upnp/ControlPoint;->setNMPRMode(Z)V

    .line 188
    invoke-virtual {p0, v2}, Lorg/cybergarage/upnp/ControlPoint;->setRenewSubscriber(Lorg/cybergarage/upnp/control/RenewSubscriber;)V

    .line 189
    return-void
.end method

.method static synthetic access$000(Lorg/cybergarage/upnp/ControlPoint;Lorg/cybergarage/xml/Node;)Lorg/cybergarage/upnp/Device;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 136
    invoke-direct {p0, p1}, Lorg/cybergarage/upnp/ControlPoint;->getDevice(Lorg/cybergarage/xml/Node;)Lorg/cybergarage/upnp/Device;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lorg/cybergarage/upnp/ControlPoint;Lorg/cybergarage/xml/Node;Lorg/cybergarage/upnp/Device;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 136
    invoke-direct {p0, p1, p2}, Lorg/cybergarage/upnp/ControlPoint;->addDevice(Lorg/cybergarage/xml/Node;Lorg/cybergarage/upnp/Device;)V

    return-void
.end method

.method private declared-synchronized addDevice(Lorg/cybergarage/upnp/ssdp/SSDPPacket;)V
    .locals 10
    .parameter "ssdpPacket"

    .prologue
    .line 318
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->isRootDevice()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    if-nez v7, :cond_1

    .line 392
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 321
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->getUSN()Ljava/lang/String;

    move-result-object v6

    .line 322
    .local v6, usn:Ljava/lang/String;
    invoke-static {v6}, Lorg/cybergarage/upnp/device/USN;->getUDN(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 331
    .local v5, udn:Ljava/lang/String;
    invoke-virtual {p1}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->getLocation()Ljava/lang/String;

    move-result-object v2

    .line 332
    .local v2, location:Ljava/lang/String;
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "addDevice++++++++location+"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 334
    :try_start_2
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 335
    .local v3, locationUrl:Ljava/net/URL;
    invoke-virtual {v3}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 337
    .local v1, devIp:Ljava/lang/String;
    invoke-direct {p0, v1}, Lorg/cybergarage/upnp/ControlPoint;->isIpV4Addr(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 338
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "addDevice++++++++location == IPV4 Check Failed = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 382
    .end local v1           #devIp:Ljava/lang/String;
    .end local v3           #locationUrl:Ljava/net/URL;
    :catch_0
    move-exception v4

    .line 383
    .local v4, me:Ljava/net/MalformedURLException;
    :try_start_3
    invoke-virtual {p1}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/cybergarage/util/Debug;->warning(Ljava/lang/String;)V

    .line 384
    invoke-static {v4}, Lorg/cybergarage/util/Debug;->warning(Ljava/lang/Exception;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 318
    .end local v2           #location:Ljava/lang/String;
    .end local v4           #me:Ljava/net/MalformedURLException;
    .end local v5           #udn:Ljava/lang/String;
    .end local v6           #usn:Ljava/lang/String;
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7

    .line 344
    .restart local v1       #devIp:Ljava/lang/String;
    .restart local v2       #location:Ljava/lang/String;
    .restart local v3       #locationUrl:Ljava/net/URL;
    .restart local v5       #udn:Ljava/lang/String;
    .restart local v6       #usn:Ljava/lang/String;
    :cond_2
    :try_start_4
    invoke-virtual {p0, v5}, Lorg/cybergarage/upnp/ControlPoint;->getDevice(Ljava/lang/String;)Lorg/cybergarage/upnp/Device;

    move-result-object v0

    .line 345
    .local v0, dev:Lorg/cybergarage/upnp/Device;
    if-eqz v0, :cond_3

    .line 346
    invoke-virtual {v0, p1}, Lorg/cybergarage/upnp/Device;->setSSDPPacket(Lorg/cybergarage/upnp/ssdp/SSDPPacket;)V

    goto :goto_0

    .line 350
    :cond_3
    new-instance v7, Ljava/lang/Thread;

    new-instance v8, Lorg/cybergarage/upnp/ControlPoint$1;

    invoke-direct {v8, p0, v3, p1}, Lorg/cybergarage/upnp/ControlPoint$1;-><init>(Lorg/cybergarage/upnp/ControlPoint;Ljava/net/URL;Lorg/cybergarage/upnp/ssdp/SSDPPacket;)V

    invoke-direct {v7, v8}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v7}, Ljava/lang/Thread;->start()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0
.end method

.method private declared-synchronized addDevice(Lorg/cybergarage/xml/Node;)V
    .locals 2
    .parameter "rootNode"

    .prologue
    .line 276
    monitor-enter p0

    :try_start_0
    sget-object v0, Lorg/cybergarage/upnp/ControlPoint;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 278
    :try_start_1
    iget-object v0, p0, Lorg/cybergarage/upnp/ControlPoint;->devNodeList:Lorg/cybergarage/xml/NodeList;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 280
    :try_start_2
    sget-object v0, Lorg/cybergarage/upnp/ControlPoint;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 282
    monitor-exit p0

    return-void

    .line 280
    :catchall_0
    move-exception v0

    :try_start_3
    sget-object v1, Lorg/cybergarage/upnp/ControlPoint;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 276
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized addDevice(Lorg/cybergarage/xml/Node;Lorg/cybergarage/upnp/Device;)V
    .locals 2
    .parameter "rootNode"
    .parameter "rootDev"

    .prologue
    .line 289
    monitor-enter p0

    :try_start_0
    invoke-virtual {p2}, Lorg/cybergarage/upnp/Device;->getUDN()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/cybergarage/upnp/ControlPoint;->getDevice(Ljava/lang/String;)Lorg/cybergarage/upnp/Device;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 290
    .local v0, dev:Lorg/cybergarage/upnp/Device;
    if-eqz v0, :cond_0

    .line 295
    :goto_0
    monitor-exit p0

    return-void

    .line 293
    :cond_0
    :try_start_1
    iget-object v1, p0, Lorg/cybergarage/upnp/ControlPoint;->devNodeList:Lorg/cybergarage/xml/NodeList;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 294
    invoke-virtual {p0, p2}, Lorg/cybergarage/upnp/ControlPoint;->performAddDeviceListener(Lorg/cybergarage/upnp/Device;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 289
    .end local v0           #dev:Lorg/cybergarage/upnp/Device;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized getDevice(Lorg/cybergarage/xml/Node;)Lorg/cybergarage/upnp/Device;
    .locals 3
    .parameter "rootNode"

    .prologue
    const/4 v1, 0x0

    .line 422
    monitor-enter p0

    if-nez p1, :cond_1

    .line 427
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v1

    .line 424
    :cond_1
    :try_start_0
    const-string v2, "device"

    invoke-virtual {p1, v2}, Lorg/cybergarage/xml/Node;->getNode(Ljava/lang/String;)Lorg/cybergarage/xml/Node;

    move-result-object v0

    .line 425
    .local v0, devNode:Lorg/cybergarage/xml/Node;
    if-eqz v0, :cond_0

    .line 427
    new-instance v1, Lorg/cybergarage/upnp/Device;

    invoke-direct {v1, p1, v0}, Lorg/cybergarage/upnp/Device;-><init>(Lorg/cybergarage/xml/Node;Lorg/cybergarage/xml/Node;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 422
    .end local v0           #devNode:Lorg/cybergarage/xml/Node;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private getEventSubCallbackURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "host"

    .prologue
    .line 835
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ControlPoint;->getHTTPPort()I

    move-result v0

    invoke-virtual {p0}, Lorg/cybergarage/upnp/ControlPoint;->getEventSubURI()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lorg/cybergarage/net/HostInterface;->getHostURL(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getHTTPServerList()Lorg/cybergarage/http/HTTPServerList;
    .locals 1

    .prologue
    .line 763
    iget-object v0, p0, Lorg/cybergarage/upnp/ControlPoint;->httpServerList:Lorg/cybergarage/http/HTTPServerList;

    return-object v0
.end method

.method private getSSDPNotifySocketList()Lorg/cybergarage/upnp/ssdp/SSDPNotifySocketList;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lorg/cybergarage/upnp/ControlPoint;->ssdpNotifySocketList:Lorg/cybergarage/upnp/ssdp/SSDPNotifySocketList;

    return-object v0
.end method

.method private getSSDPSearchResponseSocketList()Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocketList;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lorg/cybergarage/upnp/ControlPoint;->ssdpSearchResponseSocketList:Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocketList;

    return-object v0
.end method

.method private isIpV4Addr(Ljava/lang/String;)Z
    .locals 3
    .parameter "ip"

    .prologue
    const/4 v1, 0x0

    .line 300
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 301
    const-string v0, "^(1\\d{2}|2[0-4]\\d|25[0-5]|[1-9]\\d|[1-9])\\.(1\\d{2}|2[0-4]\\d|25[0-5]|[1-9]\\d|\\d)\\.(1\\d{2}|2[0-4]\\d|25[0-5]|[1-9]\\d|\\d)\\.(1\\d{2}|2[0-4]\\d|25[0-5]|[1-9]\\d|\\d)$"

    .line 305
    .local v0, regex:Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 306
    const/4 v1, 0x1

    .line 312
    .end local v0           #regex:Ljava/lang/String;
    :cond_0
    return v1
.end method

.method private declared-synchronized performEventListener(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter "uuid"
    .parameter "seq"
    .parameter "name"
    .parameter "value"

    .prologue
    .line 810
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lorg/cybergarage/upnp/ControlPoint;->eventListenerList:Lorg/cybergarage/util/ListenerList;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v6

    .line 811
    .local v6, listenerSize:I
    const/4 v7, 0x0

    .local v7, n:I
    :goto_0
    if-ge v7, v6, :cond_0

    .line 812
    iget-object v1, p0, Lorg/cybergarage/upnp/ControlPoint;->eventListenerList:Lorg/cybergarage/util/ListenerList;

    invoke-virtual {v1, v7}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cybergarage/upnp/event/EventListener;

    .local v0, listener:Lorg/cybergarage/upnp/event/EventListener;
    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    .line 813
    invoke-interface/range {v0 .. v5}, Lorg/cybergarage/upnp/event/EventListener;->eventNotifyReceived(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 811
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 815
    .end local v0           #listener:Lorg/cybergarage/upnp/event/EventListener;
    :cond_0
    monitor-exit p0

    return-void

    .line 810
    .end local v6           #listenerSize:I
    .end local v7           #n:I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private removeDevice(Lorg/cybergarage/upnp/ssdp/SSDPPacket;)V
    .locals 3
    .parameter "packet"

    .prologue
    .line 531
    invoke-virtual {p1}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->isByeBye()Z

    move-result v2

    if-nez v2, :cond_0

    .line 536
    :goto_0
    return-void

    .line 533
    :cond_0
    invoke-virtual {p1}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->getUSN()Ljava/lang/String;

    move-result-object v1

    .line 534
    .local v1, usn:Ljava/lang/String;
    invoke-static {v1}, Lorg/cybergarage/upnp/device/USN;->getUDN(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 535
    .local v0, udn:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/ControlPoint;->removeDevice(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private removeDevice(Lorg/cybergarage/xml/Node;)V
    .locals 3
    .parameter "rootNode"

    .prologue
    .line 504
    invoke-direct {p0, p1}, Lorg/cybergarage/upnp/ControlPoint;->getDevice(Lorg/cybergarage/xml/Node;)Lorg/cybergarage/upnp/Device;

    move-result-object v0

    .line 505
    .local v0, dev:Lorg/cybergarage/upnp/Device;
    sget-object v1, Lorg/cybergarage/upnp/ControlPoint;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 507
    :try_start_0
    iget-object v1, p0, Lorg/cybergarage/upnp/ControlPoint;->devNodeList:Lorg/cybergarage/xml/NodeList;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 509
    sget-object v1, Lorg/cybergarage/upnp/ControlPoint;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 512
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/cybergarage/upnp/Device;->isRootDevice()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 513
    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/ControlPoint;->performRemoveDeviceListener(Lorg/cybergarage/upnp/Device;)V

    .line 514
    :cond_0
    return-void

    .line 509
    :catchall_0
    move-exception v1

    sget-object v2, Lorg/cybergarage/upnp/ControlPoint;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method


# virtual methods
.method public addDeviceChangeListener(Lorg/cybergarage/upnp/device/DeviceChangeListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 655
    iget-object v0, p0, Lorg/cybergarage/upnp/ControlPoint;->deviceChangeListenerList:Lorg/cybergarage/util/ListenerList;

    invoke-virtual {v0, p1}, Lorg/cybergarage/util/ListenerList;->add(Ljava/lang/Object;)Z

    .line 656
    return-void
.end method

.method public declared-synchronized addEventListener(Lorg/cybergarage/upnp/event/EventListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 800
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/cybergarage/upnp/ControlPoint;->eventListenerList:Lorg/cybergarage/util/ListenerList;

    invoke-virtual {v0, p1}, Lorg/cybergarage/util/ListenerList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 801
    monitor-exit p0

    return-void

    .line 800
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public addNotifyListener(Lorg/cybergarage/upnp/device/NotifyListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 592
    iget-object v0, p0, Lorg/cybergarage/upnp/ControlPoint;->deviceNotifyListenerList:Lorg/cybergarage/util/ListenerList;

    invoke-virtual {v0, p1}, Lorg/cybergarage/util/ListenerList;->add(Ljava/lang/Object;)Z

    .line 593
    return-void
.end method

.method public addSearchResponseListener(Lorg/cybergarage/upnp/device/SearchResponseListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 621
    iget-object v0, p0, Lorg/cybergarage/upnp/ControlPoint;->deviceSearchResponseListenerList:Lorg/cybergarage/util/ListenerList;

    invoke-virtual {v0, p1}, Lorg/cybergarage/util/ListenerList;->add(Ljava/lang/Object;)Z

    .line 622
    return-void
.end method

.method public declared-synchronized clearDevice()V
    .locals 1

    .prologue
    .line 285
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/cybergarage/upnp/ControlPoint;->devNodeList:Lorg/cybergarage/xml/NodeList;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 286
    monitor-exit p0

    return-void

    .line 285
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public finalize()V
    .locals 0

    .prologue
    .line 202
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ControlPoint;->stop()Z

    .line 203
    return-void
.end method

.method public getDevice(Ljava/lang/String;)Lorg/cybergarage/upnp/Device;
    .locals 7
    .parameter "name"

    .prologue
    .line 462
    sget-object v5, Lorg/cybergarage/upnp/ControlPoint;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 463
    const/4 v3, 0x0

    .line 465
    .local v3, nRoots:I
    :try_start_0
    iget-object v5, p0, Lorg/cybergarage/upnp/ControlPoint;->devNodeList:Lorg/cybergarage/xml/NodeList;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    .line 467
    sget-object v5, Lorg/cybergarage/upnp/ControlPoint;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 469
    const/4 v2, 0x0

    .local v2, n:I
    :goto_0
    if-ge v2, v3, :cond_4

    .line 470
    sget-object v5, Lorg/cybergarage/upnp/ControlPoint;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 471
    const/4 v4, 0x0

    .line 472
    .local v4, rootNode:Lorg/cybergarage/xml/Node;
    iget-object v5, p0, Lorg/cybergarage/upnp/ControlPoint;->devNodeList:Lorg/cybergarage/xml/NodeList;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v3

    .line 474
    :try_start_1
    iget-object v5, p0, Lorg/cybergarage/upnp/ControlPoint;->devNodeList:Lorg/cybergarage/xml/NodeList;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    if-ge v2, v5, :cond_0

    .line 475
    iget-object v5, p0, Lorg/cybergarage/upnp/ControlPoint;->devNodeList:Lorg/cybergarage/xml/NodeList;

    invoke-virtual {v5, v2}, Lorg/cybergarage/xml/NodeList;->getNode(I)Lorg/cybergarage/xml/Node;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v4

    .line 479
    :cond_0
    sget-object v5, Lorg/cybergarage/upnp/ControlPoint;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 481
    invoke-direct {p0, v4}, Lorg/cybergarage/upnp/ControlPoint;->getDevice(Lorg/cybergarage/xml/Node;)Lorg/cybergarage/upnp/Device;

    move-result-object v1

    .line 482
    .local v1, dev:Lorg/cybergarage/upnp/Device;
    if-nez v1, :cond_2

    .line 469
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 467
    .end local v1           #dev:Lorg/cybergarage/upnp/Device;
    .end local v2           #n:I
    .end local v4           #rootNode:Lorg/cybergarage/xml/Node;
    :catchall_0
    move-exception v5

    sget-object v6, Lorg/cybergarage/upnp/ControlPoint;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v5

    .line 479
    .restart local v2       #n:I
    .restart local v4       #rootNode:Lorg/cybergarage/xml/Node;
    :catchall_1
    move-exception v5

    sget-object v6, Lorg/cybergarage/upnp/ControlPoint;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v5

    .line 484
    .restart local v1       #dev:Lorg/cybergarage/upnp/Device;
    :cond_2
    invoke-virtual {v1, p1}, Lorg/cybergarage/upnp/Device;->isDevice(Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3

    .line 490
    .end local v1           #dev:Lorg/cybergarage/upnp/Device;
    .end local v4           #rootNode:Lorg/cybergarage/xml/Node;
    :goto_1
    return-object v1

    .line 486
    .restart local v1       #dev:Lorg/cybergarage/upnp/Device;
    .restart local v4       #rootNode:Lorg/cybergarage/xml/Node;
    :cond_3
    invoke-virtual {v1, p1}, Lorg/cybergarage/upnp/Device;->getDevice(Ljava/lang/String;)Lorg/cybergarage/upnp/Device;

    move-result-object v0

    .line 487
    .local v0, cdev:Lorg/cybergarage/upnp/Device;
    if-eqz v0, :cond_1

    move-object v1, v0

    .line 488
    goto :goto_1

    .line 490
    .end local v0           #cdev:Lorg/cybergarage/upnp/Device;
    .end local v1           #dev:Lorg/cybergarage/upnp/Device;
    .end local v4           #rootNode:Lorg/cybergarage/xml/Node;
    :cond_4
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getDeviceByLocation(Ljava/lang/String;)Lorg/cybergarage/upnp/Device;
    .locals 11
    .parameter "location"

    .prologue
    const/4 v7, 0x0

    .line 397
    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 398
    .local v2, locationUrl:Ljava/net/URL;
    invoke-static {}, Lorg/cybergarage/upnp/UPnP;->getXMLParser()Lorg/cybergarage/xml/Parser;

    move-result-object v4

    .line 399
    .local v4, parser:Lorg/cybergarage/xml/Parser;
    invoke-virtual {v4, v2}, Lorg/cybergarage/xml/Parser;->parse(Ljava/net/URL;)Lorg/cybergarage/xml/Node;

    move-result-object v6

    .line 400
    .local v6, rootNode:Lorg/cybergarage/xml/Node;
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getDeviceByLocation++++++"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v6}, Lorg/cybergarage/xml/Node;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 401
    if-nez v6, :cond_0

    move-object v1, v7

    .line 417
    .end local v2           #locationUrl:Ljava/net/URL;
    .end local v4           #parser:Lorg/cybergarage/xml/Parser;
    .end local v6           #rootNode:Lorg/cybergarage/xml/Node;
    :goto_0
    return-object v1

    .line 404
    .restart local v2       #locationUrl:Ljava/net/URL;
    .restart local v4       #parser:Lorg/cybergarage/xml/Parser;
    .restart local v6       #rootNode:Lorg/cybergarage/xml/Node;
    :cond_0
    const-string v8, "device"

    invoke-virtual {v6, v8}, Lorg/cybergarage/xml/Node;->getNode(Ljava/lang/String;)Lorg/cybergarage/xml/Node;

    move-result-object v0

    .line 405
    .local v0, devNode:Lorg/cybergarage/xml/Node;
    if-nez v0, :cond_1

    move-object v1, v7

    .line 406
    goto :goto_0

    .line 407
    :cond_1
    new-instance v1, Lorg/cybergarage/upnp/Device;

    invoke-direct {v1, v6, v0}, Lorg/cybergarage/upnp/Device;-><init>(Lorg/cybergarage/xml/Node;Lorg/cybergarage/xml/Node;)V

    .line 408
    .local v1, device:Lorg/cybergarage/upnp/Device;
    invoke-virtual {v1, p1}, Lorg/cybergarage/upnp/Device;->setLocation(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/cybergarage/xml/ParserException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 411
    .end local v0           #devNode:Lorg/cybergarage/xml/Node;
    .end local v1           #device:Lorg/cybergarage/upnp/Device;
    .end local v2           #locationUrl:Ljava/net/URL;
    .end local v4           #parser:Lorg/cybergarage/xml/Parser;
    .end local v6           #rootNode:Lorg/cybergarage/xml/Node;
    :catch_0
    move-exception v3

    .line 412
    .local v3, me:Ljava/net/MalformedURLException;
    invoke-static {v3}, Lorg/cybergarage/util/Debug;->warning(Ljava/lang/Exception;)V

    .end local v3           #me:Ljava/net/MalformedURLException;
    :goto_1
    move-object v1, v7

    .line 417
    goto :goto_0

    .line 414
    :catch_1
    move-exception v5

    .line 415
    .local v5, pe:Lorg/cybergarage/xml/ParserException;
    invoke-static {v5}, Lorg/cybergarage/util/Debug;->warning(Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method public getDeviceDisposer()Lorg/cybergarage/upnp/device/Disposer;
    .locals 1

    .prologue
    .line 581
    iget-object v0, p0, Lorg/cybergarage/upnp/ControlPoint;->deviceDisposer:Lorg/cybergarage/upnp/device/Disposer;

    return-object v0
.end method

.method public getDeviceList()Lorg/cybergarage/upnp/DeviceList;
    .locals 7

    .prologue
    .line 433
    new-instance v1, Lorg/cybergarage/upnp/DeviceList;

    invoke-direct {v1}, Lorg/cybergarage/upnp/DeviceList;-><init>()V

    .line 434
    .local v1, devList:Lorg/cybergarage/upnp/DeviceList;
    sget-object v5, Lorg/cybergarage/upnp/ControlPoint;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 435
    const/4 v3, 0x0

    .line 437
    .local v3, nRoots:I
    :try_start_0
    iget-object v5, p0, Lorg/cybergarage/upnp/ControlPoint;->devNodeList:Lorg/cybergarage/xml/NodeList;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    .line 439
    sget-object v5, Lorg/cybergarage/upnp/ControlPoint;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 441
    const/4 v2, 0x0

    .local v2, n:I
    :goto_0
    if-ge v2, v3, :cond_2

    .line 442
    sget-object v5, Lorg/cybergarage/upnp/ControlPoint;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 443
    const/4 v4, 0x0

    .line 444
    .local v4, rootNode:Lorg/cybergarage/xml/Node;
    iget-object v5, p0, Lorg/cybergarage/upnp/ControlPoint;->devNodeList:Lorg/cybergarage/xml/NodeList;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v3

    .line 446
    :try_start_1
    iget-object v5, p0, Lorg/cybergarage/upnp/ControlPoint;->devNodeList:Lorg/cybergarage/xml/NodeList;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    if-ge v2, v5, :cond_0

    .line 447
    iget-object v5, p0, Lorg/cybergarage/upnp/ControlPoint;->devNodeList:Lorg/cybergarage/xml/NodeList;

    invoke-virtual {v5, v2}, Lorg/cybergarage/xml/NodeList;->getNode(I)Lorg/cybergarage/xml/Node;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v4

    .line 450
    :cond_0
    sget-object v5, Lorg/cybergarage/upnp/ControlPoint;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 452
    invoke-direct {p0, v4}, Lorg/cybergarage/upnp/ControlPoint;->getDevice(Lorg/cybergarage/xml/Node;)Lorg/cybergarage/upnp/Device;

    move-result-object v0

    .line 453
    .local v0, dev:Lorg/cybergarage/upnp/Device;
    if-nez v0, :cond_1

    .line 441
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 439
    .end local v0           #dev:Lorg/cybergarage/upnp/Device;
    .end local v2           #n:I
    .end local v4           #rootNode:Lorg/cybergarage/xml/Node;
    :catchall_0
    move-exception v5

    sget-object v6, Lorg/cybergarage/upnp/ControlPoint;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v5

    .line 450
    .restart local v2       #n:I
    .restart local v4       #rootNode:Lorg/cybergarage/xml/Node;
    :catchall_1
    move-exception v5

    sget-object v6, Lorg/cybergarage/upnp/ControlPoint;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v5

    .line 455
    .restart local v0       #dev:Lorg/cybergarage/upnp/Device;
    :cond_1
    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 457
    .end local v0           #dev:Lorg/cybergarage/upnp/Device;
    .end local v4           #rootNode:Lorg/cybergarage/xml/Node;
    :cond_2
    return-object v1
.end method

.method public getEventSubURI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 825
    iget-object v0, p0, Lorg/cybergarage/upnp/ControlPoint;->eventSubURI:Ljava/lang/String;

    return-object v0
.end method

.method public getExpiredDeviceMonitoringInterval()J
    .locals 2

    .prologue
    .line 571
    iget-wide v0, p0, Lorg/cybergarage/upnp/ControlPoint;->expiredDeviceMonitoringInterval:J

    return-wide v0
.end method

.method public getHTTPPort()I
    .locals 1

    .prologue
    .line 244
    iget v0, p0, Lorg/cybergarage/upnp/ControlPoint;->httpPort:I

    return v0
.end method

.method public getRenewSubscriber()Lorg/cybergarage/upnp/control/RenewSubscriber;
    .locals 1

    .prologue
    .line 1009
    iget-object v0, p0, Lorg/cybergarage/upnp/ControlPoint;->renewSubscriber:Lorg/cybergarage/upnp/control/RenewSubscriber;

    return-object v0
.end method

.method public getSSDPPort()I
    .locals 1

    .prologue
    .line 230
    iget v0, p0, Lorg/cybergarage/upnp/ControlPoint;->ssdpPort:I

    return v0
.end method

.method public getSearchMx()I
    .locals 1

    .prologue
    .line 729
    iget v0, p0, Lorg/cybergarage/upnp/ControlPoint;->searchMx:I

    return v0
.end method

.method public getSubscriberService(Ljava/lang/String;)Lorg/cybergarage/upnp/Service;
    .locals 5
    .parameter "uuid"

    .prologue
    .line 944
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ControlPoint;->getDeviceList()Lorg/cybergarage/upnp/DeviceList;

    move-result-object v2

    .line 945
    .local v2, devList:Lorg/cybergarage/upnp/DeviceList;
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v1

    .line 946
    .local v1, devCnt:I
    const/4 v3, 0x0

    .local v3, n:I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 947
    invoke-virtual {v2, v3}, Lorg/cybergarage/upnp/DeviceList;->getDevice(I)Lorg/cybergarage/upnp/Device;

    move-result-object v0

    .line 948
    .local v0, dev:Lorg/cybergarage/upnp/Device;
    invoke-virtual {v0, p1}, Lorg/cybergarage/upnp/Device;->getSubscriberService(Ljava/lang/String;)Lorg/cybergarage/upnp/Service;

    move-result-object v4

    .line 949
    .local v4, service:Lorg/cybergarage/upnp/Service;
    if-eqz v4, :cond_0

    .line 952
    .end local v0           #dev:Lorg/cybergarage/upnp/Device;
    .end local v4           #service:Lorg/cybergarage/upnp/Service;
    :goto_1
    return-object v4

    .line 946
    .restart local v0       #dev:Lorg/cybergarage/upnp/Device;
    .restart local v4       #service:Lorg/cybergarage/upnp/Service;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 952
    .end local v0           #dev:Lorg/cybergarage/upnp/Device;
    .end local v4           #service:Lorg/cybergarage/upnp/Service;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public getUserData()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1163
    iget-object v0, p0, Lorg/cybergarage/upnp/ControlPoint;->userData:Ljava/lang/Object;

    return-object v0
.end method

.method public hasDevice(Ljava/lang/String;)Z
    .locals 1
    .parameter "name"

    .prologue
    .line 495
    invoke-virtual {p0, p1}, Lorg/cybergarage/upnp/ControlPoint;->getDevice(Ljava/lang/String;)Lorg/cybergarage/upnp/Device;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized httpRequestRecieved(Lorg/cybergarage/http/HTTPRequest;)V
    .locals 14
    .parameter "httpReq"

    .prologue
    const/4 v13, 0x1

    .line 768
    monitor-enter p0

    :try_start_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v12, "+++++++++++++++httprequestReceived++"

    invoke-virtual {v0, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 769
    invoke-static {}, Lorg/cybergarage/util/Debug;->isOn()Z

    move-result v0

    if-ne v0, v13, :cond_0

    .line 770
    invoke-virtual {p1}, Lorg/cybergarage/http/HTTPRequest;->print()V

    .line 773
    :cond_0
    invoke-virtual {p1}, Lorg/cybergarage/http/HTTPRequest;->isNotifyRequest()Z

    move-result v0

    if-ne v0, v13, :cond_2

    .line 774
    new-instance v8, Lorg/cybergarage/upnp/event/NotifyRequest;

    invoke-direct {v8, p1}, Lorg/cybergarage/upnp/event/NotifyRequest;-><init>(Lorg/cybergarage/http/HTTPRequest;)V

    .line 775
    .local v8, notifyReq:Lorg/cybergarage/upnp/event/NotifyRequest;
    invoke-virtual {v8}, Lorg/cybergarage/upnp/event/NotifyRequest;->getSID()Ljava/lang/String;

    move-result-object v1

    .line 776
    .local v1, uuid:Ljava/lang/String;
    invoke-virtual {v8}, Lorg/cybergarage/upnp/event/NotifyRequest;->getSEQ()J

    move-result-wide v2

    .line 777
    .local v2, seq:J
    invoke-virtual {v8}, Lorg/cybergarage/upnp/event/NotifyRequest;->getPropertyList()Lorg/cybergarage/upnp/event/PropertyList;

    move-result-object v11

    .line 778
    .local v11, props:Lorg/cybergarage/upnp/event/PropertyList;
    invoke-virtual {v11}, Ljava/util/Vector;->size()I

    move-result v10

    .line 779
    .local v10, propCnt:I
    const/4 v7, 0x0

    .local v7, n:I
    :goto_0
    if-ge v7, v10, :cond_1

    .line 780
    invoke-virtual {v11, v7}, Lorg/cybergarage/upnp/event/PropertyList;->getProperty(I)Lorg/cybergarage/upnp/event/Property;

    move-result-object v9

    .line 781
    .local v9, prop:Lorg/cybergarage/upnp/event/Property;
    invoke-virtual {v9}, Lorg/cybergarage/upnp/event/Property;->getName()Ljava/lang/String;

    move-result-object v4

    .line 782
    .local v4, varName:Ljava/lang/String;
    invoke-virtual {v9}, Lorg/cybergarage/upnp/event/Property;->getValue()Ljava/lang/String;

    move-result-object v5

    .local v5, varValue:Ljava/lang/String;
    move-object v0, p0

    .line 783
    invoke-direct/range {v0 .. v5}, Lorg/cybergarage/upnp/ControlPoint;->performEventListener(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    .line 779
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 785
    .end local v4           #varName:Ljava/lang/String;
    .end local v5           #varValue:Ljava/lang/String;
    .end local v9           #prop:Lorg/cybergarage/upnp/event/Property;
    :cond_1
    invoke-virtual {p1}, Lorg/cybergarage/http/HTTPRequest;->returnOK()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    .line 790
    .end local v1           #uuid:Ljava/lang/String;
    .end local v2           #seq:J
    .end local v7           #n:I
    .end local v8           #notifyReq:Lorg/cybergarage/upnp/event/NotifyRequest;
    .end local v10           #propCnt:I
    .end local v11           #props:Lorg/cybergarage/upnp/event/PropertyList;
    :goto_1
    monitor-exit p0

    return-void

    .line 789
    :cond_2
    :try_start_1
    invoke-virtual {p1}, Lorg/cybergarage/http/HTTPRequest;->returnBadRequest()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 768
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isNMPRMode()Z
    .locals 1

    .prologue
    .line 264
    iget-boolean v0, p0, Lorg/cybergarage/upnp/ControlPoint;->nmprMode:Z

    return v0
.end method

.method public isSubscribed(Lorg/cybergarage/upnp/Service;)Z
    .locals 1
    .parameter "service"

    .prologue
    .line 893
    if-nez p1, :cond_0

    .line 894
    const/4 v0, 0x0

    .line 895
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Lorg/cybergarage/upnp/Service;->isSubscribed()Z

    move-result v0

    goto :goto_0
.end method

.method public notifyReceived(Lorg/cybergarage/upnp/ssdp/SSDPPacket;)V
    .locals 3
    .parameter "packet"

    .prologue
    const/4 v1, 0x1

    .line 688
    invoke-virtual {p1}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->isRootDevice()Z

    move-result v0

    if-ne v0, v1, :cond_0

    .line 689
    invoke-virtual {p1}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->isAlive()Z

    move-result v0

    if-ne v0, v1, :cond_1

    .line 692
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyReceived+addDevice+:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->getLocation()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 694
    invoke-direct {p0, p1}, Lorg/cybergarage/upnp/ControlPoint;->addDevice(Lorg/cybergarage/upnp/ssdp/SSDPPacket;)V

    .line 708
    :cond_0
    :goto_0
    invoke-virtual {p0, p1}, Lorg/cybergarage/upnp/ControlPoint;->performNotifyListener(Lorg/cybergarage/upnp/ssdp/SSDPPacket;)V

    .line 709
    return-void

    .line 695
    :cond_1
    invoke-virtual {p1}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->isByeBye()Z

    move-result v0

    if-ne v0, v1, :cond_0

    .line 698
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyReceived+deleteDevice+:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->getLocation()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 699
    invoke-direct {p0, p1}, Lorg/cybergarage/upnp/ControlPoint;->removeDevice(Lorg/cybergarage/upnp/ssdp/SSDPPacket;)V

    goto :goto_0
.end method

.method public declared-synchronized performAddDeviceListener(Lorg/cybergarage/upnp/Device;)V
    .locals 4
    .parameter "dev"

    .prologue
    .line 665
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lorg/cybergarage/upnp/ControlPoint;->deviceChangeListenerList:Lorg/cybergarage/util/ListenerList;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v1

    .line 666
    .local v1, listenerSize:I
    const/4 v2, 0x0

    .local v2, n:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 667
    iget-object v3, p0, Lorg/cybergarage/upnp/ControlPoint;->deviceChangeListenerList:Lorg/cybergarage/util/ListenerList;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cybergarage/upnp/device/DeviceChangeListener;

    .line 668
    .local v0, listener:Lorg/cybergarage/upnp/device/DeviceChangeListener;
    invoke-interface {v0, p1}, Lorg/cybergarage/upnp/device/DeviceChangeListener;->deviceAdded(Lorg/cybergarage/upnp/Device;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 666
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 670
    .end local v0           #listener:Lorg/cybergarage/upnp/device/DeviceChangeListener;
    :cond_0
    monitor-exit p0

    return-void

    .line 665
    .end local v1           #listenerSize:I
    .end local v2           #n:I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public performNotifyListener(Lorg/cybergarage/upnp/ssdp/SSDPPacket;)V
    .locals 5
    .parameter "ssdpPacket"

    .prologue
    .line 602
    iget-object v4, p0, Lorg/cybergarage/upnp/ControlPoint;->deviceNotifyListenerList:Lorg/cybergarage/util/ListenerList;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v2

    .line 603
    .local v2, listenerSize:I
    const/4 v3, 0x0

    .local v3, n:I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 604
    iget-object v4, p0, Lorg/cybergarage/upnp/ControlPoint;->deviceNotifyListenerList:Lorg/cybergarage/util/ListenerList;

    invoke-virtual {v4, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/cybergarage/upnp/device/NotifyListener;

    .line 606
    .local v1, listener:Lorg/cybergarage/upnp/device/NotifyListener;
    :try_start_0
    invoke-interface {v1, p1}, Lorg/cybergarage/upnp/device/NotifyListener;->deviceNotifyReceived(Lorg/cybergarage/upnp/ssdp/SSDPPacket;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 603
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 607
    :catch_0
    move-exception v0

    .line 608
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "NotifyListener returned an error:"

    invoke-static {v4, v0}, Lorg/cybergarage/util/Debug;->warning(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1

    .line 611
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #listener:Lorg/cybergarage/upnp/device/NotifyListener;
    :cond_0
    return-void
.end method

.method public declared-synchronized performRemoveDeviceListener(Lorg/cybergarage/upnp/Device;)V
    .locals 4
    .parameter "dev"

    .prologue
    .line 674
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lorg/cybergarage/upnp/ControlPoint;->deviceChangeListenerList:Lorg/cybergarage/util/ListenerList;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v1

    .line 675
    .local v1, listenerSize:I
    const/4 v2, 0x0

    .local v2, n:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 676
    iget-object v3, p0, Lorg/cybergarage/upnp/ControlPoint;->deviceChangeListenerList:Lorg/cybergarage/util/ListenerList;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cybergarage/upnp/device/DeviceChangeListener;

    .line 677
    .local v0, listener:Lorg/cybergarage/upnp/device/DeviceChangeListener;
    invoke-interface {v0, p1}, Lorg/cybergarage/upnp/device/DeviceChangeListener;->deviceRemoved(Lorg/cybergarage/upnp/Device;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 675
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 679
    .end local v0           #listener:Lorg/cybergarage/upnp/device/DeviceChangeListener;
    :cond_0
    monitor-exit p0

    return-void

    .line 674
    .end local v1           #listenerSize:I
    .end local v2           #n:I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public performSearchResponseListener(Lorg/cybergarage/upnp/ssdp/SSDPPacket;)V
    .locals 5
    .parameter "ssdpPacket"

    .prologue
    .line 631
    iget-object v4, p0, Lorg/cybergarage/upnp/ControlPoint;->deviceSearchResponseListenerList:Lorg/cybergarage/util/ListenerList;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v2

    .line 632
    .local v2, listenerSize:I
    const/4 v3, 0x0

    .local v3, n:I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 633
    iget-object v4, p0, Lorg/cybergarage/upnp/ControlPoint;->deviceSearchResponseListenerList:Lorg/cybergarage/util/ListenerList;

    invoke-virtual {v4, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/cybergarage/upnp/device/SearchResponseListener;

    .line 635
    .local v1, listener:Lorg/cybergarage/upnp/device/SearchResponseListener;
    :try_start_0
    invoke-interface {v1, p1}, Lorg/cybergarage/upnp/device/SearchResponseListener;->deviceSearchResponseReceived(Lorg/cybergarage/upnp/ssdp/SSDPPacket;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 632
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 636
    :catch_0
    move-exception v0

    .line 637
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "SearchResponseListener returned an error:"

    invoke-static {v4, v0}, Lorg/cybergarage/util/Debug;->warning(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1

    .line 642
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #listener:Lorg/cybergarage/upnp/device/SearchResponseListener;
    :cond_0
    return-void
.end method

.method public print()V
    .locals 7

    .prologue
    .line 1172
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ControlPoint;->getDeviceList()Lorg/cybergarage/upnp/DeviceList;

    move-result-object v2

    .line 1173
    .local v2, devList:Lorg/cybergarage/upnp/DeviceList;
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v1

    .line 1174
    .local v1, devCnt:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Device Num = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 1175
    const/4 v3, 0x0

    .local v3, n:I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 1176
    invoke-virtual {v2, v3}, Lorg/cybergarage/upnp/DeviceList;->getDevice(I)Lorg/cybergarage/upnp/Device;

    move-result-object v0

    .line 1177
    .local v0, dev:Lorg/cybergarage/upnp/Device;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lorg/cybergarage/upnp/Device;->getFriendlyName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lorg/cybergarage/upnp/Device;->getLeaseTime()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lorg/cybergarage/upnp/Device;->getElapsedTime()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 1175
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1179
    .end local v0           #dev:Lorg/cybergarage/upnp/Device;
    :cond_0
    return-void
.end method

.method public removeDevice(Ljava/lang/String;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 525
    invoke-virtual {p0, p1}, Lorg/cybergarage/upnp/ControlPoint;->getDevice(Ljava/lang/String;)Lorg/cybergarage/upnp/Device;

    move-result-object v0

    .line 526
    .local v0, dev:Lorg/cybergarage/upnp/Device;
    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/ControlPoint;->removeDevice(Lorg/cybergarage/upnp/Device;)V

    .line 527
    return-void
.end method

.method protected removeDevice(Lorg/cybergarage/upnp/Device;)V
    .locals 1
    .parameter "dev"

    .prologue
    .line 518
    if-nez p1, :cond_0

    .line 521
    :goto_0
    return-void

    .line 520
    :cond_0
    invoke-virtual {p1}, Lorg/cybergarage/upnp/Device;->getRootNode()Lorg/cybergarage/xml/Node;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/cybergarage/upnp/ControlPoint;->removeDevice(Lorg/cybergarage/xml/Node;)V

    goto :goto_0
.end method

.method public removeDeviceChangeListener(Lorg/cybergarage/upnp/device/DeviceChangeListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 660
    iget-object v0, p0, Lorg/cybergarage/upnp/ControlPoint;->deviceChangeListenerList:Lorg/cybergarage/util/ListenerList;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 661
    return-void
.end method

.method public declared-synchronized removeEventListener(Lorg/cybergarage/upnp/event/EventListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 805
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/cybergarage/upnp/ControlPoint;->eventListenerList:Lorg/cybergarage/util/ListenerList;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 806
    monitor-exit p0

    return-void

    .line 805
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public removeExpiredDevices()V
    .locals 6

    .prologue
    .line 549
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ControlPoint;->getDeviceList()Lorg/cybergarage/upnp/DeviceList;

    move-result-object v2

    .line 550
    .local v2, devList:Lorg/cybergarage/upnp/DeviceList;
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v1

    .line 551
    .local v1, devCnt:I
    new-array v0, v1, [Lorg/cybergarage/upnp/Device;

    .line 552
    .local v0, dev:[Lorg/cybergarage/upnp/Device;
    const/4 v3, 0x0

    .local v3, n:I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 553
    invoke-virtual {v2, v3}, Lorg/cybergarage/upnp/DeviceList;->getDevice(I)Lorg/cybergarage/upnp/Device;

    move-result-object v4

    aput-object v4, v0, v3

    .line 552
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 554
    :cond_0
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_2

    .line 555
    aget-object v4, v0, v3

    invoke-virtual {v4}, Lorg/cybergarage/upnp/Device;->isExpired()Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 556
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Expired device = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v0, v3

    invoke-virtual {v5}, Lorg/cybergarage/upnp/Device;->getFriendlyName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/cybergarage/util/Debug;->message(Ljava/lang/String;)V

    .line 557
    aget-object v4, v0, v3

    invoke-virtual {p0, v4}, Lorg/cybergarage/upnp/ControlPoint;->removeDevice(Lorg/cybergarage/upnp/Device;)V

    .line 554
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 562
    :cond_2
    return-void
.end method

.method public removeNotifyListener(Lorg/cybergarage/upnp/device/NotifyListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 597
    iget-object v0, p0, Lorg/cybergarage/upnp/ControlPoint;->deviceNotifyListenerList:Lorg/cybergarage/util/ListenerList;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 598
    return-void
.end method

.method public removeSearchResponseListener(Lorg/cybergarage/upnp/device/SearchResponseListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 626
    iget-object v0, p0, Lorg/cybergarage/upnp/ControlPoint;->deviceSearchResponseListenerList:Lorg/cybergarage/util/ListenerList;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 627
    return-void
.end method

.method public renewSubscriberService()V
    .locals 2

    .prologue
    .line 993
    const-wide/16 v0, -0x1

    invoke-virtual {p0, v0, v1}, Lorg/cybergarage/upnp/ControlPoint;->renewSubscriberService(J)V

    .line 994
    return-void
.end method

.method public renewSubscriberService(J)V
    .locals 4
    .parameter "timeout"

    .prologue
    .line 983
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ControlPoint;->getDeviceList()Lorg/cybergarage/upnp/DeviceList;

    move-result-object v2

    .line 984
    .local v2, devList:Lorg/cybergarage/upnp/DeviceList;
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v1

    .line 985
    .local v1, devCnt:I
    const/4 v3, 0x0

    .local v3, n:I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 986
    invoke-virtual {v2, v3}, Lorg/cybergarage/upnp/DeviceList;->getDevice(I)Lorg/cybergarage/upnp/Device;

    move-result-object v0

    .line 987
    .local v0, dev:Lorg/cybergarage/upnp/Device;
    invoke-virtual {p0, v0, p1, p2}, Lorg/cybergarage/upnp/ControlPoint;->renewSubscriberService(Lorg/cybergarage/upnp/Device;J)V

    .line 985
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 989
    .end local v0           #dev:Lorg/cybergarage/upnp/Device;
    :cond_0
    return-void
.end method

.method public renewSubscriberService(Lorg/cybergarage/upnp/Device;J)V
    .locals 10
    .parameter "dev"
    .parameter "timeout"

    .prologue
    .line 961
    invoke-virtual {p1}, Lorg/cybergarage/upnp/Device;->getServiceList()Lorg/cybergarage/upnp/ServiceList;

    move-result-object v7

    .line 962
    .local v7, serviceList:Lorg/cybergarage/upnp/ServiceList;
    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v6

    .line 963
    .local v6, serviceCnt:I
    const/4 v4, 0x0

    .local v4, n:I
    :goto_0
    if-ge v4, v6, :cond_2

    .line 964
    invoke-virtual {v7, v4}, Lorg/cybergarage/upnp/ServiceList;->getService(I)Lorg/cybergarage/upnp/Service;

    move-result-object v5

    .line 965
    .local v5, service:Lorg/cybergarage/upnp/Service;
    invoke-virtual {v5}, Lorg/cybergarage/upnp/Service;->isSubscribed()Z

    move-result v9

    if-nez v9, :cond_1

    .line 963
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 967
    :cond_1
    invoke-virtual {v5}, Lorg/cybergarage/upnp/Service;->getSID()Ljava/lang/String;

    move-result-object v8

    .line 968
    .local v8, sid:Ljava/lang/String;
    invoke-virtual {p0, v5, v8, p2, p3}, Lorg/cybergarage/upnp/ControlPoint;->subscribe(Lorg/cybergarage/upnp/Service;Ljava/lang/String;J)Z

    move-result v3

    .line 969
    .local v3, isRenewed:Z
    if-nez v3, :cond_0

    .line 970
    invoke-virtual {p0, v5, p2, p3}, Lorg/cybergarage/upnp/ControlPoint;->subscribe(Lorg/cybergarage/upnp/Service;J)Z

    goto :goto_1

    .line 973
    .end local v3           #isRenewed:Z
    .end local v5           #service:Lorg/cybergarage/upnp/Service;
    .end local v8           #sid:Ljava/lang/String;
    :cond_2
    invoke-virtual {p1}, Lorg/cybergarage/upnp/Device;->getDeviceList()Lorg/cybergarage/upnp/DeviceList;

    move-result-object v2

    .line 974
    .local v2, cdevList:Lorg/cybergarage/upnp/DeviceList;
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v1

    .line 975
    .local v1, cdevCnt:I
    const/4 v4, 0x0

    :goto_2
    if-ge v4, v1, :cond_3

    .line 976
    invoke-virtual {v2, v4}, Lorg/cybergarage/upnp/DeviceList;->getDevice(I)Lorg/cybergarage/upnp/Device;

    move-result-object v0

    .line 977
    .local v0, cdev:Lorg/cybergarage/upnp/Device;
    invoke-virtual {p0, v0, p2, p3}, Lorg/cybergarage/upnp/ControlPoint;->renewSubscriberService(Lorg/cybergarage/upnp/Device;J)V

    .line 975
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 979
    .end local v0           #cdev:Lorg/cybergarage/upnp/Device;
    :cond_3
    return-void
.end method

.method public search()V
    .locals 2

    .prologue
    .line 751
    const-string v0, "upnp:rootdevice"

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lorg/cybergarage/upnp/ControlPoint;->search(Ljava/lang/String;I)V

    .line 752
    return-void
.end method

.method public search(Ljava/lang/String;)V
    .locals 1
    .parameter "target"

    .prologue
    .line 746
    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Lorg/cybergarage/upnp/ControlPoint;->search(Ljava/lang/String;I)V

    .line 747
    return-void
.end method

.method public search(Ljava/lang/String;I)V
    .locals 2
    .parameter "target"
    .parameter "mx"

    .prologue
    .line 739
    new-instance v0, Lorg/cybergarage/upnp/ssdp/SSDPSearchRequest;

    invoke-direct {v0, p1, p2}, Lorg/cybergarage/upnp/ssdp/SSDPSearchRequest;-><init>(Ljava/lang/String;I)V

    .line 740
    .local v0, msReq:Lorg/cybergarage/upnp/ssdp/SSDPSearchRequest;
    invoke-direct {p0}, Lorg/cybergarage/upnp/ControlPoint;->getSSDPSearchResponseSocketList()Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocketList;

    move-result-object v1

    .line 741
    .local v1, ssdpSearchResponseSocketList:Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocketList;
    invoke-virtual {v1, v0}, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocketList;->post(Lorg/cybergarage/upnp/ssdp/SSDPSearchRequest;)Z

    .line 742
    return-void
.end method

.method public searchResponseReceived(Lorg/cybergarage/upnp/ssdp/SSDPPacket;)V
    .locals 2
    .parameter "packet"

    .prologue
    .line 714
    invoke-virtual {p1}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->isRootDevice()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 716
    invoke-direct {p0, p1}, Lorg/cybergarage/upnp/ControlPoint;->addDevice(Lorg/cybergarage/upnp/ssdp/SSDPPacket;)V

    .line 718
    :cond_0
    invoke-virtual {p0, p1}, Lorg/cybergarage/upnp/ControlPoint;->performSearchResponseListener(Lorg/cybergarage/upnp/ssdp/SSDPPacket;)V

    .line 719
    return-void
.end method

.method public setDeviceDisposer(Lorg/cybergarage/upnp/device/Disposer;)V
    .locals 0
    .parameter "disposer"

    .prologue
    .line 576
    iput-object p1, p0, Lorg/cybergarage/upnp/ControlPoint;->deviceDisposer:Lorg/cybergarage/upnp/device/Disposer;

    .line 577
    return-void
.end method

.method public setEventSubURI(Ljava/lang/String;)V
    .locals 0
    .parameter "url"

    .prologue
    .line 830
    iput-object p1, p0, Lorg/cybergarage/upnp/ControlPoint;->eventSubURI:Ljava/lang/String;

    .line 831
    return-void
.end method

.method public setExpiredDeviceMonitoringInterval(J)V
    .locals 0
    .parameter "interval"

    .prologue
    .line 566
    iput-wide p1, p0, Lorg/cybergarage/upnp/ControlPoint;->expiredDeviceMonitoringInterval:J

    .line 567
    return-void
.end method

.method public setHTTPPort(I)V
    .locals 0
    .parameter "port"

    .prologue
    .line 248
    iput p1, p0, Lorg/cybergarage/upnp/ControlPoint;->httpPort:I

    .line 249
    return-void
.end method

.method public setNMPRMode(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 259
    iput-boolean p1, p0, Lorg/cybergarage/upnp/ControlPoint;->nmprMode:Z

    .line 260
    return-void
.end method

.method public setRenewSubscriber(Lorg/cybergarage/upnp/control/RenewSubscriber;)V
    .locals 0
    .parameter "sub"

    .prologue
    .line 1004
    iput-object p1, p0, Lorg/cybergarage/upnp/ControlPoint;->renewSubscriber:Lorg/cybergarage/upnp/control/RenewSubscriber;

    .line 1005
    return-void
.end method

.method public setSSDPPort(I)V
    .locals 0
    .parameter "port"

    .prologue
    .line 234
    iput p1, p0, Lorg/cybergarage/upnp/ControlPoint;->ssdpPort:I

    .line 235
    return-void
.end method

.method public setSearchMx(I)V
    .locals 0
    .parameter "mx"

    .prologue
    .line 734
    iput p1, p0, Lorg/cybergarage/upnp/ControlPoint;->searchMx:I

    .line 735
    return-void
.end method

.method public setUserData(Ljava/lang/Object;)V
    .locals 0
    .parameter "data"

    .prologue
    .line 1158
    iput-object p1, p0, Lorg/cybergarage/upnp/ControlPoint;->userData:Ljava/lang/Object;

    .line 1159
    return-void
.end method

.method public start()Z
    .locals 2

    .prologue
    .line 1098
    const-string v0, "upnp:rootdevice"

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lorg/cybergarage/upnp/ControlPoint;->start(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public start(Ljava/lang/String;)Z
    .locals 1
    .parameter "target"

    .prologue
    .line 1093
    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Lorg/cybergarage/upnp/ControlPoint;->start(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public start(Ljava/lang/String;I)Z
    .locals 12
    .parameter "target"
    .parameter "mx"

    .prologue
    const/16 v11, 0x64

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1018
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ControlPoint;->stop()Z

    .line 1024
    const/4 v4, 0x0

    .line 1025
    .local v4, retryCnt:I
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ControlPoint;->getHTTPPort()I

    move-result v0

    .line 1026
    .local v0, bindPort:I
    invoke-direct {p0}, Lorg/cybergarage/upnp/ControlPoint;->getHTTPServerList()Lorg/cybergarage/http/HTTPServerList;

    move-result-object v2

    .line 1027
    .local v2, httpServerList:Lorg/cybergarage/http/HTTPServerList;
    :goto_0
    invoke-virtual {v2, v0}, Lorg/cybergarage/http/HTTPServerList;->open(I)Z

    move-result v10

    if-nez v10, :cond_2

    .line 1028
    add-int/lit8 v4, v4, 0x1

    .line 1029
    if-ge v11, v4, :cond_1

    .line 1088
    :cond_0
    :goto_1
    return v8

    .line 1031
    :cond_1
    add-int/lit8 v10, v0, 0x1

    invoke-virtual {p0, v10}, Lorg/cybergarage/upnp/ControlPoint;->setHTTPPort(I)V

    .line 1032
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ControlPoint;->getHTTPPort()I

    move-result v0

    goto :goto_0

    .line 1034
    :cond_2
    invoke-virtual {v2, p0}, Lorg/cybergarage/http/HTTPServerList;->addRequestListener(Lorg/cybergarage/http/HTTPRequestListener;)V

    .line 1035
    invoke-virtual {v2}, Lorg/cybergarage/http/HTTPServerList;->start()V

    .line 1041
    invoke-direct {p0}, Lorg/cybergarage/upnp/ControlPoint;->getSSDPNotifySocketList()Lorg/cybergarage/upnp/ssdp/SSDPNotifySocketList;

    move-result-object v5

    .line 1042
    .local v5, ssdpNotifySocketList:Lorg/cybergarage/upnp/ssdp/SSDPNotifySocketList;
    invoke-virtual {v5}, Lorg/cybergarage/upnp/ssdp/SSDPNotifySocketList;->open()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 1044
    invoke-virtual {v5, p0}, Lorg/cybergarage/upnp/ssdp/SSDPNotifySocketList;->setControlPoint(Lorg/cybergarage/upnp/ControlPoint;)V

    .line 1045
    invoke-virtual {v5}, Lorg/cybergarage/upnp/ssdp/SSDPNotifySocketList;->start()V

    .line 1051
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ControlPoint;->getSSDPPort()I

    move-result v6

    .line 1052
    .local v6, ssdpPort:I
    const/4 v4, 0x0

    .line 1053
    invoke-direct {p0}, Lorg/cybergarage/upnp/ControlPoint;->getSSDPSearchResponseSocketList()Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocketList;

    move-result-object v7

    .line 1054
    .local v7, ssdpSearchResponseSocketList:Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocketList;
    :goto_2
    invoke-virtual {v7, v6}, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocketList;->open(I)Z

    move-result v10

    if-nez v10, :cond_3

    .line 1055
    add-int/lit8 v4, v4, 0x1

    .line 1056
    if-lt v11, v4, :cond_0

    .line 1058
    add-int/lit8 v10, v6, 0x1

    invoke-virtual {p0, v10}, Lorg/cybergarage/upnp/ControlPoint;->setSSDPPort(I)V

    .line 1059
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ControlPoint;->getSSDPPort()I

    move-result v6

    goto :goto_2

    .line 1061
    :cond_3
    invoke-virtual {v7, p0}, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocketList;->setControlPoint(Lorg/cybergarage/upnp/ControlPoint;)V

    .line 1062
    invoke-virtual {v7}, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocketList;->start()V

    .line 1068
    invoke-virtual {p0, p1, p2}, Lorg/cybergarage/upnp/ControlPoint;->search(Ljava/lang/String;I)V

    .line 1074
    new-instance v1, Lorg/cybergarage/upnp/device/Disposer;

    invoke-direct {v1, p0}, Lorg/cybergarage/upnp/device/Disposer;-><init>(Lorg/cybergarage/upnp/ControlPoint;)V

    .line 1075
    .local v1, disposer:Lorg/cybergarage/upnp/device/Disposer;
    invoke-virtual {p0, v1}, Lorg/cybergarage/upnp/ControlPoint;->setDeviceDisposer(Lorg/cybergarage/upnp/device/Disposer;)V

    .line 1076
    invoke-virtual {v1}, Lorg/cybergarage/util/ThreadCore;->start()V

    .line 1082
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ControlPoint;->isNMPRMode()Z

    move-result v8

    if-ne v8, v9, :cond_4

    .line 1083
    new-instance v3, Lorg/cybergarage/upnp/control/RenewSubscriber;

    invoke-direct {v3, p0}, Lorg/cybergarage/upnp/control/RenewSubscriber;-><init>(Lorg/cybergarage/upnp/ControlPoint;)V

    .line 1084
    .local v3, renewSub:Lorg/cybergarage/upnp/control/RenewSubscriber;
    invoke-virtual {p0, v3}, Lorg/cybergarage/upnp/ControlPoint;->setRenewSubscriber(Lorg/cybergarage/upnp/control/RenewSubscriber;)V

    .line 1085
    invoke-virtual {v3}, Lorg/cybergarage/util/ThreadCore;->start()V

    .end local v3           #renewSub:Lorg/cybergarage/upnp/control/RenewSubscriber;
    :cond_4
    move v8, v9

    .line 1088
    goto :goto_1
.end method

.method public stop()Z
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 1103
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ControlPoint;->unsubscribe()V

    .line 1105
    invoke-direct {p0}, Lorg/cybergarage/upnp/ControlPoint;->getSSDPNotifySocketList()Lorg/cybergarage/upnp/ssdp/SSDPNotifySocketList;

    move-result-object v3

    .line 1106
    .local v3, ssdpNotifySocketList:Lorg/cybergarage/upnp/ssdp/SSDPNotifySocketList;
    invoke-virtual {v3}, Lorg/cybergarage/upnp/ssdp/SSDPNotifySocketList;->stop()V

    .line 1107
    invoke-virtual {v3}, Lorg/cybergarage/upnp/ssdp/SSDPNotifySocketList;->close()V

    .line 1108
    invoke-virtual {v3}, Ljava/util/Vector;->clear()V

    .line 1110
    invoke-direct {p0}, Lorg/cybergarage/upnp/ControlPoint;->getSSDPSearchResponseSocketList()Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocketList;

    move-result-object v4

    .line 1111
    .local v4, ssdpSearchResponseSocketList:Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocketList;
    invoke-virtual {v4}, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocketList;->stop()V

    .line 1112
    invoke-virtual {v4}, Lorg/cybergarage/upnp/ssdp/SSDPSearchResponseSocketList;->close()V

    .line 1113
    invoke-virtual {v4}, Ljava/util/Vector;->clear()V

    .line 1115
    invoke-direct {p0}, Lorg/cybergarage/upnp/ControlPoint;->getHTTPServerList()Lorg/cybergarage/http/HTTPServerList;

    move-result-object v1

    .line 1116
    .local v1, httpServerList:Lorg/cybergarage/http/HTTPServerList;
    invoke-virtual {v1}, Lorg/cybergarage/http/HTTPServerList;->stop()V

    .line 1117
    invoke-virtual {v1}, Lorg/cybergarage/http/HTTPServerList;->close()V

    .line 1118
    invoke-virtual {v1}, Ljava/util/Vector;->clear()V

    .line 1124
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ControlPoint;->getDeviceDisposer()Lorg/cybergarage/upnp/device/Disposer;

    move-result-object v0

    .line 1125
    .local v0, disposer:Lorg/cybergarage/upnp/device/Disposer;
    if-eqz v0, :cond_0

    .line 1126
    invoke-virtual {v0}, Lorg/cybergarage/util/ThreadCore;->stop()V

    .line 1127
    invoke-virtual {p0, v5}, Lorg/cybergarage/upnp/ControlPoint;->setDeviceDisposer(Lorg/cybergarage/upnp/device/Disposer;)V

    .line 1134
    :cond_0
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ControlPoint;->getRenewSubscriber()Lorg/cybergarage/upnp/control/RenewSubscriber;

    move-result-object v2

    .line 1135
    .local v2, renewSub:Lorg/cybergarage/upnp/control/RenewSubscriber;
    if-eqz v2, :cond_1

    .line 1136
    invoke-virtual {v2}, Lorg/cybergarage/util/ThreadCore;->stop()V

    .line 1137
    invoke-virtual {p0, v5}, Lorg/cybergarage/upnp/ControlPoint;->setRenewSubscriber(Lorg/cybergarage/upnp/control/RenewSubscriber;)V

    .line 1140
    :cond_1
    sget-object v5, Lorg/cybergarage/upnp/ControlPoint;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 1142
    :try_start_0
    iget-object v5, p0, Lorg/cybergarage/upnp/ControlPoint;->devNodeList:Lorg/cybergarage/xml/NodeList;

    invoke-virtual {v5}, Ljava/util/Vector;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1144
    sget-object v5, Lorg/cybergarage/upnp/ControlPoint;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 1147
    const/4 v5, 0x1

    return v5

    .line 1144
    :catchall_0
    move-exception v5

    sget-object v6, Lorg/cybergarage/upnp/ControlPoint;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v5
.end method

.method public subscribe(Lorg/cybergarage/upnp/Service;)Z
    .locals 2
    .parameter "service"

    .prologue
    .line 865
    const-wide/16 v0, -0x1

    invoke-virtual {p0, p1, v0, v1}, Lorg/cybergarage/upnp/ControlPoint;->subscribe(Lorg/cybergarage/upnp/Service;J)Z

    move-result v0

    return v0
.end method

.method public subscribe(Lorg/cybergarage/upnp/Service;J)Z
    .locals 10
    .parameter "service"
    .parameter "timeout"

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 840
    invoke-virtual {p1}, Lorg/cybergarage/upnp/Service;->isSubscribed()Z

    move-result v7

    if-ne v7, v6, :cond_1

    .line 841
    invoke-virtual {p1}, Lorg/cybergarage/upnp/Service;->getSID()Ljava/lang/String;

    move-result-object v2

    .line 842
    .local v2, sid:Ljava/lang/String;
    invoke-virtual {p0, p1, v2, p2, p3}, Lorg/cybergarage/upnp/ControlPoint;->subscribe(Lorg/cybergarage/upnp/Service;Ljava/lang/String;J)Z

    move-result v5

    .line 860
    .end local v2           #sid:Ljava/lang/String;
    :cond_0
    :goto_0
    return v5

    .line 845
    :cond_1
    invoke-virtual {p1}, Lorg/cybergarage/upnp/Service;->getRootDevice()Lorg/cybergarage/upnp/Device;

    move-result-object v1

    .line 846
    .local v1, rootDev:Lorg/cybergarage/upnp/Device;
    if-eqz v1, :cond_0

    .line 848
    invoke-virtual {v1}, Lorg/cybergarage/upnp/Device;->getInterfaceAddress()Ljava/lang/String;

    move-result-object v0

    .line 849
    .local v0, ifAddress:Ljava/lang/String;
    new-instance v3, Lorg/cybergarage/upnp/event/SubscriptionRequest;

    invoke-direct {v3}, Lorg/cybergarage/upnp/event/SubscriptionRequest;-><init>()V

    .line 850
    .local v3, subReq:Lorg/cybergarage/upnp/event/SubscriptionRequest;
    invoke-direct {p0, v0}, Lorg/cybergarage/upnp/ControlPoint;->getEventSubCallbackURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, p1, v7, p2, p3}, Lorg/cybergarage/upnp/event/SubscriptionRequest;->setSubscribeRequest(Lorg/cybergarage/upnp/Service;Ljava/lang/String;J)V

    .line 851
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "controlpoint+subscrib+++requesthost+"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Lorg/cybergarage/http/HTTPRequest;->getRequestHost()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "+requestport+"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Lorg/cybergarage/http/HTTPRequest;->getRequestPort()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 852
    invoke-virtual {v3}, Lorg/cybergarage/upnp/event/SubscriptionRequest;->post()Lorg/cybergarage/upnp/event/SubscriptionResponse;

    move-result-object v4

    .line 853
    .local v4, subRes:Lorg/cybergarage/upnp/event/SubscriptionResponse;
    invoke-virtual {v4}, Lorg/cybergarage/http/HTTPResponse;->isSuccessful()Z

    move-result v7

    if-ne v7, v6, :cond_2

    .line 854
    invoke-virtual {v4}, Lorg/cybergarage/upnp/event/SubscriptionResponse;->getSID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lorg/cybergarage/upnp/Service;->setSID(Ljava/lang/String;)V

    .line 855
    invoke-virtual {v4}, Lorg/cybergarage/upnp/event/SubscriptionResponse;->getTimeout()J

    move-result-wide v7

    invoke-virtual {p1, v7, v8}, Lorg/cybergarage/upnp/Service;->setTimeout(J)V

    move v5, v6

    .line 856
    goto :goto_0

    .line 859
    :cond_2
    invoke-virtual {p1}, Lorg/cybergarage/upnp/Service;->clearSID()V

    goto :goto_0
.end method

.method public subscribe(Lorg/cybergarage/upnp/Service;Ljava/lang/String;)Z
    .locals 2
    .parameter "service"
    .parameter "uuid"

    .prologue
    .line 888
    const-wide/16 v0, -0x1

    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/cybergarage/upnp/ControlPoint;->subscribe(Lorg/cybergarage/upnp/Service;Ljava/lang/String;J)Z

    move-result v0

    return v0
.end method

.method public subscribe(Lorg/cybergarage/upnp/Service;Ljava/lang/String;J)Z
    .locals 5
    .parameter "service"
    .parameter "uuid"
    .parameter "timeout"

    .prologue
    const/4 v2, 0x1

    .line 870
    new-instance v0, Lorg/cybergarage/upnp/event/SubscriptionRequest;

    invoke-direct {v0}, Lorg/cybergarage/upnp/event/SubscriptionRequest;-><init>()V

    .line 871
    .local v0, subReq:Lorg/cybergarage/upnp/event/SubscriptionRequest;
    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/cybergarage/upnp/event/SubscriptionRequest;->setRenewRequest(Lorg/cybergarage/upnp/Service;Ljava/lang/String;J)V

    .line 872
    invoke-static {}, Lorg/cybergarage/util/Debug;->isOn()Z

    move-result v3

    if-ne v3, v2, :cond_0

    .line 873
    invoke-virtual {v0}, Lorg/cybergarage/http/HTTPRequest;->print()V

    .line 874
    :cond_0
    invoke-virtual {v0}, Lorg/cybergarage/upnp/event/SubscriptionRequest;->post()Lorg/cybergarage/upnp/event/SubscriptionResponse;

    move-result-object v1

    .line 875
    .local v1, subRes:Lorg/cybergarage/upnp/event/SubscriptionResponse;
    invoke-static {}, Lorg/cybergarage/util/Debug;->isOn()Z

    move-result v3

    if-ne v3, v2, :cond_1

    .line 876
    invoke-virtual {v1}, Lorg/cybergarage/http/HTTPResponse;->print()V

    .line 877
    :cond_1
    invoke-virtual {v1}, Lorg/cybergarage/http/HTTPResponse;->isSuccessful()Z

    move-result v3

    if-ne v3, v2, :cond_2

    .line 878
    invoke-virtual {v1}, Lorg/cybergarage/upnp/event/SubscriptionResponse;->getSID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lorg/cybergarage/upnp/Service;->setSID(Ljava/lang/String;)V

    .line 879
    invoke-virtual {v1}, Lorg/cybergarage/upnp/event/SubscriptionResponse;->getTimeout()J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Lorg/cybergarage/upnp/Service;->setTimeout(J)V

    .line 883
    :goto_0
    return v2

    .line 882
    :cond_2
    invoke-virtual {p1}, Lorg/cybergarage/upnp/Service;->clearSID()V

    .line 883
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public unsubscribe()V
    .locals 4

    .prologue
    .line 930
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ControlPoint;->getDeviceList()Lorg/cybergarage/upnp/DeviceList;

    move-result-object v2

    .line 931
    .local v2, devList:Lorg/cybergarage/upnp/DeviceList;
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v1

    .line 932
    .local v1, devCnt:I
    const/4 v3, 0x0

    .local v3, n:I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 933
    invoke-virtual {v2, v3}, Lorg/cybergarage/upnp/DeviceList;->getDevice(I)Lorg/cybergarage/upnp/Device;

    move-result-object v0

    .line 934
    .local v0, dev:Lorg/cybergarage/upnp/Device;
    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/ControlPoint;->unsubscribe(Lorg/cybergarage/upnp/Device;)V

    .line 932
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 936
    .end local v0           #dev:Lorg/cybergarage/upnp/Device;
    :cond_0
    return-void
.end method

.method public unsubscribe(Lorg/cybergarage/upnp/Device;)V
    .locals 9
    .parameter "device"

    .prologue
    .line 912
    invoke-virtual {p1}, Lorg/cybergarage/upnp/Device;->getServiceList()Lorg/cybergarage/upnp/ServiceList;

    move-result-object v6

    .line 913
    .local v6, serviceList:Lorg/cybergarage/upnp/ServiceList;
    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v5

    .line 914
    .local v5, serviceCnt:I
    const/4 v3, 0x0

    .local v3, n:I
    :goto_0
    if-ge v3, v5, :cond_1

    .line 915
    invoke-virtual {v6, v3}, Lorg/cybergarage/upnp/ServiceList;->getService(I)Lorg/cybergarage/upnp/Service;

    move-result-object v4

    .line 916
    .local v4, service:Lorg/cybergarage/upnp/Service;
    invoke-virtual {v4}, Lorg/cybergarage/upnp/Service;->hasSID()Z

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_0

    .line 917
    invoke-virtual {p0, v4}, Lorg/cybergarage/upnp/ControlPoint;->unsubscribe(Lorg/cybergarage/upnp/Service;)Z

    .line 914
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 920
    .end local v4           #service:Lorg/cybergarage/upnp/Service;
    :cond_1
    invoke-virtual {p1}, Lorg/cybergarage/upnp/Device;->getDeviceList()Lorg/cybergarage/upnp/DeviceList;

    move-result-object v2

    .line 921
    .local v2, childDevList:Lorg/cybergarage/upnp/DeviceList;
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v1

    .line 922
    .local v1, childDevCnt:I
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_2

    .line 923
    invoke-virtual {v2, v3}, Lorg/cybergarage/upnp/DeviceList;->getDevice(I)Lorg/cybergarage/upnp/Device;

    move-result-object v0

    .line 924
    .local v0, cdev:Lorg/cybergarage/upnp/Device;
    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/ControlPoint;->unsubscribe(Lorg/cybergarage/upnp/Device;)V

    .line 922
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 926
    .end local v0           #cdev:Lorg/cybergarage/upnp/Device;
    :cond_2
    return-void
.end method

.method public unsubscribe(Lorg/cybergarage/upnp/Service;)Z
    .locals 4
    .parameter "service"

    .prologue
    const/4 v2, 0x1

    .line 900
    new-instance v0, Lorg/cybergarage/upnp/event/SubscriptionRequest;

    invoke-direct {v0}, Lorg/cybergarage/upnp/event/SubscriptionRequest;-><init>()V

    .line 901
    .local v0, subReq:Lorg/cybergarage/upnp/event/SubscriptionRequest;
    invoke-virtual {v0, p1}, Lorg/cybergarage/upnp/event/SubscriptionRequest;->setUnsubscribeRequest(Lorg/cybergarage/upnp/Service;)V

    .line 902
    invoke-virtual {v0}, Lorg/cybergarage/upnp/event/SubscriptionRequest;->post()Lorg/cybergarage/upnp/event/SubscriptionResponse;

    move-result-object v1

    .line 903
    .local v1, subRes:Lorg/cybergarage/upnp/event/SubscriptionResponse;
    invoke-virtual {v1}, Lorg/cybergarage/http/HTTPResponse;->isSuccessful()Z

    move-result v3

    if-ne v3, v2, :cond_0

    .line 904
    invoke-virtual {p1}, Lorg/cybergarage/upnp/Service;->clearSID()V

    .line 907
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
