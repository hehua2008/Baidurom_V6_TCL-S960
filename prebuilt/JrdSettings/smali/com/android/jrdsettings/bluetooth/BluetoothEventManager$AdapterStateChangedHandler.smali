.class Lcom/android/jrdsettings/bluetooth/BluetoothEventManager$AdapterStateChangedHandler;
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
    name = "AdapterStateChangedHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/jrdsettings/bluetooth/BluetoothEventManager;


# direct methods
.method private constructor <init>(Lcom/android/jrdsettings/bluetooth/BluetoothEventManager;)V
    .locals 0
    .parameter

    .prologue
    .line 158
    iput-object p1, p0, Lcom/android/jrdsettings/bluetooth/BluetoothEventManager$AdapterStateChangedHandler;->this$0:Lcom/android/jrdsettings/bluetooth/BluetoothEventManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/jrdsettings/bluetooth/BluetoothEventManager;Lcom/android/jrdsettings/bluetooth/BluetoothEventManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 158
    invoke-direct {p0, p1}, Lcom/android/jrdsettings/bluetooth/BluetoothEventManager$AdapterStateChangedHandler;-><init>(Lcom/android/jrdsettings/bluetooth/BluetoothEventManager;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V
    .locals 5
    .parameter "context"
    .parameter "intent"
    .parameter "device"

    .prologue
    .line 161
    const-string v3, "android.bluetooth.adapter.extra.STATE"

    const/high16 v4, -0x8000

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 164
    .local v2, state:I
    iget-object v3, p0, Lcom/android/jrdsettings/bluetooth/BluetoothEventManager$AdapterStateChangedHandler;->this$0:Lcom/android/jrdsettings/bluetooth/BluetoothEventManager;

    #getter for: Lcom/android/jrdsettings/bluetooth/BluetoothEventManager;->mLocalAdapter:Lcom/android/jrdsettings/bluetooth/LocalBluetoothAdapter;
    invoke-static {v3}, Lcom/android/jrdsettings/bluetooth/BluetoothEventManager;->access$1000(Lcom/android/jrdsettings/bluetooth/BluetoothEventManager;)Lcom/android/jrdsettings/bluetooth/LocalBluetoothAdapter;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/jrdsettings/bluetooth/LocalBluetoothAdapter;->setBluetoothStateInt(I)V

    .line 166
    iget-object v3, p0, Lcom/android/jrdsettings/bluetooth/BluetoothEventManager$AdapterStateChangedHandler;->this$0:Lcom/android/jrdsettings/bluetooth/BluetoothEventManager;

    #getter for: Lcom/android/jrdsettings/bluetooth/BluetoothEventManager;->mCallbacks:Ljava/util/Collection;
    invoke-static {v3}, Lcom/android/jrdsettings/bluetooth/BluetoothEventManager;->access$1100(Lcom/android/jrdsettings/bluetooth/BluetoothEventManager;)Ljava/util/Collection;

    move-result-object v4

    monitor-enter v4

    .line 167
    :try_start_0
    iget-object v3, p0, Lcom/android/jrdsettings/bluetooth/BluetoothEventManager$AdapterStateChangedHandler;->this$0:Lcom/android/jrdsettings/bluetooth/BluetoothEventManager;

    #getter for: Lcom/android/jrdsettings/bluetooth/BluetoothEventManager;->mCallbacks:Ljava/util/Collection;
    invoke-static {v3}, Lcom/android/jrdsettings/bluetooth/BluetoothEventManager;->access$1100(Lcom/android/jrdsettings/bluetooth/BluetoothEventManager;)Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/jrdsettings/bluetooth/BluetoothCallback;

    .line 168
    .local v0, callback:Lcom/android/jrdsettings/bluetooth/BluetoothCallback;
    invoke-interface {v0, v2}, Lcom/android/jrdsettings/bluetooth/BluetoothCallback;->onBluetoothStateChanged(I)V

    goto :goto_0

    .line 170
    .end local v0           #callback:Lcom/android/jrdsettings/bluetooth/BluetoothCallback;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 172
    iget-object v3, p0, Lcom/android/jrdsettings/bluetooth/BluetoothEventManager$AdapterStateChangedHandler;->this$0:Lcom/android/jrdsettings/bluetooth/BluetoothEventManager;

    #getter for: Lcom/android/jrdsettings/bluetooth/BluetoothEventManager;->mDeviceManager:Lcom/android/jrdsettings/bluetooth/CachedBluetoothDeviceManager;
    invoke-static {v3}, Lcom/android/jrdsettings/bluetooth/BluetoothEventManager;->access$1200(Lcom/android/jrdsettings/bluetooth/BluetoothEventManager;)Lcom/android/jrdsettings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/jrdsettings/bluetooth/CachedBluetoothDeviceManager;->onBluetoothStateChanged(I)V

    .line 173
    return-void
.end method
