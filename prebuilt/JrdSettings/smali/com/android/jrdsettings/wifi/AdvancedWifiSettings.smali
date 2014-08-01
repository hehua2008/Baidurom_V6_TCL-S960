.class public Lcom/android/jrdsettings/wifi/AdvancedWifiSettings;
.super Lcom/android/jrdsettings/SettingsPreferenceFragment;
.source "AdvancedWifiSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final KEY_FREQUENCY_BAND:Ljava/lang/String; = "frequency_band"

.field private static final KEY_NOTIFY_OPEN_NETWORKS:Ljava/lang/String; = "notify_open_networks"

.field private static final KEY_POOR_NETWORK_DETECTION:Ljava/lang/String; = "wifi_poor_network_detection"

.field private static final KEY_SLEEP_POLICY:Ljava/lang/String; = "sleep_policy"

.field private static final KEY_SUSPEND_OPTIMIZATIONS:Ljava/lang/String; = "suspend_optimizations"

.field protected static final NOT_FOUND_STRING:I = -0x1

.field private static final ONLY_ONE_IP_ADDRESS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "AdvancedWifiSettings"


# instance fields
.field private final AP_SUPPORT_IPV6:Ljava/lang/String;

.field mExt:Lcom/mediatek/settings/ext/IWifiExt;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mIpAddressPref:Landroid/preference/Preference;

.field private mIpv6AddressPref:Landroid/preference/Preference;

.field private mMacAddressPref:Landroid/preference/Preference;

.field private mNotifyOpenNetworks:Landroid/preference/CheckBoxPreference;

.field private mPasspointSettings:Lcom/mediatek/wifi/PasspointSettings;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;-><init>()V

    .line 105
    const-string v0, "ap.support.ipv6"

    iput-object v0, p0, Lcom/android/jrdsettings/wifi/AdvancedWifiSettings;->AP_SUPPORT_IPV6:Ljava/lang/String;

    .line 111
    new-instance v0, Lcom/android/jrdsettings/wifi/AdvancedWifiSettings$1;

    invoke-direct {v0, p0}, Lcom/android/jrdsettings/wifi/AdvancedWifiSettings$1;-><init>(Lcom/android/jrdsettings/wifi/AdvancedWifiSettings;)V

    iput-object v0, p0, Lcom/android/jrdsettings/wifi/AdvancedWifiSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/jrdsettings/wifi/AdvancedWifiSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/jrdsettings/wifi/AdvancedWifiSettings;->mNotifyOpenNetworks:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/jrdsettings/wifi/AdvancedWifiSettings;)Lcom/mediatek/wifi/PasspointSettings;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/jrdsettings/wifi/AdvancedWifiSettings;->mPasspointSettings:Lcom/mediatek/wifi/PasspointSettings;

    return-object v0
.end method

.method private addWifiInfoPreference()V
    .locals 2

    .prologue
    .line 377
    new-instance v0, Landroid/preference/Preference;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/jrdsettings/wifi/AdvancedWifiSettings;->mMacAddressPref:Landroid/preference/Preference;

    .line 378
    iget-object v0, p0, Lcom/android/jrdsettings/wifi/AdvancedWifiSettings;->mMacAddressPref:Landroid/preference/Preference;

    const v1, 0x7f090472

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 379
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/jrdsettings/wifi/AdvancedWifiSettings;->mMacAddressPref:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 381
    new-instance v0, Landroid/preference/Preference;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/jrdsettings/wifi/AdvancedWifiSettings;->mIpAddressPref:Landroid/preference/Preference;

    .line 383
    iget-object v0, p0, Lcom/android/jrdsettings/wifi/AdvancedWifiSettings;->mIpAddressPref:Landroid/preference/Preference;

    const v1, 0x7f090136

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 384
    new-instance v0, Landroid/preference/Preference;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/jrdsettings/wifi/AdvancedWifiSettings;->mIpv6AddressPref:Landroid/preference/Preference;

    .line 385
    iget-object v0, p0, Lcom/android/jrdsettings/wifi/AdvancedWifiSettings;->mIpv6AddressPref:Landroid/preference/Preference;

    const v1, 0x7f090137

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 386
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/jrdsettings/wifi/AdvancedWifiSettings;->mIpv6AddressPref:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 390
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/jrdsettings/wifi/AdvancedWifiSettings;->mIpAddressPref:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 391
    return-void
