.class public Lorg/cybergarage/upnp/device/Disposer;
.super Lorg/cybergarage/util/ThreadCore;
.source "Disposer.java"


# instance fields
.field private ctrlPoint:Lorg/cybergarage/upnp/ControlPoint;


# direct methods
.method public constructor <init>(Lorg/cybergarage/upnp/ControlPoint;)V
    .locals 0
    .parameter "ctrlp"

    .prologue
    .line 28
    invoke-direct {p0}, Lorg/cybergarage/util/ThreadCore;-><init>()V

    .line 29
    invoke-virtual {p0, p1}, Lorg/cybergarage/upnp/device/Disposer;->setControlPoint(Lorg/cybergarage/upnp/ControlPoint;)V

    .line 30
    return-void
.end method


# virtual methods
.method public getControlPoint()Lorg/cybergarage/upnp/ControlPoint;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lorg/cybergarage/upnp/device/Disposer;->ctrlPoint:Lorg/cybergarage/upnp/ControlPoint;

    return-object v0
.end method

.method public run()V
    .locals 7

    .prologue
    .line 54
    invoke-virtual {p0}, Lorg/cybergarage/upnp/device/Disposer;->getControlPoint()Lorg/cybergarage/upnp/ControlPoint;

    move-result-object v0

    .line 55
    .local v0, ctrlp:Lorg/cybergarage/upnp/ControlPoint;
    invoke-virtual {v0}, Lorg/cybergarage/upnp/ControlPoint;->getExpiredDeviceMonitoringInterval()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    mul-long v1, v3, v5

    .line 57
    .local v1, monitorInterval:J
    :goto_0
    invoke-virtual {p0}, Lorg/cybergarage/util/ThreadCore;->isRunnable()Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 59
    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    :goto_1
    invoke-virtual {v0}, Lorg/cybergarage/upnp/ControlPoint;->removeExpiredDevices()V

    goto :goto_0

    .line 60
    :catch_0
    move-exception v3

    goto :goto_1

    .line 64
    :cond_0
    return-void
.end method

.method public setControlPoint(Lorg/cybergarage/upnp/ControlPoint;)V
    .locals 0
    .parameter "ctrlp"

    .prologue
    .line 40
    iput-object p1, p0, Lorg/cybergarage/upnp/device/Disposer;->ctrlPoint:Lorg/cybergarage/upnp/ControlPoint;

    .line 41
    return-void
.end method
