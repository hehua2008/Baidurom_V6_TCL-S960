.class public final Lcom/android/jrdsettings/bluetooth/LocalBluetoothManager;
.super Ljava/lang/Object;
.source "LocalBluetoothManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LocalBluetoothManager"

.field private static sInstance:Lcom/android/jrdsettings/bluetooth/LocalBluetoothManager;


# instance fields
.field private final mCachedDeviceManager:Lcom/android/jrdsettings/bluetooth/CachedBluetoothDeviceManager;

.field private final mContext:Landroid/content/Context;

.field private mDiscoverableEnabler:Lcom/android/jrdsettings/bluetooth/BluetoothDiscoverableEnabler;

.field private final mEventManager:Lcom/android/jrdsettings/bluetooth/BluetoothEventManager;

.field private mForegroundActivity:Landroid/content/Context;

.field private final mLocalAdapter:Lcom/android/jrdsettings/bluetooth/LocalBluetoothAdapter;

.field private final mProfileManager:Lcom/android/jrdsettings/bluetooth/LocalBluetoothProfileManager;


# direct methods
.method private constructor <init>(Lcom/android/jrdsettings/bluetooth/LocalBluetoothAdapter;Landroid/content/Context;)V
    .locals 4
    .parameter "adapter"
    .parameter "context"

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p2, p0, Lcom/android/jrdsettings/bluetooth/LocalBluetoothManager;->mContext:Landroid/content/Context;

    .line 75
    iput-object p1, p0, Lcom/android/jrdsettings/bluetooth/LocalBluetoothManager;->mLocalAdapter:Lcom/android/jrdsettings/bluetooth/LocalBluetoothAdapter;

    .line 77
    new-instance v0, Lcom/android/jrdsettings/bluetooth/CachedBluetoothDeviceManager;

    invoke-direct {v0, p2}, Lcom/android/jrdsettings/bluetooth/CachedBluetoothDeviceManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/jrdsettings/bluetooth/LocalBluetoothManager;->mCachedDeviceManager:Lcom/android/jrdsettings/bluetooth/CachedBluetoothDeviceManager;

    .line 78
    new-instance v0, Lcom/android/jrdsettings/bluetooth/BluetoothEventManager;

    iget-object v1, p0, Lcom/android/jrdsettings/bluetooth/LocalBluetoothManager;->mLocalAdapter:Lcom/android/jrdsettings/bluetooth/LocalBluetoothAdapter;

    iget-object v2, p0, Lcom/android/jrdsettings/bluetooth/LocalBluetoothManager;->mCachedDeviceManager:Lcom/android/jrdsettings/bluetooth/CachedBluetoothDeviceManager;

    invoke-direct {v0, v1, v2, p2}, Lcom/android/jrdsettings/bluetooth/BluetoothEventManager;-><init>(Lcom/android/jrdsettings/bluetooth/LocalBluetoothAdapter;Lcom/android/jrdsettings/bluetooth/CachedBluetoothDeviceManager;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/jrdsettings/bluetooth/LocalBluetoothManager;->mEventManager:Lcom/android/jrdsettings/bluetooth/BluetoothEventManager;

    .line 80
    new-instance v0, Lcom/android/jrdsettings/bluetooth/LocalBluetoothProfileManager;

    iget-object v1, p0, Lcom/android/jrdsettings/bluetooth/LocalBluetoothManager;->mLocalAdapter:Lcom/android/jrdsettings/bluetooth/LocalBluetoothAdapter;

    iget-object v2, p0, Lcom/android/jrdsettings/bluetooth/LocalBluetoothManager;->mCachedDeviceManager:Lcom/android/jrdsettings/bluetooth/CachedBluetoothDeviceManager;

    iget-object v3, p0, Lcom/android/jrdsettings/bluetooth/LocalBluetoothManager;->mEventManager:Lcom/android/jrdsettings/bluetooth/BluetoothEventManager;

    invoke-direct {v0, p2, v1, v2, v3}, Lcom/android/jrdsettings/bluetooth/LocalBluetoothProfileManager;-><init>(Landroid/content/Context;Lcom/android/jrdsettings/bluetooth/LocalBluetoothAdapter;Lcom/android/jrdsettings/bluetooth/CachedBluetoothDeviceManager;Lcom/android/jrdsettings/bluetooth/BluetoothEventManager;)V

    iput-object v0, p0, Lcom/android/jrdsettings/bluetooth/LocalBluetoothManager;->mProfileManager:Lcom/android/jrdsettings/bluetooth/LocalBluetoothProfileManager;

    .line 82
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/jrdsettings/bluetooth/LocalBluetoothManager;
    .locals 4
    .parameter "context"

    .prologue
    .line 52
    const-class v3, Lcom/android/jrdsettings/bluetooth/LocalBluetoothManager;

    monitor-enter v3

    :try_start_0
    sget-object v2, Lcom/android/jrdsettings/bluetooth/LocalBluetoothManager;->sInstance:Lcom/android/jrdsettings/bluetooth/LocalBluetoothManager;

    if-nez v2, :cond_1

    .line 53
    invoke-static {}, Lcom/android/jrdsettings/bluetooth/LocalBluetoothAdapter;->getInstance()Lcom/android/jrdsettings/bluetooth/LocalBluetoothAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 54
    .local v0, adapter:Lcom/android/jrdsettings/bluetooth/LocalBluetoothAdapter;
    if-nez v0, :cond_0

    .line 55
    const/4 v2, 0x0

    .line 62
    .end local v0           #adapter:Lcom/android/jrdsettings/bluetooth/LocalBluetoothAdapter;
    :goto_0
    monitor-exit v3

    return-object v2

    .line 58
    .restart local v0       #adapter:Lcom/android/jrdsettings/bluetooth/LocalBluetoothAdapter;
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 59
    .local v1, appContext:Landroid/content/Context;
    new-instance v2, Lcom/android/jrdsettings/bluetooth/LocalBluetoothManager;

    invoke-direct {v2, v0, v1}, Lcom/android/jrdsettings/bluetooth/LocalBluetoothManager;-><init>(Lcom/android/jrdsettings/bluetooth/LocalBluetoothAdapter;Landroid/content/Context;)V

    sput-object v2, Lcom/android/jrdsettings/bluetooth/LocalBluetoothManager;->sInstance:Lcom/android/jrdsettings/bluetooth/LocalBluetoothManager;

    .line 62
    .end local v0           #adapter:Lcom/android/jrdsettings/bluetooth/LocalBluetoothAdapter;
    .end local v1           #appContext:Landroid/content/Context;
    :cond_1
    sget-object v2, Lcom/android/jrdsettings/bluetooth/LocalBluetoothManager;->sInstance:Lcom/android/jrdsettings/bluetooth/LocalBluetoothManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 52
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method


# virtual methods
.method public getBluetoothAdapter()Lcom/android/jrdsettings/bluetooth/LocalBluetoothAdapter;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/jrdsettings/bluetooth/LocalBluetoothManager;->mLocalAdapter:Lcom/android/jrdsettings/bluetooth/LocalBluetoothAdapter;

    return-object v0
.end method

.method getCachedDeviceManager()Lcom/android/jrdsettings/bluetooth/CachedBluetoothDeviceManager;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/jrdsettings/bluetooth/LocalBluetoothManager;->mCachedDeviceManager:Lcom/android/jrdsettings/bluetooth/CachedBluetoothDeviceManager;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/jrdsettings/bluetooth/LocalBluetoothManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getDiscoverableEnabler()Lcom/android/jrdsettings/bluetooth/BluetoothDiscoverableEnabler;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/jrdsettings/bluetooth/LocalBluetoothManager;->mDiscoverableEnabler:Lcom/android/jrdsettings/bluetooth/BluetoothDiscoverableEnabler;

    return-object v0
.end method

.method getEventManager()Lcom/android/jrdsettings/bluetooth/BluetoothEventManager;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/jrdsettings/bluetooth/LocalBluetoothManager;->mEventManager:Lcom/android/jrdsettings/bluetooth/BluetoothEventManager;

    return-object v0
.end method

.method public getForegroundActivity()Landroid/content/Context;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/jrdsettings/bluetooth/LocalBluetoothManager;->mForegroundActivity:Landroid/content/Context;

    return-object v0
.end method

.method getProfileManager()Lcom/android/jrdsettings/bluetooth/LocalBluetoothProfileManager;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/jrdsettings/bluetooth/LocalBluetoothManager;->mProfileManager:Lcom/android/jrdsettings/bluetooth/LocalBluetoothProfileManager;

    return-object v0
.end method

.method isForegroundActivity()Z
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/jrdsettings/bluetooth/LocalBluetoothManager;->mForegroundActivity:Landroid/content/Context;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDiscoverableEnabler(Lcom/android/jrdsettings/bluetooth/BluetoothDiscoverableEnabler;)V
    .locals 0
    .parameter "discoverableEnabler"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/jrdsettings/bluetooth/LocalBluetoothManager;->mDiscoverableEnabler:Lcom/android/jrdsettings/bluetooth/BluetoothDiscoverableEnabler;

    .line 67
    return-void
.end method

.method declared-synchronized setForegroundActivity(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 101
    monitor-enter p0

    if-eqz p1, :cond_1

    .line 102
    :try_start_0
    const-string v0, "LocalBluetoothManager"

    const-string v1, "setting foreground activity to non-null context"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iput-object p1, p0, Lcom/android/jrdsettings/bluetooth/LocalBluetoothManager;->mForegroundActivity:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 105
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/jrdsettings/bluetooth/LocalBluetoothManager;->mForegroundActivity:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 106
    const-string v0, "LocalBluetoothManager"

    const-string v1, "setting foreground activity to null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/jrdsettings/bluetooth/LocalBluetoothManager;->mForegroundActivity:Landroid/content/Context;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 101
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
