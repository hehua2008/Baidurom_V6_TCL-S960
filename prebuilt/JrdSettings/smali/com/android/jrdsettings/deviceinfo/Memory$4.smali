.class Lcom/android/jrdsettings/deviceinfo/Memory$4;
.super Landroid/content/BroadcastReceiver;
.source "Memory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/jrdsettings/deviceinfo/Memory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/jrdsettings/deviceinfo/Memory;


# direct methods
.method constructor <init>(Lcom/android/jrdsettings/deviceinfo/Memory;)V
    .locals 0
    .parameter

    .prologue
    .line 499
    iput-object p1, p0, Lcom/android/jrdsettings/deviceinfo/Memory$4;->this$0:Lcom/android/jrdsettings/deviceinfo/Memory;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 502
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 503
    .local v0, action:Ljava/lang/String;
    const-string v9, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 504
    const-string v9, "connected"

    invoke-virtual {p2, v9, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 505
    .local v4, isUsbConnected:Z
    iget-object v9, p0, Lcom/android/jrdsettings/deviceinfo/Memory$4;->this$0:Lcom/android/jrdsettings/deviceinfo/Memory;

    #getter for: Lcom/android/jrdsettings/deviceinfo/Memory;->mUsbManager:Landroid/hardware/usb/UsbManager;
    invoke-static {v9}, Lcom/android/jrdsettings/deviceinfo/Memory;->access$800(Lcom/android/jrdsettings/deviceinfo/Memory;)Landroid/hardware/usb/UsbManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/hardware/usb/UsbManager;->getDefaultFunction()Ljava/lang/String;

    move-result-object v6

    .line 506
    .local v6, usbFunction:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/jrdsettings/deviceinfo/Memory$4;->this$0:Lcom/android/jrdsettings/deviceinfo/Memory;

    #getter for: Lcom/android/jrdsettings/deviceinfo/Memory;->mCategories:Ljava/util/ArrayList;
    invoke-static {v9}, Lcom/android/jrdsettings/deviceinfo/Memory;->access$100(Lcom/android/jrdsettings/deviceinfo/Memory;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;

    .line 507
    .local v1, category:Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;
    invoke-virtual {v1, v4, v6}, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->onUsbStateChanged(ZLjava/lang/String;)V

    goto :goto_0

    .line 511
    .end local v1           #category:Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;
    :cond_0
    const-string v9, "USB_HW_DISCONNECTED"

    invoke-virtual {p2, v9, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 512
    .local v3, isHwUsbDisconnected:Z
    iget-object v9, p0, Lcom/android/jrdsettings/deviceinfo/Memory$4;->this$0:Lcom/android/jrdsettings/deviceinfo/Memory;

    if-nez v3, :cond_2

    :goto_1
    #setter for: Lcom/android/jrdsettings/deviceinfo/Memory;->mIsUsbCableInserted:Z
    invoke-static {v9, v7}, Lcom/android/jrdsettings/deviceinfo/Memory;->access$902(Lcom/android/jrdsettings/deviceinfo/Memory;Z)Z

    .line 513
    const-string v7, "MemorySettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isHwUsbDisconnected :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ,set mIsUsbCableInserted "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/jrdsettings/deviceinfo/Memory$4;->this$0:Lcom/android/jrdsettings/deviceinfo/Memory;

    #getter for: Lcom/android/jrdsettings/deviceinfo/Memory;->mIsUsbCableInserted:Z
    invoke-static {v9}, Lcom/android/jrdsettings/deviceinfo/Memory;->access$900(Lcom/android/jrdsettings/deviceinfo/Memory;)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    iget-object v7, p0, Lcom/android/jrdsettings/deviceinfo/Memory$4;->this$0:Lcom/android/jrdsettings/deviceinfo/Memory;

    invoke-virtual {v7}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 528
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #isHwUsbDisconnected:Z
    .end local v4           #isUsbConnected:Z
    .end local v6           #usbFunction:Ljava/lang/String;
    :cond_1
    :goto_2
    return-void

    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v3       #isHwUsbDisconnected:Z
    .restart local v4       #isUsbConnected:Z
    .restart local v6       #usbFunction:Ljava/lang/String;
    :cond_2
    move v7, v8

    .line 512
    goto :goto_1

    .line 516
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #isHwUsbDisconnected:Z
    .end local v4           #isUsbConnected:Z
    .end local v6           #usbFunction:Ljava/lang/String;
    :cond_3
    const-string v9, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 517
    iget-object v7, p0, Lcom/android/jrdsettings/deviceinfo/Memory$4;->this$0:Lcom/android/jrdsettings/deviceinfo/Memory;

    #getter for: Lcom/android/jrdsettings/deviceinfo/Memory;->mCategories:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/android/jrdsettings/deviceinfo/Memory;->access$100(Lcom/android/jrdsettings/deviceinfo/Memory;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2       #i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;

    .line 518
    .restart local v1       #category:Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;
    invoke-virtual {v1}, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->onMediaScannerFinished()V

    goto :goto_3

    .line 522
    .end local v1           #category:Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_4
    const-string v9, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 523
    const-string v9, "plugged"

    invoke-virtual {p2, v9, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 524
    .local v5, pluginType:I
    iget-object v9, p0, Lcom/android/jrdsettings/deviceinfo/Memory$4;->this$0:Lcom/android/jrdsettings/deviceinfo/Memory;

    const/4 v10, 0x2

    if-ne v5, v10, :cond_5

    :goto_4
    #setter for: Lcom/android/jrdsettings/deviceinfo/Memory;->mIsUsbCableInserted:Z
    invoke-static {v9, v7}, Lcom/android/jrdsettings/deviceinfo/Memory;->access$902(Lcom/android/jrdsettings/deviceinfo/Memory;Z)Z

    .line 525
    const-string v7, "MemorySettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "pluginType :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " , set mIsUsbCableInserted "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/jrdsettings/deviceinfo/Memory$4;->this$0:Lcom/android/jrdsettings/deviceinfo/Memory;

    #getter for: Lcom/android/jrdsettings/deviceinfo/Memory;->mIsUsbCableInserted:Z
    invoke-static {v9}, Lcom/android/jrdsettings/deviceinfo/Memory;->access$900(Lcom/android/jrdsettings/deviceinfo/Memory;)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    iget-object v7, p0, Lcom/android/jrdsettings/deviceinfo/Memory$4;->this$0:Lcom/android/jrdsettings/deviceinfo/Memory;

    invoke-virtual {v7}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->invalidateOptionsMenu()V

    goto :goto_2

    :cond_5
    move v7, v8

    .line 524
    goto :goto_4
.end method
