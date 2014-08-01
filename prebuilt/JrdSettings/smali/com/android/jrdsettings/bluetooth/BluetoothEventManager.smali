.class final Lcom/android/jrdsettings/bluetooth/BluetoothEventManager;
.super Ljava/lang/Object;
.source "BluetoothEventManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/jrdsettings/bluetooth/BluetoothEventManager$DockEventHandler;,
        Lcom/android/jrdsettings/bluetooth/BluetoothEventManager$PairingCancelHandler;,
        Lcom/android/jrdsettings/bluetooth/BluetoothEventManager$UuidChangedHandler;,
        Lcom/android/jrdsettings/bluetooth/BluetoothEventManager$ClassChangedHandler;,
        Lcom/android/jrdsettings/bluetooth/BluetoothEventManager$BondStateChangedHandler;,
        Lcom/android/jrdsettings/bluetooth/BluetoothEventManager$NameChangedHandler;,
        Lcom/android/jrdsettings/bluetooth/BluetoothEventManager$DeviceDisappearedHandler;,
        Lcom/android/jrdsettings/bluetooth/BluetoothEventManager$DeviceFoundHandler;,
        Lcom/android/jrdsettings/bluetooth/BluetoothEventManager$ScanningStateChangedHandler;,
        Lcom/android/jrdsettings/bluetooth/BluetoothEventManager$AdapterStateChangedHandler;,
        Lcom/android/jrdsettings/bluetooth/BluetoothEventManager$Handler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BluetoothEventManager"


# instance fields
.field private final mAdapterIntentFilter:Landroid/content/IntentFilter;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mCallbacks:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/android/jrdsettings/bluetooth/BluetoothCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private final mDeviceManager:Lcom/android/jrdsettings/bluetooth/CachedBluetoothDeviceManager;

.field private final mHandlerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/jrdsettings/bluetooth/BluetoothEventManager$Handler;",
            ">;"
        }
    .end annotation
.end field

.field private final mLocalAdapter:Lcom/android/jrdsettings/bluetooth/LocalBluetoothAdapter;

.field private final mProfileIntentFilter:Landroid/content/IntentFilter;

.field private mProfileManager:Lcom/android/jrdsettings/bluetooth/LocalBluetoothProfileManager;


