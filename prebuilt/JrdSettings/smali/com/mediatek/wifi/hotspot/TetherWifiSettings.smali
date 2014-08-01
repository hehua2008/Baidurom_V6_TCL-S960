.class public Lcom/mediatek/wifi/hotspot/TetherWifiSettings;
.super Lcom/android/jrdsettings/SettingsPreferenceFragment;
.source "TetherWifiSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/mediatek/wifi/hotspot/ButtonPreference$OnButtonClickCallback;


# static fields
.field private static final BANDWIDTH:Ljava/lang/String; = "bandwidth_usage"

.field private static final BLOCKED_CATEGORY:Ljava/lang/String; = "blocked_category"

.field private static final CONFIG_SUBTEXT:I = 0x7f090499

.field private static final CONNECTED_CATEGORY:Ljava/lang/String; = "connected_category"

.field private static final DIALOG_AP_CLIENT_DETAIL:I = 0x3

.field private static final DIALOG_AP_SETTINGS:I = 0x2

.field private static final DIALOG_WPS_CONNECT:I = 0x1

.field private static final KEY_SUSPEND_OPTIMIZATIONS:Ljava/lang/String; = "suspend_optimizations"

.field private static final KEY_WIFI_AP_BAND_SELECT:Ljava/lang/String; = "wifi_ap_band_select"

.field private static final TAG:Ljava/lang/String; = "TetherWifiSettings"

.field private static final WIFI_AP_AUTO_CHANNEL_TEXT:I = 0x7f0900f2

.field private static final WIFI_AP_AUTO_CHANNEL_WIDTH_TEXT:I = 0x7f0900f3

.field private static final WIFI_AP_FIX_CHANNEL_WIDTH_TEXT:I = 0x7f0900f1

.field private static final WIFI_AP_SSID_AND_SECURITY:Ljava/lang/String; = "wifi_ap_ssid_and_security"

.field private static final WIFI_AUTO_DISABLE:Ljava/lang/String; = "wifi_auto_disable"

.field private static final WPS_CONNECT:Ljava/lang/String; = "wps_connect"


# instance fields
.field private mBandSelect:Landroid/preference/ListPreference;

.field private mBandwidth:Landroid/preference/Preference;

.field private mBlockedCategory:Landroid/preference/PreferenceCategory;

.field private mClientList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/HotspotClient;",
            ">;"
        }
    .end annotation
.end field

.field private mConnectedCategory:Landroid/preference/PreferenceCategory;

.field private mCreateNetwork:Landroid/preference/Preference;

.field private mDetailView:Landroid/view/View;

