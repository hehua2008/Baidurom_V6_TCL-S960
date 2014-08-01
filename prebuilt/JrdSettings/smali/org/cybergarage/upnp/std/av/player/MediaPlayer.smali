.class public Lorg/cybergarage/upnp/std/av/player/MediaPlayer;
.super Ljava/lang/Object;
.source "MediaPlayer.java"


# instance fields
.field private controller:Lorg/cybergarage/upnp/std/av/controller/MediaController;

.field private renderer:Lorg/cybergarage/upnp/std/av/renderer/MediaRenderer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 45
    invoke-direct {p0, v0, v0}, Lorg/cybergarage/upnp/std/av/player/MediaPlayer;-><init>(ZZ)V

    .line 46
    return-void
.end method

.method public constructor <init>(ZZ)V
    .locals 1
    .parameter "useDMC"
    .parameter "useDMR"

    .prologue
    const/4 v0, 0x0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object v0, p0, Lorg/cybergarage/upnp/std/av/player/MediaPlayer;->renderer:Lorg/cybergarage/upnp/std/av/renderer/MediaRenderer;

    .line 29
    iput-object v0, p0, Lorg/cybergarage/upnp/std/av/player/MediaPlayer;->controller:Lorg/cybergarage/upnp/std/av/controller/MediaController;

    .line 37
    if-eqz p1, :cond_0

    .line 38
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/player/MediaPlayer;->enableRenderer()V

    .line 39
    :cond_0
    if-eqz p2, :cond_1

    .line 40
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/player/MediaPlayer;->enableController()V

    .line 41
    :cond_1
    return-void
.end method


# virtual methods
.method public disableController()V
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/cybergarage/upnp/std/av/player/MediaPlayer;->controller:Lorg/cybergarage/upnp/std/av/controller/MediaController;

    .line 66
    return-void
.end method

.method public disableRenderer()V
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/cybergarage/upnp/std/av/player/MediaPlayer;->renderer:Lorg/cybergarage/upnp/std/av/renderer/MediaRenderer;

    .line 91
    return-void
.end method

.method public enableController()V
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lorg/cybergarage/upnp/std/av/player/MediaPlayer;->controller:Lorg/cybergarage/upnp/std/av/controller/MediaController;

    if-nez v0, :cond_0

    .line 60
    new-instance v0, Lorg/cybergarage/upnp/std/av/controller/MediaController;

    invoke-direct {v0}, Lorg/cybergarage/upnp/std/av/controller/MediaController;-><init>()V

    iput-object v0, p0, Lorg/cybergarage/upnp/std/av/player/MediaPlayer;->controller:Lorg/cybergarage/upnp/std/av/controller/MediaController;

    .line 61
    :cond_0
    return-void
.end method

.method public enableRenderer()V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lorg/cybergarage/upnp/std/av/player/MediaPlayer;->renderer:Lorg/cybergarage/upnp/std/av/renderer/MediaRenderer;

    if-nez v0, :cond_0

    .line 85
    new-instance v0, Lorg/cybergarage/upnp/std/av/renderer/MediaRenderer;

    invoke-direct {v0}, Lorg/cybergarage/upnp/std/av/renderer/MediaRenderer;-><init>()V

    iput-object v0, p0, Lorg/cybergarage/upnp/std/av/player/MediaPlayer;->renderer:Lorg/cybergarage/upnp/std/av/renderer/MediaRenderer;

    .line 86
    :cond_0
    return-void
.end method

.method public getController()Lorg/cybergarage/upnp/std/av/controller/MediaController;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lorg/cybergarage/upnp/std/av/player/MediaPlayer;->controller:Lorg/cybergarage/upnp/std/av/controller/MediaController;

    return-object v0
.end method

.method public getRenderer()Lorg/cybergarage/upnp/std/av/renderer/MediaRenderer;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lorg/cybergarage/upnp/std/av/player/MediaPlayer;->renderer:Lorg/cybergarage/upnp/std/av/renderer/MediaRenderer;

    return-object v0
.end method

.method public isControllerEnable()Z
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lorg/cybergarage/upnp/std/av/player/MediaPlayer;->controller:Lorg/cybergarage/upnp/std/av/controller/MediaController;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRendererEnable()Z
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lorg/cybergarage/upnp/std/av/player/MediaPlayer;->renderer:Lorg/cybergarage/upnp/std/av/renderer/MediaRenderer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public start()V
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lorg/cybergarage/upnp/std/av/player/MediaPlayer;->renderer:Lorg/cybergarage/upnp/std/av/renderer/MediaRenderer;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lorg/cybergarage/upnp/std/av/player/MediaPlayer;->renderer:Lorg/cybergarage/upnp/std/av/renderer/MediaRenderer;

    invoke-virtual {v0}, Lorg/cybergarage/upnp/std/av/renderer/MediaRenderer;->start()Z

    .line 107
    :cond_0
    iget-object v0, p0, Lorg/cybergarage/upnp/std/av/player/MediaPlayer;->controller:Lorg/cybergarage/upnp/std/av/controller/MediaController;

    if-eqz v0, :cond_1

    .line 108
    iget-object v0, p0, Lorg/cybergarage/upnp/std/av/player/MediaPlayer;->controller:Lorg/cybergarage/upnp/std/av/controller/MediaController;

    invoke-virtual {v0}, Lorg/cybergarage/upnp/ControlPoint;->start()Z

    .line 109
    :cond_1
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lorg/cybergarage/upnp/std/av/player/MediaPlayer;->renderer:Lorg/cybergarage/upnp/std/av/renderer/MediaRenderer;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lorg/cybergarage/upnp/std/av/player/MediaPlayer;->renderer:Lorg/cybergarage/upnp/std/av/renderer/MediaRenderer;

    invoke-virtual {v0}, Lorg/cybergarage/upnp/std/av/renderer/MediaRenderer;->stop()Z

    .line 115
    :cond_0
    iget-object v0, p0, Lorg/cybergarage/upnp/std/av/player/MediaPlayer;->controller:Lorg/cybergarage/upnp/std/av/controller/MediaController;

    if-eqz v0, :cond_1

    .line 116
    iget-object v0, p0, Lorg/cybergarage/upnp/std/av/player/MediaPlayer;->controller:Lorg/cybergarage/upnp/std/av/controller/MediaController;

    invoke-virtual {v0}, Lorg/cybergarage/upnp/ControlPoint;->stop()Z

    .line 117
    :cond_1
    return-void
.end method