# direct methods
.method constructor <init>(Lcom/android/jrdsettings/bluetooth/LocalBluetoothAdapter;Lcom/android/jrdsettings/bluetooth/CachedBluetoothDeviceManager;Landroid/content/Context;)V
    .locals 4
    .parameter "adapter"
    .parameter "deviceManager"
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/jrdsettings/bluetooth/BluetoothEventManager;->mCallbacks:Ljava/util/Collection;

    .line 143
    new-instance v0, Lcom/android/jrdsettings/bluetooth/BluetoothEventManager$1;

    invoke-direct {v0, p0}, Lcom/android/jrdsettings/bluetooth/BluetoothEventManager$1;-><init>(Lcom/android/jrdsettings/bluetooth/BluetoothEventManager;)V

    iput-object v0, p0, Lcom/android/jrdsettings/bluetooth/BluetoothEventManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 78
    iput-object p1, p0, Lcom/android/jrdsettings/bluetooth/BluetoothEventManager;->mLocalAdapter:Lcom/android/jrdsettings/bluetooth/LocalBluetoothAdapter;

    .line 79
    iput-object p2, p0, Lcom/android/jrdsettings/bluetooth/BluetoothEventManager;->mDeviceManager:Lcom/android/jrdsettings/bluetooth/CachedBluetoothDeviceManager;

    .line 80
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/jrdsettings/bluetooth/BluetoothEventManager;->mAdapterIntentFilter:Landroid/content/IntentFilter;

    .line 81
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/jrdsettings/bluetooth/BluetoothEventManager;->mProfileIntentFilter:Landroid/content/IntentFilter;

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/jrdsettings/bluetooth/BluetoothEventManager;->mHandlerMap:Ljava/util/Map;

    .line 83
    iput-object p3, p0, Lcom/android/jrdsettings/bluetooth/BluetoothEventManager;->mContext:Landroid/content/Context;

    .line 86
    const-string v0, "android.bluetooth.adapter.action.STATE_CHANGED"

    new-instance v1, Lcom/android/jrdsettings/bluetooth/BluetoothEventManager$AdapterStateChangedHandler;

    invoke-direct {v1, p0, v3}, Lcom/android/jrdsettings/bluetooth/BluetoothEventManager$AdapterStateChangedHandler;-><init>(Lcom/android/jrdsettings/bluetooth/BluetoothEventManager;Lcom/android/jrdsettings/bluetooth/BluetoothEventManager$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/jrdsettings/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/android/jrdsettings/bluetooth/BluetoothEventManager$Handler;)V

    .line 89
    const-string v0, "android.bluetooth.adapter.action.DISCOVERY_STARTED"

    new-instance v1, Lcom/android/jrdsettings/bluetooth/BluetoothEventManager$ScanningStateChangedHandler;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/android/jrdsettings/bluetooth/BluetoothEventManager$ScanningStateChangedHandler;-><init>(Lcom/android/jrdsettings/bluetooth/BluetoothEventManager;Z)V

    invoke-virtual {p0, v0, v1}, Lcom/android/jrdsettings/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/android/jrdsettings/bluetooth/BluetoothEventManager$Handler;)V

    .line 90
    const-string v0, "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

    new-instance v1, Lcom/android/jrdsettings/bluetooth/BluetoothEventManager$ScanningStateChangedHandler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/jrdsettings/bluetooth/BluetoothEventManager$ScanningStateChangedHandler;-><init>(Lcom/android/jrdsettings/bluetooth/BluetoothEventManager;Z)V

    invoke-virtual {p0, v0, v1}, Lcom/android/jrdsettings/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/android/jrdsettings/bluetooth/BluetoothEventManager$Handler;)V

    .line 91
    const-string v0, "android.bluetooth.device.action.FOUND"

    new-instance v1, Lcom/android/jrdsettings/bluetooth/BluetoothEventManager$DeviceFoundHandler;

    invoke-direct {v1, p0, v3}, Lcom/android/jrdsettings/bluetooth/BluetoothEventManager$DeviceFoundHandler;-><init>(Lcom/android/jrdsettings/bluetooth/BluetoothEventManager;Lcom/android/jrdsettings/bluetooth/BluetoothEventManager$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/jrdsettings/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/android/jrdsettings/bluetooth/BluetoothEventManager$Handler;)V

    .line 92
    const-string v0, "android.bluetooth.device.action.DISAPPEARED"

    new-instance v1, Lcom/android/jrdsettings/bluetooth/BluetoothEventManager$DeviceDisappearedHandler;

    invoke-direct {v1, p0, v3}, Lcom/android/jrdsettings/bluetooth/BluetoothEventManager$DeviceDisappearedHandler;-><init>(Lcom/android/jrdsettings/bluetooth/BluetoothEventManager;Lcom/android/jrdsettings/bluetooth/BluetoothEventManager$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/jrdsettings/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/android/jrdsettings/bluetooth/BluetoothEventManager$Handler;)V

    .line 93
    const-string v0, "android.bluetooth.device.action.NAME_CHANGED"

    new-instance v1, Lcom/android/jrdsettings/bluetooth/BluetoothEventManager$NameChangedHandler;

    invoke-direct {v1, p0, v3}, Lcom/android/jrdsettings/bluetooth/BluetoothEventManager$NameChangedHandler;-><init>(Lcom/android/jrdsettings/bluetooth/BluetoothEventManager;Lcom/android/jrdsettings/bluetooth/BluetoothEventManager$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/jrdsettings/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/android/jrdsettings/bluetooth/BluetoothEventManager$Handler;)V

    .line 96
    const-string v0, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    new-instance v1, Lcom/android/jrdsettings/bluetooth/BluetoothEventManager$BondStateChangedHandler;

    invoke-direct {v1, p0, v3}, Lcom/android/jrdsettings/bluetooth/BluetoothEventManager$BondStateChangedHandler;-><init>(Lcom/android/jrdsettings/bluetooth/BluetoothEventManager;Lcom/android/jrdsettings/bluetooth/BluetoothEventManager$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/jrdsettings/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/android/jrdsettings/bluetooth/BluetoothEventManager$Handler;)V

    .line 97
    const-string v0, "android.bluetooth.device.action.PAIRING_CANCEL"

    new-instance v1, Lcom/android/jrdsettings/bluetooth/BluetoothEventManager$PairingCancelHandler;

    invoke-direct {v1, p0, v3}, Lcom/android/jrdsettings/bluetooth/BluetoothEventManager$PairingCancelHandler;-><init>(Lcom/android/jrdsettings/bluetooth/BluetoothEventManager;Lcom/android/jrdsettings/bluetooth/BluetoothEventManager$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/jrdsettings/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/android/jrdsettings/bluetooth/BluetoothEventManager$Handler;)V

    .line 100
    const-string v0, "android.bluetooth.device.action.CLASS_CHANGED"

    new-instance v1, Lcom/android/jrdsettings/bluetooth/BluetoothEventManager$ClassChangedHandler;

    invoke-direct {v1, p0, v3}, Lcom/android/jrdsettings/bluetooth/BluetoothEventManager$ClassChangedHandler;-><init>(Lcom/android/jrdsettings/bluetooth/BluetoothEventManager;Lcom/android/jrdsettings/bluetooth/BluetoothEventManager$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/jrdsettings/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/android/jrdsettings/bluetooth/BluetoothEventManager$Handler;)V

    .line 101
    const-string v0, "android.bluetooth.device.action.UUID"

    new-instance v1, Lcom/android/jrdsettings/bluetooth/BluetoothEventManager$UuidChangedHandler;

    invoke-direct {v1, p0, v3}, Lcom/android/jrdsettings/bluetooth/BluetoothEventManager$UuidChangedHandler;-><init>(Lcom/android/jrdsettings/bluetooth/BluetoothEventManager;Lcom/android/jrdsettings/bluetooth/BluetoothEventManager$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/jrdsettings/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/android/jrdsettings/bluetooth/BluetoothEventManager$Handler;)V

    .line 104
    const-string v0, "android.intent.action.DOCK_EVENT"

    new-instance v1, Lcom/android/jrdsettings/bluetooth/BluetoothEventManager$DockEventHandler;

    invoke-direct {v1, p0, v3}, Lcom/android/jrdsettings/bluetooth/BluetoothEventManager$DockEventHandler;-><init>(Lcom/android/jrdsettings/bluetooth/BluetoothEventManager;Lcom/android/jrdsettings/bluetooth/BluetoothEventManager$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/jrdsettings/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/android/jrdsettings/bluetooth/BluetoothEventManager$Handler;)V

    .line 106
    iget-object v0, p0, Lcom/android/jrdsettings/bluetooth/BluetoothEventManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/jrdsettings/bluetooth/BluetoothEventManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/jrdsettings/bluetooth/BluetoothEventManager;->mAdapterIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 107
    return-void
