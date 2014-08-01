.class public Lcom/android/jrdsettings/TetherSettings;
.super Lcom/android/jrdsettings/SettingsPreferenceFragment;
.source "TetherSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/jrdsettings/TetherSettings$TetherChangeReceiver;
    }
.end annotation


# static fields
.field private static final BLUETOOTH_TETHERING:I = 0x2

.field private static final DIALOG_AP_SETTINGS:I = 0x1

.field private static final DIALOG_TETHER_HELP:I = 0x2

.field private static final ENABLE_BLUETOOTH_TETHERING:Ljava/lang/String; = "enable_bluetooth_tethering"

.field private static final HELP_PATH:Ljava/lang/String; = "html/%y%z/tethering_help.html"

.field private static final HELP_URL:Ljava/lang/String; = "file:///android_asset/html/%y%z/tethering_%xhelp.html"

.field private static final INVALID:I = -0x1

.field private static final PROVISION_REQUEST:I = 0x0

.field private static final TAG:Ljava/lang/String; = "TetherSettings"

.field private static final TETHERED_IPV6:Ljava/lang/String; = "tethered_ipv6"

.field private static final TETHERING_HELP:Ljava/lang/String; = "tethering_help"

.field private static final USB_DATA_STATE:Ljava/lang/String; = "mediatek.intent.action.USB_DATA_STATE"

.field private static final USB_HELP_MODIFIER:Ljava/lang/String; = "usb_"

.field private static final USB_TETHERING:I = 0x1

.field private static final USB_TETHERING_TYPE:Ljava/lang/String; = "usb_tethering_type"

.field private static final USB_TETHER_SETTINGS:Ljava/lang/String; = "usb_tether_settings"

.field private static final WIFI_HELP_MODIFIER:Ljava/lang/String; = "wifi_"

.field private static final WIFI_SWITCH_SETTINGS:Ljava/lang/String; = "wifi_tether_settings"


# instance fields
.field private mBluetoothDun:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Landroid/bluetooth/BluetoothDun;",
            ">;"
        }
    .end annotation
.end field

.field private mBluetoothDunProxy:Landroid/bluetooth/BluetoothDun;

.field private mBluetoothEnableForTether:Z

.field private mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Landroid/bluetooth/BluetoothPan;",
            ">;"
        }
    .end annotation
.end field

