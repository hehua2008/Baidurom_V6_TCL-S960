.class public Lorg/cybergarage/upnp/std/av/server/directory/gateway/GatewayDirectory;
.super Lorg/cybergarage/upnp/std/av/server/Directory;
.source "GatewayDirectory.java"


# static fields
.field private static final NAME:Ljava/lang/String; = "CyberMediaGate"


# instance fields
.field private mplayer:Lorg/cybergarage/upnp/std/av/player/MediaPlayer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    const-string v0, "CyberMediaGate"

    invoke-direct {p0, v0}, Lorg/cybergarage/upnp/std/av/server/directory/gateway/GatewayDirectory;-><init>(Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lorg/cybergarage/upnp/std/av/server/Directory;-><init>(Ljava/lang/String;)V

    .line 55
    new-instance v1, Lorg/cybergarage/upnp/std/av/player/MediaPlayer;

    invoke-direct {v1}, Lorg/cybergarage/upnp/std/av/player/MediaPlayer;-><init>()V

    iput-object v1, p0, Lorg/cybergarage/upnp/std/av/server/directory/gateway/GatewayDirectory;->mplayer:Lorg/cybergarage/upnp/std/av/player/MediaPlayer;

    .line 42
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/directory/gateway/GatewayDirectory;->getMediaPlayer()Lorg/cybergarage/upnp/std/av/player/MediaPlayer;

    move-result-object v0

    .line 43
    .local v0, mplayer:Lorg/cybergarage/upnp/std/av/player/MediaPlayer;
    invoke-virtual {v0}, Lorg/cybergarage/upnp/std/av/player/MediaPlayer;->start()V

    .line 44
    return-void
.end method

.method private updateMediaServerList()Z
    .locals 15

    .prologue
    .line 267
    const/4 v10, 0x0

    .line 269
    .local v10, updateFlag:Z
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/directory/gateway/GatewayDirectory;->getMediaPlayer()Lorg/cybergarage/upnp/std/av/player/MediaPlayer;

    move-result-object v6

    .line 270
    .local v6, dmp:Lorg/cybergarage/upnp/std/av/player/MediaPlayer;
    if-nez v6, :cond_1

    .line 271
    const/4 v10, 0x0

    .line 298
    .end local v10           #updateFlag:Z
    :cond_0
    :goto_0
    return v10

    .line 272
    .restart local v10       #updateFlag:Z
    :cond_1
    invoke-virtual {v6}, Lorg/cybergarage/upnp/std/av/player/MediaPlayer;->getController()Lorg/cybergarage/upnp/std/av/controller/MediaController;

    move-result-object v2

    .line 273
    .local v2, controller:Lorg/cybergarage/upnp/std/av/controller/MediaController;
    if-nez v2, :cond_2

    .line 274
    const/4 v10, 0x0

    goto :goto_0

    .line 276
    :cond_2
    invoke-virtual {v2}, Lorg/cybergarage/upnp/ControlPoint;->getDeviceList()Lorg/cybergarage/upnp/DeviceList;

    move-result-object v5

    .line 277
    .local v5, devList:Lorg/cybergarage/upnp/DeviceList;
    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v4

    .line 278
    .local v4, devCnt:I
    const/4 v8, 0x0

    .local v8, n:I
    :goto_1
    if-ge v8, v4, :cond_4

    .line 279
    invoke-virtual {v5, v8}, Lorg/cybergarage/upnp/DeviceList;->getDevice(I)Lorg/cybergarage/upnp/Device;

    move-result-object v3

    .line 280
    .local v3, dev:Lorg/cybergarage/upnp/Device;
    const-string v11, "urn:schemas-upnp-org:device:MediaServer:1"

    invoke-virtual {v3, v11}, Lorg/cybergarage/upnp/Device;->isDeviceType(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 278
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 282
    :cond_3
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "] "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v3}, Lorg/cybergarage/upnp/Device;->getFriendlyName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v3}, Lorg/cybergarage/upnp/Device;->getLeaseTime()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v3}, Lorg/cybergarage/upnp/Device;->getElapsedTime()J

    move-result-wide v13

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 285
    .end local v3           #dev:Lorg/cybergarage/upnp/Device;
    :cond_4
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/object/container/ContainerNode;->getNContentNodes()I

    move-result v9

    .line 286
    .local v9, nContents:I
    new-array v0, v9, [Lorg/cybergarage/upnp/std/av/server/object/ContentNode;

    .line 287
    .local v0, cnode:[Lorg/cybergarage/upnp/std/av/server/object/ContentNode;
    const/4 v8, 0x0

    :goto_3
    if-ge v8, v9, :cond_5

    .line 288
    invoke-virtual {p0, v8}, Lorg/cybergarage/upnp/std/av/server/object/container/ContainerNode;->getContentNode(I)Lorg/cybergarage/upnp/std/av/server/object/ContentNode;

    move-result-object v11

    aput-object v11, v0, v8

    .line 287
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 289
    :cond_5
    const/4 v8, 0x0

    :goto_4
    if-ge v8, v9, :cond_0

    .line 290
    aget-object v11, v0, v8

    invoke-virtual {v11}, Lorg/cybergarage/xml/Node;->getName()Ljava/lang/String;

    move-result-object v1

    .line 291
    .local v1, containerName:Ljava/lang/String;
    invoke-virtual {v2, v1}, Lorg/cybergarage/upnp/ControlPoint;->hasDevice(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_6

    .line 292
    new-instance v7, Lorg/cybergarage/upnp/std/av/server/object/container/ContainerNode;

    invoke-direct {v7}, Lorg/cybergarage/upnp/std/av/server/object/container/ContainerNode;-><init>()V

    .line 293
    .local v7, mserverNode:Lorg/cybergarage/upnp/std/av/server/object/container/ContainerNode;
    invoke-virtual {v7, v1}, Lorg/cybergarage/xml/Node;->setName(Ljava/lang/String;)V

    .line 294
    invoke-virtual {p0, v7}, Lorg/cybergarage/upnp/std/av/server/object/container/ContainerNode;->addContentNode(Lorg/cybergarage/upnp/std/av/server/object/ContentNode;)V

    .line 289
    .end local v7           #mserverNode:Lorg/cybergarage/upnp/std/av/server/object/container/ContainerNode;
    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_4
.end method


# virtual methods
.method public getMediaPlayer()Lorg/cybergarage/upnp/std/av/player/MediaPlayer;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lorg/cybergarage/upnp/std/av/server/directory/gateway/GatewayDirectory;->mplayer:Lorg/cybergarage/upnp/std/av/player/MediaPlayer;

    return-object v0
.end method

.method public update()Z
    .locals 1

    .prologue
    .line 307
    invoke-direct {p0}, Lorg/cybergarage/upnp/std/av/server/directory/gateway/GatewayDirectory;->updateMediaServerList()Z

    move-result v0

    return v0
.end method