.end method

.method static synthetic access$1000(Lcom/android/jrdsettings/bluetooth/BluetoothEventManager;)Lcom/android/jrdsettings/bluetooth/LocalBluetoothAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/jrdsettings/bluetooth/BluetoothEventManager;->mLocalAdapter:Lcom/android/jrdsettings/bluetooth/LocalBluetoothAdapter;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/jrdsettings/bluetooth/BluetoothEventManager;)Ljava/util/Collection;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/jrdsettings/bluetooth/BluetoothEventManager;->mCallbacks:Ljava/util/Collection;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/jrdsettings/bluetooth/BluetoothEventManager;)Lcom/android/jrdsettings/bluetooth/CachedBluetoothDeviceManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/jrdsettings/bluetooth/BluetoothEventManager;->mDeviceManager:Lcom/android/jrdsettings/bluetooth/CachedBluetoothDeviceManager;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/jrdsettings/bluetooth/BluetoothEventManager;)Lcom/android/jrdsettings/bluetooth/LocalBluetoothProfileManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/jrdsettings/bluetooth/BluetoothEventManager;->mProfileManager:Lcom/android/jrdsettings/bluetooth/LocalBluetoothProfileManager;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/jrdsettings/bluetooth/BluetoothEventManager;Lcom/android/jrdsettings/bluetooth/CachedBluetoothDevice;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/android/jrdsettings/bluetooth/BluetoothEventManager;->dispatchDeviceAdded(Lcom/android/jrdsettings/bluetooth/CachedBluetoothDevice;)V

    return-void
