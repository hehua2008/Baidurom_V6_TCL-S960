.class public final Lcom/android/jrdsettings/wfd/WifiDisplaySettings;
.super Lcom/android/jrdsettings/SettingsPreferenceFragment;
.source "WifiDisplaySettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/jrdsettings/wfd/WifiDisplaySettings$WifiDisplayPreference;
    }
.end annotation


# static fields
.field private static final ACTION_CLOSE_WFD:Ljava/lang/String; = "com.android.jrdsettings.wfd.action.CLOSE_WFD"

.field private static final ACTION_OPEN_WFD:Ljava/lang/String; = "com.android.jrdsettings.wfd.action.OPEN_WFD"

.field private static final DEFAULT_CLOSE_WFD_DELAY_MS:J = 0x7d0L

.field private static final DEFAULT_OPEN_WFD_DELAY_MS:J = 0x3e8L

.field private static final DISCONNECT_DIALOG_ID:I = 0x1

.field private static final FORGET_DIALOG_ID:I = 0x2

.field private static final MENU_ID_SCAN:I = 0x1

.field private static final OPTION_DIALOG_ID:I = 0x0

.field private static final TAG:Ljava/lang/String; = "WifiDisplaySettings"

.field private static final WFD_DISCONNECT_ACTION:Ljava/lang/String; = "com.mediatek.wfd.connection"

.field private static final WFD_DISCONNECT_CONNECT_EXTRA:Ljava/lang/String; = "connected"

.field private static final WFD_DISCONNECT_MAC_ADDRESS_EXTRA:Ljava/lang/String; = "device_address"

.field private static final WIFI_DISPLAY_IN_SETTINGS:Ljava/lang/String; = "is_wifi_display_in_settings"

.field private static mShouldCloseWfd:Z


# instance fields
.field private availableDisplays:[Landroid/hardware/display/WifiDisplay;

.field private mActionBarSwitch:Landroid/widget/Switch;

.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mAvailableDevicesCategory:Lcom/android/jrdsettings/ProgressCategory;

.field private mCloseWfdIntent:Landroid/app/PendingIntent;

.field private mDisconnectWifiDisplay:Landroid/hardware/display/WifiDisplay;

.field private mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mEmptyView:Landroid/widget/TextView;

.field private mExt:Lcom/mediatek/settings/wfd/WfdSettingsExt;

.field private mForgetWifiDisplay:Landroid/hardware/display/WifiDisplay;

.field private mIsTablet:Z

.field private mMultiShareManager:Lcom/android/jrdsettings/MultiShareManager;

.field private mNeedAutoConnect:Z

.field private mOpenWfdIntent:Landroid/app/PendingIntent;

.field private mOptionWifiDisplay:Landroid/hardware/display/WifiDisplay;

.field private mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private final mSettingsObserver:Landroid/database/ContentObserver;

.field private final mSwitchOnCheckedChangedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mWifiDisplayOnSetting:Z

.field private mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private pairedDisplays:[Landroid/hardware/display/WifiDisplay;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 137
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/jrdsettings/wfd/WifiDisplaySettings;->mShouldCloseWfd:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;-><init>()V

    .line 136
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/jrdsettings/wfd/WifiDisplaySettings;->mNeedAutoConnect:Z

    .line 621
    new-instance v0, Lcom/android/jrdsettings/wfd/WifiDisplaySettings$6;

    invoke-direct {v0, p0}, Lcom/android/jrdsettings/wfd/WifiDisplaySettings$6;-><init>(Lcom/android/jrdsettings/wfd/WifiDisplaySettings;)V

    iput-object v0, p0, Lcom/android/jrdsettings/wfd/WifiDisplaySettings;->mSwitchOnCheckedChangedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 655
    new-instance v0, Lcom/android/jrdsettings/wfd/WifiDisplaySettings$7;

    invoke-direct {v0, p0}, Lcom/android/jrdsettings/wfd/WifiDisplaySettings$7;-><init>(Lcom/android/jrdsettings/wfd/WifiDisplaySettings;)V

    iput-object v0, p0, Lcom/android/jrdsettings/wfd/WifiDisplaySettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 762
    new-instance v0, Lcom/android/jrdsettings/wfd/WifiDisplaySettings$8;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/jrdsettings/wfd/WifiDisplaySettings$8;-><init>(Lcom/android/jrdsettings/wfd/WifiDisplaySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/jrdsettings/wfd/WifiDisplaySettings;->mSettingsObserver:Landroid/database/ContentObserver;

    .line 151
    return-void
.end method

.method static synthetic access$000(Lcom/android/jrdsettings/wfd/WifiDisplaySettings;)Landroid/hardware/display/WifiDisplayStatus;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/jrdsettings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/jrdsettings/wfd/WifiDisplaySettings;Landroid/hardware/display/WifiDisplayStatus;)Landroid/hardware/display/WifiDisplayStatus;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    iput-object p1, p0, Lcom/android/jrdsettings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/jrdsettings/wfd/WifiDisplaySettings;)Landroid/hardware/display/DisplayManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/jrdsettings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/jrdsettings/wfd/WifiDisplaySettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/android/jrdsettings/wfd/WifiDisplaySettings;->needAutoConnect()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/jrdsettings/wfd/WifiDisplaySettings;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    invoke-virtual {p0, p1}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->removeDialog(I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/jrdsettings/wfd/WifiDisplaySettings;)[Landroid/hardware/display/WifiDisplay;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/jrdsettings/wfd/WifiDisplaySettings;->availableDisplays:[Landroid/hardware/display/WifiDisplay;

    return-object v0
.end method

.method static synthetic access$1300()Z
    .locals 1

    .prologue
    .line 97
    sget-boolean v0, Lcom/android/jrdsettings/wfd/WifiDisplaySettings;->mShouldCloseWfd:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/android/jrdsettings/wfd/WifiDisplaySettings;)Landroid/app/PendingIntent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/jrdsettings/wfd/WifiDisplaySettings;->mCloseWfdIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/jrdsettings/wfd/WifiDisplaySettings;)Landroid/app/AlarmManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/jrdsettings/wfd/WifiDisplaySettings;->mAlarmManager:Landroid/app/AlarmManager;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/jrdsettings/wfd/WifiDisplaySettings;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/android/jrdsettings/wfd/WifiDisplaySettings;->handleWifiStateChanged(I)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/jrdsettings/wfd/WifiDisplaySettings;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/jrdsettings/wfd/WifiDisplaySettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/android/jrdsettings/wfd/WifiDisplaySettings;->update()V

    return-void
.end method

.method static synthetic access$1902(Lcom/android/jrdsettings/wfd/WifiDisplaySettings;Landroid/hardware/display/WifiDisplay;)Landroid/hardware/display/WifiDisplay;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    iput-object p1, p0, Lcom/android/jrdsettings/wfd/WifiDisplaySettings;->mOptionWifiDisplay:Landroid/hardware/display/WifiDisplay;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/jrdsettings/wfd/WifiDisplaySettings;)Landroid/hardware/display/WifiDisplay;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/jrdsettings/wfd/WifiDisplaySettings;->mDisconnectWifiDisplay:Landroid/hardware/display/WifiDisplay;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/jrdsettings/wfd/WifiDisplaySettings;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    invoke-virtual {p0, p1}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->showDialog(I)V

    return-void