.field private mDialog:Lcom/android/jrdsettings/wifi/WifiApDialog;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSecurityType:[Ljava/lang/String;

.field private mSuspendOptimizations:Landroid/preference/CheckBoxPreference;

.field private mWifiApEnabler:Lcom/android/jrdsettings/wifi/WifiApEnabler;

.field private mWifiAutoDisable:Landroid/preference/ListPreference;

.field private mWifiConfig:Landroid/net/wifi/WifiConfiguration;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiRegexs:[Ljava/lang/String;

.field private mWpsConnect:Landroid/preference/Preference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;-><init>()V

    .line 125
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 136
    new-instance v0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings$1;

    invoke-direct {v0, p0}, Lcom/mediatek/wifi/hotspot/TetherWifiSettings$1;-><init>(Lcom/mediatek/wifi/hotspot/TetherWifiSettings;)V

    iput-object v0, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/wifi/hotspot/TetherWifiSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->handleWifiApClientsChanged()V

    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/wifi/hotspot/TetherWifiSettings;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->handleWifiApStateChanged(I)V

    return-void
.end method

.method private static findIface([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "ifaces"
    .parameter "regexes"

    .prologue
    .line 355
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

    .line 356
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

    .line 357
    .local v7, regex:Ljava/lang/String;
    invoke-virtual {v4, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 362
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v4           #iface:Ljava/lang/String;
    .end local v6           #len$:I
    .end local v7           #regex:Ljava/lang/String;
    :goto_2
    return-object v4

    .line 356
    .restart local v1       #arr$:[Ljava/lang/String;
    .restart local v2       #i$:I
    .restart local v4       #iface:Ljava/lang/String;
    .restart local v6       #len$:I
    .restart local v7       #regex:Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 355
    .end local v7           #regex:Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    .end local v2           #i$:I
    .restart local v3       #i$:I
    goto :goto_0

    .line 362
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v4           #iface:Ljava/lang/String;
    .end local v6           #len$:I
    :cond_2
    const/4 v4, 0x0

    goto :goto_2
.end method

.method private handleWifiApClientsChanged()V
    .locals 6

    .prologue
    .line 410
    iget-object v3, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mConnectedCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v3}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 411
    iget-object v3, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mBlockedCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v3}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 412
    iget-object v3, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getHotspotClients()Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mClientList:Ljava/util/List;

    .line 413
    iget-object v3, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mClientList:Ljava/util/List;

    if-eqz v3, :cond_3

    .line 414
    const-string v3, "TetherWifiSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "client number is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mClientList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    iget-object v3, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mClientList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/HotspotClient;

    .line 416
    .local v0, client:Landroid/net/wifi/HotspotClient;
    new-instance v2, Lcom/mediatek/wifi/hotspot/ButtonPreference;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3, v0, p0}, Lcom/mediatek/wifi/hotspot/ButtonPreference;-><init>(Landroid/content/Context;Landroid/net/wifi/HotspotClient;Lcom/mediatek/wifi/hotspot/ButtonPreference$OnButtonClickCallback;)V

    .line 417
    .local v2, preference:Lcom/mediatek/wifi/hotspot/ButtonPreference;
    iget-object v3, v0, Landroid/net/wifi/HotspotClient;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/mediatek/wifi/hotspot/ButtonPreference;->setMacAddress(Ljava/lang/String;)V

    .line 418
    iget-boolean v3, v0, Landroid/net/wifi/HotspotClient;->isBlocked:Z

    if-eqz v3, :cond_0

    .line 419
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090120

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mediatek/wifi/hotspot/ButtonPreference;->setButtonText(Ljava/lang/String;)V

    .line 420
    iget-object v3, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mBlockedCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v3, v2}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 421
    const-string v3, "TetherWifiSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "blocked client MAC is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Landroid/net/wifi/HotspotClient;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 423
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09011f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mediatek/wifi/hotspot/ButtonPreference;->setButtonText(Ljava/lang/String;)V

    .line 424
    iget-object v3, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mConnectedCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v3, v2}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 425
    const-string v3, "TetherWifiSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "connected client MAC is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Landroid/net/wifi/HotspotClient;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 428
    .end local v0           #client:Landroid/net/wifi/HotspotClient;
    .end local v2           #preference:Lcom/mediatek/wifi/hotspot/ButtonPreference;
    :cond_1
    iget-object v3, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mConnectedCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v3}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v3

    if-nez v3, :cond_2

    .line 429
    new-instance v2, Landroid/preference/Preference;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 430
    .local v2, preference:Landroid/preference/Preference;
    const v3, 0x7f09018c

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setTitle(I)V

    .line 431
    iget-object v3, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mConnectedCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v3, v2}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 433
    .end local v2           #preference:Landroid/preference/Preference;
    :cond_2
    iget-object v3, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mBlockedCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v3}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v3

    if-nez v3, :cond_3

    .line 434
    new-instance v2, Landroid/preference/Preference;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 435
    .restart local v2       #preference:Landroid/preference/Preference;
    const v3, 0x7f09018d

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setTitle(I)V

    .line 436
    iget-object v3, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mBlockedCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v3, v2}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 439
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #preference:Landroid/preference/Preference;
    :cond_3
    return-void
.end method