.end method

.method static synthetic access$1500(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    invoke-static {p0}, Lcom/android/jrdsettings/bluetooth/BluetoothEventManager;->getDockedDeviceAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/jrdsettings/bluetooth/BluetoothEventManager;)Ljava/util/Map;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/jrdsettings/bluetooth/BluetoothEventManager;->mHandlerMap:Ljava/util/Map;

    return-object v0
.end method

.method private dispatchDeviceAdded(Lcom/android/jrdsettings/bluetooth/CachedBluetoothDevice;)V
    .locals 4
    .parameter "cachedDevice"

    .prologue
    .line 224
    iget-object v3, p0, Lcom/android/jrdsettings/bluetooth/BluetoothEventManager;->mCallbacks:Ljava/util/Collection;

    monitor-enter v3

    .line 225
    :try_start_0
    iget-object v2, p0, Lcom/android/jrdsettings/bluetooth/BluetoothEventManager;->mCallbacks:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/jrdsettings/bluetooth/BluetoothCallback;

    .line 226
    .local v0, callback:Lcom/android/jrdsettings/bluetooth/BluetoothCallback;
    invoke-interface {v0, p1}, Lcom/android/jrdsettings/bluetooth/BluetoothCallback;->onDeviceAdded(Lcom/android/jrdsettings/bluetooth/CachedBluetoothDevice;)V

    goto :goto_0

    .line 228
    .end local v0           #callback:Lcom/android/jrdsettings/bluetooth/BluetoothCallback;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 229
    return-void
.end method

