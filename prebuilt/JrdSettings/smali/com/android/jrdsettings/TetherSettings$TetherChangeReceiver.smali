.class Lcom/android/jrdsettings/TetherSettings$TetherChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "TetherSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/jrdsettings/TetherSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TetherChangeReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/jrdsettings/TetherSettings;


# direct methods
.method private constructor <init>(Lcom/android/jrdsettings/TetherSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 346
    iput-object p1, p0, Lcom/android/jrdsettings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/jrdsettings/TetherSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/jrdsettings/TetherSettings;Lcom/android/jrdsettings/TetherSettings$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 346
    invoke-direct {p0, p1}, Lcom/android/jrdsettings/TetherSettings$TetherChangeReceiver;-><init>(Lcom/android/jrdsettings/TetherSettings;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .parameter "content"
    .parameter "intent"

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 349
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 351
    .local v0, action:Ljava/lang/String;
    const-string v8, "TetherSettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "TetherChangeReceiver - onReceive, action is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    const-string v8, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 355
    const-string v8, "availableArray"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 357
    .local v2, available:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v8, "activeArray"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 359
    .local v1, active:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v8, "erroredArray"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .line 363
    .local v6, errored:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v8, p0, Lcom/android/jrdsettings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/jrdsettings/TetherSettings;

    const-string v9, "UnTetherDone"

    invoke-virtual {p2, v9, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    #setter for: Lcom/android/jrdsettings/TetherSettings;->mUsbUnTetherDone:Z
    invoke-static {v8, v9}, Lcom/android/jrdsettings/TetherSettings;->access$302(Lcom/android/jrdsettings/TetherSettings;Z)Z

    .line 364
    iget-object v8, p0, Lcom/android/jrdsettings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/jrdsettings/TetherSettings;

    const-string v9, "TetherDone"

    invoke-virtual {p2, v9, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    #setter for: Lcom/android/jrdsettings/TetherSettings;->mUsbTetherDone:Z
    invoke-static {v8, v9}, Lcom/android/jrdsettings/TetherSettings;->access$402(Lcom/android/jrdsettings/TetherSettings;Z)Z

    .line 365
    iget-object v8, p0, Lcom/android/jrdsettings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/jrdsettings/TetherSettings;

    const-string v9, "TetherFail"

    invoke-virtual {p2, v9, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    #setter for: Lcom/android/jrdsettings/TetherSettings;->mUsbTetherFail:Z
    invoke-static {v8, v9}, Lcom/android/jrdsettings/TetherSettings;->access$502(Lcom/android/jrdsettings/TetherSettings;Z)Z

    .line 368
    const-string v8, "TetherSettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mUsbUnTetherDone? :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/jrdsettings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/jrdsettings/TetherSettings;

    #getter for: Lcom/android/jrdsettings/TetherSettings;->mUsbUnTetherDone:Z
    invoke-static {v10}, Lcom/android/jrdsettings/TetherSettings;->access$300(Lcom/android/jrdsettings/TetherSettings;)Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " , mUsbTetherDonel? :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/jrdsettings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/jrdsettings/TetherSettings;

    #getter for: Lcom/android/jrdsettings/TetherSettings;->mUsbTetherDone:Z
    invoke-static {v10}, Lcom/android/jrdsettings/TetherSettings;->access$400(Lcom/android/jrdsettings/TetherSettings;)Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " , tether fail? :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/jrdsettings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/jrdsettings/TetherSettings;

    #getter for: Lcom/android/jrdsettings/TetherSettings;->mUsbTetherFail:Z
    invoke-static {v10}, Lcom/android/jrdsettings/TetherSettings;->access$500(Lcom/android/jrdsettings/TetherSettings;)Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    iget-object v11, p0, Lcom/android/jrdsettings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/jrdsettings/TetherSettings;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v8, v8, [Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/String;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v9

    new-array v9, v9, [Ljava/lang/String;

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/String;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v10

    new-array v10, v10, [Ljava/lang/String;

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/String;

    #calls: Lcom/android/jrdsettings/TetherSettings;->updateState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    invoke-static {v11, v8, v9, v10}, Lcom/android/jrdsettings/TetherSettings;->access$600(Lcom/android/jrdsettings/TetherSettings;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 451
    .end local v1           #active:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2           #available:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6           #errored:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    return-void

    .line 373
    :cond_1
    const-string v8, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 374
    iget-object v8, p0, Lcom/android/jrdsettings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/jrdsettings/TetherSettings;

    #setter for: Lcom/android/jrdsettings/TetherSettings;->mMassStorageActive:Z
    invoke-static {v8, v12}, Lcom/android/jrdsettings/TetherSettings;->access$702(Lcom/android/jrdsettings/TetherSettings;Z)Z

    .line 375
    iget-object v8, p0, Lcom/android/jrdsettings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/jrdsettings/TetherSettings;

    #calls: Lcom/android/jrdsettings/TetherSettings;->updateState()V
    invoke-static {v8}, Lcom/android/jrdsettings/TetherSettings;->access$800(Lcom/android/jrdsettings/TetherSettings;)V

    goto :goto_0

    .line 376
    :cond_2
    const-string v8, "android.intent.action.MEDIA_UNSHARED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 377
    iget-object v8, p0, Lcom/android/jrdsettings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/jrdsettings/TetherSettings;

    #setter for: Lcom/android/jrdsettings/TetherSettings;->mMassStorageActive:Z
    invoke-static {v8, v11}, Lcom/android/jrdsettings/TetherSettings;->access$702(Lcom/android/jrdsettings/TetherSettings;Z)Z

    .line 378
    iget-object v8, p0, Lcom/android/jrdsettings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/jrdsettings/TetherSettings;

    #calls: Lcom/android/jrdsettings/TetherSettings;->updateState()V
    invoke-static {v8}, Lcom/android/jrdsettings/TetherSettings;->access$800(Lcom/android/jrdsettings/TetherSettings;)V

    goto :goto_0

    .line 379
    :cond_3
    const-string v8, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 380
    iget-object v8, p0, Lcom/android/jrdsettings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/jrdsettings/TetherSettings;

    const-string v9, "connected"

    invoke-virtual {p2, v9, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    #setter for: Lcom/android/jrdsettings/TetherSettings;->mUsbConnected:Z
    invoke-static {v8, v9}, Lcom/android/jrdsettings/TetherSettings;->access$902(Lcom/android/jrdsettings/TetherSettings;Z)Z

    .line 382
    iget-object v8, p0, Lcom/android/jrdsettings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/jrdsettings/TetherSettings;

    const-string v9, "configured"

    invoke-virtual {p2, v9, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    #setter for: Lcom/android/jrdsettings/TetherSettings;->mUsbConfigured:Z
    invoke-static {v8, v9}, Lcom/android/jrdsettings/TetherSettings;->access$1002(Lcom/android/jrdsettings/TetherSettings;Z)Z

    .line 383
    iget-object v8, p0, Lcom/android/jrdsettings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/jrdsettings/TetherSettings;

    const-string v9, "USB_HW_DISCONNECTED"

    invoke-virtual {p2, v9, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    #setter for: Lcom/android/jrdsettings/TetherSettings;->mUsbHwDisconnected:Z
    invoke-static {v8, v9}, Lcom/android/jrdsettings/TetherSettings;->access$1102(Lcom/android/jrdsettings/TetherSettings;Z)Z

    .line 384
    iget-object v8, p0, Lcom/android/jrdsettings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/jrdsettings/TetherSettings;

    const-string v9, "USB_IS_PC_KNOW_ME"

    invoke-virtual {p2, v9, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    #setter for: Lcom/android/jrdsettings/TetherSettings;->mIsPcKnowMe:Z
    invoke-static {v8, v9}, Lcom/android/jrdsettings/TetherSettings;->access$1202(Lcom/android/jrdsettings/TetherSettings;Z)Z

    .line 386
    const-string v8, "TetherSettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "TetherChangeReceiver - ACTION_USB_STATE mUsbConnected: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/jrdsettings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/jrdsettings/TetherSettings;

    #getter for: Lcom/android/jrdsettings/TetherSettings;->mUsbConnected:Z
    invoke-static {v10}, Lcom/android/jrdsettings/TetherSettings;->access$900(Lcom/android/jrdsettings/TetherSettings;)Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", mUsbConfigured:  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/jrdsettings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/jrdsettings/TetherSettings;

    #getter for: Lcom/android/jrdsettings/TetherSettings;->mUsbConfigured:Z
    invoke-static {v10}, Lcom/android/jrdsettings/TetherSettings;->access$1000(Lcom/android/jrdsettings/TetherSettings;)Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", mUsbHwDisconnected: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/jrdsettings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/jrdsettings/TetherSettings;

    #getter for: Lcom/android/jrdsettings/TetherSettings;->mUsbHwDisconnected:Z
    invoke-static {v10}, Lcom/android/jrdsettings/TetherSettings;->access$1100(Lcom/android/jrdsettings/TetherSettings;)Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    iget-object v8, p0, Lcom/android/jrdsettings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/jrdsettings/TetherSettings;

    #calls: Lcom/android/jrdsettings/TetherSettings;->updateState()V
    invoke-static {v8}, Lcom/android/jrdsettings/TetherSettings;->access$800(Lcom/android/jrdsettings/TetherSettings;)V

    goto/16 :goto_0

    .line 390
    :cond_4
    const-string v8, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 391
    iget-object v8, p0, Lcom/android/jrdsettings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/jrdsettings/TetherSettings;

    #getter for: Lcom/android/jrdsettings/TetherSettings;->mBluetoothEnableForTether:Z
    invoke-static {v8}, Lcom/android/jrdsettings/TetherSettings;->access$1300(Lcom/android/jrdsettings/TetherSettings;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 392
    const-string v8, "android.bluetooth.adapter.extra.STATE"

    const/high16 v9, -0x8000

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    .line 418
    :cond_5
    :goto_1
    iget-object v8, p0, Lcom/android/jrdsettings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/jrdsettings/TetherSettings;

    #calls: Lcom/android/jrdsettings/TetherSettings;->updateState()V
    invoke-static {v8}, Lcom/android/jrdsettings/TetherSettings;->access$800(Lcom/android/jrdsettings/TetherSettings;)V

    goto/16 :goto_0

    .line 395
    :sswitch_0
    iget-object v8, p0, Lcom/android/jrdsettings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/jrdsettings/TetherSettings;

    #getter for: Lcom/android/jrdsettings/TetherSettings;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;
    invoke-static {v8}, Lcom/android/jrdsettings/TetherSettings;->access$000(Lcom/android/jrdsettings/TetherSettings;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/BluetoothPan;

    .line 396
    .local v4, bluetoothPan:Landroid/bluetooth/BluetoothPan;
    if-eqz v4, :cond_6

    .line 397
    invoke-virtual {v4, v12}, Landroid/bluetooth/BluetoothPan;->setBluetoothTethering(Z)V

    .line 398
    iget-object v8, p0, Lcom/android/jrdsettings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/jrdsettings/TetherSettings;

    #setter for: Lcom/android/jrdsettings/TetherSettings;->mBluetoothEnableForTether:Z
    invoke-static {v8, v11}, Lcom/android/jrdsettings/TetherSettings;->access$1302(Lcom/android/jrdsettings/TetherSettings;Z)Z

    .line 401
    :cond_6
    iget-object v8, p0, Lcom/android/jrdsettings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/jrdsettings/TetherSettings;

    #calls: Lcom/android/jrdsettings/TetherSettings;->BluetoothDunGetProxy()Landroid/bluetooth/BluetoothDun;
    invoke-static {v8}, Lcom/android/jrdsettings/TetherSettings;->access$1400(Lcom/android/jrdsettings/TetherSettings;)Landroid/bluetooth/BluetoothDun;

    move-result-object v3

    .line 402
    .local v3, bluetoothDun:Landroid/bluetooth/BluetoothDun;
    if-eqz v3, :cond_5

    .line 403
    invoke-virtual {v3, v12}, Landroid/bluetooth/BluetoothDun;->setBluetoothTethering(Z)V

    .line 404
    iget-object v8, p0, Lcom/android/jrdsettings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/jrdsettings/TetherSettings;

    #setter for: Lcom/android/jrdsettings/TetherSettings;->mBluetoothEnableForTether:Z
    invoke-static {v8, v11}, Lcom/android/jrdsettings/TetherSettings;->access$1302(Lcom/android/jrdsettings/TetherSettings;Z)Z

    goto :goto_1

    .line 411
    .end local v3           #bluetoothDun:Landroid/bluetooth/BluetoothDun;
    .end local v4           #bluetoothPan:Landroid/bluetooth/BluetoothPan;
    :sswitch_1
    iget-object v8, p0, Lcom/android/jrdsettings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/jrdsettings/TetherSettings;

    #setter for: Lcom/android/jrdsettings/TetherSettings;->mBluetoothEnableForTether:Z
    invoke-static {v8, v11}, Lcom/android/jrdsettings/TetherSettings;->access$1302(Lcom/android/jrdsettings/TetherSettings;Z)Z

    goto :goto_1

    .line 419
    :cond_7
    const-string v8, "mediatek.intent.action.USB_DATA_STATE"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 420
    const-string v8, "apn"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 421
    .local v5, dataApnKey:Ljava/lang/String;
    const-class v8, Lcom/android/internal/telephony/PhoneConstants$DataState;

    const-string v9, "state"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/PhoneConstants$DataState;

    .line 423
    .local v7, state:Lcom/android/internal/telephony/PhoneConstants$DataState;
    const-string v8, "TetherSettings"

    const-string v9, "receive USB_DATA_STATE"

    invoke-static {v8, v9}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    const-string v8, "TetherSettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "dataApnKey = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", state = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    const-string v8, "internet"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 426
    sget-object v8, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    if-ne v7, v8, :cond_8

    .line 427
    iget-object v8, p0, Lcom/android/jrdsettings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/jrdsettings/TetherSettings;

    #setter for: Lcom/android/jrdsettings/TetherSettings;->mUsbInternetSharing:Z
    invoke-static {v8, v12}, Lcom/android/jrdsettings/TetherSettings;->access$1502(Lcom/android/jrdsettings/TetherSettings;Z)Z

    .line 431
    :goto_2
    iget-object v8, p0, Lcom/android/jrdsettings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/jrdsettings/TetherSettings;

    #calls: Lcom/android/jrdsettings/TetherSettings;->updateState()V
    invoke-static {v8}, Lcom/android/jrdsettings/TetherSettings;->access$800(Lcom/android/jrdsettings/TetherSettings;)V

    goto/16 :goto_0

    .line 429
    :cond_8
    iget-object v8, p0, Lcom/android/jrdsettings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/jrdsettings/TetherSettings;

    #setter for: Lcom/android/jrdsettings/TetherSettings;->mUsbInternetSharing:Z
    invoke-static {v8, v11}, Lcom/android/jrdsettings/TetherSettings;->access$1502(Lcom/android/jrdsettings/TetherSettings;Z)Z

    goto :goto_2

    .line 433
    .end local v5           #dataApnKey:Ljava/lang/String;
    .end local v7           #state:Lcom/android/internal/telephony/PhoneConstants$DataState;
    :cond_9
    const-string v8, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 435
    const-string v8, "wifi_state"

    const/16 v9, 0xe

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 437
    .local v7, state:I
    const/16 v8, 0xd

    if-eq v7, v8, :cond_a

    const/16 v8, 0xb

    if-ne v7, v8, :cond_0

    .line 439
    :cond_a
    iget-object v8, p0, Lcom/android/jrdsettings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/jrdsettings/TetherSettings;

    #calls: Lcom/android/jrdsettings/TetherSettings;->updateIpv6Preference()V
    invoke-static {v8}, Lcom/android/jrdsettings/TetherSettings;->access$1600(Lcom/android/jrdsettings/TetherSettings;)V

    goto/16 :goto_0

    .line 442
    .end local v7           #state:I
    :cond_b
    const-string v8, "android.bluetooth.pan.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_c

    const-string v8, "android.bluetooth.profilemanager.action.STATE_CHANGED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 444
    :cond_c
    iget-object v8, p0, Lcom/android/jrdsettings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/jrdsettings/TetherSettings;

    #calls: Lcom/android/jrdsettings/TetherSettings;->updateState()V
    invoke-static {v8}, Lcom/android/jrdsettings/TetherSettings;->access$800(Lcom/android/jrdsettings/TetherSettings;)V

    goto/16 :goto_0

    .line 447
    :cond_d
    const-string v8, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 448
    iget-object v8, p0, Lcom/android/jrdsettings/TetherSettings$TetherChangeReceiver;->this$0:Lcom/android/jrdsettings/TetherSettings;

    #calls: Lcom/android/jrdsettings/TetherSettings;->updateState()V
    invoke-static {v8}, Lcom/android/jrdsettings/TetherSettings;->access$800(Lcom/android/jrdsettings/TetherSettings;)V

    goto/16 :goto_0

    .line 392
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0xa -> :sswitch_1
        0xc -> :sswitch_0
    .end sparse-switch
.end method
