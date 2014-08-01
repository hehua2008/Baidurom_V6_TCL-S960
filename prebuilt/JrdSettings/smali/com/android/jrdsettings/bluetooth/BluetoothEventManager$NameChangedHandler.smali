.class Lcom/android/jrdsettings/bluetooth/BluetoothEventManager$NameChangedHandler;
.super Ljava/lang/Object;
.source "BluetoothEventManager.java"

# interfaces
.implements Lcom/android/jrdsettings/bluetooth/BluetoothEventManager$Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/jrdsettings/bluetooth/BluetoothEventManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NameChangedHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/jrdsettings/bluetooth/BluetoothEventManager;


# direct methods
.method private constructor <init>(Lcom/android/jrdsettings/bluetooth/BluetoothEventManager;)V
    .locals 0
    .parameter

    .prologue
    .line 249
    iput-object p1, p0, Lcom/android/jrdsettings/bluetooth/BluetoothEventManager$NameChangedHandler;->this$0:Lcom/android/jrdsettings/bluetooth/BluetoothEventManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/jrdsettings/bluetooth/BluetoothEventManager;Lcom/android/jrdsettings/bluetooth/BluetoothEventManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 249
    invoke-direct {p0, p1}, Lcom/android/jrdsettings/bluetooth/BluetoothEventManager$NameChangedHandler;-><init>(Lcom/android/jrdsettings/bluetooth/BluetoothEventManager;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V
    .locals 1
    .parameter "context"
    .parameter "intent"
    .parameter "device"

    .prologue
    .line 252
    iget-object v0, p0, Lcom/android/jrdsettings/bluetooth/BluetoothEventManager$NameChangedHandler;->this$0:Lcom/android/jrdsettings/bluetooth/BluetoothEventManager;

    #getter for: Lcom/android/jrdsettings/bluetooth/BluetoothEventManager;->mDeviceManager:Lcom/android/jrdsettings/bluetooth/CachedBluetoothDeviceManager;
    invoke-static {v0}, Lcom/android/jrdsettings/bluetooth/BluetoothEventManager;->access$1200(Lcom/android/jrdsettings/bluetooth/BluetoothEventManager;)Lcom/android/jrdsettings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/android/jrdsettings/bluetooth/CachedBluetoothDeviceManager;->onDeviceNameUpdated(Landroid/bluetooth/BluetoothDevice;)V

    .line 253
    return-void
.end method