.end method

.method static synthetic access$202(Lcom/android/jrdsettings/wfd/WifiDisplaySettings;Landroid/hardware/display/WifiDisplay;)Landroid/hardware/display/WifiDisplay;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    iput-object p1, p0, Lcom/android/jrdsettings/wfd/WifiDisplaySettings;->mDisconnectWifiDisplay:Landroid/hardware/display/WifiDisplay;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/jrdsettings/wfd/WifiDisplaySettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/android/jrdsettings/wfd/WifiDisplaySettings;->mNeedAutoConnect:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/jrdsettings/wfd/WifiDisplaySettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    iput-boolean p1, p0, Lcom/android/jrdsettings/wfd/WifiDisplaySettings;->mNeedAutoConnect:Z

    return p1
.end method

.method static synthetic access$402(Lcom/android/jrdsettings/wfd/WifiDisplaySettings;Landroid/hardware/display/WifiDisplay;)Landroid/hardware/display/WifiDisplay;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    iput-object p1, p0, Lcom/android/jrdsettings/wfd/WifiDisplaySettings;->mForgetWifiDisplay:Landroid/hardware/display/WifiDisplay;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/jrdsettings/wfd/WifiDisplaySettings;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/jrdsettings/wfd/WifiDisplaySettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/android/jrdsettings/wfd/WifiDisplaySettings;->mWifiDisplayOnSetting:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/jrdsettings/wfd/WifiDisplaySettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    iput-boolean p1, p0, Lcom/android/jrdsettings/wfd/WifiDisplaySettings;->mWifiDisplayOnSetting:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/jrdsettings/wfd/WifiDisplaySettings;)Lcom/android/jrdsettings/MultiShareManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/jrdsettings/wfd/WifiDisplaySettings;->mMultiShareManager:Lcom/android/jrdsettings/MultiShareManager;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/jrdsettings/wfd/WifiDisplaySettings;)Landroid/widget/Switch;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/jrdsettings/wfd/WifiDisplaySettings;->mActionBarSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/jrdsettings/wfd/WifiDisplaySettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/android/jrdsettings/wfd/WifiDisplaySettings;->applyState()V

    return-void
.end method

