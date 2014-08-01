.class final Lcom/android/jrdsettings/widget/SettingsAppWidgetProvider$BluetoothStateTracker;
.super Lcom/android/jrdsettings/widget/SettingsAppWidgetProvider$StateTracker;
.source "SettingsAppWidgetProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/jrdsettings/widget/SettingsAppWidgetProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BluetoothStateTracker"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 474
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/jrdsettings/widget/SettingsAppWidgetProvider$StateTracker;-><init>(Lcom/android/jrdsettings/widget/SettingsAppWidgetProvider$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/jrdsettings/widget/SettingsAppWidgetProvider$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 474
    invoke-direct {p0}, Lcom/android/jrdsettings/widget/SettingsAppWidgetProvider$BluetoothStateTracker;-><init>()V

    return-void
.end method

.method private static bluetoothStateToFiveState(I)I
    .locals 1
    .parameter "bluetoothState"

    .prologue
    .line 529
    packed-switch p0, :pswitch_data_0

    .line 539
    const/4 v0, 0x4

    :goto_0
    return v0

    .line 531
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 533
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 535
    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 537
    :pswitch_3
    const/4 v0, 0x3

    goto :goto_0

    .line 529
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public getActualState(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 486
    invoke-static {}, Lcom/android/jrdsettings/widget/SettingsAppWidgetProvider;->access$800()Lcom/android/jrdsettings/bluetooth/LocalBluetoothAdapter;

    move-result-object v1

    if-nez v1, :cond_1

    .line 487
    invoke-static {p1}, Lcom/android/jrdsettings/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/jrdsettings/bluetooth/LocalBluetoothManager;

    move-result-object v0

    .line 488
    .local v0, manager:Lcom/android/jrdsettings/bluetooth/LocalBluetoothManager;
    if-nez v0, :cond_0

    .line 489
    const/4 v1, 0x4

    .line 493
    .end local v0           #manager:Lcom/android/jrdsettings/bluetooth/LocalBluetoothManager;
    :goto_0
    return v1

    .line 491
    .restart local v0       #manager:Lcom/android/jrdsettings/bluetooth/LocalBluetoothManager;
    :cond_0
    invoke-virtual {v0}, Lcom/android/jrdsettings/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/jrdsettings/bluetooth/LocalBluetoothAdapter;

    move-result-object v1

    invoke-static {v1}, Lcom/android/jrdsettings/widget/SettingsAppWidgetProvider;->access$802(Lcom/android/jrdsettings/bluetooth/LocalBluetoothAdapter;)Lcom/android/jrdsettings/bluetooth/LocalBluetoothAdapter;

    .line 493
    .end local v0           #manager:Lcom/android/jrdsettings/bluetooth/LocalBluetoothManager;
    :cond_1
    invoke-static {}, Lcom/android/jrdsettings/widget/SettingsAppWidgetProvider;->access$800()Lcom/android/jrdsettings/bluetooth/LocalBluetoothAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/jrdsettings/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v1

    invoke-static {v1}, Lcom/android/jrdsettings/widget/SettingsAppWidgetProvider$BluetoothStateTracker;->bluetoothStateToFiveState(I)I

    move-result v1

    goto :goto_0
.end method

.method public getButtonDescription()I
    .locals 1

    .prologue
    .line 478
    const v0, 0x7f0907a5

    return v0
.end method

.method public getButtonId()I
    .locals 1

    .prologue
    .line 476
    const v0, 0x7f0b0258

    return v0
.end method

.method public getButtonImageId(Z)I
    .locals 1
    .parameter "on"

    .prologue
    .line 480
    if-eqz p1, :cond_0

    const v0, 0x7f020079

    :goto_0
    return v0

    :cond_0
    const v0, 0x7f020078

    goto :goto_0
.end method

.method public getContainerId()I
    .locals 1

    .prologue
    .line 475
    const v0, 0x7f0b0257

    return v0
.end method

.method public getIndicatorId()I
    .locals 1

    .prologue
    .line 477
    const v0, 0x7f0b0259

    return v0
.end method

.method public onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 517
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 522
    :goto_0
    return-void

    .line 520
    :cond_0
    const-string v1, "android.bluetooth.adapter.extra.STATE"

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 521
    .local v0, bluetoothState:I
    invoke-static {v0}, Lcom/android/jrdsettings/widget/SettingsAppWidgetProvider$BluetoothStateTracker;->bluetoothStateToFiveState(I)I

    move-result v1

    invoke-virtual {p0, p1, v1}, Lcom/android/jrdsettings/widget/SettingsAppWidgetProvider$StateTracker;->setCurrentState(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method protected requestStateChange(Landroid/content/Context;Z)V
    .locals 2
    .parameter "context"
    .parameter "desiredState"

    .prologue
    .line 498
    invoke-static {}, Lcom/android/jrdsettings/widget/SettingsAppWidgetProvider;->access$800()Lcom/android/jrdsettings/bluetooth/LocalBluetoothAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    .line 499
    const-string v0, "SettingsAppWidgetProvider"

    const-string v1, "No LocalBluetoothManager"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    :goto_0
    return-void

    .line 506
    :cond_0
    new-instance v0, Lcom/android/jrdsettings/widget/SettingsAppWidgetProvider$BluetoothStateTracker$1;

    invoke-direct {v0, p0, p2}, Lcom/android/jrdsettings/widget/SettingsAppWidgetProvider$BluetoothStateTracker$1;-><init>(Lcom/android/jrdsettings/widget/SettingsAppWidgetProvider$BluetoothStateTracker;Z)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
