.class final Lcom/android/jrdsettings/bluetooth/LocalBluetoothProfileManager;
.super Ljava/lang/Object;
.source "LocalBluetoothProfileManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/jrdsettings/bluetooth/LocalBluetoothProfileManager$PanStateChangedHandler;,
        Lcom/android/jrdsettings/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;,
        Lcom/android/jrdsettings/bluetooth/LocalBluetoothProfileManager$ServiceListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LocalBluetoothProfileManager"

.field private static sInstance:Lcom/android/jrdsettings/bluetooth/LocalBluetoothProfileManager;


# instance fields
.field private mA2dpProfile:Lcom/android/jrdsettings/bluetooth/A2dpProfile;

.field private final mContext:Landroid/content/Context;

.field private final mDeviceManager:Lcom/android/jrdsettings/bluetooth/CachedBluetoothDeviceManager;

.field private final mEventManager:Lcom/android/jrdsettings/bluetooth/BluetoothEventManager;

.field private mFtpProfile:Lcom/android/jrdsettings/bluetooth/FtpProfile;

.field private mHeadsetProfile:Lcom/android/jrdsettings/bluetooth/HeadsetProfile;

.field private mHidProfile:Lcom/android/jrdsettings/bluetooth/HidProfile;

.field private final mLocalAdapter:Lcom/android/jrdsettings/bluetooth/LocalBluetoothAdapter;

.field private mOppProfile:Lcom/android/jrdsettings/bluetooth/OppProfile;

.field private mPanProfile:Lcom/android/jrdsettings/bluetooth/PanProfile;

.field private mPbapProfile:Lcom/android/jrdsettings/bluetooth/PbapServerProfile;

.field private final mProfileNameMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/jrdsettings/bluetooth/LocalBluetoothProfile;",
            ">;"
        }
    .end annotation
.end field

