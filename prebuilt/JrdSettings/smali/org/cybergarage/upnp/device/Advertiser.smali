.class public Lorg/cybergarage/upnp/device/Advertiser;
.super Lorg/cybergarage/util/ThreadCore;
.source "Advertiser.java"


# instance fields
.field private device:Lorg/cybergarage/upnp/Device;


# direct methods
.method public constructor <init>(Lorg/cybergarage/upnp/Device;)V
    .locals 0
    .parameter "dev"

    .prologue
    .line 30
    invoke-direct {p0}, Lorg/cybergarage/util/ThreadCore;-><init>()V

    .line 31
    invoke-virtual {p0, p1}, Lorg/cybergarage/upnp/device/Advertiser;->setDevice(Lorg/cybergarage/upnp/Device;)V

    .line 32
    return-void
.end method


# virtual methods
.method public getDevice()Lorg/cybergarage/upnp/Device;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lorg/cybergarage/upnp/device/Advertiser;->device:Lorg/cybergarage/upnp/Device;

    return-object v0
.end method

.method public run()V
    .locals 13

    .prologue
    .line 56
    invoke-virtual {p0}, Lorg/cybergarage/upnp/device/Advertiser;->getDevice()Lorg/cybergarage/upnp/Device;

    move-result-object v0

    .line 57
    .local v0, dev:Lorg/cybergarage/upnp/Device;
    invoke-virtual {v0}, Lorg/cybergarage/upnp/Device;->getLeaseTime()I

    move-result v5

    int-to-long v1, v5

    .line 59
    .local v1, leaseTime:J
    :goto_0
    invoke-virtual {p0}, Lorg/cybergarage/util/ThreadCore;->isRunnable()Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 60
    const-wide/16 v5, 0x4

    div-long v5, v1, v5

    long-to-float v7, v1

    float-to-double v7, v7

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v9

    const-wide/high16 v11, 0x3fd0

    mul-double/2addr v9, v11

    mul-double/2addr v7, v9

    double-to-long v7, v7

    add-long v3, v5, v7

    .line 61
    .local v3, notifyInterval:J
    const-wide/16 v5, 0x3e8

    mul-long/2addr v3, v5

    .line 63
    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    :goto_1
    invoke-virtual {v0}, Lorg/cybergarage/upnp/Device;->announce()V

    goto :goto_0

    .line 64
    :catch_0
    move-exception v5

    goto :goto_1

    .line 67
    .end local v3           #notifyInterval:J
    :cond_0
    return-void
.end method

.method public setDevice(Lorg/cybergarage/upnp/Device;)V
    .locals 0
    .parameter "dev"

    .prologue
    .line 42
    iput-object p1, p0, Lorg/cybergarage/upnp/device/Advertiser;->device:Lorg/cybergarage/upnp/Device;

    .line 43
    return-void
.end method
