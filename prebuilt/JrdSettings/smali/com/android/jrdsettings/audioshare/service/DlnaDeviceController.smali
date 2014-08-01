.class public Lcom/android/jrdsettings/audioshare/service/DlnaDeviceController;
.super Lorg/cybergarage/upnp/ControlPoint;
.source "DlnaDeviceController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/jrdsettings/audioshare/service/DlnaDeviceController$1;,
        Lcom/android/jrdsettings/audioshare/service/DlnaDeviceController$DlnaDeviceChangeListener;,
        Lcom/android/jrdsettings/audioshare/service/DlnaDeviceController$DlnaSearchResponseListener;,
        Lcom/android/jrdsettings/audioshare/service/DlnaDeviceController$DlnaNotifyListener;,
        Lcom/android/jrdsettings/audioshare/service/DlnaDeviceController$DlnaEventListener;
    }
.end annotation


# static fields
.field public static final AUDIO_TYPE:Ljava/lang/String; = "object.item.audioItem"

.field private static final DEFAULT_INSTANCEID:Ljava/lang/String; = "0"

.field private static final DEFAULT_TIME_FORMAT:Ljava/lang/String; = "HH:mm:ss"

.field private static final DEFAULT_TIME_ZONE:Ljava/lang/String; = "GMT+0:00"

.field private static final DEFAULT_VOLUME_CHANNEL:Ljava/lang/String; = "Master"

.field public static final IMAGE_TYPE:Ljava/lang/String; = "object.item.imageItem"

.field private static final TAG:Ljava/lang/String; = "DlnaDeviceController"

.field public static final VIDEO_TYPE:Ljava/lang/String; = "object.item.videoItem"


# instance fields
.field private mDlnaEventListener:Lcom/android/jrdsettings/audioshare/service/OnDlnaEventListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 78
    invoke-direct {p0}, Lorg/cybergarage/upnp/ControlPoint;-><init>()V

    .line 74
    iput-object v1, p0, Lcom/android/jrdsettings/audioshare/service/DlnaDeviceController;->mDlnaEventListener:Lcom/android/jrdsettings/audioshare/service/OnDlnaEventListener;

    .line 79
    new-instance v0, Lcom/android/jrdsettings/audioshare/service/DlnaDeviceController$DlnaDeviceChangeListener;

    invoke-direct {v0, p0, v1}, Lcom/android/jrdsettings/audioshare/service/DlnaDeviceController$DlnaDeviceChangeListener;-><init>(Lcom/android/jrdsettings/audioshare/service/DlnaDeviceController;Lcom/android/jrdsettings/audioshare/service/DlnaDeviceController$1;)V

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/ControlPoint;->addDeviceChangeListener(Lorg/cybergarage/upnp/device/DeviceChangeListener;)V

    .line 80
    new-instance v0, Lcom/android/jrdsettings/audioshare/service/DlnaDeviceController$DlnaNotifyListener;

    invoke-direct {v0, p0, v1}, Lcom/android/jrdsettings/audioshare/service/DlnaDeviceController$DlnaNotifyListener;-><init>(Lcom/android/jrdsettings/audioshare/service/DlnaDeviceController;Lcom/android/jrdsettings/audioshare/service/DlnaDeviceController$1;)V

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/ControlPoint;->addNotifyListener(Lorg/cybergarage/upnp/device/NotifyListener;)V

    .line 81
    new-instance v0, Lcom/android/jrdsettings/audioshare/service/DlnaDeviceController$DlnaSearchResponseListener;

    invoke-direct {v0, p0, v1}, Lcom/android/jrdsettings/audioshare/service/DlnaDeviceController$DlnaSearchResponseListener;-><init>(Lcom/android/jrdsettings/audioshare/service/DlnaDeviceController;Lcom/android/jrdsettings/audioshare/service/DlnaDeviceController$1;)V

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/ControlPoint;->addSearchResponseListener(Lorg/cybergarage/upnp/device/SearchResponseListener;)V

    .line 82
    new-instance v0, Lcom/android/jrdsettings/audioshare/service/DlnaDeviceController$DlnaEventListener;

    invoke-direct {v0, p0, v1}, Lcom/android/jrdsettings/audioshare/service/DlnaDeviceController$DlnaEventListener;-><init>(Lcom/android/jrdsettings/audioshare/service/DlnaDeviceController;Lcom/android/jrdsettings/audioshare/service/DlnaDeviceController$1;)V

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/ControlPoint;->addEventListener(Lorg/cybergarage/upnp/event/EventListener;)V

    .line 83
    return-void
.end method