.field private final mServiceListeners:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/android/jrdsettings/bluetooth/LocalBluetoothProfileManager$ServiceListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/jrdsettings/bluetooth/LocalBluetoothAdapter;Lcom/android/jrdsettings/bluetooth/CachedBluetoothDeviceManager;Lcom/android/jrdsettings/bluetooth/BluetoothEventManager;)V
    .locals 8
    .parameter "context"
    .parameter "adapter"
    .parameter "deviceManager"
    .parameter "eventManager"

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lcom/android/jrdsettings/bluetooth/LocalBluetoothProfileManager;->mProfileNameMap:Ljava/util/Map;

    .line 199
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/jrdsettings/bluetooth/LocalBluetoothProfileManager;->mServiceListeners:Ljava/util/Collection;

    .line 101
    iput-object p1, p0, Lcom/android/jrdsettings/bluetooth/LocalBluetoothProfileManager;->mContext:Landroid/content/Context;

    .line 103
    iput-object p2, p0, Lcom/android/jrdsettings/bluetooth/LocalBluetoothProfileManager;->mLocalAdapter:Lcom/android/jrdsettings/bluetooth/LocalBluetoothAdapter;

    .line 104
    iput-object p3, p0, Lcom/android/jrdsettings/bluetooth/LocalBluetoothProfileManager;->mDeviceManager:Lcom/android/jrdsettings/bluetooth/CachedBluetoothDeviceManager;

    .line 105
    iput-object p4, p0, Lcom/android/jrdsettings/bluetooth/LocalBluetoothProfileManager;->mEventManager:Lcom/android/jrdsettings/bluetooth/BluetoothEventManager;

    .line 107
    iget-object v5, p0, Lcom/android/jrdsettings/bluetooth/LocalBluetoothProfileManager;->mLocalAdapter:Lcom/android/jrdsettings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v5, p0}, Lcom/android/jrdsettings/bluetooth/LocalBluetoothAdapter;->setProfileManager(Lcom/android/jrdsettings/bluetooth/LocalBluetoothProfileManager;)V

    .line 108
    iget-object v5, p0, Lcom/android/jrdsettings/bluetooth/LocalBluetoothProfileManager;->mEventManager:Lcom/android/jrdsettings/bluetooth/BluetoothEventManager;

    invoke-virtual {v5, p0}, Lcom/android/jrdsettings/bluetooth/BluetoothEventManager;->setProfileManager(Lcom/android/jrdsettings/bluetooth/LocalBluetoothProfileManager;)V

    .line 110
    invoke-virtual {p2}, Lcom/android/jrdsettings/bluetooth/LocalBluetoothAdapter;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v4

    .line 113
    .local v4, uuids:[Landroid/os/ParcelUuid;
    if-eqz v4, :cond_1

    .line 114
    const-string v5, "LocalBluetoothProfileManager"

    const-string v6, "bluetooth adapter uuid: "

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    move-object v0, v4

    .local v0, arr$:[Landroid/os/ParcelUuid;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 116
    .local v3, uuid:Landroid/os/ParcelUuid;
    const-string v5, "LocalBluetoothProfileManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 118
    .end local v3           #uuid:Landroid/os/ParcelUuid;
    :cond_0
    invoke-virtual {p0, v4}, Lcom/android/jrdsettings/bluetooth/LocalBluetoothProfileManager;->updateLocalProfiles([Landroid/os/ParcelUuid;)V

    .line 146
    .end local v0           #arr$:[Landroid/os/ParcelUuid;
    .end local v1           #i$:I
    .end local v2           #len$:I
    :cond_1
    const-string v5, "LocalBluetoothProfileManager"

    const-string v6, "LocalBluetoothProfileManager construction complete"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    return-void
.end method

.method static synthetic access$000(Lcom/android/jrdsettings/bluetooth/LocalBluetoothProfileManager;)Lcom/android/jrdsettings/bluetooth/CachedBluetoothDeviceManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/jrdsettings/bluetooth/LocalBluetoothProfileManager;->mDeviceManager:Lcom/android/jrdsettings/bluetooth/CachedBluetoothDeviceManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/jrdsettings/bluetooth/LocalBluetoothProfileManager;)Lcom/android/jrdsettings/bluetooth/LocalBluetoothAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/jrdsettings/bluetooth/LocalBluetoothProfileManager;->mLocalAdapter:Lcom/android/jrdsettings/bluetooth/LocalBluetoothAdapter;

    return-object v0
.end method

.method private addPanProfile(Lcom/android/jrdsettings/bluetooth/LocalBluetoothProfile;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "profile"
    .parameter "profileName"
    .parameter "stateChangedAction"

    .prologue
    .line 210
    iget-object v0, p0, Lcom/android/jrdsettings/bluetooth/LocalBluetoothProfileManager;->mEventManager:Lcom/android/jrdsettings/bluetooth/BluetoothEventManager;

    new-instance v1, Lcom/android/jrdsettings/bluetooth/LocalBluetoothProfileManager$PanStateChangedHandler;

    invoke-direct {v1, p0, p1}, Lcom/android/jrdsettings/bluetooth/LocalBluetoothProfileManager$PanStateChangedHandler;-><init>(Lcom/android/jrdsettings/bluetooth/LocalBluetoothProfileManager;Lcom/android/jrdsettings/bluetooth/LocalBluetoothProfile;)V

    invoke-virtual {v0, p3, v1}, Lcom/android/jrdsettings/bluetooth/BluetoothEventManager;->addProfileHandler(Ljava/lang/String;Lcom/android/jrdsettings/bluetooth/BluetoothEventManager$Handler;)V

    .line 212
    iget-object v0, p0, Lcom/android/jrdsettings/bluetooth/LocalBluetoothProfileManager;->mProfileNameMap:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    return-void
.end method

.method private addProfile(Lcom/android/jrdsettings/bluetooth/LocalBluetoothProfile;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "profile"
    .parameter "profileName"
    .parameter "stateChangedAction"

    .prologue
    .line 204
    iget-object v0, p0, Lcom/android/jrdsettings/bluetooth/LocalBluetoothProfileManager;->mEventManager:Lcom/android/jrdsettings/bluetooth/BluetoothEventManager;

    new-instance v1, Lcom/android/jrdsettings/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;

    invoke-direct {v1, p0, p1}, Lcom/android/jrdsettings/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;-><init>(Lcom/android/jrdsettings/bluetooth/LocalBluetoothProfileManager;Lcom/android/jrdsettings/bluetooth/LocalBluetoothProfile;)V

    invoke-virtual {v0, p3, v1}, Lcom/android/jrdsettings/bluetooth/BluetoothEventManager;->addProfileHandler(Ljava/lang/String;Lcom/android/jrdsettings/bluetooth/BluetoothEventManager$Handler;)V

    .line 205
    iget-object v0, p0, Lcom/android/jrdsettings/bluetooth/LocalBluetoothProfileManager;->mProfileNameMap:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    return-void
.end method


# virtual methods
.method addServiceListener(Lcom/android/jrdsettings/bluetooth/LocalBluetoothProfileManager$ServiceListener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 297
    iget-object v0, p0, Lcom/android/jrdsettings/bluetooth/LocalBluetoothProfileManager;->mServiceListeners:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 298
    return-void
.end method

.method callServiceConnectedListeners()V
    .locals 3

    .prologue
    .line 307
    iget-object v2, p0, Lcom/android/jrdsettings/bluetooth/LocalBluetoothProfileManager;->mServiceListeners:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/jrdsettings/bluetooth/LocalBluetoothProfileManager$ServiceListener;

    .line 308
    .local v1, l:Lcom/android/jrdsettings/bluetooth/LocalBluetoothProfileManager$ServiceListener;
    invoke-interface {v1}, Lcom/android/jrdsettings/bluetooth/LocalBluetoothProfileManager$ServiceListener;->onServiceConnected()V

    goto :goto_0

    .line 310
    .end local v1           #l:Lcom/android/jrdsettings/bluetooth/LocalBluetoothProfileManager$ServiceListener;
    :cond_0
    return-void
.end method

.method callServiceDisconnectedListeners()V
    .locals 3

    .prologue
    .line 314
    iget-object v2, p0, Lcom/android/jrdsettings/bluetooth/LocalBluetoothProfileManager;->mServiceListeners:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/jrdsettings/bluetooth/LocalBluetoothProfileManager$ServiceListener;

    .line 315
    .local v1, listener:Lcom/android/jrdsettings/bluetooth/LocalBluetoothProfileManager$ServiceListener;
    invoke-interface {v1}, Lcom/android/jrdsettings/bluetooth/LocalBluetoothProfileManager$ServiceListener;->onServiceDisconnected()V

    goto :goto_0

    .line 317
    .end local v1           #listener:Lcom/android/jrdsettings/bluetooth/LocalBluetoothProfileManager$ServiceListener;
    :cond_0
    return-void
.end method

.method getA2dpProfile()Lcom/android/jrdsettings/bluetooth/A2dpProfile;
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Lcom/android/jrdsettings/bluetooth/LocalBluetoothProfileManager;->mA2dpProfile:Lcom/android/jrdsettings/bluetooth/A2dpProfile;

    return-object v0
.end method

.method getHeadsetProfile()Lcom/android/jrdsettings/bluetooth/HeadsetProfile;
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Lcom/android/jrdsettings/bluetooth/LocalBluetoothProfileManager;->mHeadsetProfile:Lcom/android/jrdsettings/bluetooth/HeadsetProfile;

    return-object v0
.end method

.method getPbapProfile()Lcom/android/jrdsettings/bluetooth/PbapServerProfile;
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Lcom/android/jrdsettings/bluetooth/LocalBluetoothProfileManager;->mPbapProfile:Lcom/android/jrdsettings/bluetooth/PbapServerProfile;

    return-object v0
.end method

.method getProfileByName(Ljava/lang/String;)Lcom/android/jrdsettings/bluetooth/LocalBluetoothProfile;
    .locals 1
    .parameter "name"

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/jrdsettings/bluetooth/LocalBluetoothProfileManager;->mProfileNameMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/jrdsettings/bluetooth/LocalBluetoothProfile;

    return-object v0
.end method

.method public declared-synchronized isManagerReady()Z
    .locals 2

    .prologue
    .line 323
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/jrdsettings/bluetooth/LocalBluetoothProfileManager;->mHeadsetProfile:Lcom/android/jrdsettings/bluetooth/HeadsetProfile;

    .line 324
    .local v0, profile:Lcom/android/jrdsettings/bluetooth/LocalBluetoothProfile;
    if-eqz v0, :cond_0

    .line 325
    invoke-interface {v0}, Lcom/android/jrdsettings/bluetooth/LocalBluetoothProfile;->isProfileReady()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 331
    :goto_0
    monitor-exit p0

    return v1

    .line 327
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/jrdsettings/bluetooth/LocalBluetoothProfileManager;->mA2dpProfile:Lcom/android/jrdsettings/bluetooth/A2dpProfile;

    .line 328
    if-eqz v0, :cond_1

    .line 329
    invoke-interface {v0}, Lcom/android/jrdsettings/bluetooth/LocalBluetoothProfile;->isProfileReady()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    goto :goto_0

    .line 331
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 323
    .end local v0           #profile:Lcom/android/jrdsettings/bluetooth/LocalBluetoothProfile;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method removeServiceListener(Lcom/android/jrdsettings/bluetooth/LocalBluetoothProfileManager$ServiceListener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 302
    iget-object v0, p0, Lcom/android/jrdsettings/bluetooth/LocalBluetoothProfileManager;->mServiceListeners:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 303
    return-void
.end method

.method setBluetoothStateOn()V
    .locals 4

    .prologue
    .line 222
    iget-object v1, p0, Lcom/android/jrdsettings/bluetooth/LocalBluetoothProfileManager;->mHidProfile:Lcom/android/jrdsettings/bluetooth/HidProfile;

    if-nez v1, :cond_0

    .line 223
    new-instance v1, Lcom/android/jrdsettings/bluetooth/HidProfile;

    iget-object v2, p0, Lcom/android/jrdsettings/bluetooth/LocalBluetoothProfileManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/jrdsettings/bluetooth/LocalBluetoothProfileManager;->mLocalAdapter:Lcom/android/jrdsettings/bluetooth/LocalBluetoothAdapter;

    invoke-direct {v1, v2, v3}, Lcom/android/jrdsettings/bluetooth/HidProfile;-><init>(Landroid/content/Context;Lcom/android/jrdsettings/bluetooth/LocalBluetoothAdapter;)V

    iput-object v1, p0, Lcom/android/jrdsettings/bluetooth/LocalBluetoothProfileManager;->mHidProfile:Lcom/android/jrdsettings/bluetooth/HidProfile;

    .line 224
    iget-object v1, p0, Lcom/android/jrdsettings/bluetooth/LocalBluetoothProfileManager;->mHidProfile:Lcom/android/jrdsettings/bluetooth/HidProfile;

    const-string v2, "HID"

    const-string v3, "android.bluetooth.input.profile.action.CONNECTION_STATE_CHANGED"

    invoke-direct {p0, v1, v2, v3}, Lcom/android/jrdsettings/bluetooth/LocalBluetoothProfileManager;->addProfile(Lcom/android/jrdsettings/bluetooth/LocalBluetoothProfile;Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    :cond_0
    iget-object v1, p0, Lcom/android/jrdsettings/bluetooth/LocalBluetoothProfileManager;->mPanProfile:Lcom/android/jrdsettings/bluetooth/PanProfile;

    if-nez v1, :cond_1

    .line 228
    new-instance v1, Lcom/android/jrdsettings/bluetooth/PanProfile;

    iget-object v2, p0, Lcom/android/jrdsettings/bluetooth/LocalBluetoothProfileManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/jrdsettings/bluetooth/PanProfile;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/jrdsettings/bluetooth/LocalBluetoothProfileManager;->mPanProfile:Lcom/android/jrdsettings/bluetooth/PanProfile;

    .line 229
    iget-object v1, p0, Lcom/android/jrdsettings/bluetooth/LocalBluetoothProfileManager;->mPanProfile:Lcom/android/jrdsettings/bluetooth/PanProfile;

    const-string v2, "PAN"

    const-string v3, "android.bluetooth.pan.profile.action.CONNECTION_STATE_CHANGED"

    invoke-direct {p0, v1, v2, v3}, Lcom/android/jrdsettings/bluetooth/LocalBluetoothProfileManager;->addPanProfile(Lcom/android/jrdsettings/bluetooth/LocalBluetoothProfile;Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    :cond_1
    iget-object v1, p0, Lcom/android/jrdsettings/bluetooth/LocalBluetoothProfileManager;->mPbapProfile:Lcom/android/jrdsettings/bluetooth/PbapServerProfile;

    if-nez v1, :cond_2

    .line 233
    new-instance v1, Lcom/android/jrdsettings/bluetooth/PbapServerProfile;

    iget-object v2, p0, Lcom/android/jrdsettings/bluetooth/LocalBluetoothProfileManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/jrdsettings/bluetooth/PbapServerProfile;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/jrdsettings/bluetooth/LocalBluetoothProfileManager;->mPbapProfile:Lcom/android/jrdsettings/bluetooth/PbapServerProfile;

    .line 235
    :cond_2
    iget-object v1, p0, Lcom/android/jrdsettings/bluetooth/LocalBluetoothProfileManager;->mFtpProfile:Lcom/android/jrdsettings/bluetooth/FtpProfile;

    if-nez v1, :cond_3

    .line 236
    new-instance v1, Lcom/android/jrdsettings/bluetooth/FtpProfile;

    iget-object v2, p0, Lcom/android/jrdsettings/bluetooth/LocalBluetoothProfileManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/jrdsettings/bluetooth/FtpProfile;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/jrdsettings/bluetooth/LocalBluetoothProfileManager;->mFtpProfile:Lcom/android/jrdsettings/bluetooth/FtpProfile;

    .line 237
    iget-object v1, p0, Lcom/android/jrdsettings/bluetooth/LocalBluetoothProfileManager;->mFtpProfile:Lcom/android/jrdsettings/bluetooth/FtpProfile;

    const-string v2, "FTP"

    const-string v3, "android.bluetooth.ftp.action.STATE_CHANGED"

    invoke-direct {p0, v1, v2, v3}, Lcom/android/jrdsettings/bluetooth/LocalBluetoothProfileManager;->addProfile(Lcom/android/jrdsettings/bluetooth/LocalBluetoothProfile;Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    :cond_3
    iget-object v1, p0, Lcom/android/jrdsettings/bluetooth/LocalBluetoothProfileManager;->mLocalAdapter:Lcom/android/jrdsettings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1}, Lcom/android/jrdsettings/bluetooth/LocalBluetoothAdapter;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v0

    .line 243
    .local v0, uuids:[Landroid/os/ParcelUuid;
    if-eqz v0, :cond_4

    .line 244
    invoke-virtual {p0, v0}, Lcom/android/jrdsettings/bluetooth/LocalBluetoothProfileManager;->updateLocalProfiles([Landroid/os/ParcelUuid;)V

    .line 246
    :cond_4
    iget-object v1, p0, Lcom/android/jrdsettings/bluetooth/LocalBluetoothProfileManager;->mEventManager:Lcom/android/jrdsettings/bluetooth/BluetoothEventManager;

    invoke-virtual {v1}, Lcom/android/jrdsettings/bluetooth/BluetoothEventManager;->readPairedDevices()Z

    .line 247
    return-void
.end method

.method updateLocalProfiles([Landroid/os/ParcelUuid;)V
    .locals 4
    .parameter "uuids"

    .prologue
    .line 158
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->AudioSource:Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 159
    iget-object v0, p0, Lcom/android/jrdsettings/bluetooth/LocalBluetoothProfileManager;->mA2dpProfile:Lcom/android/jrdsettings/bluetooth/A2dpProfile;

    if-nez v0, :cond_0

    .line 160
    const-string v0, "LocalBluetoothProfileManager"

    const-string v1, "Adding local A2DP profile"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    new-instance v0, Lcom/android/jrdsettings/bluetooth/A2dpProfile;

    iget-object v1, p0, Lcom/android/jrdsettings/bluetooth/LocalBluetoothProfileManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/android/jrdsettings/bluetooth/A2dpProfile;-><init>(Landroid/content/Context;Lcom/android/jrdsettings/bluetooth/LocalBluetoothProfileManager;)V

    iput-object v0, p0, Lcom/android/jrdsettings/bluetooth/LocalBluetoothProfileManager;->mA2dpProfile:Lcom/android/jrdsettings/bluetooth/A2dpProfile;

    .line 162
    iget-object v0, p0, Lcom/android/jrdsettings/bluetooth/LocalBluetoothProfileManager;->mA2dpProfile:Lcom/android/jrdsettings/bluetooth/A2dpProfile;

    const-string v1, "A2DP"

    const-string v2, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/jrdsettings/bluetooth/LocalBluetoothProfileManager;->addProfile(Lcom/android/jrdsettings/bluetooth/LocalBluetoothProfile;Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    :cond_0
    :goto_0
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->Handsfree_AG:Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/bluetooth/BluetoothUuid;->HSP_AG:Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 172
    :cond_1
    iget-object v0, p0, Lcom/android/jrdsettings/bluetooth/LocalBluetoothProfileManager;->mHeadsetProfile:Lcom/android/jrdsettings/bluetooth/HeadsetProfile;

    if-nez v0, :cond_2

    .line 173
    const-string v0, "LocalBluetoothProfileManager"

    const-string v1, "Adding local HEADSET profile"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    new-instance v0, Lcom/android/jrdsettings/bluetooth/HeadsetProfile;

    iget-object v1, p0, Lcom/android/jrdsettings/bluetooth/LocalBluetoothProfileManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/jrdsettings/bluetooth/LocalBluetoothProfileManager;->mLocalAdapter:Lcom/android/jrdsettings/bluetooth/LocalBluetoothAdapter;

    iget-object v3, p0, Lcom/android/jrdsettings/bluetooth/LocalBluetoothProfileManager;->mDeviceManager:Lcom/android/jrdsettings/bluetooth/CachedBluetoothDeviceManager;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/android/jrdsettings/bluetooth/HeadsetProfile;-><init>(Landroid/content/Context;Lcom/android/jrdsettings/bluetooth/LocalBluetoothAdapter;Lcom/android/jrdsettings/bluetooth/CachedBluetoothDeviceManager;Lcom/android/jrdsettings/bluetooth/LocalBluetoothProfileManager;)V

    iput-object v0, p0, Lcom/android/jrdsettings/bluetooth/LocalBluetoothProfileManager;->mHeadsetProfile:Lcom/android/jrdsettings/bluetooth/HeadsetProfile;

    .line 176
    iget-object v0, p0, Lcom/android/jrdsettings/bluetooth/LocalBluetoothProfileManager;->mHeadsetProfile:Lcom/android/jrdsettings/bluetooth/HeadsetProfile;

    const-string v1, "HEADSET"

    const-string v2, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/jrdsettings/bluetooth/LocalBluetoothProfileManager;->addProfile(Lcom/android/jrdsettings/bluetooth/LocalBluetoothProfile;Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    :cond_2
    :goto_1
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->ObexObjectPush:Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 185
    iget-object v0, p0, Lcom/android/jrdsettings/bluetooth/LocalBluetoothProfileManager;->mOppProfile:Lcom/android/jrdsettings/bluetooth/OppProfile;

    if-nez v0, :cond_3

    .line 186
    const-string v0, "LocalBluetoothProfileManager"

    const-string v1, "Adding local OPP profile"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    new-instance v0, Lcom/android/jrdsettings/bluetooth/OppProfile;

    invoke-direct {v0}, Lcom/android/jrdsettings/bluetooth/OppProfile;-><init>()V

    iput-object v0, p0, Lcom/android/jrdsettings/bluetooth/LocalBluetoothProfileManager;->mOppProfile:Lcom/android/jrdsettings/bluetooth/OppProfile;

    .line 189
    iget-object v0, p0, Lcom/android/jrdsettings/bluetooth/LocalBluetoothProfileManager;->mProfileNameMap:Ljava/util/Map;

    const-string v1, "OPP"

    iget-object v2, p0, Lcom/android/jrdsettings/bluetooth/LocalBluetoothProfileManager;->mOppProfile:Lcom/android/jrdsettings/bluetooth/OppProfile;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/android/jrdsettings/bluetooth/LocalBluetoothProfileManager;->mEventManager:Lcom/android/jrdsettings/bluetooth/BluetoothEventManager;

    invoke-virtual {v0}, Lcom/android/jrdsettings/bluetooth/BluetoothEventManager;->registerProfileIntentReceiver()V

    .line 197
    return-void

    .line 165
    :cond_4
    iget-object v0, p0, Lcom/android/jrdsettings/bluetooth/LocalBluetoothProfileManager;->mA2dpProfile:Lcom/android/jrdsettings/bluetooth/A2dpProfile;

    if-eqz v0, :cond_0

    .line 166
    const-string v0, "LocalBluetoothProfileManager"

    const-string v1, "Warning: A2DP profile was previously added but the UUID is now missing."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 179
    :cond_5
    iget-object v0, p0, Lcom/android/jrdsettings/bluetooth/LocalBluetoothProfileManager;->mHeadsetProfile:Lcom/android/jrdsettings/bluetooth/HeadsetProfile;

    if-eqz v0, :cond_2

    .line 180
    const-string v0, "LocalBluetoothProfileManager"

    const-string v1, "Warning: HEADSET profile was previously added but the UUID is now missing."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 191
    :cond_6
    iget-object v0, p0, Lcom/android/jrdsettings/bluetooth/LocalBluetoothProfileManager;->mOppProfile:Lcom/android/jrdsettings/bluetooth/OppProfile;

    if-eqz v0, :cond_3

    .line 192
    const-string v0, "LocalBluetoothProfileManager"

    const-string v1, "Warning: OPP profile was previously added but the UUID is now missing."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method declared-synchronized updateProfiles([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;Ljava/util/Collection;Ljava/util/Collection;Z)V
    .locals 2
    .parameter "uuids"
    .parameter "localUuids"
    .parameter
    .parameter
    .parameter "isPanNapConnected"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/os/ParcelUuid;",
            "[",
            "Landroid/os/ParcelUuid;",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/jrdsettings/bluetooth/LocalBluetoothProfile;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/jrdsettings/bluetooth/LocalBluetoothProfile;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 361
    .local p3, profiles:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/jrdsettings/bluetooth/LocalBluetoothProfile;>;"
    .local p4, removedProfiles:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/jrdsettings/bluetooth/LocalBluetoothProfile;>;"
    monitor-enter p0

    :try_start_0
    invoke-interface {p4}, Ljava/util/Collection;->clear()V

    .line 362
    invoke-interface {p4, p3}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 363
    invoke-interface {p3}, Ljava/util/Collection;->clear()V

    .line 364
    const-string v0, "LocalBluetoothProfileManager"

    const-string v1, "update profiles"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    if-nez p1, :cond_1

    .line 366
    const-string v0, "LocalBluetoothProfileManager"

    const-string v1, "remote device uuid is null"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 420
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 370
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/jrdsettings/bluetooth/LocalBluetoothProfileManager;->mHeadsetProfile:Lcom/android/jrdsettings/bluetooth/HeadsetProfile;

    if-eqz v0, :cond_4

    .line 371
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->HSP_AG:Landroid/os/ParcelUuid;

    invoke-static {p2, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Landroid/bluetooth/BluetoothUuid;->HSP:Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->Handsfree_AG:Landroid/os/ParcelUuid;

    invoke-static {p2, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Landroid/bluetooth/BluetoothUuid;->Handsfree:Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 375
    :cond_3
    const-string v0, "LocalBluetoothProfileManager"

    const-string v1, "Add HeadsetProfile to connectable profile list"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    iget-object v0, p0, Lcom/android/jrdsettings/bluetooth/LocalBluetoothProfileManager;->mHeadsetProfile:Lcom/android/jrdsettings/bluetooth/HeadsetProfile;

    invoke-interface {p3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 377
    iget-object v0, p0, Lcom/android/jrdsettings/bluetooth/LocalBluetoothProfileManager;->mHeadsetProfile:Lcom/android/jrdsettings/bluetooth/HeadsetProfile;

    invoke-interface {p4, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 381
    :cond_4
    sget-object v0, Lcom/android/jrdsettings/bluetooth/A2dpProfile;->SINK_UUIDS:[Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->containsAnyUuid([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/jrdsettings/bluetooth/LocalBluetoothProfileManager;->mA2dpProfile:Lcom/android/jrdsettings/bluetooth/A2dpProfile;

    if-eqz v0, :cond_5

    .line 383
    const-string v0, "LocalBluetoothProfileManager"

    const-string v1, "Add A2dpProfile to connectable profile list"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    iget-object v0, p0, Lcom/android/jrdsettings/bluetooth/LocalBluetoothProfileManager;->mA2dpProfile:Lcom/android/jrdsettings/bluetooth/A2dpProfile;

    invoke-interface {p3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 385
    iget-object v0, p0, Lcom/android/jrdsettings/bluetooth/LocalBluetoothProfileManager;->mA2dpProfile:Lcom/android/jrdsettings/bluetooth/A2dpProfile;

    invoke-interface {p4, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 388
    :cond_5
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->ObexObjectPush:Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/jrdsettings/bluetooth/LocalBluetoothProfileManager;->mOppProfile:Lcom/android/jrdsettings/bluetooth/OppProfile;

    if-eqz v0, :cond_6

    .line 390
    const-string v0, "LocalBluetoothProfileManager"

    const-string v1, "Add OppProfile to connectable profile list"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    iget-object v0, p0, Lcom/android/jrdsettings/bluetooth/LocalBluetoothProfileManager;->mOppProfile:Lcom/android/jrdsettings/bluetooth/OppProfile;

    invoke-interface {p3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 392
    iget-object v0, p0, Lcom/android/jrdsettings/bluetooth/LocalBluetoothProfileManager;->mOppProfile:Lcom/android/jrdsettings/bluetooth/OppProfile;

    invoke-interface {p4, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 395
    :cond_6
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->Hid:Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/jrdsettings/bluetooth/LocalBluetoothProfileManager;->mHidProfile:Lcom/android/jrdsettings/bluetooth/HidProfile;

    if-eqz v0, :cond_7

    .line 397
    const-string v0, "LocalBluetoothProfileManager"

    const-string v1, "Add HidProfile to connectable profile list"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    iget-object v0, p0, Lcom/android/jrdsettings/bluetooth/LocalBluetoothProfileManager;->mHidProfile:Lcom/android/jrdsettings/bluetooth/HidProfile;

    invoke-interface {p3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 399
    iget-object v0, p0, Lcom/android/jrdsettings/bluetooth/LocalBluetoothProfileManager;->mHidProfile:Lcom/android/jrdsettings/bluetooth/HidProfile;

    invoke-interface {p4, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 402
    :cond_7
    if-eqz p5, :cond_8

    .line 403
    const-string v0, "LocalBluetoothProfileManager"

    const-string v1, "Valid PAN-NAP connection exists."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    :cond_8
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->NAP:Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/jrdsettings/bluetooth/LocalBluetoothProfileManager;->mPanProfile:Lcom/android/jrdsettings/bluetooth/PanProfile;

    if-nez v0, :cond_a

    :cond_9
    if-eqz p5, :cond_b

    .line 406
    :cond_a
    const-string v0, "LocalBluetoothProfileManager"

    const-string v1, "Add PanProfile to connectable profile list"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    iget-object v0, p0, Lcom/android/jrdsettings/bluetooth/LocalBluetoothProfileManager;->mPanProfile:Lcom/android/jrdsettings/bluetooth/PanProfile;

    invoke-interface {p3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 408
    iget-object v0, p0, Lcom/android/jrdsettings/bluetooth/LocalBluetoothProfileManager;->mPanProfile:Lcom/android/jrdsettings/bluetooth/PanProfile;

    invoke-interface {p4, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 413
    :cond_b
    sget-object v0, Lcom/android/jrdsettings/bluetooth/FtpProfile;->UUIDS:[Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->containsAnyUuid([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/jrdsettings/bluetooth/LocalBluetoothProfileManager;->mFtpProfile:Lcom/android/jrdsettings/bluetooth/FtpProfile;

    if-eqz v0, :cond_0

    .line 415
    const-string v0, "LocalBluetoothProfileManager"

    const-string v1, "Add FtpProfile to connectable profile list"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    iget-object v0, p0, Lcom/android/jrdsettings/bluetooth/LocalBluetoothProfileManager;->mFtpProfile:Lcom/android/jrdsettings/bluetooth/FtpProfile;

    invoke-interface {p3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 417
    iget-object v0, p0, Lcom/android/jrdsettings/bluetooth/LocalBluetoothProfileManager;->mFtpProfile:Lcom/android/jrdsettings/bluetooth/FtpProfile;

    invoke-interface {p4, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 361
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