.end method

.method private initPreferences()V
    .locals 10

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 191
    const-string v5, "notify_open_networks"

    invoke-virtual {p0, v5}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/android/jrdsettings/wifi/AdvancedWifiSettings;->mNotifyOpenNetworks:Landroid/preference/CheckBoxPreference;

    .line 193
    iget-object v8, p0, Lcom/android/jrdsettings/wifi/AdvancedWifiSettings;->mNotifyOpenNetworks:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v9, "wifi_networks_available_notification_on"

    invoke-static {v5, v9, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v6, :cond_4

    move v5, v6

    :goto_0
    invoke-virtual {v8, v5}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 195
    iget-object v5, p0, Lcom/android/jrdsettings/wifi/AdvancedWifiSettings;->mNotifyOpenNetworks:Landroid/preference/CheckBoxPreference;

    iget-object v6, p0, Lcom/android/jrdsettings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v6

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 197
    const-string v5, "wifi_poor_network_detection"

    invoke-virtual {p0, v5}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    .line 199
    .local v1, poorNetworkDetection:Landroid/preference/CheckBoxPreference;
    if-eqz v1, :cond_0

    .line 201
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 202
    invoke-virtual {p0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "wifi_watchdog_poor_network_test_enabled"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 217
    :cond_0
    const-string v5, "frequency_band"

    invoke-virtual {p0, v5}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    .line 219
    .local v0, frequencyPref:Landroid/preference/ListPreference;
    iget-object v5, p0, Lcom/android/jrdsettings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->isDualBandSupported()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 220
    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 221
    iget-object v5, p0, Lcom/android/jrdsettings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getFrequencyBand()I

    move-result v4

    .line 222
    .local v4, value:I
    const/4 v5, -0x1

    if-eq v4, v5, :cond_5

    .line 223
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 234
    .end local v4           #value:I
    :cond_1
    :goto_1
    const-string v5, "sleep_policy"

    invoke-virtual {p0, v5}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    .line 235
    .local v2, sleepPolicyPref:Landroid/preference/ListPreference;
    if-eqz v2, :cond_3

    .line 236
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/android/jrdsettings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 237
    const v5, 0x7f0a001d

    invoke-virtual {v2, v5}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 239
    :cond_2
    invoke-virtual {v2, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 241
    iget-object v5, p0, Lcom/android/jrdsettings/wifi/AdvancedWifiSettings;->mExt:Lcom/mediatek/settings/ext/IWifiExt;

    invoke-virtual {p0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/mediatek/settings/ext/IWifiExt;->getSleepPolicy(Landroid/content/ContentResolver;)I

    move-result v4

    .line 243
    .restart local v4       #value:I
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 244
    .local v3, stringValue:Ljava/lang/String;
    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 245
    invoke-direct {p0, v2, v3}, Lcom/android/jrdsettings/wifi/AdvancedWifiSettings;->updateSleepPolicySummary(Landroid/preference/Preference;Ljava/lang/String;)V

    .line 247
    .end local v3           #stringValue:Ljava/lang/String;
    .end local v4           #value:I
    :cond_3
    return-void

    .end local v0           #frequencyPref:Landroid/preference/ListPreference;
    .end local v1           #poorNetworkDetection:Landroid/preference/CheckBoxPreference;
    .end local v2           #sleepPolicyPref:Landroid/preference/ListPreference;
    :cond_4
    move v5, v7

    .line 193
    goto :goto_0

    .line 225
    .restart local v0       #frequencyPref:Landroid/preference/ListPreference;
    .restart local v1       #poorNetworkDetection:Landroid/preference/CheckBoxPreference;
    .restart local v4       #value:I
    :cond_5
    const-string v5, "AdvancedWifiSettings"

    const-string v6, "Failed to fetch frequency band"

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 228
    .end local v4           #value:I
    :cond_6
    if-eqz v0, :cond_1

    .line 230
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_1
.end method

.method private refreshWifiInfo()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    const v11, 0x7f090538

    .line 322
    iget-object v8, p0, Lcom/android/jrdsettings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v8}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v7

    .line 325
    .local v7, wifiInfo:Landroid/net/wifi/WifiInfo;
    if-nez v7, :cond_1

    const/4 v6, 0x0

    .line 326
    .local v6, macAddress:Ljava/lang/String;
    :goto_0
    iget-object v8, p0, Lcom/android/jrdsettings/wifi/AdvancedWifiSettings;->mMacAddressPref:Landroid/preference/Preference;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    .end local v6           #macAddress:Ljava/lang/String;
    :goto_1
    invoke-virtual {v8, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 329
    invoke-static {}, Lcom/android/jrdsettings/Utils;->getWifiIpAddresses()Ljava/lang/String;

    move-result-object v2

    .line 334
    .local v2, ipAddress:Ljava/lang/String;
    const-string v8, "AdvancedWifiSettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "refreshWifiInfo, the ipAddress is : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    if-eqz v2, :cond_7

    .line 336
    const-string v8, ", "

    invoke-virtual {v2, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 337
    .local v3, ipAddresses:[Ljava/lang/String;
    array-length v4, v3

    .line 338
    .local v4, ipAddressesLength:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    if-ge v1, v4, :cond_9

    .line 339
    aget-object v8, v3, v1

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_4

    .line 340
    iget-object v9, p0, Lcom/android/jrdsettings/wifi/AdvancedWifiSettings;->mIpAddressPref:Landroid/preference/Preference;

    aget-object v8, v3, v1

    if-nez v8, :cond_3

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    :goto_3
    invoke-virtual {v9, v8}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 342
    if-ne v4, v12, :cond_0

    .line 343
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    iget-object v9, p0, Lcom/android/jrdsettings/wifi/AdvancedWifiSettings;->mIpv6AddressPref:Landroid/preference/Preference;

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 338
    :cond_0
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 325
    .end local v1           #i:I
    .end local v2           #ipAddress:Ljava/lang/String;
    .end local v3           #ipAddresses:[Ljava/lang/String;
    .end local v4           #ipAddressesLength:I
    :cond_1
    invoke-virtual {v7}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 326
    .restart local v6       #macAddress:Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 340
    .end local v6           #macAddress:Ljava/lang/String;
    .restart local v1       #i:I
    .restart local v2       #ipAddress:Ljava/lang/String;
    .restart local v3       #ipAddresses:[Ljava/lang/String;
    .restart local v4       #ipAddressesLength:I
    :cond_3
    aget-object v8, v3, v1

    goto :goto_3

    .line 346
    :cond_4
    iget-object v9, p0, Lcom/android/jrdsettings/wifi/AdvancedWifiSettings;->mIpv6AddressPref:Landroid/preference/Preference;

    aget-object v8, v3, v1

    if-nez v8, :cond_6

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    :goto_5
    invoke-virtual {v9, v8}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 348
    if-ne v4, v12, :cond_5

    .line 349
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    iget-object v9, p0, Lcom/android/jrdsettings/wifi/AdvancedWifiSettings;->mIpAddressPref:Landroid/preference/Preference;

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 352
    :cond_5
    invoke-virtual {p0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "ap.support.ipv6"

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 353
    .local v0, hasIpv6Address:I
    if-nez v0, :cond_0

    .line 355
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    iget-object v9, p0, Lcom/android/jrdsettings/wifi/AdvancedWifiSettings;->mIpv6AddressPref:Landroid/preference/Preference;

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_4

    .line 346
    .end local v0           #hasIpv6Address:I
    :cond_6
    aget-object v8, v3, v1

    goto :goto_5

    .line 362
    .end local v1           #i:I
    .end local v3           #ipAddresses:[Ljava/lang/String;
    .end local v4           #ipAddressesLength:I
    :cond_7
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/android/jrdsettings/Utils;->getWifiIpAddresses(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 363
    .local v5, ipV4Address:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/jrdsettings/wifi/AdvancedWifiSettings;->mIpAddressPref:Landroid/preference/Preference;

    if-nez v5, :cond_8

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .end local v5           #ipV4Address:Ljava/lang/String;
    :cond_8
    invoke-virtual {v8, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 366
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    iget-object v9, p0, Lcom/android/jrdsettings/wifi/AdvancedWifiSettings;->mIpv6AddressPref:Landroid/preference/Preference;

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 370
    :cond_9
    iget-object v8, p0, Lcom/android/jrdsettings/wifi/AdvancedWifiSettings;->mExt:Lcom/mediatek/settings/ext/IWifiExt;

    invoke-interface {v8}, Lcom/mediatek/settings/ext/IWifiExt;->refreshNetworkInfoView()V

    .line 372
    return-void
.end method

.method private updateSleepPolicySummary(Landroid/preference/Preference;Ljava/lang/String;)V
    .locals 7
    .parameter "sleepPolicyPref"
    .parameter "value"

    .prologue
    .line 250
    if-eqz p2, :cond_2

    .line 251
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a001e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 252
    .local v3, values:[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/jrdsettings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    const v2, 0x7f0a001d

    .line 254
    .local v2, summaryArrayResId:I
    :goto_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 255
    .local v1, summaries:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v4, v3

    if-ge v0, v4, :cond_2

    .line 256
    aget-object v4, v3, v0

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 257
    array-length v4, v1

    if-ge v0, v4, :cond_1

    .line 258
    aget-object v4, v1, v0

    invoke-virtual {p1, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 267
    .end local v0           #i:I
    .end local v1           #summaries:[Ljava/lang/String;
    .end local v2           #summaryArrayResId:I
    .end local v3           #values:[Ljava/lang/String;
    :goto_2
    return-void

    .line 252
    .restart local v3       #values:[Ljava/lang/String;
    :cond_0
    const v2, 0x7f0a001c

    goto :goto_0

    .line 255
    .restart local v0       #i:I
    .restart local v1       #summaries:[Ljava/lang/String;
    .restart local v2       #summaryArrayResId:I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 265
    .end local v0           #i:I
    .end local v1           #summaries:[Ljava/lang/String;
    .end local v2           #summaryArrayResId:I
    .end local v3           #values:[Ljava/lang/String;
    :cond_2
    const-string v4, ""

    invoke-virtual {p1, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 266
    const-string v4, "AdvancedWifiSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid sleep policy value: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 152
    invoke-super {p0, p1}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 155
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/jrdsettings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 159
    iget-object v0, p0, Lcom/android/jrdsettings/wifi/AdvancedWifiSettings;->mPasspointSettings:Lcom/mediatek/wifi/PasspointSettings;

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/android/jrdsettings/wifi/AdvancedWifiSettings;->mPasspointSettings:Lcom/mediatek/wifi/PasspointSettings;

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/wifi/PasspointSettings;->addPasspointPreference(Landroid/preference/PreferenceScreen;)V

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/android/jrdsettings/wifi/AdvancedWifiSettings;->mExt:Lcom/mediatek/settings/ext/IWifiExt;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/mediatek/settings/ext/IWifiExt;->initConnectView(Landroid/app/Activity;Landroid/preference/PreferenceScreen;)V

    .line 164
    iget-object v0, p0, Lcom/android/jrdsettings/wifi/AdvancedWifiSettings;->mExt:Lcom/mediatek/settings/ext/IWifiExt;

    invoke-virtual {p0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/mediatek/settings/ext/IWifiExt;->initPreference(Landroid/content/ContentResolver;)V

    .line 165
    invoke-direct {p0}, Lcom/android/jrdsettings/wifi/AdvancedWifiSettings;->addWifiInfoPreference()V

    .line 166
    iget-object v0, p0, Lcom/android/jrdsettings/wifi/AdvancedWifiSettings;->mExt:Lcom/mediatek/settings/ext/IWifiExt;

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/mediatek/settings/ext/IWifiExt;->initNetworkInfoView(Landroid/preference/PreferenceScreen;)V

    .line 168
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 137
    invoke-super {p0, p1}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 138
    const v0, 0x7f060053

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 140
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/jrdsettings/Utils;->getWifiPlugin(Landroid/content/Context;)Lcom/mediatek/settings/ext/IWifiExt;

    move-result-object v0

    iput-object v0, p0, Lcom/android/jrdsettings/wifi/AdvancedWifiSettings;->mExt:Lcom/mediatek/settings/ext/IWifiExt;

    .line 142
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/jrdsettings/wifi/AdvancedWifiSettings;->mIntentFilter:Landroid/content/IntentFilter;

    .line 146
    new-instance v0, Lcom/mediatek/wifi/PasspointSettings;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mediatek/wifi/PasspointSettings;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/jrdsettings/wifi/AdvancedWifiSettings;->mPasspointSettings:Lcom/mediatek/wifi/PasspointSettings;

    .line 148
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 185
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 187
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/jrdsettings/wifi/AdvancedWifiSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 188
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 9
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 293
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 295
    .local v2, key:Ljava/lang/String;
    const-string v4, "frequency_band"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 297
    :try_start_0
    iget-object v7, p0, Lcom/android/jrdsettings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v4, v0

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v8, 0x1

    invoke-virtual {v7, v4, v8}, Landroid/net/wifi/WifiManager;->setFrequencyBand(IZ)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 305
    :cond_0
    const-string v4, "sleep_policy"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 307
    :try_start_1
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v3, v0

    .line 308
    .local v3, stringValue:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "wifi_sleep_policy"

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v4, v7, v8}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 310
    invoke-direct {p0, p1, v3}, Lcom/android/jrdsettings/wifi/AdvancedWifiSettings;->updateSleepPolicySummary(Landroid/preference/Preference;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .end local v3           #stringValue:Ljava/lang/String;
    :cond_1
    move v4, v6

    .line 318
    :goto_0
    return v4

    .line 298
    :catch_0
    move-exception v1

    .line 299
    .local v1, e:Ljava/lang/NumberFormatException;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v6, 0x7f090471

    invoke-static {v4, v6, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    move v4, v5

    .line 301
    goto :goto_0

    .line 311
    .end local v1           #e:Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v1

    .line 312
    .restart local v1       #e:Ljava/lang/NumberFormatException;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v6, 0x7f090419

    invoke-static {v4, v6, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    move v4, v5

    .line 314
    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6
    .parameter "screen"
    .parameter "preference"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 271
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 273
    .local v0, key:Ljava/lang/String;
    const-string v3, "notify_open_networks"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 274
    invoke-virtual {p0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wifi_networks_available_notification_on"

    check-cast p2, Landroid/preference/CheckBoxPreference;

    .end local p2
    invoke-virtual {p2}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_0

    move v1, v2

    :cond_0
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 288
    :goto_0
    return v2

    .line 277
    .restart local p2
    :cond_1
    const-string v3, "wifi_poor_network_detection"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 278
    invoke-virtual {p0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wifi_watchdog_poor_network_test_enabled"

    check-cast p2, Landroid/preference/CheckBoxPreference;

    .end local p2
    invoke-virtual {p2}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_2

    move v1, v2

    :cond_2
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 281
    .restart local p2
    :cond_3
    const-string v3, "suspend_optimizations"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 282
    invoke-virtual {p0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wifi_suspend_optimizations_enabled"

    check-cast p2, Landroid/preference/CheckBoxPreference;

    .end local p2
    invoke-virtual {p2}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_4

    move v1, v2

    :cond_4
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 286
    .restart local p2
    :cond_5
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 172
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 173
    invoke-direct {p0}, Lcom/android/jrdsettings/wifi/AdvancedWifiSettings;->initPreferences()V

    .line 174
    invoke-direct {p0}, Lcom/android/jrdsettings/wifi/AdvancedWifiSettings;->refreshWifiInfo()V

    .line 176
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/jrdsettings/wifi/AdvancedWifiSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/jrdsettings/wifi/AdvancedWifiSettings;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 179
    iget-object v0, p0, Lcom/android/jrdsettings/wifi/AdvancedWifiSettings;->mPasspointSettings:Lcom/mediatek/wifi/PasspointSettings;

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/android/jrdsettings/wifi/AdvancedWifiSettings;->mPasspointSettings:Lcom/mediatek/wifi/PasspointSettings;

    iget-object v1, p0, Lcom/android/jrdsettings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mediatek/wifi/PasspointSettings;->refreshPasspointPreference(Z)V

    .line 182
    :cond_0
    return-void
.end method