.method private static getDockedDeviceAddress(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 130
    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.DOCK_EVENT"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    .line 131
    .local v1, i:Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 132
    const-string v4, "android.intent.extra.DOCK_STATE"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 133
    .local v2, state:I
    if-eqz v2, :cond_0

    .line 134
    const-string v4, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 135
    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    if-eqz v0, :cond_0

    .line 136
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    .line 140
    .end local v0           #device:Landroid/bluetooth/BluetoothDevice;
    .end local v2           #state:I
    :cond_0
    return-object v3
.end method


# virtual methods
.method addHandler(Ljava/lang/String;Lcom/android/jrdsettings/bluetooth/BluetoothEventManager$Handler;)V
    .locals 1
    .parameter "action"
    .parameter "handler"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/jrdsettings/bluetooth/BluetoothEventManager;->mHandlerMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    iget-object v0, p0, Lcom/android/jrdsettings/bluetooth/BluetoothEventManager;->mAdapterIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 64
    return-void
.end method

.method addProfileHandler(Ljava/lang/String;Lcom/android/jrdsettings/bluetooth/BluetoothEventManager$Handler;)V
    .locals 1
    .parameter "action"
    .parameter "handler"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/jrdsettings/bluetooth/BluetoothEventManager;->mHandlerMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    iget-object v0, p0, Lcom/android/jrdsettings/bluetooth/BluetoothEventManager;->mProfileIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 69
    return-void
.end method

.method readPairedDevices()Z
    .locals 8

    .prologue
    .line 382
    iget-object v5, p0, Lcom/android/jrdsettings/bluetooth/BluetoothEventManager;->mLocalAdapter:Lcom/android/jrdsettings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v5}, Lcom/android/jrdsettings/bluetooth/LocalBluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v0

    .line 383
    .local v0, bondedDevices:Ljava/util/Set;,"Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    if-nez v0, :cond_1

    .line 384
    const/4 v3, 0x0

    .line 397
    :cond_0
    return v3

    .line 387
    :cond_1
    const/4 v3, 0x0

    .line 388
    .local v3, deviceAdded:Z
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 389
    .local v2, device:Landroid/bluetooth/BluetoothDevice;
    iget-object v5, p0, Lcom/android/jrdsettings/bluetooth/BluetoothEventManager;->mDeviceManager:Lcom/android/jrdsettings/bluetooth/CachedBluetoothDeviceManager;

    invoke-virtual {v5, v2}, Lcom/android/jrdsettings/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/jrdsettings/bluetooth/CachedBluetoothDevice;

    move-result-object v1

    .line 390
    .local v1, cachedDevice:Lcom/android/jrdsettings/bluetooth/CachedBluetoothDevice;
    if-nez v1, :cond_2

    .line 391
    iget-object v5, p0, Lcom/android/jrdsettings/bluetooth/BluetoothEventManager;->mDeviceManager:Lcom/android/jrdsettings/bluetooth/CachedBluetoothDeviceManager;

    iget-object v6, p0, Lcom/android/jrdsettings/bluetooth/BluetoothEventManager;->mLocalAdapter:Lcom/android/jrdsettings/bluetooth/LocalBluetoothAdapter;

    iget-object v7, p0, Lcom/android/jrdsettings/bluetooth/BluetoothEventManager;->mProfileManager:Lcom/android/jrdsettings/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v5, v6, v7, v2}, Lcom/android/jrdsettings/bluetooth/CachedBluetoothDeviceManager;->addDevice(Lcom/android/jrdsettings/bluetooth/LocalBluetoothAdapter;Lcom/android/jrdsettings/bluetooth/LocalBluetoothProfileManager;Landroid/bluetooth/BluetoothDevice;)Lcom/android/jrdsettings/bluetooth/CachedBluetoothDevice;

    move-result-object v1

    .line 392
    invoke-direct {p0, v1}, Lcom/android/jrdsettings/bluetooth/BluetoothEventManager;->dispatchDeviceAdded(Lcom/android/jrdsettings/bluetooth/CachedBluetoothDevice;)V

    .line 393
    const/4 v3, 0x1

    goto :goto_0
.end method

.method registerCallback(Lcom/android/jrdsettings/bluetooth/BluetoothCallback;)V
    .locals 2
    .parameter "callback"

    .prologue
    .line 115
    iget-object v1, p0, Lcom/android/jrdsettings/bluetooth/BluetoothEventManager;->mCallbacks:Ljava/util/Collection;

    monitor-enter v1

    .line 116
    :try_start_0
    iget-object v0, p0, Lcom/android/jrdsettings/bluetooth/BluetoothEventManager;->mCallbacks:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 117
    monitor-exit v1

    .line 118
    return-void

    .line 117
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method registerProfileIntentReceiver()V
    .locals 3

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/jrdsettings/bluetooth/BluetoothEventManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/jrdsettings/bluetooth/BluetoothEventManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/jrdsettings/bluetooth/BluetoothEventManager;->mProfileIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 111
    return-void
.end method

.method setProfileManager(Lcom/android/jrdsettings/bluetooth/LocalBluetoothProfileManager;)V
    .locals 0
    .parameter "manager"

    .prologue
    .line 73
    iput-object p1, p0, Lcom/android/jrdsettings/bluetooth/BluetoothEventManager;->mProfileManager:Lcom/android/jrdsettings/bluetooth/LocalBluetoothProfileManager;

    .line 74
    return-void
.end method

.method unregisterCallback(Lcom/android/jrdsettings/bluetooth/BluetoothCallback;)V
    .locals 2
    .parameter "callback"

    .prologue
    .line 122
    iget-object v1, p0, Lcom/android/jrdsettings/bluetooth/BluetoothEventManager;->mCallbacks:Ljava/util/Collection;

    monitor-enter v1

    .line 123
    :try_start_0
    iget-object v0, p0, Lcom/android/jrdsettings/bluetooth/BluetoothEventManager;->mCallbacks:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 124
    monitor-exit v1

    .line 125
    return-void

    .line 124
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