.method public constructor <init>(Lcom/android/jrdsettings/audioshare/service/OnDlnaEventListener;)V
    .locals 2
    .parameter "dlnaEventListener"

    .prologue
    const/4 v1, 0x0

    .line 86
    invoke-direct {p0}, Lorg/cybergarage/upnp/ControlPoint;-><init>()V

    .line 74
    iput-object v1, p0, Lcom/android/jrdsettings/audioshare/service/DlnaDeviceController;->mDlnaEventListener:Lcom/android/jrdsettings/audioshare/service/OnDlnaEventListener;

    .line 87
    iput-object p1, p0, Lcom/android/jrdsettings/audioshare/service/DlnaDeviceController;->mDlnaEventListener:Lcom/android/jrdsettings/audioshare/service/OnDlnaEventListener;

    .line 88
    new-instance v0, Lcom/android/jrdsettings/audioshare/service/DlnaDeviceController$DlnaDeviceChangeListener;

    invoke-direct {v0, p0, v1}, Lcom/android/jrdsettings/audioshare/service/DlnaDeviceController$DlnaDeviceChangeListener;-><init>(Lcom/android/jrdsettings/audioshare/service/DlnaDeviceController;Lcom/android/jrdsettings/audioshare/service/DlnaDeviceController$1;)V

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/ControlPoint;->addDeviceChangeListener(Lorg/cybergarage/upnp/device/DeviceChangeListener;)V

    .line 89
    new-instance v0, Lcom/android/jrdsettings/audioshare/service/DlnaDeviceController$DlnaNotifyListener;

    invoke-direct {v0, p0, v1}, Lcom/android/jrdsettings/audioshare/service/DlnaDeviceController$DlnaNotifyListener;-><init>(Lcom/android/jrdsettings/audioshare/service/DlnaDeviceController;Lcom/android/jrdsettings/audioshare/service/DlnaDeviceController$1;)V

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/ControlPoint;->addNotifyListener(Lorg/cybergarage/upnp/device/NotifyListener;)V

    .line 90
    new-instance v0, Lcom/android/jrdsettings/audioshare/service/DlnaDeviceController$DlnaSearchResponseListener;

    invoke-direct {v0, p0, v1}, Lcom/android/jrdsettings/audioshare/service/DlnaDeviceController$DlnaSearchResponseListener;-><init>(Lcom/android/jrdsettings/audioshare/service/DlnaDeviceController;Lcom/android/jrdsettings/audioshare/service/DlnaDeviceController$1;)V

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/ControlPoint;->addSearchResponseListener(Lorg/cybergarage/upnp/device/SearchResponseListener;)V

    .line 91
    new-instance v0, Lcom/android/jrdsettings/audioshare/service/DlnaDeviceController$DlnaEventListener;

    invoke-direct {v0, p0, v1}, Lcom/android/jrdsettings/audioshare/service/DlnaDeviceController$DlnaEventListener;-><init>(Lcom/android/jrdsettings/audioshare/service/DlnaDeviceController;Lcom/android/jrdsettings/audioshare/service/DlnaDeviceController$1;)V

    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/ControlPoint;->addEventListener(Lorg/cybergarage/upnp/event/EventListener;)V

    .line 92
    return-void
.end method

.method static synthetic access$400(Lcom/android/jrdsettings/audioshare/service/DlnaDeviceController;)Lcom/android/jrdsettings/audioshare/service/OnDlnaEventListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/DlnaDeviceController;->mDlnaEventListener:Lcom/android/jrdsettings/audioshare/service/OnDlnaEventListener;

    return-object v0
.end method

.method private findDeviceByUDN(Ljava/lang/String;)Lorg/cybergarage/upnp/Device;
    .locals 8
    .parameter "udn"

    .prologue
    const/4 v6, 0x0

    .line 232
    const/4 v2, 0x0

    .line 233
    .local v2, device:Lorg/cybergarage/upnp/Device;
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ControlPoint;->getDeviceList()Lorg/cybergarage/upnp/DeviceList;

    move-result-object v3

    .line 234
    .local v3, deviceList:Lorg/cybergarage/upnp/DeviceList;
    const/4 v1, 0x0

    .line 236
    .local v1, childList:Lorg/cybergarage/upnp/DeviceList;
    if-eqz p1, :cond_0

    if-nez v3, :cond_2

    :cond_0
    move-object v0, v6

    .line 264
    :cond_1
    :goto_0
    return-object v0

    .line 239
    :cond_2
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v7

    if-ge v4, v7, :cond_7

    .line 240
    invoke-virtual {v3, v4}, Lorg/cybergarage/upnp/DeviceList;->getDevice(I)Lorg/cybergarage/upnp/Device;

    move-result-object v2

    .line 241
    if-nez v2, :cond_4

    .line 239
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 245
    :cond_4
    invoke-virtual {v2}, Lorg/cybergarage/upnp/Device;->getUDN()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    move-object v0, v2

    .line 246
    goto :goto_0

    .line 249
    :cond_5
    invoke-virtual {v2}, Lorg/cybergarage/upnp/Device;->getDeviceList()Lorg/cybergarage/upnp/DeviceList;

    move-result-object v1

    .line 250
    if-eqz v1, :cond_3

    .line 254
    const/4 v5, 0x0

    .local v5, j:I
    :goto_2
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v7

    if-ge v5, v7, :cond_3

    .line 255
    invoke-virtual {v1, v5}, Lorg/cybergarage/upnp/DeviceList;->getDevice(I)Lorg/cybergarage/upnp/Device;

    move-result-object v0

    .line 256
    .local v0, cdev:Lorg/cybergarage/upnp/Device;
    if-eqz v0, :cond_6

    .line 257
    invoke-virtual {v0}, Lorg/cybergarage/upnp/Device;->getUDN()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 254
    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .end local v0           #cdev:Lorg/cybergarage/upnp/Device;
    .end local v5           #j:I
    :cond_7
    move-object v0, v6

    .line 264
    goto :goto_0
.end method

