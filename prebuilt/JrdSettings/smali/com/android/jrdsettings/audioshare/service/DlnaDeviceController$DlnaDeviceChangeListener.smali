.class Lcom/android/jrdsettings/audioshare/service/DlnaDeviceController$DlnaDeviceChangeListener;
.super Ljava/lang/Object;
.source "DlnaDeviceController.java"

# interfaces
.implements Lorg/cybergarage/upnp/device/DeviceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/jrdsettings/audioshare/service/DlnaDeviceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DlnaDeviceChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/jrdsettings/audioshare/service/DlnaDeviceController;


# direct methods
.method private constructor <init>(Lcom/android/jrdsettings/audioshare/service/DlnaDeviceController;)V
    .locals 0
    .parameter

    .prologue
    .line 449
    iput-object p1, p0, Lcom/android/jrdsettings/audioshare/service/DlnaDeviceController$DlnaDeviceChangeListener;->this$0:Lcom/android/jrdsettings/audioshare/service/DlnaDeviceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/jrdsettings/audioshare/service/DlnaDeviceController;Lcom/android/jrdsettings/audioshare/service/DlnaDeviceController$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 449
    invoke-direct {p0, p1}, Lcom/android/jrdsettings/audioshare/service/DlnaDeviceController$DlnaDeviceChangeListener;-><init>(Lcom/android/jrdsettings/audioshare/service/DlnaDeviceController;)V

    return-void
.end method


# virtual methods
.method public deviceAdded(Lorg/cybergarage/upnp/Device;)V
    .locals 6
    .parameter "dev"

    .prologue
    .line 453
    const-string v3, "DlnaDeviceController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deviceAdded    dev = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lorg/cybergarage/upnp/Device;->getFriendlyName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    iget-object v3, p0, Lcom/android/jrdsettings/audioshare/service/DlnaDeviceController$DlnaDeviceChangeListener;->this$0:Lcom/android/jrdsettings/audioshare/service/DlnaDeviceController;

    #getter for: Lcom/android/jrdsettings/audioshare/service/DlnaDeviceController;->mDlnaEventListener:Lcom/android/jrdsettings/audioshare/service/OnDlnaEventListener;
    invoke-static {v3}, Lcom/android/jrdsettings/audioshare/service/DlnaDeviceController;->access$400(Lcom/android/jrdsettings/audioshare/service/DlnaDeviceController;)Lcom/android/jrdsettings/audioshare/service/OnDlnaEventListener;

    move-result-object v3

    if-eqz v3, :cond_1

    if-eqz p1, :cond_1

    .line 455
    invoke-virtual {p1}, Lorg/cybergarage/upnp/Device;->getDeviceType()Ljava/lang/String;

    move-result-object v1

    .line 456
    .local v1, deviceType:Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v3, "urn:schemas-upnp-org:device:MediaRenderer"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 459
    invoke-virtual {p1}, Lorg/cybergarage/upnp/Device;->getFriendlyName()Ljava/lang/String;

    move-result-object v0

    .line 460
    .local v0, deviceName:Ljava/lang/String;
    invoke-virtual {p1}, Lorg/cybergarage/upnp/Device;->getUDN()Ljava/lang/String;

    move-result-object v2

    .line 461
    .local v2, deviceUDN:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 462
    iget-object v3, p0, Lcom/android/jrdsettings/audioshare/service/DlnaDeviceController$DlnaDeviceChangeListener;->this$0:Lcom/android/jrdsettings/audioshare/service/DlnaDeviceController;

    #getter for: Lcom/android/jrdsettings/audioshare/service/DlnaDeviceController;->mDlnaEventListener:Lcom/android/jrdsettings/audioshare/service/OnDlnaEventListener;
    invoke-static {v3}, Lcom/android/jrdsettings/audioshare/service/DlnaDeviceController;->access$400(Lcom/android/jrdsettings/audioshare/service/DlnaDeviceController;)Lcom/android/jrdsettings/audioshare/service/OnDlnaEventListener;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v0, v2, v4}, Lcom/android/jrdsettings/audioshare/service/OnDlnaEventListener;->onDlnaDeviceAdded(Ljava/lang/String;Ljava/lang/String;I)V

    .line 469
    .end local v0           #deviceName:Ljava/lang/String;
    .end local v1           #deviceType:Ljava/lang/String;
    .end local v2           #deviceUDN:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 467
    :cond_1
    const-string v3, "DlnaDeviceController"

    const-string v4, "deviceAdded    null == mDlnaEventListener"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public deviceRemoved(Lorg/cybergarage/upnp/Device;)V
    .locals 5
    .parameter "dev"

    .prologue
    .line 473
    const-string v2, "DlnaDeviceController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deviceRemoved    dev = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lorg/cybergarage/upnp/Device;->getFriendlyName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    iget-object v2, p0, Lcom/android/jrdsettings/audioshare/service/DlnaDeviceController$DlnaDeviceChangeListener;->this$0:Lcom/android/jrdsettings/audioshare/service/DlnaDeviceController;

    #getter for: Lcom/android/jrdsettings/audioshare/service/DlnaDeviceController;->mDlnaEventListener:Lcom/android/jrdsettings/audioshare/service/OnDlnaEventListener;
    invoke-static {v2}, Lcom/android/jrdsettings/audioshare/service/DlnaDeviceController;->access$400(Lcom/android/jrdsettings/audioshare/service/DlnaDeviceController;)Lcom/android/jrdsettings/audioshare/service/OnDlnaEventListener;

    move-result-object v2

    if-eqz v2, :cond_1

    if-eqz p1, :cond_1

    .line 477
    invoke-virtual {p1}, Lorg/cybergarage/upnp/Device;->getFriendlyName()Ljava/lang/String;

    move-result-object v0

    .line 478
    .local v0, deviceName:Ljava/lang/String;
    invoke-virtual {p1}, Lorg/cybergarage/upnp/Device;->getUDN()Ljava/lang/String;

    move-result-object v1

    .line 479
    .local v1, deviceUDN:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 480
    iget-object v2, p0, Lcom/android/jrdsettings/audioshare/service/DlnaDeviceController$DlnaDeviceChangeListener;->this$0:Lcom/android/jrdsettings/audioshare/service/DlnaDeviceController;

    #getter for: Lcom/android/jrdsettings/audioshare/service/DlnaDeviceController;->mDlnaEventListener:Lcom/android/jrdsettings/audioshare/service/OnDlnaEventListener;
    invoke-static {v2}, Lcom/android/jrdsettings/audioshare/service/DlnaDeviceController;->access$400(Lcom/android/jrdsettings/audioshare/service/DlnaDeviceController;)Lcom/android/jrdsettings/audioshare/service/OnDlnaEventListener;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lcom/android/jrdsettings/audioshare/service/OnDlnaEventListener;->onDlnaDeviceRemoved(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    .end local v0           #deviceName:Ljava/lang/String;
    .end local v1           #deviceUDN:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 484
    :cond_1
    const-string v2, "DlnaDeviceController"

    const-string v3, "deviceRemoved    null == mDlnaEventListener"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
