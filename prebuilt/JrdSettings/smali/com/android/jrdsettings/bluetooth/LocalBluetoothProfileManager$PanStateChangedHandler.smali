.class Lcom/android/jrdsettings/bluetooth/LocalBluetoothProfileManager$PanStateChangedHandler;
.super Lcom/android/jrdsettings/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;
.source "LocalBluetoothProfileManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/jrdsettings/bluetooth/LocalBluetoothProfileManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PanStateChangedHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/jrdsettings/bluetooth/LocalBluetoothProfileManager;


# direct methods
.method constructor <init>(Lcom/android/jrdsettings/bluetooth/LocalBluetoothProfileManager;Lcom/android/jrdsettings/bluetooth/LocalBluetoothProfile;)V
    .locals 0
    .parameter
    .parameter "profile"

    .prologue
    .line 281
    iput-object p1, p0, Lcom/android/jrdsettings/bluetooth/LocalBluetoothProfileManager$PanStateChangedHandler;->this$0:Lcom/android/jrdsettings/bluetooth/LocalBluetoothProfileManager;

    .line 282
    invoke-direct {p0, p1, p2}, Lcom/android/jrdsettings/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;-><init>(Lcom/android/jrdsettings/bluetooth/LocalBluetoothProfileManager;Lcom/android/jrdsettings/bluetooth/LocalBluetoothProfile;)V

    .line 283
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V
    .locals 5
    .parameter "context"
    .parameter "intent"
    .parameter "device"

    .prologue
    .line 287
    iget-object v0, p0, Lcom/android/jrdsettings/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;->mProfile:Lcom/android/jrdsettings/bluetooth/LocalBluetoothProfile;

    check-cast v0, Lcom/android/jrdsettings/bluetooth/PanProfile;

    .line 288
    .local v0, panProfile:Lcom/android/jrdsettings/bluetooth/PanProfile;
    const-string v2, "android.bluetooth.pan.extra.LOCAL_ROLE"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 289
    .local v1, role:I
    invoke-virtual {v0, p3, v1}, Lcom/android/jrdsettings/bluetooth/PanProfile;->setLocalRole(Landroid/bluetooth/BluetoothDevice;I)V

    .line 290
    const-string v2, "LocalBluetoothProfileManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pan profile state change, role is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    invoke-super {p0, p1, p2, p3}, Lcom/android/jrdsettings/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;->onReceive(Landroid/content/Context;Landroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V

    .line 292
    return-void
.end method