.method private applyState()V
    .locals 12

    .prologue
    const/4 v9, 0x2

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 402
    iget-object v6, p0, Lcom/android/jrdsettings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v6}, Landroid/hardware/display/WifiDisplayStatus;->getFeatureState()I

    move-result v2

    .line 403
    .local v2, featureState:I
    const-string v6, "WifiDisplaySettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "applyState, wfd state is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    iget-object v6, p0, Lcom/android/jrdsettings/wfd/WifiDisplaySettings;->mActionBarSwitch:Landroid/widget/Switch;

    iget-boolean v7, p0, Lcom/android/jrdsettings/wfd/WifiDisplaySettings;->mWifiDisplayOnSetting:Z

    invoke-virtual {v6, v7}, Landroid/widget/Switch;->setChecked(Z)V

    .line 408
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    .line 409
    .local v5, preferenceScreen:Landroid/preference/PreferenceScreen;
    invoke-virtual {v5}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 411
    const/4 v6, 0x3

    if-ne v2, v6, :cond_7

    .line 413
    iget-object v6, p0, Lcom/android/jrdsettings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v6}, Landroid/hardware/display/WifiDisplayStatus;->getRememberedDisplays()[Landroid/hardware/display/WifiDisplay;

    move-result-object v6

    iput-object v6, p0, Lcom/android/jrdsettings/wfd/WifiDisplaySettings;->pairedDisplays:[Landroid/hardware/display/WifiDisplay;

    .line 414
    iget-object v6, p0, Lcom/android/jrdsettings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v6}, Landroid/hardware/display/WifiDisplayStatus;->getAvailableDisplays()[Landroid/hardware/display/WifiDisplay;

    move-result-object v6

    iput-object v6, p0, Lcom/android/jrdsettings/wfd/WifiDisplaySettings;->availableDisplays:[Landroid/hardware/display/WifiDisplay;

    .line 416
    const-string v6, "WifiDisplaySettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "applyState(), paired device list size is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/jrdsettings/wfd/WifiDisplaySettings;->pairedDisplays:[Landroid/hardware/display/WifiDisplay;

    array-length v8, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    const-string v6, "WifiDisplaySettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "applyState(), available device list size is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/jrdsettings/wfd/WifiDisplaySettings;->availableDisplays:[Landroid/hardware/display/WifiDisplay;

    array-length v8, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    iget-object v6, p0, Lcom/android/jrdsettings/wfd/WifiDisplaySettings;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    if-nez v6, :cond_0

    .line 420
    new-instance v6, Landroid/preference/PreferenceCategory;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/android/jrdsettings/wfd/WifiDisplaySettings;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    .line 421
    iget-object v6, p0, Lcom/android/jrdsettings/wfd/WifiDisplaySettings;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    const v7, 0x7f0903ec

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setTitle(I)V

    .line 425
    :goto_0
    iget-object v6, p0, Lcom/android/jrdsettings/wfd/WifiDisplaySettings;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 427
    iget-object v0, p0, Lcom/android/jrdsettings/wfd/WifiDisplaySettings;->pairedDisplays:[Landroid/hardware/display/WifiDisplay;

    .local v0, arr$:[Landroid/hardware/display/WifiDisplay;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v4, :cond_1

    aget-object v1, v0, v3

    .line 428
    .local v1, d:Landroid/hardware/display/WifiDisplay;
    const-string v6, "WifiDisplaySettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "paired device is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Landroid/hardware/display/WifiDisplay;->getFriendlyDisplayName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    iget-object v6, p0, Lcom/android/jrdsettings/wfd/WifiDisplaySettings;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v1, v10}, Lcom/android/jrdsettings/wfd/WifiDisplaySettings;->createWifiDisplayPreference(Landroid/hardware/display/WifiDisplay;Z)Landroid/preference/Preference;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 427
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 423
    .end local v0           #arr$:[Landroid/hardware/display/WifiDisplay;
    .end local v1           #d:Landroid/hardware/display/WifiDisplay;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_0
    iget-object v6, p0, Lcom/android/jrdsettings/wfd/WifiDisplaySettings;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v6}, Landroid/preference/PreferenceGroup;->removeAll()V

    goto :goto_0

    .line 431
    .restart local v0       #arr$:[Landroid/hardware/display/WifiDisplay;
    .restart local v3       #i$:I
    .restart local v4       #len$:I
    :cond_1
    iget-object v6, p0, Lcom/android/jrdsettings/wfd/WifiDisplaySettings;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v6}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v6

    if-nez v6, :cond_2

    .line 432
    iget-object v6, p0, Lcom/android/jrdsettings/wfd/WifiDisplaySettings;->mPairedDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 435
    :cond_2
    iget-object v6, p0, Lcom/android/jrdsettings/wfd/WifiDisplaySettings;->mAvailableDevicesCategory:Lcom/android/jrdsettings/ProgressCategory;

    if-nez v6, :cond_4

    .line 436
    new-instance v6, Lcom/android/jrdsettings/ProgressCategory;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const/4 v8, 0x0

    const v9, 0x7f0903eb

    invoke-direct {v6, v7, v8, v9}, Lcom/android/jrdsettings/ProgressCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v6, p0, Lcom/android/jrdsettings/wfd/WifiDisplaySettings;->mAvailableDevicesCategory:Lcom/android/jrdsettings/ProgressCategory;

    .line 438
    iget-object v6, p0, Lcom/android/jrdsettings/wfd/WifiDisplaySettings;->mAvailableDevicesCategory:Lcom/android/jrdsettings/ProgressCategory;

    const v7, 0x7f0903ed

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setTitle(I)V

    .line 442
    :goto_2
    iget-object v6, p0, Lcom/android/jrdsettings/wfd/WifiDisplaySettings;->mAvailableDevicesCategory:Lcom/android/jrdsettings/ProgressCategory;

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 444
    iget-object v0, p0, Lcom/android/jrdsettings/wfd/WifiDisplaySettings;->availableDisplays:[Landroid/hardware/display/WifiDisplay;

    array-length v4, v0

    const/4 v3, 0x0

    :goto_3
    if-ge v3, v4, :cond_5

    aget-object v1, v0, v3

    .line 445
    .restart local v1       #d:Landroid/hardware/display/WifiDisplay;
    const-string v6, "WifiDisplaySettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "available device is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Landroid/hardware/display/WifiDisplay;->getFriendlyDisplayName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    iget-object v6, p0, Lcom/android/jrdsettings/wfd/WifiDisplaySettings;->pairedDisplays:[Landroid/hardware/display/WifiDisplay;

    invoke-virtual {v1}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/jrdsettings/wfd/WifiDisplaySettings;->contains([Landroid/hardware/display/WifiDisplay;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 447
    iget-object v6, p0, Lcom/android/jrdsettings/wfd/WifiDisplaySettings;->mAvailableDevicesCategory:Lcom/android/jrdsettings/ProgressCategory;

    invoke-direct {p0, v1, v11}, Lcom/android/jrdsettings/wfd/WifiDisplaySettings;->createWifiDisplayPreference(Landroid/hardware/display/WifiDisplay;Z)Landroid/preference/Preference;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 444
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 440
    .end local v1           #d:Landroid/hardware/display/WifiDisplay;
    :cond_4
    iget-object v6, p0, Lcom/android/jrdsettings/wfd/WifiDisplaySettings;->mAvailableDevicesCategory:Lcom/android/jrdsettings/ProgressCategory;

    invoke-virtual {v6}, Landroid/preference/PreferenceGroup;->removeAll()V

    goto :goto_2

    .line 450
    :cond_5
    iget-object v6, p0, Lcom/android/jrdsettings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v6}, Landroid/hardware/display/WifiDisplayStatus;->getScanState()I

    move-result v6

    if-ne v6, v10, :cond_6

    .line 451
    const-string v6, "WifiDisplaySettings"

    const-string v7, "applystate(), scan state is scanning"

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    iget-object v6, p0, Lcom/android/jrdsettings/wfd/WifiDisplaySettings;->mAvailableDevicesCategory:Lcom/android/jrdsettings/ProgressCategory;

    invoke-virtual {v6, v10}, Lcom/android/jrdsettings/ProgressCategory;->setProgress(Z)V

    .line 472
    .end local v0           #arr$:[Landroid/hardware/display/WifiDisplay;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :goto_4
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 473
    return-void

    .line 454
    .restart local v0       #arr$:[Landroid/hardware/display/WifiDisplay;
    .restart local v3       #i$:I
    .restart local v4       #len$:I
    :cond_6
    const-string v6, "WifiDisplaySettings"

    const-string v7, "applystate(), scan state is not scan"

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    iget-object v6, p0, Lcom/android/jrdsettings/wfd/WifiDisplaySettings;->mAvailableDevicesCategory:Lcom/android/jrdsettings/ProgressCategory;

    invoke-virtual {v6, v11}, Lcom/android/jrdsettings/ProgressCategory;->setProgress(Z)V

    goto :goto_4

    .line 458
    .end local v0           #arr$:[Landroid/hardware/display/WifiDisplay;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_7
    iget-object v6, p0, Lcom/android/jrdsettings/wfd/WifiDisplaySettings;->mExt:Lcom/mediatek/settings/wfd/WfdSettingsExt;

    if-eqz v6, :cond_8

    .line 459
    iget-object v6, p0, Lcom/android/jrdsettings/wfd/WifiDisplaySettings;->mExt:Lcom/mediatek/settings/wfd/WfdSettingsExt;

    iget-object v7, p0, Lcom/android/jrdsettings/wfd/WifiDisplaySettings;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v6, v2, v7, v5}, Lcom/mediatek/settings/wfd/WfdSettingsExt;->refreshEmptyView(ILandroid/widget/TextView;Landroid/preference/PreferenceScreen;)V

    .line 466
    :goto_5
    const-string v6, "WifiDisplaySettings"

    const-string v7, "Wifi display state is off or disabled, dismiss related dialog"

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    invoke-virtual {p0, v11}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->removeDialog(I)V

    .line 468
    invoke-virtual {p0, v10}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->removeDialog(I)V

    .line 469
    invoke-virtual {p0, v9}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->removeDialog(I)V

    goto :goto_4

    .line 461
    :cond_8
    iget-object v7, p0, Lcom/android/jrdsettings/wfd/WifiDisplaySettings;->mEmptyView:Landroid/widget/TextView;

    if-ne v2, v9, :cond_9

    const v6, 0x7f0903e7

    :goto_6
    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(I)V

    goto :goto_5

    :cond_9
    const v6, 0x7f0903e8

    goto :goto_6
.end method

.method private static contains([Landroid/hardware/display/WifiDisplay;Ljava/lang/String;)Z
    .locals 5
    .parameter "displays"
    .parameter "address"

    .prologue
    .line 613
    move-object v0, p0

    .local v0, arr$:[Landroid/hardware/display/WifiDisplay;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 614
    .local v1, d:Landroid/hardware/display/WifiDisplay;
    invoke-virtual {v1}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 615
    const/4 v4, 0x1

    .line 618
    .end local v1           #d:Landroid/hardware/display/WifiDisplay;
    :goto_1
    return v4

    .line 613
    .restart local v1       #d:Landroid/hardware/display/WifiDisplay;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 618
    .end local v1           #d:Landroid/hardware/display/WifiDisplay;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private createWifiDisplayPreference(Landroid/hardware/display/WifiDisplay;Z)Landroid/preference/Preference;
    .locals 4
    .parameter "d"
    .parameter "paired"

    .prologue
    .line 476
    new-instance v0, Lcom/android/jrdsettings/wfd/WifiDisplaySettings$WifiDisplayPreference;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/android/jrdsettings/wfd/WifiDisplaySettings$WifiDisplayPreference;-><init>(Lcom/android/jrdsettings/wfd/WifiDisplaySettings;Landroid/content/Context;Landroid/hardware/display/WifiDisplay;)V

    .line 477
    .local v0, p:Lcom/android/jrdsettings/wfd/WifiDisplaySettings$WifiDisplayPreference;
    iget-object v1, p0, Lcom/android/jrdsettings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v1}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplay()Landroid/hardware/display/WifiDisplay;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/hardware/display/WifiDisplay;->equals(Landroid/hardware/display/WifiDisplay;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 478
    const-string v1, "WifiDisplaySettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createWifiDisplayPreference: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplay;->getFriendlyDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "state is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/jrdsettings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v3}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplayState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    iget-object v1, p0, Lcom/android/jrdsettings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v1}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplayState()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 496
    :cond_0
    :goto_0
    if-eqz p2, :cond_1

    .line 497
    const v1, 0x7f0400ee

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setWidgetLayoutResource(I)V

    .line 499
    :cond_1
    return-object v0

    .line 482
    :pswitch_0
    const v1, 0x7f0903ef

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 484
    const v1, 0x7f020159

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setIcon(I)V

    goto :goto_0

    .line 487
    :pswitch_1
    const v1, 0x7f0400ef

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setWidgetLayoutResource(I)V

    .line 489
    const v1, 0x7f0903ee

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 492
    :cond_2
    if-eqz p2, :cond_0

    iget-object v1, p0, Lcom/android/jrdsettings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v1}, Landroid/hardware/display/WifiDisplayStatus;->getAvailableDisplays()[Landroid/hardware/display/WifiDisplay;

    move-result-object v1

    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/jrdsettings/wfd/WifiDisplaySettings;->contains([Landroid/hardware/display/WifiDisplay;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 494
    const v1, 0x7f0903f0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 480
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handleWifiStateChanged(I)V
    .locals 3
    .parameter "state"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 742
    packed-switch p1, :pswitch_data_0

    .line 756
    iget-object v0, p0, Lcom/android/jrdsettings/wfd/WifiDisplaySettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 759
    :goto_0
    return-void

    .line 744
    :pswitch_0
    iget-object v0, p0, Lcom/android/jrdsettings/wfd/WifiDisplaySettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    .line 747
    :pswitch_1
    iget-object v0, p0, Lcom/android/jrdsettings/wfd/WifiDisplaySettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    .line 750
    :pswitch_2
    iget-object v0, p0, Lcom/android/jrdsettings/wfd/WifiDisplaySettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    .line 753
    :pswitch_3
    iget-object v0, p0, Lcom/android/jrdsettings/wfd/WifiDisplaySettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    .line 742
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private needAutoConnect()V
    .locals 6

    .prologue
    .line 725
    iget-object v4, p0, Lcom/android/jrdsettings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v4}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplay()Landroid/hardware/display/WifiDisplay;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 735
    :cond_0
    :goto_0
    return-void

    .line 729
    :cond_1
    iget-object v0, p0, Lcom/android/jrdsettings/wfd/WifiDisplaySettings;->availableDisplays:[Landroid/hardware/display/WifiDisplay;

    .local v0, arr$:[Landroid/hardware/display/WifiDisplay;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 730
    .local v1, d:Landroid/hardware/display/WifiDisplay;
    iget-object v4, p0, Lcom/android/jrdsettings/wfd/WifiDisplaySettings;->pairedDisplays:[Landroid/hardware/display/WifiDisplay;

    invoke-virtual {v1}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/jrdsettings/wfd/WifiDisplaySettings;->contains([Landroid/hardware/display/WifiDisplay;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 731
    iget-object v4, p0, Lcom/android/jrdsettings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v1}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/hardware/display/DisplayManager;->connectWifiDisplay(Ljava/lang/String;)V

    goto :goto_0

    .line 729
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private showDisconnectDialog(Landroid/hardware/display/WifiDisplay;)Landroid/app/AlertDialog;
    .locals 9
    .parameter "display"

    .prologue
    const/4 v6, 0x1

    .line 519
    new-instance v2, Lcom/android/jrdsettings/wfd/WifiDisplaySettings$1;

    invoke-direct {v2, p0, p1}, Lcom/android/jrdsettings/wfd/WifiDisplaySettings$1;-><init>(Lcom/android/jrdsettings/wfd/WifiDisplaySettings;Landroid/hardware/display/WifiDisplay;)V

    .line 531
    .local v2, ok:Landroid/content/DialogInterface$OnClickListener;
    new-instance v1, Lcom/android/jrdsettings/wfd/WifiDisplaySettings$2;

    invoke-direct {v1, p0, p1}, Lcom/android/jrdsettings/wfd/WifiDisplaySettings$2;-><init>(Lcom/android/jrdsettings/wfd/WifiDisplaySettings;Landroid/hardware/display/WifiDisplay;)V

    .line 539
    .local v1, forget:Landroid/content/DialogInterface$OnClickListener;
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/jrdsettings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v4}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplay()Landroid/hardware/display/WifiDisplay;

    move-result-object v4

    invoke-virtual {v4}, Landroid/hardware/display/WifiDisplay;->getFriendlyDisplayName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0903f3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplay;->getFriendlyDisplayName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0903f8

    invoke-virtual {v3, v4, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0903f6

    invoke-virtual {v3, v4, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/high16 v4, 0x104

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 550
    .local v0, dialog:Landroid/app/AlertDialog;
    return-object v0
.end method

.method private showForgetDialog(Landroid/hardware/display/WifiDisplay;)Landroid/app/AlertDialog;
    .locals 8
    .parameter "display"

    .prologue
    const/4 v5, 0x1

    .line 558
    new-instance v1, Lcom/android/jrdsettings/wfd/WifiDisplaySettings$3;

    invoke-direct {v1, p0, p1}, Lcom/android/jrdsettings/wfd/WifiDisplaySettings$3;-><init>(Lcom/android/jrdsettings/wfd/WifiDisplaySettings;Landroid/hardware/display/WifiDisplay;)V

    .line 567
    .local v1, forget:Landroid/content/DialogInterface$OnClickListener;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplay;->getFriendlyDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0903f7

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplay;->getFriendlyDisplayName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/high16 v3, 0x104

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0903f8

    invoke-virtual {v2, v3, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 574
    .local v0, dialog:Landroid/app/AlertDialog;
    return-object v0
.end method

.method private showOptionsDialog(Landroid/hardware/display/WifiDisplay;)Landroid/app/AlertDialog;
    .locals 8
    .parameter "display"

    .prologue
    .line 578
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f0400ed

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 579
    .local v4, view:Landroid/view/View;
    const v5, 0x7f0b0099

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 580
    .local v3, nameEditText:Landroid/widget/EditText;
    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplay;->getFriendlyDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 582
    new-instance v2, Lcom/android/jrdsettings/wfd/WifiDisplaySettings$4;

    invoke-direct {v2, p0, v3, p1}, Lcom/android/jrdsettings/wfd/WifiDisplaySettings$4;-><init>(Lcom/android/jrdsettings/wfd/WifiDisplaySettings;Landroid/widget/EditText;Landroid/hardware/display/WifiDisplay;)V

    .line 593
    .local v2, done:Landroid/content/DialogInterface$OnClickListener;
    new-instance v0, Lcom/android/jrdsettings/wfd/WifiDisplaySettings$5;

    invoke-direct {v0, p0}, Lcom/android/jrdsettings/wfd/WifiDisplaySettings$5;-><init>(Lcom/android/jrdsettings/wfd/WifiDisplaySettings;)V

    .line 601
    .local v0, cancelRename:Landroid/content/DialogInterface$OnClickListener;
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0903f4

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0903f9

    invoke-virtual {v5, v6, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f090318

    invoke-virtual {v5, v6, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 608
    .local v1, dialog:Landroid/app/AlertDialog;
    return-object v1
.end method

.method private update()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 393
    invoke-virtual {p0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_display_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/android/jrdsettings/wfd/WifiDisplaySettings;->mWifiDisplayOnSetting:Z

    .line 395
    const-string v0, "WifiDisplaySettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "update: mWifiDisplayOnSetting is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/jrdsettings/wfd/WifiDisplaySettings;->mWifiDisplayOnSetting:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    iget-object v0, p0, Lcom/android/jrdsettings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/android/jrdsettings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    .line 398
    invoke-direct {p0}, Lcom/android/jrdsettings/wfd/WifiDisplaySettings;->applyState()V

    .line 399
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x0

    .line 197
    invoke-super {p0, p1}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 199
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 202
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x207000b

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Switch;

    iput-object v2, p0, Lcom/android/jrdsettings/wfd/WifiDisplaySettings;->mActionBarSwitch:Landroid/widget/Switch;

    .line 206
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x1020004

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/jrdsettings/wfd/WifiDisplaySettings;->mEmptyView:Landroid/widget/TextView;

    .line 207
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    iget-object v3, p0, Lcom/android/jrdsettings/wfd/WifiDisplaySettings;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/AdapterView;->setEmptyView(Landroid/view/View;)V

    .line 208
    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080004

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 210
    .local v1, padding:I
    iget-object v2, p0, Lcom/android/jrdsettings/wfd/WifiDisplaySettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v5, v5, v1, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 211
    iget-object v2, p0, Lcom/android/jrdsettings/wfd/WifiDisplaySettings;->mActionBarSwitch:Landroid/widget/Switch;

    iget-object v3, p0, Lcom/android/jrdsettings/wfd/WifiDisplaySettings;->mSwitchOnCheckedChangedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v2, v3}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 213
    invoke-direct {p0}, Lcom/android/jrdsettings/wfd/WifiDisplaySettings;->update()V

    .line 215
    iget-object v2, p0, Lcom/android/jrdsettings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v2}, Landroid/hardware/display/WifiDisplayStatus;->getFeatureState()I

    move-result v2

    if-nez v2, :cond_0

    .line 216
    const-string v2, "WifiDisplaySettings"

    const-string v3, "Wfd is unavailable, finish the activity"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 219
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "icicle"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 155
    invoke-super {p0, p1}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 159
    new-instance v4, Lcom/mediatek/settings/wfd/WfdSettingsExt;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/mediatek/settings/wfd/WfdSettingsExt;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/jrdsettings/wfd/WifiDisplaySettings;->mExt:Lcom/mediatek/settings/wfd/WfdSettingsExt;

    .line 162
    new-instance v4, Lcom/android/jrdsettings/MultiShareManager;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/jrdsettings/MultiShareManager;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/jrdsettings/wfd/WifiDisplaySettings;->mMultiShareManager:Lcom/android/jrdsettings/MultiShareManager;

    .line 165
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "display"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/display/DisplayManager;

    iput-object v4, p0, Lcom/android/jrdsettings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 167
    const v4, 0x7f060054

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 168
    invoke-virtual {p0, v7}, Landroid/app/Fragment;->setHasOptionsMenu(Z)V

    .line 170
    const-string v4, "tablet"

    const-string v5, "ro.build.characteristics"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 171
    iput-boolean v7, p0, Lcom/android/jrdsettings/wfd/WifiDisplaySettings;->mIsTablet:Z

    .line 176
    :goto_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "alarm"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/AlarmManager;

    iput-object v4, p0, Lcom/android/jrdsettings/wfd/WifiDisplaySettings;->mAlarmManager:Landroid/app/AlarmManager;

    .line 177
    new-instance v0, Landroid/content/Intent;

    const-string v4, "com.android.jrdsettings.wfd.action.CLOSE_WFD"

    invoke-direct {v0, v4, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 178
    .local v0, closeWfdIntent:Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4, v6, v0, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    iput-object v4, p0, Lcom/android/jrdsettings/wfd/WifiDisplaySettings;->mCloseWfdIntent:Landroid/app/PendingIntent;

    .line 179
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.android.jrdsettings.wfd.action.OPEN_WFD"

    invoke-direct {v3, v4, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 180
    .local v3, openWfdIntent:Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4, v6, v3, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    iput-object v4, p0, Lcom/android/jrdsettings/wfd/WifiDisplaySettings;->mOpenWfdIntent:Landroid/app/PendingIntent;

    .line 181
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    const-string v5, "wifi"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiManager;

    iput-object v4, p0, Lcom/android/jrdsettings/wfd/WifiDisplaySettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 182
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 183
    .local v1, context:Landroid/content/Context;
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 184
    .local v2, filter:Landroid/content/IntentFilter;
    const-string v4, "android.hardware.display.action.WIFI_DISPLAY_STATUS_CHANGED"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 185
    const-string v4, "com.mediatek.wfd.connection"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 186
    const-string v4, "com.android.jrdsettings.wfd.action.CLOSE_WFD"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 187
    const-string v4, "com.android.jrdsettings.wfd.action.OPEN_WFD"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 188
    const-string v4, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 189
    const-string v4, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 190
    const-string v4, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 191
    iget-object v4, p0, Lcom/android/jrdsettings/wfd/WifiDisplaySettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v4, v2}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 193
    return-void

    .line 173
    .end local v0           #closeWfdIntent:Landroid/content/Intent;
    .end local v1           #context:Landroid/content/Context;
    .end local v2           #filter:Landroid/content/IntentFilter;
    .end local v3           #openWfdIntent:Landroid/content/Intent;
    :cond_0
    iput-boolean v6, p0, Lcom/android/jrdsettings/wfd/WifiDisplaySettings;->mIsTablet:Z

    goto :goto_0
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 2
    .parameter "id"

    .prologue
    .line 505
    const/4 v0, 0x0

    .line 506
    .local v0, dialog:Landroid/app/Dialog;
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 507
    iget-object v1, p0, Lcom/android/jrdsettings/wfd/WifiDisplaySettings;->mDisconnectWifiDisplay:Landroid/hardware/display/WifiDisplay;

    invoke-direct {p0, v1}, Lcom/android/jrdsettings/wfd/WifiDisplaySettings;->showDisconnectDialog(Landroid/hardware/display/WifiDisplay;)Landroid/app/AlertDialog;

    move-result-object v0

    .line 515
    :cond_0
    :goto_0
    return-object v0

    .line 508
    :cond_1
    if-nez p1, :cond_2

    .line 509
    iget-object v1, p0, Lcom/android/jrdsettings/wfd/WifiDisplaySettings;->mOptionWifiDisplay:Landroid/hardware/display/WifiDisplay;

    invoke-direct {p0, v1}, Lcom/android/jrdsettings/wfd/WifiDisplaySettings;->showOptionsDialog(Landroid/hardware/display/WifiDisplay;)Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 511
    :cond_2
    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 512
    iget-object v1, p0, Lcom/android/jrdsettings/wfd/WifiDisplaySettings;->mForgetWifiDisplay:Landroid/hardware/display/WifiDisplay;

    invoke-direct {p0, v1}, Lcom/android/jrdsettings/wfd/WifiDisplaySettings;->showForgetDialog(Landroid/hardware/display/WifiDisplay;)Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 5
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 336
    iget-object v1, p0, Lcom/android/jrdsettings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v1}, Landroid/hardware/display/WifiDisplayStatus;->getScanState()I

    move-result v1

    if-ne v1, v2, :cond_1

    const v1, 0x7f0903ea

    :goto_0
    invoke-interface {p1, v3, v2, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 340
    .local v0, item:Landroid/view/MenuItem;
    iget-object v1, p0, Lcom/android/jrdsettings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v1}, Landroid/hardware/display/WifiDisplayStatus;->getFeatureState()I

    move-result v1

    const/4 v4, 0x3

    if-ne v1, v4, :cond_2

    iget-object v1, p0, Lcom/android/jrdsettings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v1}, Landroid/hardware/display/WifiDisplayStatus;->getScanState()I

    move-result v1

    if-nez v1, :cond_2

    move v1, v2

    :goto_1
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 342
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 343
    iget-object v1, p0, Lcom/android/jrdsettings/wfd/WifiDisplaySettings;->mExt:Lcom/mediatek/settings/wfd/WfdSettingsExt;

    if-eqz v1, :cond_0

    .line 344
    iget-object v1, p0, Lcom/android/jrdsettings/wfd/WifiDisplaySettings;->mExt:Lcom/mediatek/settings/wfd/WfdSettingsExt;

    iget-object v2, p0, Lcom/android/jrdsettings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v1, p1, v2}, Lcom/mediatek/settings/wfd/WfdSettingsExt;->onCreateOptionMenu(Landroid/view/Menu;Landroid/hardware/display/WifiDisplayStatus;)V

    .line 346
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 347
    return-void

    .line 336
    .end local v0           #item:Landroid/view/MenuItem;
    :cond_1
    const v1, 0x7f0903e9

    goto :goto_0

    .restart local v0       #item:Landroid/view/MenuItem;
    :cond_2
    move v1, v3

    .line 340
    goto :goto_1
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    .line 317
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroy()V

    .line 318
    const-string v1, "WifiDisplaySettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDestroy mWifiDisplayOnSetting:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/jrdsettings/wfd/WifiDisplaySettings;->mWifiDisplayOnSetting:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  mShouldCloseWfd:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/jrdsettings/wfd/WifiDisplaySettings;->mShouldCloseWfd:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    iget-object v1, p0, Lcom/android/jrdsettings/wfd/WifiDisplaySettings;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v2, p0, Lcom/android/jrdsettings/wfd/WifiDisplaySettings;->mCloseWfdIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 320
    iget-boolean v1, p0, Lcom/android/jrdsettings/wfd/WifiDisplaySettings;->mWifiDisplayOnSetting:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/jrdsettings/wfd/WifiDisplaySettings;->availableDisplays:[Landroid/hardware/display/WifiDisplay;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/jrdsettings/wfd/WifiDisplaySettings;->availableDisplays:[Landroid/hardware/display/WifiDisplay;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/jrdsettings/wfd/WifiDisplaySettings;->availableDisplays:[Landroid/hardware/display/WifiDisplay;

    array-length v1, v1

    if-nez v1, :cond_1

    :cond_0
    sget-boolean v1, Lcom/android/jrdsettings/wfd/WifiDisplaySettings;->mShouldCloseWfd:Z

    if-eqz v1, :cond_1

    .line 321
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0903f5

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 327
    iget-object v1, p0, Lcom/android/jrdsettings/wfd/WifiDisplaySettings;->mMultiShareManager:Lcom/android/jrdsettings/MultiShareManager;

    invoke-virtual {v1}, Lcom/android/jrdsettings/MultiShareManager;->stopWifiDisplay()Z

    .line 329
    :cond_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 331
    .local v0, context:Landroid/content/Context;
    iget-object v1, p0, Lcom/android/jrdsettings/wfd/WifiDisplaySettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 332
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 351
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 359
    iget-object v1, p0, Lcom/android/jrdsettings/wfd/WifiDisplaySettings;->mExt:Lcom/mediatek/settings/wfd/WfdSettingsExt;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/jrdsettings/wfd/WifiDisplaySettings;->mExt:Lcom/mediatek/settings/wfd/WfdSettingsExt;

    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/mediatek/settings/wfd/WfdSettingsExt;->onOptionMenuSelected(Landroid/view/MenuItem;Landroid/app/FragmentManager;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 362
    :cond_0
    :goto_0
    return v0

    .line 353
    :pswitch_0
    iget-object v1, p0, Lcom/android/jrdsettings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v1}, Landroid/hardware/display/WifiDisplayStatus;->getFeatureState()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 354
    iget-object v1, p0, Lcom/android/jrdsettings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v1}, Landroid/hardware/display/DisplayManager;->scanWifiDisplays()V

    .line 355
    const-string v1, "WifiDisplaySettings"

    const-string v2, "Click scan menu, start scan wifi display device"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 362
    :cond_1
    invoke-super {p0, p1}, Landroid/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0

    .line 351
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 280
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 282
    invoke-virtual {p0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/jrdsettings/wfd/WifiDisplaySettings;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 284
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 369
    instance-of v2, p2, Lcom/android/jrdsettings/wfd/WifiDisplaySettings$WifiDisplayPreference;

    if-eqz v2, :cond_0

    move-object v1, p2

    .line 370
    check-cast v1, Lcom/android/jrdsettings/wfd/WifiDisplaySettings$WifiDisplayPreference;

    .line 371
    .local v1, p:Lcom/android/jrdsettings/wfd/WifiDisplaySettings$WifiDisplayPreference;
    invoke-virtual {v1}, Lcom/android/jrdsettings/wfd/WifiDisplaySettings$WifiDisplayPreference;->getDisplay()Landroid/hardware/display/WifiDisplay;

    move-result-object v0

    .line 373
    .local v0, display:Landroid/hardware/display/WifiDisplay;
    iget-object v2, p0, Lcom/android/jrdsettings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v2}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplay()Landroid/hardware/display/WifiDisplay;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/hardware/display/WifiDisplay;->equals(Landroid/hardware/display/WifiDisplay;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 374
    const-string v2, "WifiDisplaySettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Click the connected device preference, show disconnect dialog, display is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    iput-object v0, p0, Lcom/android/jrdsettings/wfd/WifiDisplaySettings;->mDisconnectWifiDisplay:Landroid/hardware/display/WifiDisplay;

    .line 377
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->showDialog(I)V

    .line 389
    .end local v0           #display:Landroid/hardware/display/WifiDisplay;
    .end local v1           #p:Lcom/android/jrdsettings/wfd/WifiDisplaySettings$WifiDisplayPreference;
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    return v2

    .line 379
    .restart local v0       #display:Landroid/hardware/display/WifiDisplay;
    .restart local v1       #p:Lcom/android/jrdsettings/wfd/WifiDisplaySettings$WifiDisplayPreference;
    :cond_1
    iget-object v2, p0, Lcom/android/jrdsettings/wfd/WifiDisplaySettings;->availableDisplays:[Landroid/hardware/display/WifiDisplay;

    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/jrdsettings/wfd/WifiDisplaySettings;->contains([Landroid/hardware/display/WifiDisplay;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 380
    const-string v2, "WifiDisplaySettings"

    const-string v3, "Call display manager to connect directly"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    iget-object v2, p0, Lcom/android/jrdsettings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/hardware/display/DisplayManager;->connectWifiDisplay(Ljava/lang/String;)V

    goto :goto_0

    .line 383
    :cond_2
    iput-object v0, p0, Lcom/android/jrdsettings/wfd/WifiDisplaySettings;->mForgetWifiDisplay:Landroid/hardware/display/WifiDisplay;

    .line 384
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->showDialog(I)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 244
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 246
    invoke-virtual {p0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wifi_display_on"

    invoke-static {v4}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/jrdsettings/wfd/WifiDisplaySettings;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v4, v7, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 249
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "is_wifi_display_in_settings"

    invoke-static {v3, v4, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 251
    .local v2, wfdPageSum:I
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "is_wifi_display_in_settings"

    add-int/lit8 v2, v2, 0x1

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 253
    invoke-virtual {p0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "airplane_mode_on"

    invoke-static {v3, v4, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_2

    .line 255
    iget-object v3, p0, Lcom/android/jrdsettings/wfd/WifiDisplaySettings;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v4, p0, Lcom/android/jrdsettings/wfd/WifiDisplaySettings;->mCloseWfdIntent:Landroid/app/PendingIntent;

    invoke-virtual {v3, v4}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 256
    invoke-virtual {p0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wifi_display_on"

    invoke-static {v3, v4, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_1

    .line 257
    iget-object v3, p0, Lcom/android/jrdsettings/wfd/WifiDisplaySettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    .line 258
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    add-long v0, v3, v5

    .line 259
    .local v0, triggerTime:J
    iget-object v3, p0, Lcom/android/jrdsettings/wfd/WifiDisplaySettings;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v4, p0, Lcom/android/jrdsettings/wfd/WifiDisplaySettings;->mOpenWfdIntent:Landroid/app/PendingIntent;

    invoke-virtual {v3, v7, v0, v1, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 268
    .end local v0           #triggerTime:J
    :goto_0
    invoke-direct {p0}, Lcom/android/jrdsettings/wfd/WifiDisplaySettings;->update()V

    .line 276
    :goto_1
    return-void

    .line 262
    :cond_0
    iget-object v3, p0, Lcom/android/jrdsettings/wfd/WifiDisplaySettings;->mMultiShareManager:Lcom/android/jrdsettings/MultiShareManager;

    invoke-virtual {v3}, Lcom/android/jrdsettings/MultiShareManager;->startWifiDisplay()Z

    goto :goto_0

    .line 265
    :cond_1
    iget-object v3, p0, Lcom/android/jrdsettings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v3}, Landroid/hardware/display/DisplayManager;->scanWifiDisplays()V

    .line 266
    const-string v3, "WifiDisplaySettings"

    const-string v4, "onResume, start scan wifi display device"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 270
    :cond_2
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f090412

    invoke-static {v3, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 272
    iget-object v3, p0, Lcom/android/jrdsettings/wfd/WifiDisplaySettings;->mMultiShareManager:Lcom/android/jrdsettings/MultiShareManager;

    invoke-virtual {v3}, Lcom/android/jrdsettings/MultiShareManager;->stopWifiDisplay()Z

    goto :goto_1
.end method

.method public onStart()V
    .locals 7

    .prologue
    const/16 v3, 0x10

    const/4 v6, -0x2

    .line 223
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onStart()V

    .line 224
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 226
    .local v0, activity:Landroid/app/Activity;
    instance-of v2, v0, Landroid/preference/PreferenceActivity;

    if-eqz v2, :cond_1

    move-object v1, v0

    .line 227
    check-cast v1, Landroid/preference/PreferenceActivity;

    .line 228
    .local v1, preferenceActivity:Landroid/preference/PreferenceActivity;
    invoke-virtual {v1}, Landroid/preference/PreferenceActivity;->onIsHidingHeaders()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/jrdsettings/wfd/WifiDisplaySettings;->mIsTablet:Z

    if-eqz v2, :cond_1

    .line 230
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v3, v3}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 232
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    iget-object v3, p0, Lcom/android/jrdsettings/wfd/WifiDisplaySettings;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v4, Landroid/app/ActionBar$LayoutParams;

    const v5, 0x800015

    invoke-direct {v4, v6, v6, v5}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v2, v3, v4}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 239
    .end local v1           #preferenceActivity:Landroid/preference/PreferenceActivity;
    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/jrdsettings/wfd/WifiDisplaySettings;->mNeedAutoConnect:Z

    .line 240
    return-void
.end method

.method public onStop()V
    .locals 9

    .prologue
    const/4 v6, 0x1

    const/4 v8, 0x0

    .line 288
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onStop()V

    .line 289
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 290
    .local v0, activity:Landroid/app/Activity;
    iget-boolean v4, p0, Lcom/android/jrdsettings/wfd/WifiDisplaySettings;->mIsTablet:Z

    if-eqz v4, :cond_0

    .line 291
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    const/16 v5, 0x10

    invoke-virtual {v4, v8, v5}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 292
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 295
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "is_wifi_display_in_settings"

    invoke-static {v4, v5, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 297
    .local v3, wfdPageSum:I
    if-ne v3, v6, :cond_1

    .line 298
    sput-boolean v6, Lcom/android/jrdsettings/wfd/WifiDisplaySettings;->mShouldCloseWfd:Z

    .line 299
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x7d0

    add-long v1, v4, v6

    .line 300
    .local v1, triggerTime:J
    iget-object v4, p0, Lcom/android/jrdsettings/wfd/WifiDisplaySettings;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v5, p0, Lcom/android/jrdsettings/wfd/WifiDisplaySettings;->mCloseWfdIntent:Landroid/app/PendingIntent;

    invoke-virtual {v4, v8, v1, v2, v5}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 305
    .end local v1           #triggerTime:J
    :goto_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "is_wifi_display_in_settings"

    add-int/lit8 v3, v3, -0x1

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 307
    iput-boolean v8, p0, Lcom/android/jrdsettings/wfd/WifiDisplaySettings;->mNeedAutoConnect:Z

    .line 309
    return-void

    .line 302
    :cond_1
    sput-boolean v8, Lcom/android/jrdsettings/wfd/WifiDisplaySettings;->mShouldCloseWfd:Z

    .line 303
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method