.field private mBluetoothRegexs:[Ljava/lang/String;

.field private mBluetoothTether:Landroid/preference/CheckBoxPreference;

.field private mBtErrorIpv4:I

.field private mBtErrorIpv6:I

.field private mDunServiceListener:Landroid/bluetooth/BluetoothDun$ServiceListener;

.field mExt:Lcom/mediatek/settings/ext/IApnSettingsExt;

.field private mIsPcKnowMe:Z

.field private mMassStorageActive:Z

.field private mMountService:Landroid/os/storage/IMountService;

.field private mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private mProvisionApp:[Ljava/lang/String;

.field private mSecurityType:[Ljava/lang/String;

.field private mTetherApnSetting:Landroid/preference/Preference;

.field private mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mTetherChoice:I

.field private mTetherHelp:Landroid/preference/PreferenceScreen;

.field private mTetherIpv6:Landroid/preference/ListPreference;

.field private mUsbConfigured:Z

.field private mUsbConnected:Z

.field private mUsbHwDisconnected:Z

.field private mUsbInternetSharing:Z

.field private mUsbRegexs:[Ljava/lang/String;

.field private mUsbTether:Landroid/preference/CheckBoxPreference;

.field private mUsbTetherCheckEnable:Z

.field private mUsbTetherDone:Z

.field private mUsbTetherFail:Z

.field private mUsbTetherType:Landroid/preference/ListPreference;

.field private mUsbTethering:Z

.field private mUsbUnTetherDone:Z

.field private mView:Landroid/webkit/WebView;

.field private mWifiApEnabler:Lcom/android/jrdsettings/wifi/WifiApEnabler;

.field private mWifiRegexs:[Ljava/lang/String;

.field private mWifiTether:Lcom/mediatek/wifi/hotspot/HotspotSwitchPreference;

.field private toggleableRadios:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 91
    invoke-direct {p0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;-><init>()V

    .line 129
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/android/jrdsettings/TetherSettings;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    .line 132
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/android/jrdsettings/TetherSettings;->mBluetoothDun:Ljava/util/concurrent/atomic/AtomicReference;

    .line 141
    iput-boolean v1, p0, Lcom/android/jrdsettings/TetherSettings;->mUsbTethering:Z

    .line 142
    iput-boolean v1, p0, Lcom/android/jrdsettings/TetherSettings;->mUsbTetherCheckEnable:Z

    .line 145
    iput-boolean v2, p0, Lcom/android/jrdsettings/TetherSettings;->mUsbUnTetherDone:Z

    .line 146
    iput-boolean v2, p0, Lcom/android/jrdsettings/TetherSettings;->mUsbTetherDone:Z

    .line 147
    iput-boolean v1, p0, Lcom/android/jrdsettings/TetherSettings;->mUsbTetherFail:Z

    .line 150
    iput-boolean v2, p0, Lcom/android/jrdsettings/TetherSettings;->mIsPcKnowMe:Z

    .line 153
    iput-boolean v1, p0, Lcom/android/jrdsettings/TetherSettings;->mUsbInternetSharing:Z

    .line 154
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/jrdsettings/TetherSettings;->mMountService:Landroid/os/storage/IMountService;

    .line 162
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/jrdsettings/TetherSettings;->mTetherChoice:I

    .line 309
    new-instance v0, Lcom/android/jrdsettings/TetherSettings$1;

    invoke-direct {v0, p0}, Lcom/android/jrdsettings/TetherSettings$1;-><init>(Lcom/android/jrdsettings/TetherSettings;)V

    iput-object v0, p0, Lcom/android/jrdsettings/TetherSettings;->mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 320
    new-instance v0, Lcom/android/jrdsettings/TetherSettings$2;

    invoke-direct {v0, p0}, Lcom/android/jrdsettings/TetherSettings$2;-><init>(Lcom/android/jrdsettings/TetherSettings;)V

    iput-object v0, p0, Lcom/android/jrdsettings/TetherSettings;->mDunServiceListener:Landroid/bluetooth/BluetoothDun$ServiceListener;

    .line 346
    return-void
.end method

.method private BluetoothDunGetProxy()Landroid/bluetooth/BluetoothDun;
    .locals 4

    .prologue
    .line 332
    iget-object v1, p0, Lcom/android/jrdsettings/TetherSettings;->mBluetoothDun:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDun;

    .line 333
    .local v0, Dun:Landroid/bluetooth/BluetoothDun;
    if-nez v0, :cond_0

    .line 334
    iget-object v1, p0, Lcom/android/jrdsettings/TetherSettings;->mBluetoothDunProxy:Landroid/bluetooth/BluetoothDun;

    if-eqz v1, :cond_1

    .line 335
    iget-object v1, p0, Lcom/android/jrdsettings/TetherSettings;->mBluetoothDun:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v2, p0, Lcom/android/jrdsettings/TetherSettings;->mBluetoothDunProxy:Landroid/bluetooth/BluetoothDun;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 339
    :goto_0
    iget-object v0, p0, Lcom/android/jrdsettings/TetherSettings;->mBluetoothDunProxy:Landroid/bluetooth/BluetoothDun;

    .line 341
    .end local v0           #Dun:Landroid/bluetooth/BluetoothDun;
    :cond_0
    return-object v0

    .line 337
    .restart local v0       #Dun:Landroid/bluetooth/BluetoothDun;
    :cond_1
    new-instance v1, Landroid/bluetooth/BluetoothDun;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/jrdsettings/TetherSettings;->mDunServiceListener:Landroid/bluetooth/BluetoothDun$ServiceListener;

    invoke-direct {v1, v2, v3}, Landroid/bluetooth/BluetoothDun;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothDun$ServiceListener;)V

    iput-object v1, p0, Lcom/android/jrdsettings/TetherSettings;->mBluetoothDunProxy:Landroid/bluetooth/BluetoothDun;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/jrdsettings/TetherSettings;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/jrdsettings/TetherSettings;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/jrdsettings/TetherSettings;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/jrdsettings/TetherSettings;->mBluetoothDun:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/jrdsettings/TetherSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/android/jrdsettings/TetherSettings;->mUsbConfigured:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/android/jrdsettings/TetherSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    iput-boolean p1, p0, Lcom/android/jrdsettings/TetherSettings;->mUsbConfigured:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/jrdsettings/TetherSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/android/jrdsettings/TetherSettings;->mUsbHwDisconnected:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/android/jrdsettings/TetherSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    iput-boolean p1, p0, Lcom/android/jrdsettings/TetherSettings;->mUsbHwDisconnected:Z

    return p1
.end method

.method static synthetic access$1202(Lcom/android/jrdsettings/TetherSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    iput-boolean p1, p0, Lcom/android/jrdsettings/TetherSettings;->mIsPcKnowMe:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/android/jrdsettings/TetherSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/android/jrdsettings/TetherSettings;->mBluetoothEnableForTether:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/android/jrdsettings/TetherSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    iput-boolean p1, p0, Lcom/android/jrdsettings/TetherSettings;->mBluetoothEnableForTether:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/android/jrdsettings/TetherSettings;)Landroid/bluetooth/BluetoothDun;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/android/jrdsettings/TetherSettings;->BluetoothDunGetProxy()Landroid/bluetooth/BluetoothDun;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1502(Lcom/android/jrdsettings/TetherSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    iput-boolean p1, p0, Lcom/android/jrdsettings/TetherSettings;->mUsbInternetSharing:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/android/jrdsettings/TetherSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/android/jrdsettings/TetherSettings;->updateIpv6Preference()V

    return-void
.end method

.method static synthetic access$202(Lcom/android/jrdsettings/TetherSettings;Landroid/bluetooth/BluetoothDun;)Landroid/bluetooth/BluetoothDun;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    iput-object p1, p0, Lcom/android/jrdsettings/TetherSettings;->mBluetoothDunProxy:Landroid/bluetooth/BluetoothDun;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/jrdsettings/TetherSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/android/jrdsettings/TetherSettings;->mUsbUnTetherDone:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/jrdsettings/TetherSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    iput-boolean p1, p0, Lcom/android/jrdsettings/TetherSettings;->mUsbUnTetherDone:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/jrdsettings/TetherSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/android/jrdsettings/TetherSettings;->mUsbTetherDone:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/jrdsettings/TetherSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    iput-boolean p1, p0, Lcom/android/jrdsettings/TetherSettings;->mUsbTetherDone:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/jrdsettings/TetherSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/android/jrdsettings/TetherSettings;->mUsbTetherFail:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/jrdsettings/TetherSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    iput-boolean p1, p0, Lcom/android/jrdsettings/TetherSettings;->mUsbTetherFail:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/jrdsettings/TetherSettings;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 91
    invoke-direct {p0, p1, p2, p3}, Lcom/android/jrdsettings/TetherSettings;->updateState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$702(Lcom/android/jrdsettings/TetherSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    iput-boolean p1, p0, Lcom/android/jrdsettings/TetherSettings;->mMassStorageActive:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/jrdsettings/TetherSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/android/jrdsettings/TetherSettings;->updateState()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/jrdsettings/TetherSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/android/jrdsettings/TetherSettings;->mUsbConnected:Z

    return v0
.end method

.method static synthetic access$902(Lcom/android/jrdsettings/TetherSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    iput-boolean p1, p0, Lcom/android/jrdsettings/TetherSettings;->mUsbConnected:Z

    return p1
.end method

.method private static findIface([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "ifaces"
    .parameter "regexes"

    .prologue
    .line 1044
    move-object v0, p0

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    move v3, v2

    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v5           #len$:I
    .local v3, i$:I
    :goto_0
    if-ge v3, v5, :cond_2

    aget-object v4, v0, v3

    .line 1045
    .local v4, iface:Ljava/lang/String;
    move-object v1, p1

    .local v1, arr$:[Ljava/lang/String;
    array-length v6, v1

    .local v6, len$:I
    const/4 v2, 0x0

    .end local v3           #i$:I
    .restart local v2       #i$:I
    :goto_1
    if-ge v2, v6, :cond_1

    aget-object v7, v1, v2

    .line 1046
    .local v7, regex:Ljava/lang/String;
    invoke-virtual {v4, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1051
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v4           #iface:Ljava/lang/String;
    .end local v6           #len$:I
    .end local v7           #regex:Ljava/lang/String;
    :goto_2
    return-object v4

    .line 1045
    .restart local v1       #arr$:[Ljava/lang/String;
    .restart local v2       #i$:I
    .restart local v4       #iface:Ljava/lang/String;
    .restart local v6       #len$:I
    .restart local v7       #regex:Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1044
    .end local v7           #regex:Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    .end local v2           #i$:I
    .restart local v3       #i$:I
    goto :goto_0

    .line 1051
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v4           #iface:Ljava/lang/String;
    .end local v6           #len$:I
    :cond_2
    const/4 v4, 0x0

    goto :goto_2
.end method

.method private declared-synchronized getMountService()Landroid/os/storage/IMountService;
    .locals 3

    .prologue
    .line 1060
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/jrdsettings/TetherSettings;->mMountService:Landroid/os/storage/IMountService;

    if-nez v1, :cond_0

    .line 1061
    const-string v1, "mount"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1062
    .local v0, service:Landroid/os/IBinder;
    if-eqz v0, :cond_1

    .line 1063
    invoke-static {v0}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/jrdsettings/TetherSettings;->mMountService:Landroid/os/storage/IMountService;

    .line 1068
    .end local v0           #service:Landroid/os/IBinder;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/jrdsettings/TetherSettings;->mMountService:Landroid/os/storage/IMountService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 1065
    .restart local v0       #service:Landroid/os/IBinder;
    :cond_1
    :try_start_1
    const-string v1, "TetherSettings"

    const-string v2, "Can\'t get mount service"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1060
    .end local v0           #service:Landroid/os/IBinder;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private isAirplaneModeOn()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 825
    invoke-virtual {p0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isUMSEnabled()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1072
    iget-object v2, p0, Lcom/android/jrdsettings/TetherSettings;->mMountService:Landroid/os/storage/IMountService;

    if-nez v2, :cond_0

    .line 1073
    const-string v2, "TetherSettings"

    const-string v3, " mMountService is null, return"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1080
    :goto_0
    return v1

    .line 1077
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/jrdsettings/TetherSettings;->mMountService:Landroid/os/storage/IMountService;

    invoke-interface {v2}, Landroid/os/storage/IMountService;->isUsbMassStorageEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 1078
    :catch_0
    move-exception v0

    .line 1079
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "TetherSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Util:RemoteException when isUsbMassStorageEnabled: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setUsbTethering(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 954
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 957
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->setUsbTethering(Z)I

    move-result v1

    if-eqz v1, :cond_0

    .line 958
    iget-object v1, p0, Lcom/android/jrdsettings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 959
    iget-object v1, p0, Lcom/android/jrdsettings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const v2, 0x7f0905b1

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(I)V

    .line 963
    :goto_0
    return-void

    .line 962
    :cond_0
    iget-object v1, p0, Lcom/android/jrdsettings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private showTetherDialog(I)V
    .locals 12
    .parameter "id"

    .prologue
    const/16 v11, 0x5f

    .line 1086
    const/4 v8, 0x2

    if-ne v8, p1, :cond_2

    .line 1087
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    .line 1089
    .local v3, locale:Ljava/util/Locale;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ContextWrapper;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 1090
    .local v0, am:Landroid/content/res/AssetManager;
    const-string v8, "html/%y%z/tethering_help.html"

    const-string v9, "%y"

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 1091
    .local v5, path:Ljava/lang/String;
    const-string v8, "%z"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 1092
    const/4 v7, 0x1

    .line 1093
    .local v7, useCountry:Z
    const/4 v2, 0x0

    .line 1095
    .local v2, is:Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {v0, v5}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1099
    if-eqz v2, :cond_0

    .line 1101
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 1105
    :cond_0
    :goto_0
    const-string v8, "file:///android_asset/html/%y%z/tethering_%xhelp.html"

    const-string v9, "%y"

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    .line 1106
    .local v6, url:Ljava/lang/String;
    const-string v9, "%z"

    if-eqz v7, :cond_4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :goto_1
    invoke-virtual {v6, v9, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    .line 1107
    iget-object v8, p0, Lcom/android/jrdsettings/TetherSettings;->mUsbRegexs:[Ljava/lang/String;

    array-length v8, v8

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/android/jrdsettings/TetherSettings;->mWifiRegexs:[Ljava/lang/String;

    array-length v8, v8

    if-nez v8, :cond_5

    .line 1108
    const-string v8, "%x"

    const-string v9, "usb_"

    invoke-virtual {v6, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    .line 1118
    :goto_2
    iget-object v8, p0, Lcom/android/jrdsettings/TetherSettings;->mView:Landroid/webkit/WebView;

    invoke-virtual {v8, v6}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 1120
    iget-object v8, p0, Lcom/android/jrdsettings/TetherSettings;->mView:Landroid/webkit/WebView;

    invoke-virtual {v8}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    .line 1121
    .local v4, parent:Landroid/view/ViewParent;
    if-eqz v4, :cond_1

    instance-of v8, v4, Landroid/view/ViewGroup;

    if-eqz v8, :cond_1

    .line 1122
    check-cast v4, Landroid/view/ViewGroup;

    .end local v4           #parent:Landroid/view/ViewParent;
    iget-object v8, p0, Lcom/android/jrdsettings/TetherSettings;->mView:Landroid/webkit/WebView;

    invoke-virtual {v4, v8}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1124
    :cond_1
    new-instance v8, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const v9, 0x7f0905ba

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/jrdsettings/TetherSettings;->mView:Landroid/webkit/WebView;

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Dialog;->show()V

    .line 1128
    .end local v0           #am:Landroid/content/res/AssetManager;
    .end local v2           #is:Ljava/io/InputStream;
    .end local v3           #locale:Ljava/util/Locale;
    .end local v5           #path:Ljava/lang/String;
    .end local v6           #url:Ljava/lang/String;
    .end local v7           #useCountry:Z
    :cond_2
    return-void

    .line 1096
    .restart local v0       #am:Landroid/content/res/AssetManager;
    .restart local v2       #is:Ljava/io/InputStream;
    .restart local v3       #locale:Ljava/util/Locale;
    .restart local v5       #path:Ljava/lang/String;
    .restart local v7       #useCountry:Z
    :catch_0
    move-exception v1

    .line 1097
    .local v1, ignored:Ljava/lang/Exception;
    const/4 v7, 0x0

    .line 1099
    if-eqz v2, :cond_0

    .line 1101
    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 1102
    :catch_1
    move-exception v8

    goto/16 :goto_0

    .line 1099
    .end local v1           #ignored:Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    if-eqz v2, :cond_3

    .line 1101
    :try_start_3
    throw v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 1102
    :cond_3
    :goto_3
    throw v8

    .line 1106
    .restart local v6       #url:Ljava/lang/String;
    :cond_4
    const-string v8, ""

    goto :goto_1

    .line 1109
    :cond_5
    iget-object v8, p0, Lcom/android/jrdsettings/TetherSettings;->mWifiRegexs:[Ljava/lang/String;

    array-length v8, v8

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/android/jrdsettings/TetherSettings;->mUsbRegexs:[Ljava/lang/String;

    array-length v8, v8

    if-nez v8, :cond_6

    .line 1110
    const-string v8, "%x"

    const-string v9, "wifi_"

    invoke-virtual {v6, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    .line 1115
    :cond_6
    const-string v8, "%x"

    const-string v9, ""

    invoke-virtual {v6, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    .line 1102
    .end local v6           #url:Ljava/lang/String;
    :catch_2
    move-exception v8

    goto/16 :goto_0

    :catch_3
    move-exception v9

    goto :goto_3
.end method

.method private startProvisioningIfNecessary(I)V
    .locals 5
    .parameter "choice"

    .prologue
    const/4 v4, 0x0

    .line 881
    iput p1, p0, Lcom/android/jrdsettings/TetherSettings;->mTetherChoice:I

    .line 882
    invoke-virtual {p0}, Lcom/android/jrdsettings/TetherSettings;->isProvisioningNeeded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 883
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 884
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/jrdsettings/TetherSettings;->mProvisionApp:[Ljava/lang/String;

    aget-object v1, v1, v4

    iget-object v2, p0, Lcom/android/jrdsettings/TetherSettings;->mProvisionApp:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 885
    invoke-virtual {p0, v0, v4}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 889
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 887
    :cond_0
    invoke-direct {p0}, Lcom/android/jrdsettings/TetherSettings;->startTethering()V

    goto :goto_0
.end method

.method private startTethering()V
    .locals 8

    .prologue
    const/4 v6, 0x1

    .line 915
    iget v4, p0, Lcom/android/jrdsettings/TetherSettings;->mTetherChoice:I

    packed-switch v4, :pswitch_data_0

    .line 951
    :goto_0
    return-void

    .line 918
    :pswitch_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 919
    .local v0, adapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v4

    const/16 v5, 0xa

    if-ne v4, v5, :cond_0

    .line 920
    iput-boolean v6, p0, Lcom/android/jrdsettings/TetherSettings;->mBluetoothEnableForTether:Z

    .line 921
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    .line 922
    iget-object v4, p0, Lcom/android/jrdsettings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    const v5, 0x7f0902b6

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(I)V

    .line 923
    iget-object v4, p0, Lcom/android/jrdsettings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 925
    :cond_0
    iget-object v4, p0, Lcom/android/jrdsettings/TetherSettings;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothPan;

    .line 926
    .local v2, bluetoothPan:Landroid/bluetooth/BluetoothPan;
    if-eqz v2, :cond_1

    .line 927
    invoke-virtual {v2, v6}, Landroid/bluetooth/BluetoothPan;->setBluetoothTethering(Z)V

    .line 930
    :cond_1
    invoke-direct {p0}, Lcom/android/jrdsettings/TetherSettings;->BluetoothDunGetProxy()Landroid/bluetooth/BluetoothDun;

    move-result-object v1

    .line 931
    .local v1, bluetoothDun:Landroid/bluetooth/BluetoothDun;
    if-eqz v1, :cond_2

    .line 932
    invoke-virtual {v1, v6}, Landroid/bluetooth/BluetoothDun;->setBluetoothTethering(Z)V

    .line 934
    :cond_2
    const v4, 0x7f0905b3

    invoke-virtual {p0, v4}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 936
    .local v3, summary:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/jrdsettings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/jrdsettings/TetherSettings;->mBtErrorIpv4:I

    iget v7, p0, Lcom/android/jrdsettings/TetherSettings;->mBtErrorIpv6:I

    invoke-virtual {p0, v6, v7}, Lcom/android/jrdsettings/TetherSettings;->getIPV6String(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 945
    .end local v0           #adapter:Landroid/bluetooth/BluetoothAdapter;
    .end local v1           #bluetoothDun:Landroid/bluetooth/BluetoothDun;
    .end local v2           #bluetoothPan:Landroid/bluetooth/BluetoothPan;
    .end local v3           #summary:Ljava/lang/String;
    :pswitch_1
    invoke-direct {p0, v6}, Lcom/android/jrdsettings/TetherSettings;->setUsbTethering(Z)V

    goto :goto_0

    .line 915
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updateBluetoothState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 23
    .parameter "available"
    .parameter "tethered"
    .parameter "errored"

    .prologue
    .line 717
    const-string v19, "connectivity"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/net/ConnectivityManager;

    .line 721
    .local v11, cm:Landroid/net/ConnectivityManager;
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/jrdsettings/TetherSettings;->mBtErrorIpv4:I

    .line 722
    const/16 v19, 0x10

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/jrdsettings/TetherSettings;->mBtErrorIpv6:I

    .line 723
    move-object/from16 v4, p1

    .local v4, arr$:[Ljava/lang/String;
    array-length v14, v4

    .local v14, len$:I
    const/4 v12, 0x0

    .local v12, i$:I
    move v13, v12

    .end local v4           #arr$:[Ljava/lang/String;
    .end local v12           #i$:I
    .end local v14           #len$:I
    .local v13, i$:I
    :goto_0
    if-ge v13, v14, :cond_3

    aget-object v17, v4, v13

    .line 724
    .local v17, s:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/jrdsettings/TetherSettings;->mBluetoothRegexs:[Ljava/lang/String;

    .local v5, arr$:[Ljava/lang/String;
    array-length v15, v5

    .local v15, len$:I
    const/4 v12, 0x0

    .end local v13           #i$:I
    .restart local v12       #i$:I
    :goto_1
    if-ge v12, v15, :cond_2

    aget-object v16, v5, v12

    .line 725
    .local v16, regex:Ljava/lang/String;
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_1

    if-eqz v11, :cond_1

    .line 726
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/jrdsettings/TetherSettings;->mBtErrorIpv4:I

    move/from16 v19, v0

    if-nez v19, :cond_0

    .line 727
    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/net/ConnectivityManager;->getLastTetherError(Ljava/lang/String;)I

    move-result v19

    and-int/lit8 v19, v19, 0xf

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/jrdsettings/TetherSettings;->mBtErrorIpv4:I

    .line 729
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/jrdsettings/TetherSettings;->mBtErrorIpv6:I

    move/from16 v19, v0

    const/16 v20, 0x10

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_1

    .line 730
    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/net/ConnectivityManager;->getLastTetherError(Ljava/lang/String;)I

    move-result v19

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xf0

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/jrdsettings/TetherSettings;->mBtErrorIpv6:I

    .line 724
    :cond_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 723
    .end local v16           #regex:Ljava/lang/String;
    :cond_2
    add-int/lit8 v12, v13, 0x1

    move v13, v12

    .end local v12           #i$:I
    .restart local v13       #i$:I
    goto :goto_0

    .line 738
    .end local v5           #arr$:[Ljava/lang/String;
    .end local v15           #len$:I
    .end local v17           #s:Ljava/lang/String;
    :cond_3
    const/4 v7, 0x0

    .line 739
    .local v7, bluetoothErrored:Z
    move-object/from16 v4, p3

    .restart local v4       #arr$:[Ljava/lang/String;
    array-length v14, v4

    .restart local v14       #len$:I
    const/4 v12, 0x0

    .end local v13           #i$:I
    .restart local v12       #i$:I
    move v13, v12

    .end local v4           #arr$:[Ljava/lang/String;
    .end local v12           #i$:I
    .end local v14           #len$:I
    .restart local v13       #i$:I
    :goto_2
    if-ge v13, v14, :cond_6

    aget-object v17, v4, v13

    .line 740
    .restart local v17       #s:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/jrdsettings/TetherSettings;->mBluetoothRegexs:[Ljava/lang/String;

    .restart local v5       #arr$:[Ljava/lang/String;
    array-length v15, v5

    .restart local v15       #len$:I
    const/4 v12, 0x0

    .end local v13           #i$:I
    .restart local v12       #i$:I
    :goto_3
    if-ge v12, v15, :cond_5

    aget-object v16, v5, v12

    .line 741
    .restart local v16       #regex:Ljava/lang/String;
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_4

    .line 742
    const/4 v7, 0x1

    .line 740
    :cond_4
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 739
    .end local v16           #regex:Ljava/lang/String;
    :cond_5
    add-int/lit8 v12, v13, 0x1

    move v13, v12

    .end local v12           #i$:I
    .restart local v13       #i$:I
    goto :goto_2

    .line 747
    .end local v5           #arr$:[Ljava/lang/String;
    .end local v15           #len$:I
    .end local v17           #s:Ljava/lang/String;
    :cond_6
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v3

    .line 748
    .local v3, adapter:Landroid/bluetooth/BluetoothAdapter;
    if-nez v3, :cond_8

    .line 822
    :cond_7
    :goto_4
    return-void

    .line 751
    :cond_8
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v10

    .line 752
    .local v10, btState:I
    const-string v19, "TetherSettings"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "btState = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    const/16 v19, 0xd

    move/from16 v0, v19

    if-ne v10, v0, :cond_9

    .line 754
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 755
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v19, v0

    const v20, 0x7f0902b7

    invoke-virtual/range {v19 .. v20}, Landroid/preference/Preference;->setSummary(I)V

    .line 815
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string v20, "airplane_mode_toggleable_radios"

    invoke-static/range {v19 .. v20}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/jrdsettings/TetherSettings;->toggleableRadios:Ljava/lang/String;

    .line 816
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/TetherSettings;->toggleableRadios:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, "bluetooth"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_7

    .line 817
    invoke-direct/range {p0 .. p0}, Lcom/android/jrdsettings/TetherSettings;->isAirplaneModeOn()Z

    move-result v19

    if-eqz v19, :cond_7

    .line 818
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_4

    .line 756
    :cond_9
    const/16 v19, 0xb

    move/from16 v0, v19

    if-ne v10, v0, :cond_a

    .line 757
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 758
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v19, v0

    const v20, 0x7f0902b6

    invoke-virtual/range {v19 .. v20}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_5

    .line 760
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/TetherSettings;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/bluetooth/BluetoothPan;

    .line 762
    .local v8, bluetoothPan:Landroid/bluetooth/BluetoothPan;
    invoke-direct/range {p0 .. p0}, Lcom/android/jrdsettings/TetherSettings;->BluetoothDunGetProxy()Landroid/bluetooth/BluetoothDun;

    move-result-object v6

    .line 763
    .local v6, bluetoothDun:Landroid/bluetooth/BluetoothDun;
    const/16 v19, 0xc

    move/from16 v0, v19

    if-ne v10, v0, :cond_12

    if-eqz v8, :cond_b

    invoke-virtual {v8}, Landroid/bluetooth/BluetoothPan;->isTetheringOn()Z

    move-result v19

    if-nez v19, :cond_c

    :cond_b
    if-eqz v6, :cond_12

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothDun;->isTetheringOn()Z

    move-result v19

    if-eqz v19, :cond_12

    .line 766
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 767
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 768
    const/4 v9, 0x0

    .line 769
    .local v9, bluetoothTethered:I
    if-eqz v8, :cond_d

    invoke-virtual {v8}, Landroid/bluetooth/BluetoothPan;->isTetheringOn()Z

    move-result v19

    if-eqz v19, :cond_d

    .line 770
    invoke-virtual {v8}, Landroid/bluetooth/BluetoothPan;->getConnectedDevices()Ljava/util/List;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v9

    .line 771
    const-string v19, "TetherSettings"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "bluetooth Tethered PAN devices = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    :cond_d
    if-eqz v6, :cond_e

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothDun;->isTetheringOn()Z

    move-result v19

    if-eqz v19, :cond_e

    .line 774
    invoke-virtual {v6}, Landroid/bluetooth/BluetoothDun;->getConnectedDevices()Ljava/util/Set;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/Set;->size()I

    move-result v19

    add-int v9, v9, v19

    .line 775
    const-string v19, "TetherSettings"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "bluetooth tethered total devices = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    :cond_e
    const/16 v19, 0x1

    move/from16 v0, v19

    if-le v9, v0, :cond_f

    .line 779
    const v19, 0x7f0905b5

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    .line 783
    .local v18, summary:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/jrdsettings/TetherSettings;->mBtErrorIpv4:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/jrdsettings/TetherSettings;->mBtErrorIpv6:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/jrdsettings/TetherSettings;->getIPV6String(II)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 787
    .end local v18           #summary:Ljava/lang/String;
    :cond_f
    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v9, v0, :cond_10

    .line 789
    const v19, 0x7f0905b4

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 791
    .restart local v18       #summary:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/jrdsettings/TetherSettings;->mBtErrorIpv4:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/jrdsettings/TetherSettings;->mBtErrorIpv6:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/jrdsettings/TetherSettings;->getIPV6String(II)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 796
    .end local v18           #summary:Ljava/lang/String;
    :cond_10
    if-eqz v7, :cond_11

    .line 797
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v19, v0

    const v20, 0x7f0905b7

    invoke-virtual/range {v19 .. v20}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_5

    .line 800
    :cond_11
    const v19, 0x7f0905b3

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 802
    .restart local v18       #summary:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/jrdsettings/TetherSettings;->mBtErrorIpv4:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/jrdsettings/TetherSettings;->mBtErrorIpv6:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/jrdsettings/TetherSettings;->getIPV6String(II)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 809
    .end local v9           #bluetoothTethered:I
    .end local v18           #summary:Ljava/lang/String;
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 810
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 811
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v19, v0

    const v20, 0x7f0905b6

    invoke-virtual/range {v19 .. v20}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_5
.end method

.method private updateIpv6Preference()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 274
    iget-object v2, p0, Lcom/android/jrdsettings/TetherSettings;->mTetherIpv6:Landroid/preference/ListPreference;

    if-eqz v2, :cond_0

    .line 275
    iget-object v5, p0, Lcom/android/jrdsettings/TetherSettings;->mTetherIpv6:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/jrdsettings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/jrdsettings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/jrdsettings/TetherSettings;->mWifiTether:Lcom/mediatek/wifi/hotspot/HotspotSwitchPreference;

    invoke-virtual {v2}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v2

    if-nez v2, :cond_1

    move v2, v3

    :goto_0
    invoke-virtual {v5, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 278
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 280
    .local v0, cm:Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_0

    .line 281
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getTetheringIpv6Enable()Z

    move-result v2

    if-eqz v2, :cond_2

    move v1, v3

    .line 282
    .local v1, ipv6Value:I
    :goto_1
    iget-object v2, p0, Lcom/android/jrdsettings/TetherSettings;->mTetherIpv6:Landroid/preference/ListPreference;

    invoke-virtual {v2, v1}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 283
    iget-object v2, p0, Lcom/android/jrdsettings/TetherSettings;->mTetherIpv6:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a008b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 287
    .end local v0           #cm:Landroid/net/ConnectivityManager;
    .end local v1           #ipv6Value:I
    :cond_0
    return-void

    :cond_1
    move v2, v4

    .line 275
    goto :goto_0

    .restart local v0       #cm:Landroid/net/ConnectivityManager;
    :cond_2
    move v1, v4

    .line 281
    goto :goto_1
.end method

.method private updateState()V
    .locals 5

    .prologue
    .line 518
    const-string v4, "connectivity"

    invoke-virtual {p0, v4}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 521
    .local v1, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getTetherableIfaces()[Ljava/lang/String;

    move-result-object v0

    .line 522
    .local v0, available:[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v3

    .line 523
    .local v3, tethered:[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getTetheringErroredIfaces()[Ljava/lang/String;

    move-result-object v2

    .line 524
    .local v2, errored:[Ljava/lang/String;
    invoke-direct {p0, v0, v3, v2}, Lcom/android/jrdsettings/TetherSettings;->updateState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 525
    return-void
.end method

.method private updateState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 5
    .parameter "available"
    .parameter "tethered"
    .parameter "errored"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 530
    iget-boolean v0, p0, Lcom/android/jrdsettings/TetherSettings;->mUsbInternetSharing:Z

    if-eqz v0, :cond_0

    .line 531
    iget-object v0, p0, Lcom/android/jrdsettings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 532
    iget-object v0, p0, Lcom/android/jrdsettings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 533
    const-string v0, "TetherSettings"

    const-string v1, "usb internet is connected, return"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    :goto_0
    return-void

    .line 537
    :cond_0
    const-string v0, "TetherSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "=======> updateState - mUsbConnected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/jrdsettings/TetherSettings;->mUsbConnected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mUsbConfigured:  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/jrdsettings/TetherSettings;->mUsbConfigured:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mUsbHwDisconnected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/jrdsettings/TetherSettings;->mUsbHwDisconnected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", checked: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/jrdsettings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mUsbUnTetherDone: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/jrdsettings/TetherSettings;->mUsbUnTetherDone:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mUsbTetherDone: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/jrdsettings/TetherSettings;->mUsbTetherDone:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", tetherfail: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/jrdsettings/TetherSettings;->mUsbTetherFail:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mIsPcKnowMe: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/jrdsettings/TetherSettings;->mIsPcKnowMe:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    iget-object v0, p0, Lcom/android/jrdsettings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 546
    iget-boolean v0, p0, Lcom/android/jrdsettings/TetherSettings;->mUsbConnected:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/jrdsettings/TetherSettings;->mUsbConfigured:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/jrdsettings/TetherSettings;->mUsbHwDisconnected:Z

    if-nez v0, :cond_3

    .line 547
    iget-boolean v0, p0, Lcom/android/jrdsettings/TetherSettings;->mUsbTetherFail:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/jrdsettings/TetherSettings;->mUsbTetherDone:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/jrdsettings/TetherSettings;->mIsPcKnowMe:Z

    if-nez v0, :cond_2

    .line 548
    :cond_1
    iput-boolean v4, p0, Lcom/android/jrdsettings/TetherSettings;->mUsbTetherCheckEnable:Z

    .line 563
    :cond_2
    :goto_1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/jrdsettings/TetherSettings;->updateUsbState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 564
    invoke-direct {p0, p1, p2, p3}, Lcom/android/jrdsettings/TetherSettings;->updateBluetoothState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 567
    invoke-direct {p0}, Lcom/android/jrdsettings/TetherSettings;->updateIpv6Preference()V

    goto/16 :goto_0

    .line 551
    :cond_3
    iput-boolean v3, p0, Lcom/android/jrdsettings/TetherSettings;->mUsbTetherCheckEnable:Z

    goto :goto_1

    .line 554
    :cond_4
    iget-boolean v0, p0, Lcom/android/jrdsettings/TetherSettings;->mUsbConnected:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/android/jrdsettings/TetherSettings;->mUsbHwDisconnected:Z

    if-nez v0, :cond_6

    .line 555
    iget-boolean v0, p0, Lcom/android/jrdsettings/TetherSettings;->mUsbUnTetherDone:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/android/jrdsettings/TetherSettings;->mUsbTetherFail:Z

    if-eqz v0, :cond_2

    .line 556
    :cond_5
    iput-boolean v4, p0, Lcom/android/jrdsettings/TetherSettings;->mUsbTetherCheckEnable:Z

    goto :goto_1

    .line 559
    :cond_6
    iput-boolean v3, p0, Lcom/android/jrdsettings/TetherSettings;->mUsbTetherCheckEnable:Z

    goto :goto_1
.end method

.method private updateUsbState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 21
    .parameter "available"
    .parameter "tethered"
    .parameter "errored"

    .prologue
    .line 574
    const-string v18, "connectivity"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/ConnectivityManager;

    .line 576
    .local v4, cm:Landroid/net/ConnectivityManager;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/jrdsettings/TetherSettings;->mUsbConnected:Z

    move/from16 v18, v0

    if-eqz v18, :cond_2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/jrdsettings/TetherSettings;->mMassStorageActive:Z

    move/from16 v18, v0

    if-nez v18, :cond_2

    const/4 v12, 0x1

    .line 578
    .local v12, usbAvailable:Z
    :goto_0
    const/4 v13, 0x0

    .line 583
    .local v13, usbError:I
    const/4 v14, 0x0

    .line 584
    .local v14, usbErrorIpv4:I
    const/16 v15, 0x10

    .line 587
    .local v15, usbErrorIpv6:I
    move-object/from16 v2, p1

    .local v2, arr$:[Ljava/lang/String;
    array-length v7, v2

    .local v7, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    move v6, v5

    .end local v2           #arr$:[Ljava/lang/String;
    .end local v5           #i$:I
    .end local v7           #len$:I
    .local v6, i$:I
    :goto_1
    if-ge v6, v7, :cond_4

    aget-object v10, v2, v6

    .line 588
    .local v10, s:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/jrdsettings/TetherSettings;->mUsbRegexs:[Ljava/lang/String;

    .local v3, arr$:[Ljava/lang/String;
    array-length v8, v3

    .local v8, len$:I
    const/4 v5, 0x0

    .end local v6           #i$:I
    .restart local v5       #i$:I
    :goto_2
    if-ge v5, v8, :cond_3

    aget-object v9, v3, v5

    .line 589
    .local v9, regex:Ljava/lang/String;
    invoke-virtual {v10, v9}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_1

    if-eqz v4, :cond_1

    .line 592
    if-nez v14, :cond_0

    .line 593
    invoke-virtual {v4, v10}, Landroid/net/ConnectivityManager;->getLastTetherError(Ljava/lang/String;)I

    move-result v18

    and-int/lit8 v14, v18, 0xf

    .line 595
    :cond_0
    const/16 v18, 0x10

    move/from16 v0, v18

    if-ne v15, v0, :cond_1

    .line 596
    invoke-virtual {v4, v10}, Landroid/net/ConnectivityManager;->getLastTetherError(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    and-int/lit16 v15, v0, 0xf0

    .line 588
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 576
    .end local v3           #arr$:[Ljava/lang/String;
    .end local v5           #i$:I
    .end local v8           #len$:I
    .end local v9           #regex:Ljava/lang/String;
    .end local v10           #s:Ljava/lang/String;
    .end local v12           #usbAvailable:Z
    .end local v13           #usbError:I
    .end local v14           #usbErrorIpv4:I
    .end local v15           #usbErrorIpv6:I
    :cond_2
    const/4 v12, 0x0

    goto :goto_0

    .line 587
    .restart local v3       #arr$:[Ljava/lang/String;
    .restart local v5       #i$:I
    .restart local v8       #len$:I
    .restart local v10       #s:Ljava/lang/String;
    .restart local v12       #usbAvailable:Z
    .restart local v13       #usbError:I
    .restart local v14       #usbErrorIpv4:I
    .restart local v15       #usbErrorIpv6:I
    :cond_3
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    .end local v5           #i$:I
    .restart local v6       #i$:I
    goto :goto_1

    .line 608
    .end local v3           #arr$:[Ljava/lang/String;
    .end local v8           #len$:I
    .end local v10           #s:Ljava/lang/String;
    :cond_4
    const/16 v17, 0x0

    .line 609
    .local v17, usbTethered:Z
    move-object/from16 v2, p2

    .restart local v2       #arr$:[Ljava/lang/String;
    array-length v7, v2

    .restart local v7       #len$:I
    const/4 v5, 0x0

    .end local v6           #i$:I
    .restart local v5       #i$:I
    move v6, v5

    .end local v2           #arr$:[Ljava/lang/String;
    .end local v5           #i$:I
    .end local v7           #len$:I
    .restart local v6       #i$:I
    :goto_3
    if-ge v6, v7, :cond_7

    aget-object v10, v2, v6

    .line 610
    .restart local v10       #s:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/jrdsettings/TetherSettings;->mUsbRegexs:[Ljava/lang/String;

    .restart local v3       #arr$:[Ljava/lang/String;
    array-length v8, v3

    .restart local v8       #len$:I
    const/4 v5, 0x0

    .end local v6           #i$:I
    .restart local v5       #i$:I
    :goto_4
    if-ge v5, v8, :cond_6

    aget-object v9, v3, v5

    .line 611
    .restart local v9       #regex:Ljava/lang/String;
    invoke-virtual {v10, v9}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 612
    const/16 v17, 0x1

    .line 614
    if-eqz v4, :cond_5

    .line 615
    const/16 v18, 0x10

    move/from16 v0, v18

    if-ne v15, v0, :cond_5

    .line 616
    invoke-virtual {v4, v10}, Landroid/net/ConnectivityManager;->getLastTetherError(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    and-int/lit16 v15, v0, 0xf0

    .line 610
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 609
    .end local v9           #regex:Ljava/lang/String;
    :cond_6
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    .end local v5           #i$:I
    .restart local v6       #i$:I
    goto :goto_3

    .line 624
    .end local v3           #arr$:[Ljava/lang/String;
    .end local v8           #len$:I
    .end local v10           #s:Ljava/lang/String;
    :cond_7
    const/16 v16, 0x0

    .line 625
    .local v16, usbErrored:Z
    move-object/from16 v2, p3

    .restart local v2       #arr$:[Ljava/lang/String;
    array-length v7, v2

    .restart local v7       #len$:I
    const/4 v5, 0x0

    .end local v6           #i$:I
    .restart local v5       #i$:I
    move v6, v5

    .end local v2           #arr$:[Ljava/lang/String;
    .end local v5           #i$:I
    .end local v7           #len$:I
    .restart local v6       #i$:I
    :goto_5
    if-ge v6, v7, :cond_a

    aget-object v10, v2, v6

    .line 626
    .restart local v10       #s:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/jrdsettings/TetherSettings;->mUsbRegexs:[Ljava/lang/String;

    .restart local v3       #arr$:[Ljava/lang/String;
    array-length v8, v3

    .restart local v8       #len$:I
    const/4 v5, 0x0

    .end local v6           #i$:I
    .restart local v5       #i$:I
    :goto_6
    if-ge v5, v8, :cond_9

    aget-object v9, v3, v5

    .line 627
    .restart local v9       #regex:Ljava/lang/String;
    invoke-virtual {v10, v9}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_8

    .line 628
    const/16 v16, 0x1

    .line 626
    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 625
    .end local v9           #regex:Ljava/lang/String;
    :cond_9
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    .end local v5           #i$:I
    .restart local v6       #i$:I
    goto :goto_5

    .line 633
    .end local v3           #arr$:[Ljava/lang/String;
    .end local v8           #len$:I
    .end local v10           #s:Ljava/lang/String;
    :cond_a
    const-string v18, "TetherSettings"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "updateUsbState - usbTethered : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " usbErrored: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " usbAvailable: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    if-eqz v17, :cond_b

    .line 637
    const-string v18, "TetherSettings"

    const-string v19, "updateUsbState: usbTethered ! mUsbTether checkbox setEnabled & checked "

    invoke-static/range {v18 .. v19}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 639
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 641
    const v18, 0x7f0905ae

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 643
    .local v11, summary:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/android/jrdsettings/TetherSettings;->getIPV6String(II)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 647
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/jrdsettings/TetherSettings;->mUsbTethering:Z

    .line 648
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/TetherSettings;->mUsbTetherType:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 649
    const-string v18, "TetherSettings"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "updateUsbState - usbTethered - mUsbTetherCheckEnable: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/jrdsettings/TetherSettings;->mUsbTetherCheckEnable:Z

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    .end local v11           #summary:Ljava/lang/String;
    :goto_7
    return-void

    .line 652
    :cond_b
    if-eqz v12, :cond_f

    .line 655
    if-eqz v14, :cond_c

    const/16 v18, 0x10

    move/from16 v0, v18

    if-ne v14, v0, :cond_e

    .line 657
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    const v19, 0x7f0905ad

    invoke-virtual/range {v18 .. v19}, Landroid/preference/Preference;->setSummary(I)V

    .line 669
    :goto_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/jrdsettings/TetherSettings;->mUsbTetherCheckEnable:Z

    move/from16 v18, v0

    if-eqz v18, :cond_d

    .line 670
    const-string v18, "TetherSettings"

    const-string v19, "updateUsbState - mUsbTetherCheckEnable, mUsbTether checkbox setEnabled, and set unchecked "

    invoke-static/range {v18 .. v19}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 673
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 675
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/jrdsettings/TetherSettings;->mUsbTethering:Z

    .line 676
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/TetherSettings;->mUsbTetherType:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 678
    :cond_d
    const-string v18, "TetherSettings"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "updateUsbState - usbAvailable - mUsbConfigured:  "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/jrdsettings/TetherSettings;->mUsbConfigured:Z

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " mUsbTethering: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/jrdsettings/TetherSettings;->mUsbTethering:Z

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " mUsbTetherCheckEnable: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/jrdsettings/TetherSettings;->mUsbTetherCheckEnable:Z

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 659
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    const v19, 0x7f0905b1

    invoke-virtual/range {v18 .. v19}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_8

    .line 681
    :cond_f
    if-eqz v16, :cond_10

    .line 682
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    const v19, 0x7f0905b1

    invoke-virtual/range {v18 .. v19}, Landroid/preference/Preference;->setSummary(I)V

    .line 683
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 684
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 686
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/jrdsettings/TetherSettings;->mUsbTethering:Z

    goto/16 :goto_7

    .line 687
    :cond_10
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/jrdsettings/TetherSettings;->mMassStorageActive:Z

    move/from16 v18, v0

    if-eqz v18, :cond_11

    .line 688
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    const v19, 0x7f0905af

    invoke-virtual/range {v18 .. v19}, Landroid/preference/Preference;->setSummary(I)V

    .line 689
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 690
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 692
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/jrdsettings/TetherSettings;->mUsbTethering:Z

    goto/16 :goto_7

    .line 694
    :cond_11
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/jrdsettings/TetherSettings;->mUsbHwDisconnected:Z

    move/from16 v18, v0

    if-nez v18, :cond_12

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/jrdsettings/TetherSettings;->mUsbHwDisconnected:Z

    move/from16 v18, v0

    if-nez v18, :cond_13

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/jrdsettings/TetherSettings;->mUsbConnected:Z

    move/from16 v18, v0

    if-nez v18, :cond_13

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/jrdsettings/TetherSettings;->mUsbConfigured:Z

    move/from16 v18, v0

    if-nez v18, :cond_13

    .line 695
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    const v19, 0x7f0905b0

    invoke-virtual/range {v18 .. v19}, Landroid/preference/Preference;->setSummary(I)V

    .line 696
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 697
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 698
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/jrdsettings/TetherSettings;->mUsbTethering:Z

    .line 710
    :goto_9
    const-string v18, "TetherSettings"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "updateUsbState- usbAvailable- mUsbHwDisconnected:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/jrdsettings/TetherSettings;->mUsbHwDisconnected:Z

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 701
    :cond_13
    const-string v18, "TetherSettings"

    const-string v19, "updateUsbState - else, mUsbTether checkbox setEnabled, and set unchecked "

    invoke-static/range {v18 .. v19}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    const v19, 0x7f0905ad

    invoke-virtual/range {v18 .. v19}, Landroid/preference/Preference;->setSummary(I)V

    .line 704
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 705
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 706
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/jrdsettings/TetherSettings;->mUsbTethering:Z

    .line 707
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/TetherSettings;->mUsbTetherType:Landroid/preference/ListPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_9
.end method


# virtual methods
.method public getHelpResource()I
    .locals 1

    .prologue
    .line 1056
    const v0, 0x7f09090e

    return v0
.end method

.method public getIPV6String(II)Ljava/lang/String;
    .locals 5
    .parameter "errorIpv4"
    .parameter "errorIpv6"

    .prologue
    const/16 v4, 0x20

    .line 832
    const-string v0, ""

    .line 833
    .local v0, text:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/jrdsettings/TetherSettings;->mTetherIpv6:Landroid/preference/ListPreference;

    if-eqz v1, :cond_0

    const-string v1, "1"

    iget-object v2, p0, Lcom/android/jrdsettings/TetherSettings;->mTetherIpv6:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 834
    const-string v1, "TetherSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[errorIpv4 ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "];"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "[errorIpv6 ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "];"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    if-nez p1, :cond_1

    if-ne p2, v4, :cond_1

    .line 837
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09010b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 844
    :cond_0
    :goto_0
    return-object v0

    .line 838
    :cond_1
    if-nez p1, :cond_2

    .line 839
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09010d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 840
    :cond_2
    if-ne p2, v4, :cond_0

    .line 841
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09010c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method isProvisioningNeeded()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 874
    const-string v1, "net.tethering.noprovisioning"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 877
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/jrdsettings/TetherSettings;->mProvisionApp:[Ljava/lang/String;

    array-length v1, v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 892
    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 893
    if-nez p1, :cond_0

    .line 894
    if-ne p2, v1, :cond_1

    .line 895
    invoke-direct {p0}, Lcom/android/jrdsettings/TetherSettings;->startTethering()V

    .line 912
    :cond_0
    :goto_0
    return-void

    .line 899
    :cond_1
    iget v0, p0, Lcom/android/jrdsettings/TetherSettings;->mTetherChoice:I

    packed-switch v0, :pswitch_data_0

    .line 909
    :goto_1
    iput v1, p0, Lcom/android/jrdsettings/TetherSettings;->mTetherChoice:I

    goto :goto_0

    .line 901
    :pswitch_0
    iget-object v0, p0, Lcom/android/jrdsettings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_1

    .line 904
    :pswitch_1
    iget-object v0, p0, Lcom/android/jrdsettings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_1

    .line 899
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 14
    .parameter "icicle"

    .prologue
    const v13, 0x7f0c0012

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 175
    invoke-super {p0, p1}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 176
    const v8, 0x7f060046

    invoke-virtual {p0, v8}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 179
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/android/jrdsettings/Utils;->getApnSettingsPlugin(Landroid/content/Context;)Lcom/mediatek/settings/ext/IApnSettingsExt;

    move-result-object v8

    iput-object v8, p0, Lcom/android/jrdsettings/TetherSettings;->mExt:Lcom/mediatek/settings/ext/IApnSettingsExt;

    .line 181
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 182
    .local v0, activity:Landroid/app/Activity;
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    .line 183
    .local v1, adapter:Landroid/bluetooth/BluetoothAdapter;
    if-eqz v1, :cond_0

    .line 184
    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    iget-object v11, p0, Lcom/android/jrdsettings/TetherSettings;->mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v12, 0x5

    invoke-virtual {v1, v8, v11, v12}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 188
    :cond_0
    new-instance v8, Landroid/bluetooth/BluetoothDun;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    iget-object v12, p0, Lcom/android/jrdsettings/TetherSettings;->mDunServiceListener:Landroid/bluetooth/BluetoothDun$ServiceListener;

    invoke-direct {v8, v11, v12}, Landroid/bluetooth/BluetoothDun;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothDun$ServiceListener;)V

    iput-object v8, p0, Lcom/android/jrdsettings/TetherSettings;->mBluetoothDunProxy:Landroid/bluetooth/BluetoothDun;

    .line 189
    const-string v8, "wifi_tether_settings"

    invoke-virtual {p0, v8}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Lcom/mediatek/wifi/hotspot/HotspotSwitchPreference;

    iput-object v8, p0, Lcom/android/jrdsettings/TetherSettings;->mWifiTether:Lcom/mediatek/wifi/hotspot/HotspotSwitchPreference;

    .line 190
    iget-object v8, p0, Lcom/android/jrdsettings/TetherSettings;->mWifiTether:Lcom/mediatek/wifi/hotspot/HotspotSwitchPreference;

    invoke-virtual {v8, v10}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 193
    const-string v8, "usb_tether_settings"

    invoke-virtual {p0, v8}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/CheckBoxPreference;

    iput-object v8, p0, Lcom/android/jrdsettings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    .line 194
    const-string v8, "enable_bluetooth_tethering"

    invoke-virtual {p0, v8}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/CheckBoxPreference;

    iput-object v8, p0, Lcom/android/jrdsettings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    .line 196
    const-string v8, "tethered_ipv6"

    invoke-virtual {p0, v8}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/ListPreference;

    iput-object v8, p0, Lcom/android/jrdsettings/TetherSettings;->mTetherIpv6:Landroid/preference/ListPreference;

    .line 197
    const-string v8, "tethering_help"

    invoke-virtual {p0, v8}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/PreferenceScreen;

    iput-object v8, p0, Lcom/android/jrdsettings/TetherSettings;->mTetherHelp:Landroid/preference/PreferenceScreen;

    .line 199
    const-string v8, "connectivity"

    invoke-virtual {p0, v8}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ConnectivityManager;

    .line 203
    .local v3, cm:Landroid/net/ConnectivityManager;
    const-string v8, "usb_tethering_type"

    invoke-virtual {p0, v8}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/ListPreference;

    iput-object v8, p0, Lcom/android/jrdsettings/TetherSettings;->mUsbTetherType:Landroid/preference/ListPreference;

    .line 205
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    iget-object v11, p0, Lcom/android/jrdsettings/TetherSettings;->mUsbTetherType:Landroid/preference/ListPreference;

    invoke-virtual {v8, v11}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 209
    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/jrdsettings/TetherSettings;->mUsbRegexs:[Ljava/lang/String;

    .line 210
    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/jrdsettings/TetherSettings;->mWifiRegexs:[Ljava/lang/String;

    .line 211
    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getTetherableBluetoothRegexs()[Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/jrdsettings/TetherSettings;->mBluetoothRegexs:[Ljava/lang/String;

    .line 213
    iget-object v8, p0, Lcom/android/jrdsettings/TetherSettings;->mUsbRegexs:[Ljava/lang/String;

    array-length v8, v8

    if-eqz v8, :cond_4

    move v6, v9

    .line 214
    .local v6, usbAvailable:Z
    :goto_0
    iget-object v8, p0, Lcom/android/jrdsettings/TetherSettings;->mWifiRegexs:[Ljava/lang/String;

    array-length v8, v8

    if-eqz v8, :cond_5

    move v7, v9

    .line 215
    .local v7, wifiAvailable:Z
    :goto_1
    iget-object v8, p0, Lcom/android/jrdsettings/TetherSettings;->mBluetoothRegexs:[Ljava/lang/String;

    array-length v8, v8

    if-eqz v8, :cond_6

    move v2, v9

    .line 217
    .local v2, bluetoothAvailable:Z
    :goto_2
    if-eqz v6, :cond_1

    invoke-static {}, Lcom/android/jrdsettings/Utils;->isMonkeyRunning()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 218
    :cond_1
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    iget-object v11, p0, Lcom/android/jrdsettings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8, v11}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 219
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    iget-object v11, p0, Lcom/android/jrdsettings/TetherSettings;->mUsbTetherType:Landroid/preference/ListPreference;

    invoke-virtual {v8, v11}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 224
    :cond_2
    if-eqz v7, :cond_7

    invoke-static {}, Lcom/android/jrdsettings/Utils;->isMonkeyRunning()Z

    move-result v8

    if-nez v8, :cond_7

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v13}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    if-ne v8, v9, :cond_7

    .line 227
    new-instance v8, Lcom/android/jrdsettings/wifi/WifiApEnabler;

    iget-object v11, p0, Lcom/android/jrdsettings/TetherSettings;->mWifiTether:Lcom/mediatek/wifi/hotspot/HotspotSwitchPreference;

    invoke-direct {v8, v0, v11}, Lcom/android/jrdsettings/wifi/WifiApEnabler;-><init>(Landroid/content/Context;Lcom/mediatek/wifi/hotspot/HotspotSwitchPreference;)V

    iput-object v8, p0, Lcom/android/jrdsettings/TetherSettings;->mWifiApEnabler:Lcom/android/jrdsettings/wifi/WifiApEnabler;

    .line 228
    iget-object v8, p0, Lcom/android/jrdsettings/TetherSettings;->mWifiApEnabler:Lcom/android/jrdsettings/wifi/WifiApEnabler;

    invoke-virtual {v8, p0}, Lcom/android/jrdsettings/wifi/WifiApEnabler;->setTetherSettings(Lcom/android/jrdsettings/TetherSettings;)V

    .line 233
    :goto_3
    if-nez v2, :cond_8

    .line 234
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    iget-object v10, p0, Lcom/android/jrdsettings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8, v10}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 248
    :goto_4
    iget-object v8, p0, Lcom/android/jrdsettings/TetherSettings;->mExt:Lcom/mediatek/settings/ext/IApnSettingsExt;

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    invoke-interface {v8, v10}, Lcom/mediatek/settings/ext/IApnSettingsExt;->customizeTetherApnSettings(Landroid/preference/PreferenceScreen;)V

    .line 250
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v10, 0x1070022

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/jrdsettings/TetherSettings;->mProvisionApp:[Ljava/lang/String;

    .line 253
    new-instance v8, Landroid/webkit/WebView;

    invoke-direct {v8, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/android/jrdsettings/TetherSettings;->mView:Landroid/webkit/WebView;

    .line 257
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v13}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    if-ne v8, v9, :cond_c

    .line 260
    iget-object v8, p0, Lcom/android/jrdsettings/TetherSettings;->mTetherIpv6:Landroid/preference/ListPreference;

    if-eqz v8, :cond_3

    .line 261
    iget-object v8, p0, Lcom/android/jrdsettings/TetherSettings;->mTetherIpv6:Landroid/preference/ListPreference;

    invoke-virtual {v8, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 266
    :cond_3
    :goto_5
    invoke-direct {p0}, Lcom/android/jrdsettings/TetherSettings;->getMountService()Landroid/os/storage/IMountService;

    .line 268
    return-void

    .end local v2           #bluetoothAvailable:Z
    .end local v6           #usbAvailable:Z
    .end local v7           #wifiAvailable:Z
    :cond_4
    move v6, v10

    .line 213
    goto/16 :goto_0

    .restart local v6       #usbAvailable:Z
    :cond_5
    move v7, v10

    .line 214
    goto/16 :goto_1

    .restart local v7       #wifiAvailable:Z
    :cond_6
    move v2, v10

    .line 215
    goto :goto_2

    .line 230
    .restart local v2       #bluetoothAvailable:Z
    :cond_7
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    iget-object v11, p0, Lcom/android/jrdsettings/TetherSettings;->mWifiTether:Lcom/mediatek/wifi/hotspot/HotspotSwitchPreference;

    invoke-virtual {v8, v11}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_3

    .line 236
    :cond_8
    iget-object v8, p0, Lcom/android/jrdsettings/TetherSettings;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/bluetooth/BluetoothPan;

    .line 238
    .local v5, pan:Landroid/bluetooth/BluetoothPan;
    invoke-direct {p0}, Lcom/android/jrdsettings/TetherSettings;->BluetoothDunGetProxy()Landroid/bluetooth/BluetoothDun;

    move-result-object v4

    .line 239
    .local v4, dun:Landroid/bluetooth/BluetoothDun;
    if-eqz v5, :cond_9

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothPan;->isTetheringOn()Z

    move-result v8

    if-nez v8, :cond_a

    :cond_9
    if-eqz v4, :cond_b

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDun;->isTetheringOn()Z

    move-result v8

    if-eqz v8, :cond_b

    .line 241
    :cond_a
    iget-object v8, p0, Lcom/android/jrdsettings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8, v9}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_4

    .line 243
    :cond_b
    iget-object v8, p0, Lcom/android/jrdsettings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8, v10}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_4

    .line 264
    .end local v4           #dun:Landroid/bluetooth/BluetoothDun;
    .end local v5           #pan:Landroid/bluetooth/BluetoothPan;
    :cond_c
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    iget-object v9, p0, Lcom/android/jrdsettings/TetherSettings;->mTetherIpv6:Landroid/preference/ListPreference;

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_5
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 1134
    const-string v1, "TetherSettings"

    const-string v2, "onDestroy()!!!!"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1135
    iget-object v1, p0, Lcom/android/jrdsettings/TetherSettings;->mView:Landroid/webkit/WebView;

    if-eqz v1, :cond_1

    .line 1136
    iget-object v1, p0, Lcom/android/jrdsettings/TetherSettings;->mView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 1137
    .local v0, parent:Landroid/view/ViewParent;
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 1138
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0           #parent:Landroid/view/ViewParent;
    iget-object v1, p0, Lcom/android/jrdsettings/TetherSettings;->mView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1140
    :cond_0
    iget-object v1, p0, Lcom/android/jrdsettings/TetherSettings;->mView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1141
    iget-object v1, p0, Lcom/android/jrdsettings/TetherSettings;->mView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->destroy()V

    .line 1143
    :cond_1
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroy()V

    .line 1144
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 303
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 304
    iget-object v0, p0, Lcom/android/jrdsettings/TetherSettings;->mWifiApEnabler:Lcom/android/jrdsettings/wifi/WifiApEnabler;

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/android/jrdsettings/TetherSettings;->mWifiApEnabler:Lcom/android/jrdsettings/wifi/WifiApEnabler;

    invoke-virtual {v0}, Lcom/android/jrdsettings/wifi/WifiApEnabler;->pause()V

    .line 307
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 8
    .parameter "preference"
    .parameter "value"

    .prologue
    const/4 v5, 0x1

    .line 848
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 849
    .local v3, key:Ljava/lang/String;
    const-string v4, "TetherSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onPreferenceChange key="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    const-string v4, "tethered_ipv6"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 852
    const-string v4, "connectivity"

    invoke-virtual {p0, v4}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 854
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 855
    .local v2, ipv6Value:I
    if-eqz v0, :cond_0

    .line 856
    if-ne v2, v5, :cond_2

    move v4, v5

    :goto_0
    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->setTetheringIpv6Enable(Z)V

    .line 858
    :cond_0
    iget-object v4, p0, Lcom/android/jrdsettings/TetherSettings;->mTetherIpv6:Landroid/preference/ListPreference;

    invoke-virtual {v4, v2}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 859
    iget-object v4, p0, Lcom/android/jrdsettings/TetherSettings;->mTetherIpv6:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a008b

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v2

    invoke-virtual {v4, v6}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 870
    .end local v0           #cm:Landroid/net/ConnectivityManager;
    .end local v2           #ipv6Value:I
    .end local p2
    :cond_1
    :goto_1
    return v5

    .line 856
    .restart local v0       #cm:Landroid/net/ConnectivityManager;
    .restart local v2       #ipv6Value:I
    .restart local p2
    :cond_2
    const/4 v4, 0x0

    goto :goto_0

    .line 862
    .end local v0           #cm:Landroid/net/ConnectivityManager;
    .end local v2           #ipv6Value:I
    :cond_3
    const-string v4, "usb_tethering_type"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 863
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 864
    .local v1, index:I
    invoke-virtual {p0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "usb_tethering_type"

    invoke-static {v4, v6, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 865
    iget-object v4, p0, Lcom/android/jrdsettings/TetherSettings;->mUsbTetherType:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a008d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v1

    invoke-virtual {v4, v6}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 868
    const-string v4, "TetherSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onPreferenceChange USB_TETHERING_TYPE value = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 12
    .parameter "screen"
    .parameter "preference"

    .prologue
    const/4 v11, 0x2

    const/4 v8, 0x1

    const/4 v10, 0x0

    .line 967
    const-string v9, "connectivity"

    invoke-virtual {p0, v9}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/ConnectivityManager;

    .line 970
    .local v4, cm:Landroid/net/ConnectivityManager;
    iget-object v9, p0, Lcom/android/jrdsettings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    if-ne p2, v9, :cond_4

    .line 971
    iget-boolean v9, p0, Lcom/android/jrdsettings/TetherSettings;->mUsbTethering:Z

    if-nez v9, :cond_1

    .line 972
    iget-object v9, p0, Lcom/android/jrdsettings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v9}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v6

    .line 975
    .local v6, newState:Z
    iget-object v9, p0, Lcom/android/jrdsettings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v9, v10}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 976
    iget-object v9, p0, Lcom/android/jrdsettings/TetherSettings;->mUsbTetherType:Landroid/preference/ListPreference;

    invoke-virtual {v9, v10}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 977
    iput-boolean v8, p0, Lcom/android/jrdsettings/TetherSettings;->mUsbTethering:Z

    .line 978
    iput-boolean v10, p0, Lcom/android/jrdsettings/TetherSettings;->mUsbTetherCheckEnable:Z

    .line 979
    if-eqz v6, :cond_2

    .line 980
    iput-boolean v10, p0, Lcom/android/jrdsettings/TetherSettings;->mUsbTetherDone:Z

    .line 984
    :goto_0
    iput-boolean v10, p0, Lcom/android/jrdsettings/TetherSettings;->mUsbTetherFail:Z

    .line 986
    const-string v9, "TetherSettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onPreferenceTreeClick - setusbTethering("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ") mUsbTethering:  "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Lcom/android/jrdsettings/TetherSettings;->mUsbTethering:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 990
    if-eqz v6, :cond_3

    .line 991
    invoke-direct {p0, v8}, Lcom/android/jrdsettings/TetherSettings;->startProvisioningIfNecessary(I)V

    .line 1040
    .end local v6           #newState:Z
    :cond_0
    :goto_1
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v8

    :cond_1
    :goto_2
    return v8

    .line 982
    .restart local v6       #newState:Z
    :cond_2
    iput-boolean v10, p0, Lcom/android/jrdsettings/TetherSettings;->mUsbUnTetherDone:Z

    goto :goto_0

    .line 993
    :cond_3
    invoke-direct {p0, v6}, Lcom/android/jrdsettings/TetherSettings;->setUsbTethering(Z)V

    goto :goto_1

    .line 998
    .end local v6           #newState:Z
    :cond_4
    iget-object v9, p0, Lcom/android/jrdsettings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    if-ne p2, v9, :cond_a

    .line 999
    iget-object v8, p0, Lcom/android/jrdsettings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v3

    .line 1001
    .local v3, bluetoothTetherState:Z
    if-eqz v3, :cond_5

    .line 1002
    invoke-direct {p0, v11}, Lcom/android/jrdsettings/TetherSettings;->startProvisioningIfNecessary(I)V

    .line 1031
    :goto_3
    invoke-direct {p0}, Lcom/android/jrdsettings/TetherSettings;->updateIpv6Preference()V

    goto :goto_1

    .line 1004
    :cond_5
    const/4 v5, 0x0

    .line 1006
    .local v5, errored:Z
    invoke-virtual {v4}, Landroid/net/ConnectivityManager;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v7

    .line 1007
    .local v7, tethered:[Ljava/lang/String;
    iget-object v8, p0, Lcom/android/jrdsettings/TetherSettings;->mBluetoothRegexs:[Ljava/lang/String;

    invoke-static {v7, v8}, Lcom/android/jrdsettings/TetherSettings;->findIface([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1008
    .local v1, bluetoothIface:Ljava/lang/String;
    if-eqz v1, :cond_6

    invoke-virtual {v4, v1}, Landroid/net/ConnectivityManager;->untether(Ljava/lang/String;)I

    move-result v8

    if-eqz v8, :cond_6

    .line 1010
    const/4 v5, 0x1

    .line 1013
    :cond_6
    iget-object v8, p0, Lcom/android/jrdsettings/TetherSettings;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothPan;

    .line 1014
    .local v2, bluetoothPan:Landroid/bluetooth/BluetoothPan;
    if-eqz v2, :cond_7

    .line 1015
    invoke-virtual {v2, v10}, Landroid/bluetooth/BluetoothPan;->setBluetoothTethering(Z)V

    .line 1018
    :cond_7
    invoke-direct {p0}, Lcom/android/jrdsettings/TetherSettings;->BluetoothDunGetProxy()Landroid/bluetooth/BluetoothDun;

    move-result-object v0

    .line 1019
    .local v0, bluetoothDun:Landroid/bluetooth/BluetoothDun;
    if-eqz v0, :cond_8

    .line 1020
    invoke-virtual {v0, v10}, Landroid/bluetooth/BluetoothDun;->setBluetoothTethering(Z)V

    .line 1023
    :cond_8
    if-eqz v5, :cond_9

    .line 1024
    iget-object v8, p0, Lcom/android/jrdsettings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    const v9, 0x7f0905b7

    invoke-virtual {v8, v9}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_3

    .line 1026
    :cond_9
    iget-object v8, p0, Lcom/android/jrdsettings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    const v9, 0x7f0905b6

    invoke-virtual {v8, v9}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_3

    .line 1035
    .end local v0           #bluetoothDun:Landroid/bluetooth/BluetoothDun;
    .end local v1           #bluetoothIface:Ljava/lang/String;
    .end local v2           #bluetoothPan:Landroid/bluetooth/BluetoothPan;
    .end local v3           #bluetoothTetherState:Z
    .end local v5           #errored:Z
    .end local v7           #tethered:[Ljava/lang/String;
    :cond_a
    iget-object v9, p0, Lcom/android/jrdsettings/TetherSettings;->mTetherHelp:Landroid/preference/PreferenceScreen;

    if-ne p2, v9, :cond_0

    .line 1036
    invoke-direct {p0, v11}, Lcom/android/jrdsettings/TetherSettings;->showTetherDialog(I)V

    goto :goto_2
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 291
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 292
    iget-object v1, p0, Lcom/android/jrdsettings/TetherSettings;->mWifiApEnabler:Lcom/android/jrdsettings/wifi/WifiApEnabler;

    if-eqz v1, :cond_0

    .line 293
    iget-object v1, p0, Lcom/android/jrdsettings/TetherSettings;->mWifiApEnabler:Lcom/android/jrdsettings/wifi/WifiApEnabler;

    invoke-virtual {v1}, Lcom/android/jrdsettings/wifi/WifiApEnabler;->resume()V

    .line 296
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 297
    .local v0, filter:Landroid/content/IntentFilter;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/jrdsettings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 299
    return-void
.end method

.method public onStart()V
    .locals 7

    .prologue
    .line 456
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onStart()V

    .line 458
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 461
    .local v0, activity:Landroid/app/Activity;
    invoke-direct {p0}, Lcom/android/jrdsettings/TetherSettings;->isUMSEnabled()Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/jrdsettings/TetherSettings;->mMassStorageActive:Z

    .line 462
    const-string v4, "TetherSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mMassStorageActive = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/jrdsettings/TetherSettings;->mMassStorageActive:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    new-instance v4, Lcom/android/jrdsettings/TetherSettings$TetherChangeReceiver;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/android/jrdsettings/TetherSettings$TetherChangeReceiver;-><init>(Lcom/android/jrdsettings/TetherSettings;Lcom/android/jrdsettings/TetherSettings$1;)V

    iput-object v4, p0, Lcom/android/jrdsettings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 464
    new-instance v1, Landroid/content/IntentFilter;

    const-string v4, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-direct {v1, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 465
    .local v1, filter:Landroid/content/IntentFilter;
    iget-object v4, p0, Lcom/android/jrdsettings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v4, v1}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v2

    .line 467
    .local v2, intent:Landroid/content/Intent;
    new-instance v1, Landroid/content/IntentFilter;

    .end local v1           #filter:Landroid/content/IntentFilter;
    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 468
    .restart local v1       #filter:Landroid/content/IntentFilter;
    const-string v4, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 469
    iget-object v4, p0, Lcom/android/jrdsettings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v4, v1}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 471
    new-instance v1, Landroid/content/IntentFilter;

    .end local v1           #filter:Landroid/content/IntentFilter;
    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 472
    .restart local v1       #filter:Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 473
    const-string v4, "android.intent.action.MEDIA_UNSHARED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 474
    const-string v4, "file"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 475
    iget-object v4, p0, Lcom/android/jrdsettings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v4, v1}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 477
    new-instance v1, Landroid/content/IntentFilter;

    .end local v1           #filter:Landroid/content/IntentFilter;
    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 478
    .restart local v1       #filter:Landroid/content/IntentFilter;
    const-string v4, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 479
    iget-object v4, p0, Lcom/android/jrdsettings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v4, v1}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 481
    new-instance v1, Landroid/content/IntentFilter;

    .end local v1           #filter:Landroid/content/IntentFilter;
    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 482
    .restart local v1       #filter:Landroid/content/IntentFilter;
    const-string v4, "mediatek.intent.action.USB_DATA_STATE"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 483
    iget-object v4, p0, Lcom/android/jrdsettings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v4, v1}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 486
    new-instance v1, Landroid/content/IntentFilter;

    .end local v1           #filter:Landroid/content/IntentFilter;
    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 487
    .restart local v1       #filter:Landroid/content/IntentFilter;
    const-string v4, "android.bluetooth.pan.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 488
    const-string v4, "android.bluetooth.profilemanager.action.STATE_CHANGED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 489
    iget-object v4, p0, Lcom/android/jrdsettings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v4, v1}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 492
    new-instance v1, Landroid/content/IntentFilter;

    .end local v1           #filter:Landroid/content/IntentFilter;
    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 493
    .restart local v1       #filter:Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 494
    iget-object v4, p0, Lcom/android/jrdsettings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v4, v1}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 496
    if-eqz v2, :cond_0

    .line 497
    iget-object v4, p0, Lcom/android/jrdsettings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v0, v2}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 499
    :cond_0
    iget-object v4, p0, Lcom/android/jrdsettings/TetherSettings;->mUsbTetherType:Landroid/preference/ListPreference;

    if-eqz v4, :cond_1

    .line 500
    iget-object v4, p0, Lcom/android/jrdsettings/TetherSettings;->mUsbTetherType:Landroid/preference/ListPreference;

    invoke-virtual {v4, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 501
    invoke-virtual {p0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "usb_tethering_type"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 503
    .local v3, value:I
    iget-object v4, p0, Lcom/android/jrdsettings/TetherSettings;->mUsbTetherType:Landroid/preference/ListPreference;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 504
    iget-object v4, p0, Lcom/android/jrdsettings/TetherSettings;->mUsbTetherType:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a008d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v3

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 507
    .end local v3           #value:I
    :cond_1
    invoke-direct {p0}, Lcom/android/jrdsettings/TetherSettings;->updateState()V

    .line 508
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 512
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onStop()V

    .line 513
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/jrdsettings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 514
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/jrdsettings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 515
    return-void
.end method