.method private handleWifiApStateChanged(I)V
    .locals 3
    .parameter "state"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 442
    packed-switch p1, :pswitch_data_0

    .line 468
    :goto_0
    return-void

    .line 444
    :pswitch_0
    invoke-direct {p0, v1}, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->setPreferenceState(Z)V

    .line 445
    iget-object v0, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mSuspendOptimizations:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 446
    iget-object v0, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mBandSelect:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 449
    :pswitch_1
    invoke-direct {p0, v2}, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->setPreferenceState(Z)V

    .line 450
    iget-object v0, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mSuspendOptimizations:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 451
    iget-object v0, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mBandSelect:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 454
    :pswitch_2
    invoke-direct {p0, v1}, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->setPreferenceState(Z)V

    .line 455
    iget-object v0, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mSuspendOptimizations:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 456
    iget-object v0, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mBandSelect:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 457
    invoke-virtual {p0, v2}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->removeDialog(I)V

    goto :goto_0

    .line 460
    :pswitch_3
    invoke-direct {p0, v1}, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->setPreferenceState(Z)V

    .line 461
    iget-object v0, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mSuspendOptimizations:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 462
    iget-object v0, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mBandSelect:Landroid/preference/ListPreference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 463
    invoke-virtual {p0, v2}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->removeDialog(I)V

    goto :goto_0

    .line 442
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private initWifiTethering()V
    .locals 11

    .prologue
    const v10, 0x7f090499

    const/4 v7, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 209
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 211
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "wifi"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiManager;

    iput-object v4, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 213
    iget-object v4, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v4

    iput-object v4, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 214
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0016

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mSecurityType:[Ljava/lang/String;

    .line 216
    const-string v4, "wifi_ap_ssid_and_security"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mCreateNetwork:Landroid/preference/Preference;

    .line 217
    const-string v4, "suspend_optimizations"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mSuspendOptimizations:Landroid/preference/CheckBoxPreference;

    .line 218
    iget-object v4, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-nez v4, :cond_0

    .line 219
    const-string v4, "wlan"

    const-string v5, "SSID"

    const v6, 0x1040441

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/mediatek/custom/CustomProperties;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 222
    .local v3, s:Ljava/lang/String;
    iget-object v4, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mCreateNetwork:Landroid/preference/Preference;

    invoke-virtual {v0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v7, [Ljava/lang/Object;

    aput-object v3, v6, v8

    iget-object v7, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mSecurityType:[Ljava/lang/String;

    aget-object v7, v7, v8

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 231
    .end local v3           #s:Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "wifi_ap_operational_band"

    invoke-static {v4, v5, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 232
    .local v1, bandValue:I
    iget-object v4, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mBandSelect:Landroid/preference/ListPreference;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 233
    iget-object v4, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mBandSelect:Landroid/preference/ListPreference;

    invoke-virtual {v4, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 234
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mBandSelect:Landroid/preference/ListPreference;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 235
    return-void

    .line 225
    .end local v1           #bandValue:I
    :cond_0
    iget-object v4, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v4}, Lcom/android/jrdsettings/wifi/WifiApDialog;->getSecurityTypeIndex(Landroid/net/wifi/WifiConfiguration;)I

    move-result v2

    .line 226
    .local v2, index:I
    const-string v4, "TetherWifiSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "index = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    iget-object v4, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mCreateNetwork:Landroid/preference/Preference;

    invoke-virtual {v0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v7, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v7, v7, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    aput-object v7, v6, v8

    iget-object v7, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mSecurityType:[Ljava/lang/String;

    aget-object v7, v7, v2

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setPreferenceState(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 471
    iget-object v0, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mBandwidth:Landroid/preference/Preference;

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 472
    iget-object v0, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v0}, Lcom/android/jrdsettings/wifi/WifiApDialog;->getSecurityTypeIndex(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 474
    const-string v0, "TetherWifiSettings"

    const-string v1, "security is wpa psk, disable wps connect preference"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    const/4 p1, 0x0

    .line 477
    :cond_0
    iget-object v0, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mWpsConnect:Landroid/preference/Preference;

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 478
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .parameter "dialogInterface"
    .parameter "button"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 366
    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    .line 367
    iget-object v1, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mDialog:Lcom/android/jrdsettings/wifi/WifiApDialog;

    invoke-virtual {v1}, Lcom/android/jrdsettings/wifi/WifiApDialog;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 368
    iget-object v1, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v1, :cond_1

    .line 374
    iget-object v1, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_2

    .line 375
    iget-object v1, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v6}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 376
    iget-object v1, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v1, v2, v5}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 380
    :goto_0
    iget-object v1, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v1}, Lcom/android/jrdsettings/wifi/WifiApDialog;->getSecurityTypeIndex(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    .line 381
    .local v0, index:I
    if-nez v0, :cond_0

    .line 382
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f090185

    invoke-static {v1, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 384
    :cond_0
    iget-object v1, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mCreateNetwork:Landroid/preference/Preference;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f090499

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v4, v4, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    aput-object v4, v3, v6

    iget-object v4, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mSecurityType:[Ljava/lang/String;

    aget-object v4, v4, v0

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 389
    .end local v0           #index:I
    :cond_1
    return-void

    .line 378
    :cond_2
    iget-object v1, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiManager;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;Landroid/net/wifi/HotspotClient;)V
    .locals 2
    .parameter "v"
    .parameter "client"

    .prologue
    .line 391
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0b0151

    if-ne v0, v1, :cond_0

    if-eqz p2, :cond_0

    .line 392
    iget-boolean v0, p2, Landroid/net/wifi/HotspotClient;->isBlocked:Z

    if-eqz v0, :cond_1

    .line 393
    const-string v0, "TetherWifiSettings"

    const-string v1, "onClick,client is blocked, unblock now"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    iget-object v0, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, p2}, Landroid/net/wifi/WifiManager;->unblockClient(Landroid/net/wifi/HotspotClient;)Z

    .line 399
    :goto_0
    invoke-direct {p0}, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->handleWifiApClientsChanged()V

    .line 401
    :cond_0
    return-void

    .line 396
    :cond_1
    const-string v0, "TetherWifiSettings"

    const-string v1, "onClick,client isn\'t blocked, block now"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    iget-object v0, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, p2}, Landroid/net/wifi/WifiManager;->blockClient(Landroid/net/wifi/HotspotClient;)Z

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfig"

    .prologue
    .line 404
    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 405
    iget-object v0, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mDialog:Lcom/android/jrdsettings/wifi/WifiApDialog;

    if-eqz v0, :cond_0

    .line 406
    iget-object v0, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mDialog:Lcom/android/jrdsettings/wifi/WifiApDialog;

    invoke-virtual {v0}, Lcom/android/jrdsettings/wifi/WifiApDialog;->closeSpinnerDialog()V

    .line 408
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 12
    .parameter "icicle"

    .prologue
    const/4 v11, 0x0

    const/16 v10, 0x10

    const/4 v9, -0x2

    const/4 v8, 0x0

    .line 156
    invoke-super {p0, p1}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 157
    const v6, 0x7f060047

    invoke-virtual {p0, v6}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 159
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 161
    .local v1, activity:Landroid/app/Activity;
    const-string v6, "wifi_auto_disable"

    invoke-virtual {p0, v6}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/ListPreference;

    iput-object v6, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mWifiAutoDisable:Landroid/preference/ListPreference;

    .line 162
    const-string v6, "wifi_ap_ssid_and_security"

    invoke-virtual {p0, v6}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    .line 163
    .local v5, wifiApSettings:Landroid/preference/Preference;
    const-string v6, "wps_connect"

    invoke-virtual {p0, v6}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    iput-object v6, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mWpsConnect:Landroid/preference/Preference;

    .line 164
    iget-object v6, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mWpsConnect:Landroid/preference/Preference;

    invoke-virtual {v6, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 165
    const-string v6, "bandwidth_usage"

    invoke-virtual {p0, v6}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    iput-object v6, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mBandwidth:Landroid/preference/Preference;

    .line 166
    iget-object v6, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mBandwidth:Landroid/preference/Preference;

    invoke-virtual {v6, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 167
    const-string v6, "wifi_ap_band_select"

    invoke-virtual {p0, v6}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/ListPreference;

    iput-object v6, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mBandSelect:Landroid/preference/ListPreference;

    .line 169
    const-string v6, "connectivity"

    invoke-virtual {p0, v6}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 177
    .local v2, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x207000b

    invoke-virtual {v6, v7, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    .line 181
    .local v0, actionBarSwitch:Landroid/widget/Switch;
    instance-of v6, v1, Landroid/preference/PreferenceActivity;

    if-eqz v6, :cond_1

    move-object v4, v1

    .line 182
    check-cast v4, Landroid/preference/PreferenceActivity;

    .line 183
    .local v4, preferenceActivity:Landroid/preference/PreferenceActivity;
    invoke-virtual {v4}, Landroid/preference/PreferenceActivity;->onIsHidingHeaders()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v4}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v6

    if-nez v6, :cond_1

    .line 184
    :cond_0
    invoke-virtual {v1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f080004

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 186
    .local v3, padding:I
    invoke-virtual {v0, v8, v8, v3, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 187
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    invoke-virtual {v6, v10, v10}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 189
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    new-instance v7, Landroid/app/ActionBar$LayoutParams;

    const v8, 0x800015

    invoke-direct {v7, v9, v9, v8}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v6, v0, v7}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 196
    .end local v3           #padding:I
    .end local v4           #preferenceActivity:Landroid/preference/PreferenceActivity;
    :cond_1
    new-instance v6, Lcom/android/jrdsettings/wifi/WifiApEnabler;

    invoke-direct {v6, v1, v0}, Lcom/android/jrdsettings/wifi/WifiApEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v6, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mWifiApEnabler:Lcom/android/jrdsettings/wifi/WifiApEnabler;

    .line 197
    invoke-direct {p0}, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->initWifiTethering()V

    .line 199
    new-instance v6, Landroid/content/IntentFilter;

    const-string v7, "android.net.wifi.WIFI_HOTSPOT_CLIENTS_CHANGED"

    invoke-direct {v6, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v6, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mIntentFilter:Landroid/content/IntentFilter;

    .line 200
    iget-object v6, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v7, "android.net.wifi.WIFI_WPS_CHECK_PIN_FAIL"

    invoke-virtual {v6, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 201
    iget-object v6, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v7, "android.net.wifi.WIFI_HOTSPOT_OVERLAP"

    invoke-virtual {v6, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 202
    iget-object v6, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v7, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v6, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 203
    const-string v6, "connected_category"

    invoke-virtual {p0, v6}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceCategory;

    iput-object v6, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mConnectedCategory:Landroid/preference/PreferenceCategory;

    .line 204
    const-string v6, "blocked_category"

    invoke-virtual {p0, v6}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceCategory;

    iput-object v6, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mBlockedCategory:Landroid/preference/PreferenceCategory;

    .line 205
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f0400e5

    invoke-virtual {v6, v7, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mDetailView:Landroid/view/View;

    .line 206
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 7
    .parameter "id"

    .prologue
    .line 278
    const/4 v4, 0x2

    if-ne p1, v4, :cond_0

    .line 279
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 280
    .local v0, activity:Landroid/app/Activity;
    new-instance v4, Lcom/android/jrdsettings/wifi/WifiApDialog;

    iget-object v5, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v4, v0, p0, v5}, Lcom/android/jrdsettings/wifi/WifiApDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/net/wifi/WifiConfiguration;)V

    iput-object v4, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mDialog:Lcom/android/jrdsettings/wifi/WifiApDialog;

    .line 281
    iget-object v4, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mDialog:Lcom/android/jrdsettings/wifi/WifiApDialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x14

    invoke-virtual {v4, v5}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 283
    iget-object v1, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mDialog:Lcom/android/jrdsettings/wifi/WifiApDialog;

    .line 304
    .end local v0           #activity:Landroid/app/Activity;
    :goto_0
    return-object v1

    .line 284
    :cond_0
    const/4 v4, 0x1

    if-ne p1, v4, :cond_1

    .line 285
    new-instance v1, Lcom/mediatek/wifi/hotspot/WifiApWpsDialog;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/mediatek/wifi/hotspot/WifiApWpsDialog;-><init>(Landroid/content/Context;)V

    .line 286
    .local v1, d:Landroid/app/Dialog;
    const-string v4, "mydialog"

    const-string v5, "onCreateDialog, return dialog"

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 288
    .end local v1           #d:Landroid/app/Dialog;
    :cond_1
    const/4 v4, 0x3

    if-ne p1, v4, :cond_3

    .line 289
    iget-object v4, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mDetailView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    .line 290
    .local v3, parent:Landroid/view/ViewParent;
    if-eqz v3, :cond_2

    instance-of v4, v3, Landroid/view/ViewGroup;

    if-eqz v4, :cond_2

    .line 291
    check-cast v3, Landroid/view/ViewGroup;

    .end local v3           #parent:Landroid/view/ViewParent;
    iget-object v4, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mDetailView:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 293
    :cond_2
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f090121

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mDetailView:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const/high16 v5, 0x104

    new-instance v6, Lcom/mediatek/wifi/hotspot/TetherWifiSettings$2;

    invoke-direct {v6, p0}, Lcom/mediatek/wifi/hotspot/TetherWifiSettings$2;-><init>(Lcom/mediatek/wifi/hotspot/TetherWifiSettings;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .local v2, dialog:Landroid/app/AlertDialog;
    move-object v1, v2

    .line 301
    goto :goto_0

    .line 304
    .end local v2           #dialog:Landroid/app/AlertDialog;
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 262
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 263
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 264
    iget-object v0, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mWifiApEnabler:Lcom/android/jrdsettings/wifi/WifiApEnabler;

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mWifiApEnabler:Lcom/android/jrdsettings/wifi/WifiApEnabler;

    invoke-virtual {v0}, Lcom/android/jrdsettings/wifi/WifiApEnabler;->pause()V

    .line 267
    :cond_0
    iget-object v0, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mWifiAutoDisable:Landroid/preference/ListPreference;

    if-eqz v0, :cond_1

    .line 268
    iget-object v0, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mWifiAutoDisable:Landroid/preference/ListPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 271
    :cond_1
    iget-object v0, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mDialog:Lcom/android/jrdsettings/wifi/WifiApDialog;

    if-eqz v0, :cond_2

    .line 272
    iget-object v0, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mDialog:Lcom/android/jrdsettings/wifi/WifiApDialog;

    invoke-virtual {v0}, Lcom/android/jrdsettings/wifi/WifiApDialog;->closeSpinnerDialog()V

    .line 275
    :cond_2
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .parameter "preference"
    .parameter "value"

    .prologue
    .line 308
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 309
    .local v1, key:Ljava/lang/String;
    const-string v2, "TetherWifiSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPreferenceChange key="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    const-string v2, "wifi_auto_disable"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 313
    invoke-virtual {p0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wifi_hotspot_auto_disable"

    move-object v2, p2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 316
    const-string v2, "TetherWifiSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPreferenceChange auto disable value="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    :cond_0
    :goto_0
    const/4 v2, 0x1

    return v2

    .line 317
    .restart local p2
    :cond_1
    const-string v2, "wifi_ap_band_select"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 318
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 319
    .local v0, bandValue:I
    invoke-virtual {p0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_ap_operational_band"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 8
    .parameter "screen"
    .parameter "preference"

    .prologue
    const v7, 0x7f0b0267

    const/4 v6, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 326
    const-string v5, "connectivity"

    invoke-virtual {p0, v5}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 329
    .local v1, cm:Landroid/net/ConnectivityManager;
    iget-object v5, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mCreateNetwork:Landroid/preference/Preference;

    if-ne p2, v5, :cond_1

    .line 330
    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->showDialog(I)V

    .line 351
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v3

    return v3

    .line 331
    :cond_1
    iget-object v5, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mWpsConnect:Landroid/preference/Preference;

    if-ne p2, v5, :cond_2

    .line 332
    invoke-virtual {p0, v3}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->showDialog(I)V

    goto :goto_0

    .line 333
    :cond_2
    iget-object v5, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mSuspendOptimizations:Landroid/preference/CheckBoxPreference;

    if-ne p2, v5, :cond_4

    .line 334
    invoke-virtual {p0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "wifi_hotspot_suspend_optimizations_enabled"

    iget-object v7, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mSuspendOptimizations:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_3

    :goto_1
    invoke-static {v5, v6, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_3
    move v3, v4

    goto :goto_1

    .line 336
    :cond_4
    instance-of v3, p2, Lcom/mediatek/wifi/hotspot/ButtonPreference;

    if-eqz v3, :cond_0

    .line 337
    invoke-virtual {p0, v6}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->removeDialog(I)V

    move-object v0, p2

    .line 338
    check-cast v0, Lcom/mediatek/wifi/hotspot/ButtonPreference;

    .line 340
    .local v0, client:Lcom/mediatek/wifi/hotspot/ButtonPreference;
    iget-object v3, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mDetailView:Landroid/view/View;

    const v5, 0x7f0b0266

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/mediatek/wifi/hotspot/ButtonPreference;->getMacAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 341
    invoke-virtual {v0}, Lcom/mediatek/wifi/hotspot/ButtonPreference;->isBlocked()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 342
    iget-object v3, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mDetailView:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 349
    :goto_2
    invoke-virtual {p0, v6}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->showDialog(I)V

    goto :goto_0

    .line 344
    :cond_5
    iget-object v3, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mDetailView:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 345
    iget-object v3, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Lcom/mediatek/wifi/hotspot/ButtonPreference;->getMacAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiManager;->getClientIp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 346
    .local v2, ipAddr:Ljava/lang/String;
    const-string v3, "TetherWifiSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "connected client ip address is:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    iget-object v3, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mDetailView:Landroid/view/View;

    const v4, 0x7f0b0268

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 239
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 241
    iget-object v2, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mWifiApEnabler:Lcom/android/jrdsettings/wifi/WifiApEnabler;

    if-eqz v2, :cond_0

    .line 242
    iget-object v2, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mWifiApEnabler:Lcom/android/jrdsettings/wifi/WifiApEnabler;

    invoke-virtual {v2}, Lcom/android/jrdsettings/wifi/WifiApEnabler;->resume()V

    .line 244
    :cond_0
    iget-object v2, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mWifiAutoDisable:Landroid/preference/ListPreference;

    if-eqz v2, :cond_1

    .line 245
    iget-object v2, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mWifiAutoDisable:Landroid/preference/ListPreference;

    invoke-virtual {v2, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 247
    invoke-virtual {p0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_hotspot_auto_disable"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 251
    .local v0, value:I
    iget-object v2, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mWifiAutoDisable:Landroid/preference/ListPreference;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 254
    .end local v0           #value:I
    :cond_1
    iget-object v2, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mSuspendOptimizations:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wifi_hotspot_suspend_optimizations_enabled"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_2

    :goto_0
    invoke-virtual {v2, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 257
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 258
    invoke-direct {p0}, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->handleWifiApClientsChanged()V

    .line 259
    return-void

    .line 254
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method