.method private findServiceByUDN(Ljava/lang/String;Ljava/lang/String;)Lorg/cybergarage/upnp/Service;
    .locals 2
    .parameter "udn"
    .parameter "service_type"

    .prologue
    const/4 v1, 0x0

    .line 268
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 275
    :cond_0
    :goto_0
    return-object v1

    .line 271
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/jrdsettings/audioshare/service/DlnaDeviceController;->findDeviceByUDN(Ljava/lang/String;)Lorg/cybergarage/upnp/Device;

    move-result-object v0

    .line 272
    .local v0, renderer_device:Lorg/cybergarage/upnp/Device;
    if-eqz v0, :cond_0

    .line 275
    invoke-virtual {v0, p2}, Lorg/cybergarage/upnp/Device;->getService(Ljava/lang/String;)Lorg/cybergarage/upnp/Service;

    move-result-object v1

    goto :goto_0
.end method

.method private getDeviceList(Ljava/lang/String;)Lorg/cybergarage/upnp/DeviceList;
    .locals 6
    .parameter "deviceType"

    .prologue
    .line 380
    new-instance v3, Lorg/cybergarage/upnp/DeviceList;

    invoke-direct {v3}, Lorg/cybergarage/upnp/DeviceList;-><init>()V

    .line 382
    .local v3, devList:Lorg/cybergarage/upnp/DeviceList;
    invoke-virtual {p0}, Lorg/cybergarage/upnp/ControlPoint;->getDeviceList()Lorg/cybergarage/upnp/DeviceList;

    move-result-object v1

    .line 383
    .local v1, allDevList:Lorg/cybergarage/upnp/DeviceList;
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v0

    .line 384
    .local v0, allDevCnt:I
    const/4 v4, 0x0

    .local v4, n:I
    :goto_0
    if-ge v4, v0, :cond_1

    .line 385
    invoke-virtual {v1, v4}, Lorg/cybergarage/upnp/DeviceList;->getDevice(I)Lorg/cybergarage/upnp/Device;

    move-result-object v2

    .line 386
    .local v2, dev:Lorg/cybergarage/upnp/Device;
    invoke-virtual {v2, p1}, Lorg/cybergarage/upnp/Device;->isDeviceType(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 384
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 388
    :cond_0
    invoke-virtual {v3, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 390
    .end local v2           #dev:Lorg/cybergarage/upnp/Device;
    :cond_1
    return-object v3
.end method

.method private getRendererDeviceList()Lorg/cybergarage/upnp/DeviceList;
    .locals 1

    .prologue
    .line 376
    const-string v0, "urn:schemas-upnp-org:device:MediaRenderer:1"

    invoke-direct {p0, v0}, Lcom/android/jrdsettings/audioshare/service/DlnaDeviceController;->getDeviceList(Ljava/lang/String;)Lorg/cybergarage/upnp/DeviceList;

    move-result-object v0

    return-object v0
.end method

.method private getRootDeviceDesUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "udn"

    .prologue
    const/4 v4, 0x0

    .line 553
    const/4 v0, 0x0

    .line 554
    .local v0, desurl:Ljava/lang/String;
    invoke-virtual {p0, p1}, Lorg/cybergarage/upnp/ControlPoint;->getDevice(Ljava/lang/String;)Lorg/cybergarage/upnp/Device;

    move-result-object v1

    .line 555
    .local v1, dev:Lorg/cybergarage/upnp/Device;
    if-nez v1, :cond_1

    .line 575
    :cond_0
    :goto_0
    return-object v4

    .line 559
    :cond_1
    invoke-virtual {v1}, Lorg/cybergarage/upnp/Device;->getSSDPPacket()Lorg/cybergarage/upnp/ssdp/SSDPPacket;

    move-result-object v2

    .line 560
    .local v2, pkt:Lorg/cybergarage/upnp/ssdp/SSDPPacket;
    if-eqz v2, :cond_3

    .line 561
    invoke-virtual {v2}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->getLocation()Ljava/lang/String;

    move-result-object v0

    :cond_2
    :goto_1
    move-object v4, v0

    .line 575
    goto :goto_0

    .line 563
    :cond_3
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "========== getRootDeviceDesUrlisRootDevice ? "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lorg/cybergarage/upnp/Device;->isRootDevice()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 565
    invoke-virtual {v1}, Lorg/cybergarage/upnp/Device;->getRootDevice()Lorg/cybergarage/upnp/Device;

    move-result-object v3

    .line 566
    .local v3, rootDev:Lorg/cybergarage/upnp/Device;
    if-eqz v3, :cond_0

    .line 569
    invoke-virtual {v3}, Lorg/cybergarage/upnp/Device;->getSSDPPacket()Lorg/cybergarage/upnp/ssdp/SSDPPacket;

    move-result-object v2

    .line 570
    if-eqz v2, :cond_2

    .line 571
    invoke-virtual {v2}, Lorg/cybergarage/upnp/ssdp/SSDPPacket;->getLocation()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private getTransPortInfoArgValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "udn"
    .parameter "argName"

    .prologue
    const/4 v5, 0x0

    .line 394
    invoke-direct {p0, p1}, Lcom/android/jrdsettings/audioshare/service/DlnaDeviceController;->findDeviceByUDN(Ljava/lang/String;)Lorg/cybergarage/upnp/Device;

    move-result-object v3

    .line 396
    .local v3, currentRenderer:Lorg/cybergarage/upnp/Device;
    if-eqz v3, :cond_0

    if-eqz p2, :cond_0

    .line 397
    const-string v6, "urn:schemas-upnp-org:service:AVTransport:1"

    invoke-virtual {v3, v6}, Lorg/cybergarage/upnp/Device;->getService(Ljava/lang/String;)Lorg/cybergarage/upnp/Service;

    move-result-object v4

    .line 399
    .local v4, renControlService:Lorg/cybergarage/upnp/Service;
    if-nez v4, :cond_1

    .line 419
    .end local v4           #renControlService:Lorg/cybergarage/upnp/Service;
    :cond_0
    :goto_0
    return-object v5

    .line 402
    .restart local v4       #renControlService:Lorg/cybergarage/upnp/Service;
    :cond_1
    const-string v6, "GetTransportInfo"

    invoke-virtual {v4, v6}, Lorg/cybergarage/upnp/Service;->getAction(Ljava/lang/String;)Lorg/cybergarage/upnp/Action;

    move-result-object v0

    .line 404
    .local v0, action:Lorg/cybergarage/upnp/Action;
    if-eqz v0, :cond_0

    .line 407
    const-string v6, "InstanceID"

    const-string v7, "0"

    invoke-virtual {v0, v6, v7}, Lorg/cybergarage/upnp/Action;->setArgumentValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    invoke-virtual {v0}, Lorg/cybergarage/upnp/Action;->postControlAction()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 409
    invoke-virtual {v0}, Lorg/cybergarage/upnp/Action;->getOutputArgumentList()Lorg/cybergarage/upnp/ArgumentList;

    move-result-object v2

    .line 410
    .local v2, argList:Lorg/cybergarage/upnp/ArgumentList;
    if-eqz v2, :cond_0

    .line 411
    invoke-virtual {v2, p2}, Lorg/cybergarage/upnp/ArgumentList;->getArgument(Ljava/lang/String;)Lorg/cybergarage/upnp/Argument;

    move-result-object v1

    .line 412
    .local v1, arg:Lorg/cybergarage/upnp/Argument;
    if-eqz v1, :cond_0

    .line 413
    invoke-virtual {v1}, Lorg/cybergarage/upnp/Argument;->getValue()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method private isHostConnect(Ljava/lang/String;II)Z
    .locals 4
    .parameter "host"
    .parameter "port"
    .parameter "timeOut"

    .prologue
    const/4 v2, 0x0

    .line 537
    if-gtz p3, :cond_0

    .line 549
    :goto_0
    return v2

    .line 542
    :cond_0
    :try_start_0
    new-instance v1, Ljava/net/Socket;

    invoke-direct {v1}, Ljava/net/Socket;-><init>()V

    .line 543
    .local v1, postSocket:Ljava/net/Socket;
    new-instance v3, Ljava/net/InetSocketAddress;

    invoke-direct {v3, p1, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v3, p3}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 549
    const/4 v2, 0x1

    goto :goto_0

    .line 544
    .end local v1           #postSocket:Ljava/net/Socket;
    :catch_0
    move-exception v0

    .line 545
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static isSpeaker(Ljava/lang/String;)Z
    .locals 1
    .parameter "udn"

    .prologue
    .line 492
    const/4 v0, 0x1

    return v0
.end method

.method private isUrlConnect(Ljava/lang/String;II)Z
    .locals 7
    .parameter "url"
    .parameter "retryCnt"
    .parameter "timeOut"

    .prologue
    .line 508
    const/4 v1, 0x0

    .line 509
    .local v1, flag:Z
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-gtz v6, :cond_1

    :cond_0
    move v6, v1

    .line 532
    :goto_0
    return v6

    .line 512
    :cond_1
    if-ltz p2, :cond_2

    if-gez p3, :cond_5

    .line 513
    :cond_2
    const/4 v6, 0x0

    goto :goto_0

    .local v2, host:Ljava/lang/String;
    .local v3, port:I
    .local v5, uurl:Ljava/net/URL;
    :cond_3
    move v4, p2

    .line 516
    .end local v2           #host:Ljava/lang/String;
    .end local v3           #port:I
    .end local v5           #uurl:Ljava/net/URL;
    .end local p2
    .local v4, retryCnt:I
    :goto_1
    add-int/lit8 p2, v4, -0x1

    .end local v4           #retryCnt:I
    .restart local p2
    if-lez v4, :cond_4

    .line 518
    :try_start_0
    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 519
    .restart local v5       #uurl:Ljava/net/URL;
    invoke-virtual {v5}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    .line 520
    .restart local v2       #host:Ljava/lang/String;
    invoke-virtual {v5}, Ljava/net/URL;->getPort()I

    move-result v3

    .line 521
    .restart local v3       #port:I
    invoke-direct {p0, v2, v3, p3}, Lcom/android/jrdsettings/audioshare/service/DlnaDeviceController;->isHostConnect(Ljava/lang/String;II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 522
    if-eqz v1, :cond_3

    .end local v2           #host:Ljava/lang/String;
    .end local v3           #port:I
    .end local v5           #uurl:Ljava/net/URL;
    :cond_4
    move v6, v1

    .line 532
    goto :goto_0

    .line 526
    :catch_0
    move-exception v0

    .line 527
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move v4, p2

    .line 528
    .end local p2
    .restart local v4       #retryCnt:I
    goto :goto_1

    .end local v0           #ex:Ljava/lang/Exception;
    .end local v4           #retryCnt:I
    .restart local p2
    :cond_5
    move v4, p2

    .end local p2
    .restart local v4       #retryCnt:I
    goto :goto_1
.end method

.method private play(Lorg/cybergarage/upnp/Device;)Z
    .locals 5
    .parameter "dev"

    .prologue
    const/4 v2, 0x0

    .line 279
    if-nez p1, :cond_1

    .line 293
    :cond_0
    :goto_0
    return v2

    .line 281
    :cond_1
    const-string v3, "DlnaDeviceController"

    const-string v4, "play = 1"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    const-string v3, "urn:schemas-upnp-org:service:AVTransport:1"

    invoke-virtual {p1, v3}, Lorg/cybergarage/upnp/Device;->getService(Ljava/lang/String;)Lorg/cybergarage/upnp/Service;

    move-result-object v1

    .line 283
    .local v1, avTransService:Lorg/cybergarage/upnp/Service;
    if-eqz v1, :cond_0

    .line 285
    const-string v3, "DlnaDeviceController"

    const-string v4, "play = 2"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    const-string v3, "Play"

    invoke-virtual {v1, v3}, Lorg/cybergarage/upnp/Service;->getAction(Ljava/lang/String;)Lorg/cybergarage/upnp/Action;

    move-result-object v0

    .line 287
    .local v0, action:Lorg/cybergarage/upnp/Action;
    if-eqz v0, :cond_0

    .line 289
    const-string v2, "DlnaDeviceController"

    const-string v3, "play = 3"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    const-string v2, "InstanceID"

    const-string v3, "0"

    invoke-virtual {v0, v2, v3}, Lorg/cybergarage/upnp/Action;->setArgumentValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    const-string v2, "Speed"

    const-string v3, "1"

    invoke-virtual {v0, v2, v3}, Lorg/cybergarage/upnp/Action;->setArgumentValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    const-string v2, "DlnaDeviceController"

    const-string v3, "play = 4"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    invoke-virtual {v0}, Lorg/cybergarage/upnp/Action;->postControlAction()Z

    move-result v2

    goto :goto_0
.end method

.method private setAVTransportURI(Lorg/cybergarage/upnp/Device;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .parameter "currentRenderer"
    .parameter "res_url"
    .parameter "media_type"

    .prologue
    const/4 v6, 0x0

    .line 316
    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 372
    :cond_0
    :goto_0
    return v6

    .line 320
    :cond_1
    if-eqz p1, :cond_0

    .line 323
    const-string v7, "DlnaDeviceController"

    const-string v8, "setAVTransportURI = 1"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    const-string v7, "urn:schemas-upnp-org:service:AVTransport:1"

    invoke-virtual {p1, v7}, Lorg/cybergarage/upnp/Device;->getService(Ljava/lang/String;)Lorg/cybergarage/upnp/Service;

    move-result-object v1

    .line 326
    .local v1, avTransService:Lorg/cybergarage/upnp/Service;
    if-eqz v1, :cond_0

    .line 329
    const-string v7, "DlnaDeviceController"

    const-string v8, "setAVTransportURI = 2"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    const-string v7, "SetAVTransportURI"

    invoke-virtual {v1, v7}, Lorg/cybergarage/upnp/Service;->getAction(Ljava/lang/String;)Lorg/cybergarage/upnp/Action;

    move-result-object v0

    .line 331
    .local v0, action:Lorg/cybergarage/upnp/Action;
    if-eqz v0, :cond_0

    .line 334
    const-string v6, "DlnaDeviceController"

    const-string v7, "setAVTransportURI = 3"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    new-instance v3, Lorg/cybergarage/upnp/std/av/server/object/item/ItemNode;

    invoke-direct {v3}, Lorg/cybergarage/upnp/std/av/server/object/item/ItemNode;-><init>()V

    .line 336
    .local v3, itemNode:Lorg/cybergarage/upnp/std/av/server/object/item/ItemNode;
    invoke-virtual {v3, p3}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->setUPnPClass(Ljava/lang/String;)V

    .line 337
    const-string v6, "AudioShare"

    invoke-virtual {v3, v6}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->setTitle(Ljava/lang/String;)V

    .line 338
    new-instance v5, Lorg/cybergarage/upnp/std/av/server/object/item/ResourceNode;

    invoke-direct {v5}, Lorg/cybergarage/upnp/std/av/server/object/item/ResourceNode;-><init>()V

    .line 339
    .local v5, resNode:Lorg/cybergarage/upnp/std/av/server/object/item/ResourceNode;
    const-string v4, ""

    .line 340
    .local v4, protocolInfo:Ljava/lang/String;
    const-string v6, "object.item.audioItem"

    invoke-virtual {p3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 341
    const-string v4, "http-get:*:audio/mpeg:DLNA.ORG_PN=MP3;DLNA.ORG_OP=01;DLNA.ORG_CI=0;DLNA.ORG_FLAGS=01700000000000000000000000000000"

    .line 348
    :cond_2
    :goto_1
    const-string v6, "protocolInfo"

    invoke-virtual {v5, v6, v4}, Lorg/cybergarage/xml/Node;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    invoke-virtual {v5, p2}, Lorg/cybergarage/xml/Node;->setValue(Ljava/lang/String;)V

    .line 350
    invoke-virtual {v3, v5}, Lorg/cybergarage/upnp/std/av/server/object/item/ItemNode;->addResourceNode(Lorg/cybergarage/upnp/std/av/server/object/item/ResourceNode;)V

    .line 352
    const-string v6, "DlnaDeviceController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setAVTransportURI = 4 protocolInfo = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    const-string v6, "InstanceID"

    const-string v7, "0"

    invoke-virtual {v0, v6, v7}, Lorg/cybergarage/upnp/Action;->setArgumentValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    const-string v6, "CurrentURI"

    invoke-virtual {v0, v6, p2}, Lorg/cybergarage/upnp/Action;->setArgumentValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    new-instance v2, Lorg/cybergarage/upnp/std/av/server/object/DIDLLite;

    invoke-direct {v2}, Lorg/cybergarage/upnp/std/av/server/object/DIDLLite;-><init>()V

    .line 362
    .local v2, didl:Lorg/cybergarage/upnp/std/av/server/object/DIDLLite;
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v7, "--------------------- DIDL ---------------------"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 363
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2}, Lorg/cybergarage/upnp/std/av/server/object/DIDLLite;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 364
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v7, "--------------------- DIDL ---------------------"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 365
    invoke-virtual {v2, v3}, Lorg/cybergarage/upnp/std/av/server/object/DIDLLite;->setContentNode(Lorg/cybergarage/upnp/std/av/server/object/ContentNode;)V

    .line 366
    const-string v6, "CurrentURIMetaData"

    invoke-virtual {v2}, Lorg/cybergarage/upnp/std/av/server/object/DIDLLite;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Lorg/cybergarage/upnp/Action;->setArgumentValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    const-string v6, "DlnaDeviceController"

    const-string v7, "setAVTransportURI================== DIDL ---------------------"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    const-string v6, "DlnaDeviceController"

    invoke-virtual {v2}, Lorg/cybergarage/upnp/std/av/server/object/DIDLLite;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    const-string v6, "DlnaDeviceController"

    const-string v7, "setAVTransportURI================== DIDL ---------------------"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    invoke-virtual {v0}, Lorg/cybergarage/upnp/Action;->postControlAction()Z

    move-result v6

    goto/16 :goto_0

    .line 343
    .end local v2           #didl:Lorg/cybergarage/upnp/std/av/server/object/DIDLLite;
    :cond_3
    const-string v6, "object.item.videoItem"

    invoke-virtual {p3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 344
    const-string v4, "http-get:*:video/mp4:DLNA.ORG_OP=00"

    goto :goto_1

    .line 345
    :cond_4
    const-string v6, "object.item.imageItem"

    invoke-virtual {p3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 346
    const-string v4, "http-get:*:image/jpeg:*"

    goto/16 :goto_1
.end method

.method private stop(Lorg/cybergarage/upnp/Device;)Z
    .locals 5
    .parameter "dev"

    .prologue
    const/4 v2, 0x0

    .line 297
    if-nez p1, :cond_1

    .line 310
    :cond_0
    :goto_0
    return v2

    .line 299
    :cond_1
    const-string v3, "DlnaDeviceController"

    const-string v4, "stop = 1"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    const-string v3, "urn:schemas-upnp-org:service:AVTransport:1"

    invoke-virtual {p1, v3}, Lorg/cybergarage/upnp/Device;->getService(Ljava/lang/String;)Lorg/cybergarage/upnp/Service;

    move-result-object v1

    .line 301
    .local v1, avTransService:Lorg/cybergarage/upnp/Service;
    if-eqz v1, :cond_0

    .line 303
    const-string v3, "DlnaDeviceController"

    const-string v4, "stop = 2"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    const-string v3, "Stop"

    invoke-virtual {v1, v3}, Lorg/cybergarage/upnp/Service;->getAction(Ljava/lang/String;)Lorg/cybergarage/upnp/Action;

    move-result-object v0

    .line 305
    .local v0, action:Lorg/cybergarage/upnp/Action;
    if-eqz v0, :cond_0

    .line 307
    const-string v2, "DlnaDeviceController"

    const-string v3, "stop = 3"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    const-string v2, "InstanceID"

    const-string v3, "0"

    invoke-virtual {v0, v2, v3}, Lorg/cybergarage/upnp/Action;->setArgumentValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    const-string v2, "DlnaDeviceController"

    const-string v3, "stop = 4"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    invoke-virtual {v0}, Lorg/cybergarage/upnp/Action;->postControlAction()Z

    move-result v2

    goto :goto_0
.end method


# virtual methods
.method public getCurrentPlayingURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "udn"

    .prologue
    const/4 v5, 0x0

    .line 156
    const-string v6, "urn:schemas-upnp-org:service:AVTransport:1"

    invoke-direct {p0, p1, v6}, Lcom/android/jrdsettings/audioshare/service/DlnaDeviceController;->findServiceByUDN(Ljava/lang/String;Ljava/lang/String;)Lorg/cybergarage/upnp/Service;

    move-result-object v3

    .line 157
    .local v3, avTransService:Lorg/cybergarage/upnp/Service;
    if-nez v3, :cond_1

    .line 187
    :cond_0
    :goto_0
    return-object v5

    .line 161
    :cond_1
    const-string v6, "GetMediaInfo"

    invoke-virtual {v3, v6}, Lorg/cybergarage/upnp/Service;->getAction(Ljava/lang/String;)Lorg/cybergarage/upnp/Action;

    move-result-object v0

    .line 162
    .local v0, action:Lorg/cybergarage/upnp/Action;
    if-eqz v0, :cond_0

    .line 166
    const-string v6, "InstanceID"

    const-string v7, "0"

    invoke-virtual {v0, v6, v7}, Lorg/cybergarage/upnp/Action;->setArgumentValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    invoke-virtual {v0}, Lorg/cybergarage/upnp/Action;->postControlAction()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 169
    invoke-virtual {v0}, Lorg/cybergarage/upnp/Action;->getOutputArgumentList()Lorg/cybergarage/upnp/ArgumentList;

    move-result-object v2

    .line 170
    .local v2, argList:Lorg/cybergarage/upnp/ArgumentList;
    if-eqz v2, :cond_0

    .line 171
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v6

    if-ge v4, v6, :cond_0

    .line 172
    invoke-virtual {v2, v4}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/cybergarage/upnp/Argument;

    .line 173
    .local v1, arg:Lorg/cybergarage/upnp/Argument;
    if-eqz v1, :cond_3

    .line 174
    invoke-virtual {v1}, Lorg/cybergarage/upnp/Argument;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "CurrentURI"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v1}, Lorg/cybergarage/upnp/Argument;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "CurrentTrackURI"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 178
    :cond_2
    invoke-virtual {v1}, Lorg/cybergarage/upnp/Argument;->getValue()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 179
    invoke-virtual {v1}, Lorg/cybergarage/upnp/Argument;->getValue()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 171
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method public getFriendlyNameByUDN(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "udn"

    .prologue
    .line 497
    invoke-direct {p0, p1}, Lcom/android/jrdsettings/audioshare/service/DlnaDeviceController;->findDeviceByUDN(Ljava/lang/String;)Lorg/cybergarage/upnp/Device;

    move-result-object v0

    .line 498
    .local v0, dev:Lorg/cybergarage/upnp/Device;
    if-eqz v0, :cond_0

    .line 499
    invoke-virtual {v0}, Lorg/cybergarage/upnp/Device;->getFriendlyName()Ljava/lang/String;

    move-result-object v1

    .line 501
    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public getSinkProtocolInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "udn"

    .prologue
    const/4 v5, 0x0

    .line 202
    invoke-direct {p0, p1}, Lcom/android/jrdsettings/audioshare/service/DlnaDeviceController;->findDeviceByUDN(Ljava/lang/String;)Lorg/cybergarage/upnp/Device;

    move-result-object v3

    .line 204
    .local v3, currentRenderer:Lorg/cybergarage/upnp/Device;
    if-eqz v3, :cond_0

    .line 205
    const-string v6, "urn:schemas-upnp-org:service:ConnectionManager:1"

    invoke-virtual {v3, v6}, Lorg/cybergarage/upnp/Device;->getService(Ljava/lang/String;)Lorg/cybergarage/upnp/Service;

    move-result-object v4

    .line 207
    .local v4, renControlService:Lorg/cybergarage/upnp/Service;
    if-nez v4, :cond_1

    .line 227
    .end local v4           #renControlService:Lorg/cybergarage/upnp/Service;
    :cond_0
    :goto_0
    return-object v5

    .line 210
    .restart local v4       #renControlService:Lorg/cybergarage/upnp/Service;
    :cond_1
    const-string v6, "GetProtocolInfo"

    invoke-virtual {v4, v6}, Lorg/cybergarage/upnp/Service;->getAction(Ljava/lang/String;)Lorg/cybergarage/upnp/Action;

    move-result-object v0

    .line 212
    .local v0, action:Lorg/cybergarage/upnp/Action;
    if-eqz v0, :cond_0

    .line 215
    const-string v6, "InstanceID"

    const-string v7, "0"

    invoke-virtual {v0, v6, v7}, Lorg/cybergarage/upnp/Action;->setArgumentValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    invoke-virtual {v0}, Lorg/cybergarage/upnp/Action;->postControlAction()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 217
    invoke-virtual {v0}, Lorg/cybergarage/upnp/Action;->getOutputArgumentList()Lorg/cybergarage/upnp/ArgumentList;

    move-result-object v2

    .line 218
    .local v2, argList:Lorg/cybergarage/upnp/ArgumentList;
    if-eqz v2, :cond_0

    .line 219
    const-string v6, "Sink"

    invoke-virtual {v2, v6}, Lorg/cybergarage/upnp/ArgumentList;->getArgument(Ljava/lang/String;)Lorg/cybergarage/upnp/Argument;

    move-result-object v1

    .line 220
    .local v1, arg:Lorg/cybergarage/upnp/Argument;
    if-eqz v1, :cond_0

    .line 221
    invoke-virtual {v1}, Lorg/cybergarage/upnp/Argument;->getValue()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method public getSpeakerList()Ljava/util/HashMap;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/android/jrdsettings/audioshare/service/DlnaDeviceController;->getRendererDeviceList()Lorg/cybergarage/upnp/DeviceList;

    move-result-object v1

    .line 96
    .local v1, devList:Lorg/cybergarage/upnp/DeviceList;
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 97
    .local v4, speakerList:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v6

    if-lez v6, :cond_1

    .line 99
    invoke-virtual {v1}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, iterator:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 100
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cybergarage/upnp/Device;

    .line 101
    .local v0, dev:Lorg/cybergarage/upnp/Device;
    invoke-virtual {v0}, Lorg/cybergarage/upnp/Device;->getFriendlyName()Ljava/lang/String;

    move-result-object v3

    .line 102
    .local v3, name:Ljava/lang/String;
    invoke-virtual {v0}, Lorg/cybergarage/upnp/Device;->getUDN()Ljava/lang/String;

    move-result-object v5

    .line 103
    .local v5, udn:Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 104
    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 109
    .end local v0           #dev:Lorg/cybergarage/upnp/Device;
    .end local v2           #iterator:Ljava/util/Iterator;
    .end local v3           #name:Ljava/lang/String;
    .end local v5           #udn:Ljava/lang/String;
    :cond_1
    return-object v4
.end method

.method public isDeviceOnline(Ljava/lang/String;II)Z
    .locals 3
    .parameter "udn"
    .parameter "retryCnt"
    .parameter "timeOut"

    .prologue
    const/4 v2, 0x0

    .line 590
    invoke-virtual {p0, p1}, Lorg/cybergarage/upnp/ControlPoint;->getDevice(Ljava/lang/String;)Lorg/cybergarage/upnp/Device;

    move-result-object v1

    .line 591
    .local v1, dev:Lorg/cybergarage/upnp/Device;
    if-nez v1, :cond_1

    .line 600
    :cond_0
    :goto_0
    return v2

    .line 595
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/jrdsettings/audioshare/service/DlnaDeviceController;->getRootDeviceDesUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 596
    .local v0, desurl:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 600
    invoke-direct {p0, v0, p2, p3}, Lcom/android/jrdsettings/audioshare/service/DlnaDeviceController;->isUrlConnect(Ljava/lang/String;II)Z

    move-result v2

    goto :goto_0
.end method

.method public isDevicePlaying(Ljava/lang/String;)Z
    .locals 2
    .parameter "udn"

    .prologue
    .line 191
    const-string v1, "CurrentTransportState"

    invoke-direct {p0, p1, v1}, Lcom/android/jrdsettings/audioshare/service/DlnaDeviceController;->getTransPortInfoArgValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 193
    .local v0, state:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 194
    const-string v1, "PLAYING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 195
    const/4 v1, 0x1

    .line 198
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public play(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .parameter "udn"
    .parameter "url"
    .parameter "mediaType"

    .prologue
    const/4 v1, 0x0

    .line 118
    const-string v2, "DlnaDeviceController"

    const-string v3, "playurl = 1"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    invoke-direct {p0, p1}, Lcom/android/jrdsettings/audioshare/service/DlnaDeviceController;->findDeviceByUDN(Ljava/lang/String;)Lorg/cybergarage/upnp/Device;

    move-result-object v0

    .line 121
    .local v0, dev:Lorg/cybergarage/upnp/Device;
    if-nez v0, :cond_0

    .line 132
    :goto_0
    return v1

    .line 123
    :cond_0
    const-string v2, "DlnaDeviceController"

    const-string v3, "playurl = 2"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    invoke-direct {p0, v0}, Lcom/android/jrdsettings/audioshare/service/DlnaDeviceController;->stop(Lorg/cybergarage/upnp/Device;)Z

    .line 125
    const-string v2, "DlnaDeviceController"

    const-string v3, "playurl = 3"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    invoke-direct {p0, v0, p2, p3}, Lcom/android/jrdsettings/audioshare/service/DlnaDeviceController;->setAVTransportURI(Lorg/cybergarage/upnp/Device;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 127
    const-string v1, "DlnaDeviceController"

    const-string v2, "playurl = 4"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    invoke-direct {p0, v0}, Lcom/android/jrdsettings/audioshare/service/DlnaDeviceController;->play(Lorg/cybergarage/upnp/Device;)Z

    move-result v1

    goto :goto_0

    .line 130
    :cond_1
    const-string v2, "DlnaDeviceController"

    const-string v3, "playurl = 5"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public stop(Ljava/lang/String;)Z
    .locals 6
    .parameter "udn"

    .prologue
    const/4 v3, 0x0

    .line 137
    invoke-direct {p0, p1}, Lcom/android/jrdsettings/audioshare/service/DlnaDeviceController;->findDeviceByUDN(Ljava/lang/String;)Lorg/cybergarage/upnp/Device;

    move-result-object v2

    .line 138
    .local v2, dev:Lorg/cybergarage/upnp/Device;
    if-nez v2, :cond_1

    .line 151
    :cond_0
    :goto_0
    return v3

    .line 140
    :cond_1
    const-string v4, "DlnaDeviceController"

    const-string v5, "stop = 1"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    const-string v4, "urn:schemas-upnp-org:service:AVTransport:1"

    invoke-virtual {v2, v4}, Lorg/cybergarage/upnp/Device;->getService(Ljava/lang/String;)Lorg/cybergarage/upnp/Service;

    move-result-object v1

    .line 142
    .local v1, avTransService:Lorg/cybergarage/upnp/Service;
    if-eqz v1, :cond_0

    .line 144
    const-string v4, "DlnaDeviceController"

    const-string v5, "stop = 2"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    const-string v4, "Stop"

    invoke-virtual {v1, v4}, Lorg/cybergarage/upnp/Service;->getAction(Ljava/lang/String;)Lorg/cybergarage/upnp/Action;

    move-result-object v0

    .line 146
    .local v0, action:Lorg/cybergarage/upnp/Action;
    if-eqz v0, :cond_0

    .line 148
    const-string v3, "DlnaDeviceController"

    const-string v4, "stop = 3"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    const-string v3, "InstanceID"

    const-string v4, "0"

    invoke-virtual {v0, v3, v4}, Lorg/cybergarage/upnp/Action;->setArgumentValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    const-string v3, "DlnaDeviceController"

    const-string v4, "stop = 4"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    invoke-virtual {v0}, Lorg/cybergarage/upnp/Action;->postControlAction()Z

    move-result v3

    goto :goto_0
.end method
