.class public Lcom/android/jrdsettings/wifi/WifiSettings;
.super Lcom/android/jrdsettings/SettingsPreferenceFragment;
.source "WifiSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/jrdsettings/wifi/WifiSettings$ProportionalOuterFrame;,
        Lcom/android/jrdsettings/wifi/WifiSettings$Scanner;,
        Lcom/android/jrdsettings/wifi/WifiSettings$Multimap;
    }
.end annotation


# static fields
.field public static final AP_STATE_PUBLIC:Ljava/lang/String; = "Public"

.field private static final CONFIGED_AP:Ljava/lang/String; = "configed_access_points"

.field public static final EAP:Ljava/lang/String; = "EAP"

.field private static final EXTRA_AUTO_FINISH_ON_CONNECT:Ljava/lang/String; = "wifi_auto_finish_on_connect"

.field private static final EXTRA_ENABLE_NEXT_ON_CONNECT:Ljava/lang/String; = "wifi_enable_next_on_connect"

.field private static final EXTRA_IS_FIRST_RUN:Ljava/lang/String; = "firstRun"

.field protected static final EXTRA_SHOW_CUSTOM_BUTTON:Ljava/lang/String; = "wifi_show_custom_button"

.field protected static final EXTRA_SHOW_WIFI_REQUIRED_INFO:Ljava/lang/String; = "wifi_show_wifi_required_info"

.field private static final KEYSTORE_SPACE:Ljava/lang/String; = "keystore://"

.field private static final LOGV:Z = true

.field private static final MENU_ID_ADD_NETWORK:I = 0x4

.field private static final MENU_ID_ADVANCED:I = 0x5

.field private static final MENU_ID_CONNECT:I = 0x7

.field private static final MENU_ID_DISCONNECT:I = 0xa

.field private static final MENU_ID_FORGET:I = 0x8

.field private static final MENU_ID_MODIFY:I = 0x9

.field private static final MENU_ID_P2P:I = 0x3

.field private static final MENU_ID_SCAN:I = 0x6

.field private static final MENU_ID_WPS_PBC:I = 0x1

.field private static final MENU_ID_WPS_PIN:I = 0x2

.field private static final NEW_AP:Ljava/lang/String; = "new_access_points"

.field public static final OPEN:Ljava/lang/String; = "Open"

.field public static final PSK:Ljava/lang/String; = "PSK"

.field private static final SAVE_DIALOG_ACCESS_POINT_STATE:Ljava/lang/String; = "wifi_ap_state"

.field private static final SAVE_DIALOG_EDIT_MODE:Ljava/lang/String; = "edit_mode"

.field private static final TAG:Ljava/lang/String; = "WifiSettings"

.field public static final WEP:Ljava/lang/String; = "WEP"

.field private static final WIFI_AND_MOBILE_SKIPPED_DIALOG_ID:I = 0x5

.field private static final WIFI_DIALOG_ID:I = 0x1

.field private static final WIFI_LOAD_DEF_NEWORK_CFG:Ljava/lang/String; = "WIFI_Def_Networks_Cfg"

.field private static final WIFI_LOAD_DEF_NEWORK_FLG:Ljava/lang/String; = "WIFI_Def_Networks_Flg"

.field private static final WIFI_RESCAN_INTERVAL_MS:I = 0x1770

.field private static final WIFI_SKIPPED_DIALOG_ID:I = 0x4

.field private static final WLAN_AP_AND_GPRS:Ljava/lang/String; = "access_points_and_gprs"

.field private static final WPS_PBC_DIALOG_ID:I = 0x2

.field private static final WPS_PIN_DIALOG_ID:I = 0x3

.field private static final mSimSlot_1:Ljava/lang/String; = "Sim Slot 1"

.field private static final mSimSlot_2:Ljava/lang/String; = "Sim Slot 2"


# instance fields
.field private mAccessPointSavedState:Landroid/os/Bundle;

.field private mAddApView:Landroid/view/View;

.field private mAutoFinishOnConnection:Z

.field private mConfigedAPCategory:Landroid/preference/PreferenceCategory;

.field private mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

.field private mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mDialog:Lcom/android/jrdsettings/wifi/WifiDialog;

.field private mDialogFragment:Lcom/android/jrdsettings/SettingsPreferenceFragment$SettingsDialogFragment;

.field private mDlgAccessPoint:Lcom/android/jrdsettings/wifi/AccessPoint;

.field private mDlgEdit:Z

.field private mEmptyView:Landroid/widget/TextView;

.field private mEnableNextOnConnection:Z

.field mExt:Lcom/mediatek/settings/ext/IWifiSettingsExt;

.field private final mFilter:Landroid/content/IntentFilter;

.field private mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;

.field private mKeyStoreNetworkId:I

.field private mLastInfo:Landroid/net/wifi/WifiInfo;

.field private mLastState:Landroid/net/NetworkInfo$DetailedState;

.field private mManuallyConnect:Z

.field private mNewAPCategory:Landroid/preference/PreferenceCategory;

.field private mP2pSupported:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

.field private final mScanner:Lcom/android/jrdsettings/wifi/WifiSettings$Scanner;

.field private mSelectedAccessPoint:Lcom/android/jrdsettings/wifi/AccessPoint;

.field private mSetupWizardMode:Z

.field private mTelephonyManagerEx:Lcom/mediatek/telephony/TelephonyManagerEx;

.field private mTm:Landroid/telephony/TelephonyManager;

.field private mWifiEnabler:Lcom/android/jrdsettings/wifi/WifiEnabler;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private showInputMethodDialog:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 281
    invoke-direct {p0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;-><init>()V

    .line 206
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 208
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mKeyStoreNetworkId:I

    .line 255
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->showInputMethodDialog:Z

    .line 282
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    .line 283
    iget-object v0, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 284
    iget-object v0, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 285
    iget-object v0, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.NETWORK_IDS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 286
    iget-object v0, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 287
    iget-object v0, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 288
    iget-object v0, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.LINK_CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 289
    iget-object v0, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 290
    iget-object v0, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 292
    iget-object v0, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.NO_CERTIFICATION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 294
    new-instance v0, Lcom/android/jrdsettings/wifi/WifiSettings$1;

    invoke-direct {v0, p0}, Lcom/android/jrdsettings/wifi/WifiSettings$1;-><init>(Lcom/android/jrdsettings/wifi/WifiSettings;)V

    iput-object v0, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 301
    new-instance v0, Lcom/android/jrdsettings/wifi/WifiSettings$Scanner;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/jrdsettings/wifi/WifiSettings$Scanner;-><init>(Lcom/android/jrdsettings/wifi/WifiSettings;Lcom/android/jrdsettings/wifi/WifiSettings$1;)V

    iput-object v0, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mScanner:Lcom/android/jrdsettings/wifi/WifiSettings$Scanner;

    .line 302
    iput-boolean v2, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mManuallyConnect:Z

    .line 303
    return-void
.end method

.method static synthetic access$000(Lcom/android/jrdsettings/wifi/WifiSettings;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 151
    invoke-direct {p0, p1, p2}, Lcom/android/jrdsettings/wifi/WifiSettings;->handleEvent(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/jrdsettings/wifi/WifiSettings;)Landroid/net/wifi/WifiManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/jrdsettings/wifi/WifiSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 151
    invoke-direct {p0}, Lcom/android/jrdsettings/wifi/WifiSettings;->isPhone()Z

    move-result v0

    return v0
.end method

.method private addMessagePreference(I)V
    .locals 2
    .parameter "messageId"

    .prologue
    .line 1184
    iget-object v0, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mEmptyView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 1186
    :cond_0
    iget-object v0, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mExt:Lcom/mediatek/settings/ext/IWifiSettingsExt;

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/mediatek/settings/ext/IWifiSettingsExt;->emptyScreen(Landroid/preference/PreferenceScreen;)V

    .line 1187
    return-void
.end method

.method private changeNextButtonState(Z)V
    .locals 1
    .parameter "connected"

    .prologue
    .line 1545
    iget-boolean v0, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mEnableNextOnConnection:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->hasNextButton()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1546
    invoke-virtual {p0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->getNextButton()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1548
    :cond_0
    return-void
.end method

.method private constructAccessPoints()Ljava/util/List;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/jrdsettings/wifi/AccessPoint;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1191
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1194
    .local v3, accessPoints:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/jrdsettings/wifi/AccessPoint;>;"
    new-instance v4, Lcom/android/jrdsettings/wifi/WifiSettings$Multimap;

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v4, v0, v1}, Lcom/android/jrdsettings/wifi/WifiSettings$Multimap;-><init>(Lcom/android/jrdsettings/wifi/WifiSettings;Lcom/android/jrdsettings/wifi/WifiSettings$1;)V

    .line 1197
    .local v4, apMap:Lcom/android/jrdsettings/wifi/WifiSettings$Multimap;,"Lcom/android/jrdsettings/wifi/WifiSettings$Multimap<Ljava/lang/String;Lcom/android/jrdsettings/wifi/AccessPoint;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/wifi/WifiSettings;->mExt:Lcom/mediatek/settings/ext/IWifiSettingsExt;

    move-object/from16 v17, v0

    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v18

    invoke-interface/range {v17 .. v18}, Lcom/mediatek/settings/ext/IWifiSettingsExt;->emptyCategory(Landroid/preference/PreferenceScreen;)V

    .line 1199
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v6

    .line 1200
    .local v6, configs:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v6, :cond_a

    .line 1201
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_a

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/WifiConfiguration;

    .line 1203
    .local v5, config:Landroid/net/wifi/WifiConfiguration;
    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->imsi:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_4

    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->imsi:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "\"none\""

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_4

    .line 1204
    const-string v17, "WifiSettings"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "config.SSID "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1205
    const-string v17, "WifiSettings"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "config.imsi "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->imsi:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1206
    const-string v17, "WifiSettings"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "config.simSlot "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->simSlot:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1207
    const-string v17, "WifiSettings"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "config.networkId "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget v0, v5, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1208
    const/16 v16, 0x0

    .line 1209
    .local v16, slot:I
    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->simSlot:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "\"0\""

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 1210
    const/16 v16, 0x0

    .line 1215
    :cond_1
    :goto_1
    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->simSlot:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "\""

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 1216
    .local v15, simslots:[Ljava/lang/String;
    array-length v0, v15

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_2

    .line 1217
    const/16 v17, 0x1

    aget-object v17, v15, v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    .line 1220
    :cond_2
    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->imsi:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "\"1232010000000000@wlan.mnc001.mcc232.3gppnetwork.org\""

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_3

    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->imsi:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "\"0232010000000000@wlan.mnc001.mcc232.3gppnetwork.org\""

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_6

    .line 1222
    :cond_3
    const-string v17, "WifiSettings"

    const-string v18, "in simulator mode, skip"

    invoke-static/range {v17 .. v18}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1269
    .end local v15           #simslots:[Ljava/lang/String;
    .end local v16           #slot:I
    :cond_4
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/wifi/WifiSettings;->mExt:Lcom/mediatek/settings/ext/IWifiSettingsExt;

    move-object/from16 v17, v0

    iget v0, v5, Landroid/net/wifi/WifiConfiguration;->priority:I

    move/from16 v18, v0

    invoke-interface/range {v17 .. v18}, Lcom/mediatek/settings/ext/IWifiSettingsExt;->setLastPriority(I)V

    .line 1271
    new-instance v2, Lcom/android/jrdsettings/wifi/AccessPoint;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v2, v0, v5}, Lcom/android/jrdsettings/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)V

    .line 1272
    .local v2, accessPoint:Lcom/android/jrdsettings/wifi/AccessPoint;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/wifi/WifiSettings;->mLastInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/wifi/WifiSettings;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Lcom/android/jrdsettings/wifi/AccessPoint;->update(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo$DetailedState;)V

    .line 1273
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1274
    iget-object v0, v2, Lcom/android/jrdsettings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v4, v0, v2}, Lcom/android/jrdsettings/wifi/WifiSettings$Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1277
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/wifi/WifiSettings;->mExt:Lcom/mediatek/settings/ext/IWifiSettingsExt;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/mediatek/settings/ext/IWifiSettingsExt;->isCatogoryExist()Z

    move-result v17

    if-eqz v17, :cond_0

    .line 1278
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/wifi/WifiSettings;->mConfigedAPCategory:Landroid/preference/PreferenceCategory;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto/16 :goto_0

    .line 1211
    .end local v2           #accessPoint:Lcom/android/jrdsettings/wifi/AccessPoint;
    .restart local v16       #slot:I
    :cond_5
    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->simSlot:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "\"1\""

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 1212
    const/16 v16, 0x1

    goto/16 :goto_1

    .line 1223
    .restart local v15       #simslots:[Ljava/lang/String;
    :cond_6
    invoke-virtual {v5}, Landroid/net/wifi/WifiConfiguration;->toString()Ljava/lang/String;

    move-result-object v17

    const-string v18, "eap: SIM"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_8

    .line 1224
    const-string v17, "WifiSettings"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "mTelephonyManagerEx.getSubscriberId() "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/wifi/WifiSettings;->mTelephonyManagerEx:Lcom/mediatek/telephony/TelephonyManagerEx;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/mediatek/telephony/TelephonyManagerEx;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1226
    const-string v17, "WifiSettings"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "makeNAI(mTelephonyManagerEx.getSubscriberId(), SIM); "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/wifi/WifiSettings;->mTelephonyManagerEx:Lcom/mediatek/telephony/TelephonyManagerEx;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/mediatek/telephony/TelephonyManagerEx;->getSimOperator(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/wifi/WifiSettings;->mTelephonyManagerEx:Lcom/mediatek/telephony/TelephonyManagerEx;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/mediatek/telephony/TelephonyManagerEx;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v20

    const-string v21, "SIM"

    invoke-static/range {v19 .. v21}, Lcom/android/jrdsettings/wifi/WifiDialog;->makeNAI(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1228
    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->imsi:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/wifi/WifiSettings;->mTelephonyManagerEx:Lcom/mediatek/telephony/TelephonyManagerEx;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/mediatek/telephony/TelephonyManagerEx;->getSimOperator(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/wifi/WifiSettings;->mTelephonyManagerEx:Lcom/mediatek/telephony/TelephonyManagerEx;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/mediatek/telephony/TelephonyManagerEx;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v19

    const-string v20, "SIM"

    invoke-static/range {v18 .. v20}, Lcom/android/jrdsettings/wifi/WifiDialog;->makeNAI(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_7

    .line 1230
    const-string v17, "WifiSettings"

    const-string v18, "user doesn\'t change or remove sim card"

    invoke-static/range {v17 .. v18}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1232
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/wifi/WifiSettings;->mExt:Lcom/mediatek/settings/ext/IWifiSettingsExt;

    move-object/from16 v17, v0

    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/jrdsettings/wifi/AccessPoint;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-static {v5}, Lcom/android/jrdsettings/wifi/AccessPoint;->getSecurity(Landroid/net/wifi/WifiConfiguration;)I

    move-result v19

    invoke-interface/range {v17 .. v19}, Lcom/mediatek/settings/ext/IWifiSettingsExt;->isTustAP(Ljava/lang/String;I)Z

    move-result v17

    if-nez v17, :cond_4

    .line 1233
    const-string v17, "WifiSettings"

    const-string v18, "user change or remove sim card"

    invoke-static/range {v17 .. v18}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1234
    const-string v17, "WifiSettings"

    const-string v18, " >>mWifiManager.removeNetwork(config.networkId);"

    invoke-static/range {v17 .. v18}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1235
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v17, v0

    iget v0, v5, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/net/wifi/WifiManager;->removeNetwork(I)Z

    move-result v14

    .line 1236
    .local v14, s:Z
    const-string v17, "WifiSettings"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, " <<mWifiManager.removeNetwork(config.networkId); s: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1237
    const-string v17, "WifiSettings"

    const-string v18, "   >>saveNetworks();"

    invoke-static/range {v17 .. v18}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1238
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/net/wifi/WifiManager;->saveConfiguration()Z

    move-result v14

    .line 1239
    const-string v17, "WifiSettings"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "saveNetworks(): "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1243
    .end local v14           #s:Z
    :cond_8
    invoke-virtual {v5}, Landroid/net/wifi/WifiConfiguration;->toString()Ljava/lang/String;

    move-result-object v17

    const-string v18, "eap: AKA"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 1244
    const-string v17, "WifiSettings"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "mTelephonyManagerEx.getSubscriberId() "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/wifi/WifiSettings;->mTelephonyManagerEx:Lcom/mediatek/telephony/TelephonyManagerEx;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/mediatek/telephony/TelephonyManagerEx;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1246
    const-string v17, "WifiSettings"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "makeNAI(mTelephonyManagerEx.getSubscriberId(), AKA); "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/wifi/WifiSettings;->mTelephonyManagerEx:Lcom/mediatek/telephony/TelephonyManagerEx;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/mediatek/telephony/TelephonyManagerEx;->getSimOperator(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/wifi/WifiSettings;->mTelephonyManagerEx:Lcom/mediatek/telephony/TelephonyManagerEx;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/mediatek/telephony/TelephonyManagerEx;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v20

    const-string v21, "AKA"

    invoke-static/range {v19 .. v21}, Lcom/android/jrdsettings/wifi/WifiDialog;->makeNAI(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1248
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/wifi/WifiSettings;->mTelephonyManagerEx:Lcom/mediatek/telephony/TelephonyManagerEx;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/mediatek/telephony/TelephonyManagerEx;->getSimOperator(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/wifi/WifiSettings;->mTelephonyManagerEx:Lcom/mediatek/telephony/TelephonyManagerEx;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/mediatek/telephony/TelephonyManagerEx;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v18

    const-string v19, "AKA"

    invoke-static/range {v17 .. v19}, Lcom/android/jrdsettings/wifi/WifiDialog;->makeNAI(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->imsi:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_9

    .line 1250
    const-string v17, "WifiSettings"

    const-string v18, "user doesn\'t change or remove usim card"

    invoke-static/range {v17 .. v18}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1252
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/wifi/WifiSettings;->mExt:Lcom/mediatek/settings/ext/IWifiSettingsExt;

    move-object/from16 v17, v0

    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/jrdsettings/wifi/AccessPoint;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-static {v5}, Lcom/android/jrdsettings/wifi/AccessPoint;->getSecurity(Landroid/net/wifi/WifiConfiguration;)I

    move-result v19

    invoke-interface/range {v17 .. v19}, Lcom/mediatek/settings/ext/IWifiSettingsExt;->isTustAP(Ljava/lang/String;I)Z

    move-result v17

    if-nez v17, :cond_4

    .line 1253
    const-string v17, "WifiSettings"

    const-string v18, "user change or remove usim card"

    invoke-static/range {v17 .. v18}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1254
    const-string v17, "WifiSettings"

    const-string v18, " >> mWifiManager.removeNetwork(config.networkId);"

    invoke-static/range {v17 .. v18}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1255
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v17, v0

    iget v0, v5, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/net/wifi/WifiManager;->removeNetwork(I)Z

    move-result v14

    .line 1256
    .restart local v14       #s:Z
    const-string v17, "WifiSettings"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, " << mWifiManager.removeNetwork(config.networkId); s: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1257
    const-string v17, "WifiSettings"

    const-string v18, "   >>saveNetworks();"

    invoke-static/range {v17 .. v18}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1258
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/net/wifi/WifiManager;->saveConfiguration()Z

    move-result v14

    .line 1259
    const-string v17, "WifiSettings"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "saveNetworks(): "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1260
    const-string v17, "WifiSettings"

    const-string v18, "   <<saveNetworks();"

    invoke-static/range {v17 .. v18}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1284
    .end local v5           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v9           #i$:Ljava/util/Iterator;
    .end local v14           #s:Z
    .end local v15           #simslots:[Ljava/lang/String;
    .end local v16           #slot:I
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v13

    .line 1285
    .local v13, results:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    if-eqz v13, :cond_f

    .line 1286
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_b
    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_f

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/net/wifi/ScanResult;

    .line 1288
    .local v12, result:Landroid/net/wifi/ScanResult;
    iget-object v0, v12, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_b

    iget-object v0, v12, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    if-eqz v17, :cond_b

    iget-object v0, v12, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "[IBSS]"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_b

    .line 1293
    const/4 v8, 0x0

    .line 1294
    .local v8, found:Z
    iget-object v0, v12, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/android/jrdsettings/wifi/WifiSettings$Multimap;->getAll(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :cond_c
    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_d

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/jrdsettings/wifi/AccessPoint;

    .line 1295
    .restart local v2       #accessPoint:Lcom/android/jrdsettings/wifi/AccessPoint;
    invoke-virtual {v2, v12}, Lcom/android/jrdsettings/wifi/AccessPoint;->update(Landroid/net/wifi/ScanResult;)Z

    move-result v17

    if-eqz v17, :cond_c

    .line 1296
    const/4 v8, 0x1

    goto :goto_4

    .line 1298
    .end local v2           #accessPoint:Lcom/android/jrdsettings/wifi/AccessPoint;
    :cond_d
    if-nez v8, :cond_b

    .line 1299
    new-instance v2, Lcom/android/jrdsettings/wifi/AccessPoint;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v2, v0, v12}, Lcom/android/jrdsettings/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/net/wifi/ScanResult;)V

    .line 1301
    .restart local v2       #accessPoint:Lcom/android/jrdsettings/wifi/AccessPoint;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/wifi/WifiSettings;->mLastInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v17, v0

    iget-object v0, v2, Lcom/android/jrdsettings/wifi/AccessPoint;->bssid:Ljava/lang/String;

    move-object/from16 v18, v0

    iget-boolean v0, v2, Lcom/android/jrdsettings/wifi/AccessPoint;->mSupportedPasspoint:Z

    move/from16 v19, v0

    invoke-static/range {v17 .. v19}, Lcom/mediatek/wifi/PasspointSettings;->shouldUpdate(Landroid/net/wifi/WifiInfo;Ljava/lang/String;Z)Z

    move-result v17

    if-eqz v17, :cond_e

    .line 1302
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/wifi/WifiSettings;->mLastInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/wifi/WifiSettings;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Lcom/android/jrdsettings/wifi/AccessPoint;->update(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo$DetailedState;)V

    .line 1305
    :cond_e
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1306
    iget-object v0, v2, Lcom/android/jrdsettings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v4, v0, v2}, Lcom/android/jrdsettings/wifi/WifiSettings$Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1309
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/wifi/WifiSettings;->mExt:Lcom/mediatek/settings/ext/IWifiSettingsExt;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/mediatek/settings/ext/IWifiSettingsExt;->isCatogoryExist()Z

    move-result v17

    if-eqz v17, :cond_b

    .line 1310
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/wifi/WifiSettings;->mNewAPCategory:Landroid/preference/PreferenceCategory;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto/16 :goto_3

    .line 1318
    .end local v2           #accessPoint:Lcom/android/jrdsettings/wifi/AccessPoint;
    .end local v8           #found:Z
    .end local v10           #i$:Ljava/util/Iterator;
    .end local v12           #result:Landroid/net/wifi/ScanResult;
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/wifi/WifiSettings;->mExt:Lcom/mediatek/settings/ext/IWifiSettingsExt;

    move-object/from16 v17, v0

    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v18

    invoke-interface/range {v17 .. v18}, Lcom/mediatek/settings/ext/IWifiSettingsExt;->refreshCategory(Landroid/preference/PreferenceScreen;)V

    .line 1321
    new-instance v11, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v17

    move/from16 v0, v17

    invoke-direct {v11, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1322
    .local v11, origAccessPoints:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/jrdsettings/wifi/AccessPoint;>;"
    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1324
    :try_start_0
    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v11, v3

    .line 1332
    .end local v11           #origAccessPoints:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/jrdsettings/wifi/AccessPoint;>;"
    :goto_5
    return-object v11

    .line 1325
    .restart local v11       #origAccessPoints:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/jrdsettings/wifi/AccessPoint;>;"
    :catch_0
    move-exception v7

    .line 1326
    .local v7, e:Ljava/lang/ClassCastException;
    const-string v17, "WifiSettings"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "collection.sort exception;origAccessPoints="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 1328
    .end local v7           #e:Ljava/lang/ClassCastException;
    :catch_1
    move-exception v7

    .line 1329
    .local v7, e:Ljava/lang/UnsupportedOperationException;
    const-string v17, "WifiSettings"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "collection.sort exception;origAccessPoints="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method private handleEvent(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1355
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1356
    .local v0, action:Ljava/lang/String;
    const-string v6, "WifiSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleEvent, action = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1357
    const-string v6, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1358
    const-string v6, "wifi_state"

    const/4 v7, 0x4

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    invoke-direct {p0, v6}, Lcom/android/jrdsettings/wifi/WifiSettings;->updateWifiState(I)V

    .line 1361
    invoke-direct {p0}, Lcom/android/jrdsettings/wifi/WifiSettings;->updateAccessPoints()V

    .line 1407
    :cond_0
    :goto_0
    return-void

    .line 1363
    :cond_1
    const-string v6, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "android.net.wifi.LINK_CONFIGURATION_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1366
    :cond_2
    invoke-direct {p0}, Lcom/android/jrdsettings/wifi/WifiSettings;->updateAccessPoints()V

    goto :goto_0

    .line 1367
    :cond_3
    const-string v6, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1374
    const-string v6, "newState"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/SupplicantState;

    .line 1376
    .local v5, state:Landroid/net/wifi/SupplicantState;
    iget-object v6, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v6

    if-nez v6, :cond_0

    .line 1377
    invoke-static {v5}, Landroid/net/wifi/WifiInfo;->getDetailedStateOf(Landroid/net/wifi/SupplicantState;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/jrdsettings/wifi/WifiSettings;->updateConnectionState(Landroid/net/NetworkInfo$DetailedState;)V

    goto :goto_0

    .line 1379
    .end local v5           #state:Landroid/net/wifi/SupplicantState;
    :cond_4
    const-string v6, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1380
    const-string v6, "networkInfo"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkInfo;

    .line 1382
    .local v3, info:Landroid/net/NetworkInfo;
    iget-object v6, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1383
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v6

    invoke-direct {p0, v6}, Lcom/android/jrdsettings/wifi/WifiSettings;->changeNextButtonState(Z)V

    .line 1384
    invoke-direct {p0}, Lcom/android/jrdsettings/wifi/WifiSettings;->updateAccessPoints()V

    .line 1385
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/jrdsettings/wifi/WifiSettings;->updateConnectionState(Landroid/net/NetworkInfo$DetailedState;)V

    .line 1386
    iget-boolean v6, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mAutoFinishOnConnection:Z

    if-eqz v6, :cond_0

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1387
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 1388
    .local v1, activity:Landroid/app/Activity;
    if-eqz v1, :cond_0

    .line 1389
    const/4 v6, -0x1

    invoke-virtual {v1, v6}, Landroid/app/Activity;->setResult(I)V

    .line 1390
    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 1394
    .end local v1           #activity:Landroid/app/Activity;
    .end local v3           #info:Landroid/net/NetworkInfo;
    :cond_5
    const-string v6, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1395
    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lcom/android/jrdsettings/wifi/WifiSettings;->updateConnectionState(Landroid/net/NetworkInfo$DetailedState;)V

    goto/16 :goto_0

    .line 1396
    :cond_6
    const-string v6, "android.net.wifi.NO_CERTIFICATION"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1398
    const-string v2, ""

    .line 1399
    .local v2, apSSID:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/jrdsettings/wifi/AccessPoint;

    if-eqz v6, :cond_7

    .line 1400
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/jrdsettings/wifi/AccessPoint;

    iget-object v7, v7, Lcom/android/jrdsettings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1402
    :cond_7
    const-string v6, "WifiSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Receive  no certification broadcast for AP "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1403
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0900d8

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1404
    .local v4, message:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {v6, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0
.end method

.method private isPhone()Z
    .locals 2

    .prologue
    .line 954
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 956
    .local v0, telephonyManager:Landroid/telephony/TelephonyManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private loadDefConfigureAccessPoint()V
    .locals 19

    .prologue
    .line 985
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0c0009

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v15

    if-nez v15, :cond_1

    .line 987
    const-string v15, "WifiSettings"

    const-string v16, "There is not any configured AP"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1137
    :cond_0
    :goto_0
    return-void

    .line 992
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v15

    const-string v16, "WIFI_Def_Networks_Cfg"

    const/16 v17, 0x0

    invoke-virtual/range {v15 .. v17}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v14

    .line 993
    .local v14, wifi_def_network_load:Landroid/content/SharedPreferences;
    const-string v15, "WIFI_Def_Networks_Flg"

    const-string v16, ""

    invoke-interface/range {v14 .. v16}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 994
    .local v13, sflg:Ljava/lang/String;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_2

    const-string v15, "1"

    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 995
    const-string v15, "WifiSettings"

    const-string v16, "Default Access Point has been Configured."

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 998
    :cond_2
    invoke-interface {v14}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v15

    const-string v16, "WIFI_Def_Networks_Flg"

    const-string v17, "1"

    invoke-interface/range {v15 .. v17}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v15

    invoke-interface {v15}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1001
    new-instance v1, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v1}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 1002
    .local v1, config:Landroid/net/wifi/WifiConfiguration;
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f090007

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/android/jrdsettings/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 1005
    const-string v15, "WifiSettings"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Def_Settings_wifi_network_ssid:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1007
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f090008

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 1010
    .local v11, password:Ljava/lang/String;
    const-string v15, "WifiSettings"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Def_Settings_wifi_password:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f090008

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1012
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f090009

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 1015
    .local v12, security:Ljava/lang/String;
    const-string v15, "WifiSettings"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Def_Settings_wifi_security_mode:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1017
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_5

    const-string v15, "PSK"

    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 1018
    iget-object v15, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Ljava/util/BitSet;->set(I)V

    .line 1019
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_3

    .line 1020
    const-string v15, "[0-9A-Fa-f]{64}"

    invoke-virtual {v11, v15}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 1021
    iput-object v11, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 1121
    :cond_3
    :goto_1
    const-string v15, "WifiSettings"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Def_Settings_wifi_network_status:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f090011

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1122
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f090011

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    const-string v16, "Public"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_11

    .line 1123
    const/4 v15, 0x1

    iput-boolean v15, v1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 1128
    :goto_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/jrdsettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v15, v1}, Landroid/net/wifi/WifiManager;->addNetwork(Landroid/net/wifi/WifiConfiguration;)I

    .line 1129
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/jrdsettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v15}, Landroid/net/wifi/WifiManager;->saveConfiguration()Z

    move-result v2

    .line 1130
    .local v2, flag:Z
    if-eqz v2, :cond_12

    .line 1131
    if-eqz v1, :cond_0

    .line 1132
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/jrdsettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/wifi/WifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v15, v1, v0}, Landroid/net/wifi/WifiManager;->connect(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    goto/16 :goto_0

    .line 1023
    .end local v2           #flag:Z
    :cond_4
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v16, 0x22

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x22

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    iput-object v15, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_1

    .line 1026
    :cond_5
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_8

    const-string v15, "WEP"

    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_8

    .line 1027
    iget-object v15, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Ljava/util/BitSet;->set(I)V

    .line 1028
    iget-object v15, v1, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Ljava/util/BitSet;->set(I)V

    .line 1029
    iget-object v15, v1, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Ljava/util/BitSet;->set(I)V

    .line 1030
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_3

    .line 1031
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v3

    .line 1033
    .local v3, length:I
    const/16 v15, 0xa

    if-eq v3, v15, :cond_6

    const/16 v15, 0x1a

    if-eq v3, v15, :cond_6

    const/16 v15, 0x3a

    if-ne v3, v15, :cond_7

    :cond_6
    const-string v15, "[0-9A-Fa-f]*"

    invoke-virtual {v11, v15}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_7

    .line 1034
    iget-object v15, v1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    const/16 v16, 0x0

    aput-object v11, v15, v16

    goto/16 :goto_1

    .line 1036
    :cond_7
    iget-object v15, v1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    const/16 v16, 0x0

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v18, 0x22

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const/16 v18, 0x22

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    goto/16 :goto_1

    .line 1039
    .end local v3           #length:I
    :cond_8
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_10

    const-string v15, "EAP"

    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_10

    .line 1040
    iget-object v15, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v16, 0x2

    invoke-virtual/range {v15 .. v16}, Ljava/util/BitSet;->set(I)V

    .line 1041
    iget-object v15, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v16, 0x3

    invoke-virtual/range {v15 .. v16}, Ljava/util/BitSet;->set(I)V

    .line 1042
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v15

    if-eqz v15, :cond_9

    .line 1043
    iget-object v15, v1, Landroid/net/wifi/WifiConfiguration;->password:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v15, v11}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 1045
    :cond_9
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f09000a

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1046
    .local v7, mIdentity:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f09000b

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1047
    .local v6, mEapMethod:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f09000c

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1048
    .local v9, mSimSlot:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f09000d

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1049
    .local v8, mPhase2:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f09000e

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1050
    .local v5, mCaCert:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f09000f

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1051
    .local v10, mUserCert:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f090010

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1053
    .local v4, mAnonymous:Ljava/lang/String;
    iget-object v15, v1, Landroid/net/wifi/WifiConfiguration;->identity:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v15, v7}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 1054
    iget-object v15, v1, Landroid/net/wifi/WifiConfiguration;->eap:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v15, v6}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 1055
    iget-object v15, v1, Landroid/net/wifi/WifiConfiguration;->phase2:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v15, v8}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 1056
    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->ca_cert:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    move-object/from16 v16, v0

    const-string v15, ""

    invoke-virtual {v5, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_a

    const-string v15, ""

    :goto_3
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 1058
    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->client_cert:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    move-object/from16 v16, v0

    const-string v15, ""

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_b

    const-string v15, ""

    :goto_4
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 1060
    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->key_id:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    move-object/from16 v16, v0

    const-string v15, ""

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_c

    const-string v15, ""

    :goto_5
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 1062
    iget-object v15, v1, Landroid/net/wifi/WifiConfiguration;->anonymous_identity:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v15, v4}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 1065
    const-string v15, "SIM"

    invoke-virtual {v15, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_e

    .line 1067
    const-string v15, "Sim Slot 1"

    invoke-virtual {v15, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_d

    .line 1069
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/jrdsettings/wifi/WifiSettings;->mTm:Landroid/telephony/TelephonyManager;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/telephony/TelephonyManager;->getSimOperatorGemini(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/wifi/WifiSettings;->mTm:Landroid/telephony/TelephonyManager;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Landroid/telephony/TelephonyManager;->getSubscriberIdGemini(I)Ljava/lang/String;

    move-result-object v16

    const-string v17, "SIM"

    invoke-static/range {v15 .. v17}, Lcom/android/jrdsettings/wifi/WifiConfigController;->makeNAI(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v1, Landroid/net/wifi/WifiConfiguration;->imsi:Ljava/lang/String;

    .line 1071
    const-string v15, "0"

    invoke-static {v15}, Lcom/android/jrdsettings/wifi/WifiConfigController;->addQuote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v1, Landroid/net/wifi/WifiConfiguration;->simSlot:Ljava/lang/String;

    .line 1072
    const-string v15, "rild"

    invoke-static {v15}, Lcom/android/jrdsettings/wifi/WifiConfigController;->addQuote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v1, Landroid/net/wifi/WifiConfiguration;->pcsc:Ljava/lang/String;

    goto/16 :goto_1

    .line 1056
    :cond_a
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "keystore://CACERT_"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_3

    .line 1058
    :cond_b
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "keystore://USRCERT_"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_4

    .line 1060
    :cond_c
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "keystore://USRPKEY_"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_5

    .line 1073
    :cond_d
    const-string v15, "Sim Slot 2"

    invoke-virtual {v15, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 1075
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/jrdsettings/wifi/WifiSettings;->mTm:Landroid/telephony/TelephonyManager;

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Landroid/telephony/TelephonyManager;->getSimOperatorGemini(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/wifi/WifiSettings;->mTm:Landroid/telephony/TelephonyManager;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    invoke-virtual/range {v16 .. v17}, Landroid/telephony/TelephonyManager;->getSubscriberIdGemini(I)Ljava/lang/String;

    move-result-object v16

    const-string v17, "SIM"

    invoke-static/range {v15 .. v17}, Lcom/android/jrdsettings/wifi/WifiConfigController;->makeNAI(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v1, Landroid/net/wifi/WifiConfiguration;->imsi:Ljava/lang/String;

    .line 1077
    const-string v15, "1"

    invoke-static {v15}, Lcom/android/jrdsettings/wifi/WifiConfigController;->addQuote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v1, Landroid/net/wifi/WifiConfiguration;->simSlot:Ljava/lang/String;

    .line 1078
    const-string v15, "rild"

    invoke-static {v15}, Lcom/android/jrdsettings/wifi/WifiConfigController;->addQuote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v1, Landroid/net/wifi/WifiConfiguration;->pcsc:Ljava/lang/String;

    goto/16 :goto_1

    .line 1089
    :cond_e
    const-string v15, "AKA"

    invoke-virtual {v15, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 1091
    const-string v15, "Sim Slot 1"

    invoke-virtual {v15, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_f

    .line 1093
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/jrdsettings/wifi/WifiSettings;->mTm:Landroid/telephony/TelephonyManager;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/telephony/TelephonyManager;->getSimOperatorGemini(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/wifi/WifiSettings;->mTm:Landroid/telephony/TelephonyManager;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Landroid/telephony/TelephonyManager;->getSubscriberIdGemini(I)Ljava/lang/String;

    move-result-object v16

    const-string v17, "AKA"

    invoke-static/range {v15 .. v17}, Lcom/android/jrdsettings/wifi/WifiConfigController;->makeNAI(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v1, Landroid/net/wifi/WifiConfiguration;->imsi:Ljava/lang/String;

    .line 1095
    const-string v15, "0"

    invoke-static {v15}, Lcom/android/jrdsettings/wifi/WifiConfigController;->addQuote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v1, Landroid/net/wifi/WifiConfiguration;->simSlot:Ljava/lang/String;

    .line 1096
    const-string v15, "rild"

    invoke-static {v15}, Lcom/android/jrdsettings/wifi/WifiConfigController;->addQuote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v1, Landroid/net/wifi/WifiConfiguration;->pcsc:Ljava/lang/String;

    goto/16 :goto_1

    .line 1097
    :cond_f
    const-string v15, "Sim Slot 2"

    invoke-virtual {v15, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 1099
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/jrdsettings/wifi/WifiSettings;->mTm:Landroid/telephony/TelephonyManager;

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Landroid/telephony/TelephonyManager;->getSimOperatorGemini(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/wifi/WifiSettings;->mTm:Landroid/telephony/TelephonyManager;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    invoke-virtual/range {v16 .. v17}, Landroid/telephony/TelephonyManager;->getSubscriberIdGemini(I)Ljava/lang/String;

    move-result-object v16

    const-string v17, "AKA"

    invoke-static/range {v15 .. v17}, Lcom/android/jrdsettings/wifi/WifiConfigController;->makeNAI(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v1, Landroid/net/wifi/WifiConfiguration;->imsi:Ljava/lang/String;

    .line 1101
    const-string v15, "1"

    invoke-static {v15}, Lcom/android/jrdsettings/wifi/WifiConfigController;->addQuote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v1, Landroid/net/wifi/WifiConfiguration;->simSlot:Ljava/lang/String;

    .line 1102
    const-string v15, "rild"

    invoke-static {v15}, Lcom/android/jrdsettings/wifi/WifiConfigController;->addQuote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v1, Landroid/net/wifi/WifiConfiguration;->pcsc:Ljava/lang/String;

    goto/16 :goto_1

    .line 1116
    .end local v4           #mAnonymous:Ljava/lang/String;
    .end local v5           #mCaCert:Ljava/lang/String;
    .end local v6           #mEapMethod:Ljava/lang/String;
    .end local v7           #mIdentity:Ljava/lang/String;
    .end local v8           #mPhase2:Ljava/lang/String;
    .end local v9           #mSimSlot:Ljava/lang/String;
    .end local v10           #mUserCert:Ljava/lang/String;
    :cond_10
    const-string v15, "WifiSettings"

    const-string v16, "OPEN"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1117
    iget-object v15, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Ljava/util/BitSet;->set(I)V

    goto/16 :goto_1

    .line 1125
    :cond_11
    const/4 v15, 0x0

    iput-boolean v15, v1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    goto/16 :goto_2

    .line 1135
    .restart local v2       #flag:Z
    :cond_12
    invoke-interface {v14}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v15

    const-string v16, "WIFI_Def_Networks_Flg"

    const-string v17, "0"

    invoke-interface/range {v15 .. v17}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v15

    invoke-interface {v15}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0
.end method

.method private requireKeyStore(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 2
    .parameter "config"

    .prologue
    .line 974
    invoke-static {p1}, Lcom/android/jrdsettings/wifi/WifiConfigController;->requireKeyStore(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    invoke-virtual {v0}, Landroid/security/KeyStore;->state()Landroid/security/KeyStore$State;

    move-result-object v0

    sget-object v1, Landroid/security/KeyStore$State;->UNLOCKED:Landroid/security/KeyStore$State;

    if-eq v0, v1, :cond_0

    .line 976
    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iput v0, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mKeyStoreNetworkId:I

    .line 977
    invoke-static {}, Landroid/security/Credentials;->getInstance()Landroid/security/Credentials;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/security/Credentials;->unlock(Landroid/content/Context;)V

    .line 978
    const/4 v0, 0x1

    .line 980
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showDialog(Lcom/android/jrdsettings/wifi/AccessPoint;Z)V
    .locals 3
    .parameter "accessPoint"
    .parameter "edit"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 847
    iget-object v0, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mDialog:Lcom/android/jrdsettings/wifi/WifiDialog;

    if-eqz v0, :cond_0

    .line 848
    invoke-virtual {p0, v1}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->removeDialog(I)V

    .line 849
    iput-object v2, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mDialog:Lcom/android/jrdsettings/wifi/WifiDialog;

    .line 850
    iput-object v2, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    .line 854
    :cond_0
    iput-object p1, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mDlgAccessPoint:Lcom/android/jrdsettings/wifi/AccessPoint;

    .line 855
    iput-boolean p2, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mDlgEdit:Z

    .line 856
    invoke-virtual {p0, v1}, Lcom/android/jrdsettings/wifi/WifiSettings;->showDialog(I)V

    .line 857
    return-void
.end method

.method private updateAccessPoints()V
    .locals 6

    .prologue
    .line 1146
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    if-nez v4, :cond_1

    .line 1181
    :cond_0
    :goto_0
    return-void

    .line 1148
    :cond_1
    iget-object v4, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v3

    .line 1150
    .local v3, wifiState:I
    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 1174
    :pswitch_0
    const v4, 0x7f090410

    invoke-direct {p0, v4}, Lcom/android/jrdsettings/wifi/WifiSettings;->addMessagePreference(I)V

    goto :goto_0

    .line 1153
    :pswitch_1
    invoke-direct {p0}, Lcom/android/jrdsettings/wifi/WifiSettings;->loadDefConfigureAccessPoint()V

    .line 1154
    invoke-direct {p0}, Lcom/android/jrdsettings/wifi/WifiSettings;->constructAccessPoints()Ljava/util/List;

    move-result-object v1

    .line 1156
    .local v1, accessPoints:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/jrdsettings/wifi/AccessPoint;>;"
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v4

    if-nez v4, :cond_2

    .line 1157
    const v4, 0x7f090428

    invoke-direct {p0, v4}, Lcom/android/jrdsettings/wifi/WifiSettings;->addMessagePreference(I)V

    .line 1160
    :cond_2
    iget-object v4, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mExt:Lcom/mediatek/settings/ext/IWifiSettingsExt;

    invoke-interface {v4}, Lcom/mediatek/settings/ext/IWifiSettingsExt;->isCatogoryExist()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1161
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/jrdsettings/wifi/AccessPoint;

    .line 1162
    .local v0, accessPoint:Lcom/android/jrdsettings/wifi/AccessPoint;
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_1

    .line 1170
    .end local v0           #accessPoint:Lcom/android/jrdsettings/wifi/AccessPoint;
    .end local v1           #accessPoints:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/jrdsettings/wifi/AccessPoint;>;"
    .end local v2           #i$:Ljava/util/Iterator;
    :pswitch_2
    iget-object v4, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mExt:Lcom/mediatek/settings/ext/IWifiSettingsExt;

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/mediatek/settings/ext/IWifiSettingsExt;->emptyScreen(Landroid/preference/PreferenceScreen;)V

    goto :goto_0

    .line 1178
    :pswitch_3
    const v4, 0x7f090427

    invoke-direct {p0, v4}, Lcom/android/jrdsettings/wifi/WifiSettings;->addMessagePreference(I)V

    goto :goto_0

    .line 1150
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private updateConnectionState(Landroid/net/NetworkInfo$DetailedState;)V
    .locals 6
    .parameter "state"

    .prologue
    const/4 v5, 0x0

    .line 1411
    iget-object v3, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1412
    iget-object v3, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mScanner:Lcom/android/jrdsettings/wifi/WifiSettings$Scanner;

    invoke-virtual {v3}, Lcom/android/jrdsettings/wifi/WifiSettings$Scanner;->pause()V

    .line 1457
    :cond_0
    :goto_0
    return-void

    .line 1416
    :cond_1
    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v3, :cond_6

    .line 1422
    :cond_2
    :goto_1
    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v3, :cond_7

    .line 1423
    iget-object v3, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mScanner:Lcom/android/jrdsettings/wifi/WifiSettings$Scanner;

    invoke-virtual {v3}, Lcom/android/jrdsettings/wifi/WifiSettings$Scanner;->pause()V

    .line 1428
    :goto_2
    iget-object v3, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v3

    iput-object v3, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mLastInfo:Landroid/net/wifi/WifiInfo;

    .line 1429
    if-eqz p1, :cond_3

    .line 1430
    iput-object p1, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    .line 1433
    :cond_3
    iget-object v3, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mExt:Lcom/mediatek/settings/ext/IWifiSettingsExt;

    invoke-interface {v3}, Lcom/mediatek/settings/ext/IWifiSettingsExt;->isCatogoryExist()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1436
    iget-object v3, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mConfigedAPCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {p0, v3}, Lcom/android/jrdsettings/wifi/WifiSettings;->updateAP(Landroid/preference/PreferenceCategory;)V

    .line 1437
    iget-object v3, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mNewAPCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {p0, v3}, Lcom/android/jrdsettings/wifi/WifiSettings;->updateAP(Landroid/preference/PreferenceCategory;)V

    .line 1450
    :cond_4
    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v3, :cond_0

    .line 1451
    iget-boolean v3, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mManuallyConnect:Z

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mLastInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v3, :cond_5

    .line 1452
    iget-object v3, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mExt:Lcom/mediatek/settings/ext/IWifiSettingsExt;

    iget-object v4, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mLastInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v4

    invoke-interface {v3, v4}, Lcom/mediatek/settings/ext/IWifiSettingsExt;->updatePriorityAfterConnect(I)V

    .line 1454
    :cond_5
    iput-boolean v5, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mManuallyConnect:Z

    goto :goto_0

    .line 1417
    :cond_6
    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v3, :cond_2

    .line 1418
    iput-boolean v5, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mManuallyConnect:Z

    goto :goto_1

    .line 1425
    :cond_7
    iget-object v3, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mScanner:Lcom/android/jrdsettings/wifi/WifiSettings$Scanner;

    invoke-virtual {v3}, Lcom/android/jrdsettings/wifi/WifiSettings$Scanner;->resume()V

    goto :goto_2

    .line 1440
    :cond_8
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, i:I
    :goto_3
    if-ltz v1, :cond_4

    .line 1442
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    .line 1443
    .local v2, preference:Landroid/preference/Preference;
    instance-of v3, v2, Lcom/android/jrdsettings/wifi/AccessPoint;

    if-eqz v3, :cond_9

    move-object v0, v2

    .line 1444
    check-cast v0, Lcom/android/jrdsettings/wifi/AccessPoint;

    .line 1445
    .local v0, accessPoint:Lcom/android/jrdsettings/wifi/AccessPoint;
    iget-object v3, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mLastInfo:Landroid/net/wifi/WifiInfo;

    iget-object v4, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v3, v4}, Lcom/android/jrdsettings/wifi/AccessPoint;->update(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo$DetailedState;)V

    .line 1440
    .end local v0           #accessPoint:Lcom/android/jrdsettings/wifi/AccessPoint;
    :cond_9
    add-int/lit8 v1, v1, -0x1

    goto :goto_3
.end method

.method private updateWifiState(I)V
    .locals 5
    .parameter "state"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1460
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1461
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 1462
    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 1465
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 1497
    :goto_0
    iput-object v4, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mLastInfo:Landroid/net/wifi/WifiInfo;

    .line 1498
    iput-object v4, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    .line 1499
    iget-object v2, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mScanner:Lcom/android/jrdsettings/wifi/WifiSettings$Scanner;

    invoke-virtual {v2}, Lcom/android/jrdsettings/wifi/WifiSettings$Scanner;->pause()V

    .line 1500
    :goto_1
    return-void

    .line 1467
    :pswitch_0
    iget-object v2, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mScanner:Lcom/android/jrdsettings/wifi/WifiSettings$Scanner;

    invoke-virtual {v2}, Lcom/android/jrdsettings/wifi/WifiSettings$Scanner;->resume()V

    .line 1470
    iget-object v2, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 1471
    .local v1, mCurrentConnecdInfo:Landroid/net/wifi/WifiInfo;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 1473
    const-string v2, "WifiSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mCurrentConnectedInfo.getSSID() =  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1478
    :goto_2
    iget-object v2, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mAddApView:Landroid/view/View;

    const/4 v3, 0x1

    invoke-static {p0, v2, v3}, Lcom/mediatek/settings/OobeUtils;->setEnabledStateOnViews(Lcom/android/jrdsettings/SettingsPreferenceFragment;Landroid/view/View;Z)V

    goto :goto_1

    .line 1475
    :cond_1
    iget-object v2, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mExt:Lcom/mediatek/settings/ext/IWifiSettingsExt;

    invoke-interface {v2}, Lcom/mediatek/settings/ext/IWifiSettingsExt;->updatePriority()V

    goto :goto_2

    .line 1482
    .end local v1           #mCurrentConnecdInfo:Landroid/net/wifi/WifiInfo;
    :pswitch_1
    const v2, 0x7f09040f

    invoke-direct {p0, v2}, Lcom/android/jrdsettings/wifi/WifiSettings;->addMessagePreference(I)V

    .line 1484
    iget-object v2, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mAddApView:Landroid/view/View;

    invoke-static {p0, v2, v3}, Lcom/mediatek/settings/OobeUtils;->setEnabledStateOnViews(Lcom/android/jrdsettings/SettingsPreferenceFragment;Landroid/view/View;Z)V

    goto :goto_0

    .line 1488
    :pswitch_2
    iget-object v2, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mAddApView:Landroid/view/View;

    invoke-static {p0, v2, v3}, Lcom/mediatek/settings/OobeUtils;->setEnabledStateOnViews(Lcom/android/jrdsettings/SettingsPreferenceFragment;Landroid/view/View;Z)V

    goto :goto_0

    .line 1491
    :pswitch_3
    const v2, 0x7f090427

    invoke-direct {p0, v2}, Lcom/android/jrdsettings/wifi/WifiSettings;->addMessagePreference(I)V

    .line 1493
    iget-object v2, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mAddApView:Landroid/view/View;

    invoke-static {p0, v2, v3}, Lcom/mediatek/settings/OobeUtils;->setEnabledStateOnViews(Lcom/android/jrdsettings/SettingsPreferenceFragment;Landroid/view/View;Z)V

    goto :goto_0

    .line 1465
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public addNetworkForSelector()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1705
    iget-object v0, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mExt:Lcom/mediatek/settings/ext/IWifiSettingsExt;

    invoke-interface {v0}, Lcom/mediatek/settings/ext/IWifiSettingsExt;->isCatogoryExist()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1706
    iput-object v1, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/jrdsettings/wifi/AccessPoint;

    .line 1707
    const/4 v0, 0x1

    invoke-direct {p0, v1, v0}, Lcom/android/jrdsettings/wifi/WifiSettings;->showDialog(Lcom/android/jrdsettings/wifi/AccessPoint;Z)V

    .line 1709
    :cond_0
    return-void
.end method

.method forget()V
    .locals 3

    .prologue
    .line 1658
    iget-object v0, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/jrdsettings/wifi/AccessPoint;

    iget v0, v0, Lcom/android/jrdsettings/wifi/AccessPoint;->networkId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1660
    const-string v0, "WifiSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to forget invalid network "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/jrdsettings/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/jrdsettings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1676
    :goto_0
    return-void

    .line 1664
    :cond_0
    iget-object v0, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/jrdsettings/wifi/AccessPoint;

    iget v1, v1, Lcom/android/jrdsettings/wifi/AccessPoint;->networkId:I

    iget-object v2, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->forget(ILandroid/net/wifi/WifiManager$ActionListener;)V

    .line 1666
    iget-object v0, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1667
    iget-object v0, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mScanner:Lcom/android/jrdsettings/wifi/WifiSettings$Scanner;

    invoke-virtual {v0}, Lcom/android/jrdsettings/wifi/WifiSettings$Scanner;->resume()V

    .line 1669
    :cond_1
    invoke-direct {p0}, Lcom/android/jrdsettings/wifi/WifiSettings;->updateAccessPoints()V

    .line 1672
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/jrdsettings/wifi/WifiSettings;->changeNextButtonState(Z)V

    .line 1675
    iget-object v0, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mExt:Lcom/mediatek/settings/ext/IWifiSettingsExt;

    invoke-interface {v0}, Lcom/mediatek/settings/ext/IWifiSettingsExt;->updatePriority()V

    goto :goto_0
.end method

.method getAccessPointsCount()I
    .locals 3

    .prologue
    .line 1712
    iget-object v1, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    .line 1713
    .local v0, wifiIsEnabled:Z
    if-eqz v0, :cond_0

    .line 1715
    iget-object v1, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mExt:Lcom/mediatek/settings/ext/IWifiSettingsExt;

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/mediatek/settings/ext/IWifiSettingsExt;->getAccessPointsCount(Landroid/preference/PreferenceScreen;)I

    move-result v1

    .line 1717
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected hasSimProblem()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 965
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 967
    .local v0, telephonyManager:Landroid/telephony/TelephonyManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v2

    if-ne v2, v1, :cond_0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    const/4 v3, 0x5

    if-eq v2, v3, :cond_0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 13
    .parameter "savedInstanceState"

    .prologue
    .line 402
    invoke-super {p0, p1}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 408
    invoke-static {}, Lcom/mediatek/telephony/TelephonyManagerEx;->getDefault()Lcom/mediatek/telephony/TelephonyManagerEx;

    move-result-object v8

    iput-object v8, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mTelephonyManagerEx:Lcom/mediatek/telephony/TelephonyManagerEx;

    .line 409
    const-string v8, "phone"

    invoke-virtual {p0, v8}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/telephony/TelephonyManager;

    iput-object v8, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mTm:Landroid/telephony/TelephonyManager;

    .line 413
    invoke-virtual {p0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const-string v9, "android.hardware.wifi.direct"

    invoke-virtual {v8, v9}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mP2pSupported:Z

    .line 416
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "wifi"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/wifi/WifiManager;

    iput-object v8, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 419
    new-instance v8, Lcom/android/jrdsettings/wifi/WifiSettings$5;

    invoke-direct {v8, p0}, Lcom/android/jrdsettings/wifi/WifiSettings$5;-><init>(Lcom/android/jrdsettings/wifi/WifiSettings;)V

    iput-object v8, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    .line 432
    new-instance v8, Lcom/android/jrdsettings/wifi/WifiSettings$6;

    invoke-direct {v8, p0}, Lcom/android/jrdsettings/wifi/WifiSettings$6;-><init>(Lcom/android/jrdsettings/wifi/WifiSettings;)V

    iput-object v8, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    .line 445
    new-instance v8, Lcom/android/jrdsettings/wifi/WifiSettings$7;

    invoke-direct {v8, p0}, Lcom/android/jrdsettings/wifi/WifiSettings$7;-><init>(Lcom/android/jrdsettings/wifi/WifiSettings;)V

    iput-object v8, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;

    .line 458
    if-eqz p1, :cond_0

    const-string v8, "wifi_ap_state"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 460
    const-string v8, "edit_mode"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mDlgEdit:Z

    .line 461
    const-string v8, "wifi_ap_state"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v8

    iput-object v8, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    .line 464
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 465
    .local v1, activity:Landroid/app/Activity;
    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    .line 468
    .local v5, intent:Landroid/content/Intent;
    const-string v8, "wifi_auto_finish_on_connect"

    const/4 v9, 0x0

    invoke-virtual {v5, v8, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mAutoFinishOnConnection:Z

    .line 470
    iget-boolean v8, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mAutoFinishOnConnection:Z

    if-eqz v8, :cond_2

    .line 472
    invoke-virtual {p0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->hasNextButton()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 473
    invoke-virtual {p0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->getNextButton()Landroid/widget/Button;

    move-result-object v8

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 476
    :cond_1
    const-string v8, "connectivity"

    invoke-virtual {v1, v8}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 478
    .local v2, connectivity:Landroid/net/ConnectivityManager;
    if-eqz v2, :cond_2

    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 480
    const/4 v8, -0x1

    invoke-virtual {v1, v8}, Landroid/app/Activity;->setResult(I)V

    .line 481
    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 568
    .end local v2           #connectivity:Landroid/net/ConnectivityManager;
    :goto_0
    return-void

    .line 488
    :cond_2
    const-string v8, "wifi_enable_next_on_connect"

    const/4 v9, 0x0

    invoke-virtual {v5, v8, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mEnableNextOnConnection:Z

    .line 490
    iget-boolean v8, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mEnableNextOnConnection:Z

    if-eqz v8, :cond_3

    .line 491
    invoke-virtual {p0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->hasNextButton()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 492
    const-string v8, "connectivity"

    invoke-virtual {v1, v8}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 494
    .restart local v2       #connectivity:Landroid/net/ConnectivityManager;
    if-eqz v2, :cond_3

    .line 495
    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v4

    .line 497
    .local v4, info:Landroid/net/NetworkInfo;
    if-eqz v4, :cond_3

    .line 498
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v8

    invoke-direct {p0, v8}, Lcom/android/jrdsettings/wifi/WifiSettings;->changeNextButtonState(Z)V

    .line 505
    .end local v2           #connectivity:Landroid/net/ConnectivityManager;
    .end local v4           #info:Landroid/net/NetworkInfo;
    :cond_3
    iget-boolean v8, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mSetupWizardMode:Z

    if-eqz v8, :cond_4

    invoke-static {p0}, Lcom/mediatek/settings/OobeUtils;->isOobeMode(Lcom/android/jrdsettings/SettingsPreferenceFragment;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 506
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v8

    const/high16 v9, 0x1e4

    invoke-virtual {v8, v9}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 515
    :cond_4
    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v9, "access_points_and_gprs"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 516
    const v8, 0x7f060051

    invoke-virtual {p0, v8}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 521
    :goto_1
    const-string v8, "configed_access_points"

    invoke-virtual {p0, v8}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/PreferenceCategory;

    iput-object v8, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mConfigedAPCategory:Landroid/preference/PreferenceCategory;

    .line 522
    const-string v8, "new_access_points"

    invoke-virtual {p0, v8}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/PreferenceCategory;

    iput-object v8, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mNewAPCategory:Landroid/preference/PreferenceCategory;

    .line 523
    iget-object v8, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mExt:Lcom/mediatek/settings/ext/IWifiSettingsExt;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mConfigedAPCategory:Landroid/preference/PreferenceCategory;

    iget-object v11, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mNewAPCategory:Landroid/preference/PreferenceCategory;

    invoke-interface {v8, v9, v10, v11}, Lcom/mediatek/settings/ext/IWifiSettingsExt;->setCategory(Landroid/preference/PreferenceCategory;Landroid/preference/PreferenceCategory;Landroid/preference/PreferenceCategory;)V

    .line 524
    iget-object v8, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mExt:Lcom/mediatek/settings/ext/IWifiSettingsExt;

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    invoke-interface {v8, v9}, Lcom/mediatek/settings/ext/IWifiSettingsExt;->emptyScreen(Landroid/preference/PreferenceScreen;)V

    .line 528
    iget-boolean v8, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mSetupWizardMode:Z

    if-nez v8, :cond_7

    .line 530
    const-string v8, "layout_inflater"

    invoke-virtual {v1, v8}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 532
    .local v3, inflater:Landroid/view/LayoutInflater;
    const v8, 0x207000b

    const/4 v9, 0x0

    invoke-virtual {v3, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    .line 534
    .local v0, actionBarSwitch:Landroid/widget/Switch;
    instance-of v8, v1, Landroid/preference/PreferenceActivity;

    if-eqz v8, :cond_6

    move-object v7, v1

    .line 535
    check-cast v7, Landroid/preference/PreferenceActivity;

    .line 536
    .local v7, preferenceActivity:Landroid/preference/PreferenceActivity;
    invoke-virtual {v7}, Landroid/preference/PreferenceActivity;->onIsHidingHeaders()Z

    move-result v8

    if-nez v8, :cond_5

    invoke-virtual {v7}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v8

    if-nez v8, :cond_6

    .line 537
    :cond_5
    invoke-virtual {v1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f080004

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 539
    .local v6, padding:I
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v0, v8, v9, v6, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 540
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v8

    const/16 v9, 0x10

    const/16 v10, 0x10

    invoke-virtual {v8, v9, v10}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 542
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v8

    new-instance v9, Landroid/app/ActionBar$LayoutParams;

    const/4 v10, -0x2

    const/4 v11, -0x2

    const v12, 0x800015

    invoke-direct {v9, v10, v11, v12}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v8, v0, v9}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 549
    .end local v6           #padding:I
    .end local v7           #preferenceActivity:Landroid/preference/PreferenceActivity;
    :cond_6
    new-instance v8, Lcom/android/jrdsettings/wifi/WifiEnabler;

    invoke-direct {v8, v1, v0}, Lcom/android/jrdsettings/wifi/WifiEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v8, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mWifiEnabler:Lcom/android/jrdsettings/wifi/WifiEnabler;

    .line 552
    .end local v0           #actionBarSwitch:Landroid/widget/Switch;
    .end local v3           #inflater:Landroid/view/LayoutInflater;
    :cond_7
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v8

    const v9, 0x1020004

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mEmptyView:Landroid/widget/TextView;

    .line 553
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v8

    iget-object v9, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v8, v9}, Landroid/widget/AdapterView;->setEmptyView(Landroid/view/View;)V

    .line 555
    iget-boolean v8, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mSetupWizardMode:Z

    if-nez v8, :cond_8

    .line 556
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v8

    invoke-virtual {p0, v8}, Landroid/app/Fragment;->registerForContextMenu(Landroid/view/View;)V

    .line 560
    :cond_8
    invoke-static {p0}, Lcom/mediatek/settings/OobeUtils;->isOobeMode(Lcom/android/jrdsettings/SettingsPreferenceFragment;)Z

    move-result v8

    if-nez v8, :cond_9

    .line 561
    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Landroid/app/Fragment;->setHasOptionsMenu(Z)V

    .line 566
    :cond_9
    iget-object v8, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mExt:Lcom/mediatek/settings/ext/IWifiSettingsExt;

    invoke-virtual {p0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Lcom/mediatek/settings/ext/IWifiSettingsExt;->registerPriorityObserver(Landroid/content/ContentResolver;Landroid/content/Context;)V

    goto/16 :goto_0

    .line 518
    :cond_a
    const v8, 0x7f060056

    invoke-virtual {p0, v8}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    goto/16 :goto_1
.end method

.method onAddNetworkPressed()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1694
    iput-object v1, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/jrdsettings/wifi/AccessPoint;

    .line 1696
    iput-boolean v0, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->showInputMethodDialog:Z

    .line 1698
    invoke-direct {p0, v1, v0}, Lcom/android/jrdsettings/wifi/WifiSettings;->showDialog(Lcom/android/jrdsettings/wifi/AccessPoint;Z)V

    .line 1699
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialogInterface"
    .parameter "button"

    .prologue
    .line 1551
    const/4 v0, -0x3

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/jrdsettings/wifi/AccessPoint;

    if-eqz v0, :cond_1

    .line 1552
    invoke-virtual {p0}, Lcom/android/jrdsettings/wifi/WifiSettings;->forget()V

    .line 1556
    :cond_0
    :goto_0
    return-void

    .line 1553
    :cond_1
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 1554
    iget-object v0, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mDialog:Lcom/android/jrdsettings/wifi/WifiDialog;

    invoke-virtual {v0}, Lcom/android/jrdsettings/wifi/WifiDialog;->getController()Lcom/android/jrdsettings/wifi/WifiConfigController;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/jrdsettings/wifi/WifiSettings;->submit(Lcom/android/jrdsettings/wifi/WifiConfigController;)V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfig"

    .prologue
    .line 1800
    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1801
    iget-object v0, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mDialog:Lcom/android/jrdsettings/wifi/WifiDialog;

    if-eqz v0, :cond_0

    .line 1802
    iget-object v0, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mDialog:Lcom/android/jrdsettings/wifi/WifiDialog;

    invoke-virtual {v0}, Lcom/android/jrdsettings/wifi/WifiDialog;->closeSpinnerDialog()V

    .line 1804
    :cond_0
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x1

    .line 759
    iget-object v1, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/jrdsettings/wifi/AccessPoint;

    if-nez v1, :cond_1

    .line 760
    invoke-super {p0, p1}, Landroid/app/Fragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 804
    :cond_0
    :goto_0
    return v0

    .line 762
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 804
    invoke-super {p0, p1}, Landroid/app/Fragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0

    .line 764
    :pswitch_0
    iget-object v1, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/jrdsettings/wifi/AccessPoint;

    iget v1, v1, Lcom/android/jrdsettings/wifi/AccessPoint;->networkId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 765
    iget-object v1, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/jrdsettings/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/jrdsettings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/jrdsettings/wifi/WifiSettings;->requireKeyStore(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 766
    iget-object v1, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/jrdsettings/wifi/AccessPoint;

    iget v2, v2, Lcom/android/jrdsettings/wifi/AccessPoint;->networkId:I

    iget-object v3, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/WifiManager;->connect(ILandroid/net/wifi/WifiManager$ActionListener;)V

    .line 768
    iput-boolean v0, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mManuallyConnect:Z

    goto :goto_0

    .line 770
    :cond_2
    iget-object v1, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/jrdsettings/wifi/AccessPoint;

    iget v1, v1, Lcom/android/jrdsettings/wifi/AccessPoint;->security:I

    if-nez v1, :cond_3

    .line 772
    iget-object v1, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/jrdsettings/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/jrdsettings/wifi/AccessPoint;->generateOpenNetworkConfig()V

    .line 773
    iget-object v1, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/jrdsettings/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/jrdsettings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    iget-object v3, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/WifiManager;->connect(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    .line 775
    iput-boolean v0, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mManuallyConnect:Z

    goto :goto_0

    .line 778
    :cond_3
    iput-boolean v0, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->showInputMethodDialog:Z

    .line 780
    iget-object v1, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/jrdsettings/wifi/AccessPoint;

    invoke-direct {p0, v1, v3}, Lcom/android/jrdsettings/wifi/WifiSettings;->showDialog(Lcom/android/jrdsettings/wifi/AccessPoint;Z)V

    goto :goto_0

    .line 785
    :pswitch_1
    iget-object v1, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/jrdsettings/wifi/AccessPoint;

    iget v2, v2, Lcom/android/jrdsettings/wifi/AccessPoint;->networkId:I

    iget-object v3, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/WifiManager;->forget(ILandroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_0

    .line 790
    :pswitch_2
    iget-object v1, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/jrdsettings/wifi/AccessPoint;

    iget v1, v1, Lcom/android/jrdsettings/wifi/AccessPoint;->security:I

    if-nez v1, :cond_4

    .line 791
    iput-boolean v3, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->showInputMethodDialog:Z

    .line 796
    :goto_1
    iget-object v1, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/jrdsettings/wifi/AccessPoint;

    invoke-direct {p0, v1, v0}, Lcom/android/jrdsettings/wifi/WifiSettings;->showDialog(Lcom/android/jrdsettings/wifi/AccessPoint;Z)V

    goto :goto_0

    .line 793
    :cond_4
    iput-boolean v0, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->showInputMethodDialog:Z

    goto :goto_1

    .line 800
    :pswitch_3
    iget-object v1, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mExt:Lcom/mediatek/settings/ext/IWifiSettingsExt;

    iget-object v2, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/jrdsettings/wifi/AccessPoint;

    iget v2, v2, Lcom/android/jrdsettings/wifi/AccessPoint;->networkId:I

    invoke-interface {v1, v2}, Lcom/mediatek/settings/ext/IWifiSettingsExt;->disconnect(I)V

    goto :goto_0

    .line 762
    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    .line 308
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "firstRun"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mSetupWizardMode:Z

    .line 310
    invoke-super {p0, p1}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 313
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/jrdsettings/Utils;->getWifiSettingsPlugin(Landroid/content/Context;)Lcom/mediatek/settings/ext/IWifiSettingsExt;

    move-result-object v0

    iput-object v0, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mExt:Lcom/mediatek/settings/ext/IWifiSettingsExt;

    .line 316
    invoke-static {p0}, Lcom/mediatek/settings/OobeUtils;->isOobeMode(Lcom/android/jrdsettings/SettingsPreferenceFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mSetupWizardMode:Z

    .line 319
    const-string v0, "tablet"

    const-string v1, "ro.build.characteristics"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 327
    :goto_1
    return-void

    .line 316
    :cond_0
    iget-boolean v0, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mSetupWizardMode:Z

    goto :goto_0

    .line 326
    :cond_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f09040c

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(I)V

    goto :goto_1
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 5
    .parameter "menu"
    .parameter "view"
    .parameter "info"

    .prologue
    const/4 v3, -0x1

    const/4 v4, 0x0

    .line 729
    instance-of v1, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    if-eqz v1, :cond_3

    .line 730
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .end local p3
    iget v2, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v1, v2}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/Preference;

    .line 733
    .local v0, preference:Landroid/preference/Preference;
    instance-of v1, v0, Lcom/android/jrdsettings/wifi/AccessPoint;

    if-eqz v1, :cond_3

    .line 734
    check-cast v0, Lcom/android/jrdsettings/wifi/AccessPoint;

    .end local v0           #preference:Landroid/preference/Preference;
    iput-object v0, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/jrdsettings/wifi/AccessPoint;

    .line 735
    iget-object v1, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/jrdsettings/wifi/AccessPoint;

    iget-object v1, v1, Lcom/android/jrdsettings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 736
    iget-object v1, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/jrdsettings/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/jrdsettings/wifi/AccessPoint;->getLevel()I

    move-result v1

    if-eq v1, v3, :cond_0

    iget-object v1, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/jrdsettings/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/jrdsettings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    if-nez v1, :cond_0

    .line 738
    const/4 v1, 0x7

    const v2, 0x7f090424

    invoke-interface {p1, v4, v1, v4, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 741
    :cond_0
    iget-object v1, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/jrdsettings/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/jrdsettings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mExt:Lcom/mediatek/settings/ext/IWifiSettingsExt;

    invoke-interface {v1}, Lcom/mediatek/settings/ext/IWifiSettingsExt;->shouldAddDisconnectMenu()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 742
    const/16 v1, 0xa

    const v2, 0x7f0900e8

    invoke-interface {p1, v4, v1, v4, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 746
    :cond_1
    iget-object v1, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/jrdsettings/wifi/AccessPoint;

    iget v1, v1, Lcom/android/jrdsettings/wifi/AccessPoint;->networkId:I

    if-eq v1, v3, :cond_3

    .line 748
    iget-object v1, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mExt:Lcom/mediatek/settings/ext/IWifiSettingsExt;

    iget-object v2, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/jrdsettings/wifi/AccessPoint;

    iget-object v2, v2, Lcom/android/jrdsettings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/jrdsettings/wifi/AccessPoint;

    iget v3, v3, Lcom/android/jrdsettings/wifi/AccessPoint;->security:I

    invoke-interface {v1, v2, v3}, Lcom/mediatek/settings/ext/IWifiSettingsExt;->shouldAddForgetMenu(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 749
    const/16 v1, 0x8

    const v2, 0x7f090425

    invoke-interface {p1, v4, v1, v4, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 751
    :cond_2
    const/16 v1, 0x9

    const v2, 0x7f090426

    invoke-interface {p1, v4, v1, v4, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 755
    :cond_3
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 7
    .parameter "dialogId"

    .prologue
    const v5, 0x7f09046a

    const v4, 0x7f090469

    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 872
    packed-switch p1, :pswitch_data_0

    .line 950
    invoke-super {p0, p1}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 874
    :pswitch_0
    iget-object v3, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mDlgAccessPoint:Lcom/android/jrdsettings/wifi/AccessPoint;

    .line 875
    .local v3, ap:Lcom/android/jrdsettings/wifi/AccessPoint;
    if-nez v3, :cond_0

    .line 876
    iget-object v0, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 877
    new-instance v3, Lcom/android/jrdsettings/wifi/AccessPoint;

    .end local v3           #ap:Lcom/android/jrdsettings/wifi/AccessPoint;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    invoke-direct {v3, v0, v1}, Lcom/android/jrdsettings/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 879
    .restart local v3       #ap:Lcom/android/jrdsettings/wifi/AccessPoint;
    iput-object v3, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mDlgAccessPoint:Lcom/android/jrdsettings/wifi/AccessPoint;

    .line 883
    :cond_0
    iput-object v3, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/jrdsettings/wifi/AccessPoint;

    .line 886
    iget-object v0, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/jrdsettings/wifi/AccessPoint;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/jrdsettings/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/jrdsettings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 888
    iget-object v0, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mExt:Lcom/mediatek/settings/ext/IWifiSettingsExt;

    iget-object v1, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/jrdsettings/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/jrdsettings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    iget v1, v1, Landroid/net/wifi/WifiConfiguration;->priority:I

    invoke-interface {v0, v1}, Lcom/mediatek/settings/ext/IWifiSettingsExt;->recordPriority(I)V

    .line 898
    :goto_1
    new-instance v0, Lcom/android/jrdsettings/wifi/WifiDialog;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-boolean v4, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mDlgEdit:Z

    iget-boolean v5, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->showInputMethodDialog:Z

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/jrdsettings/wifi/WifiDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/jrdsettings/wifi/AccessPoint;ZZ)V

    iput-object v0, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mDialog:Lcom/android/jrdsettings/wifi/WifiDialog;

    .line 899
    iput-boolean v6, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->showInputMethodDialog:Z

    .line 903
    iget-object v0, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mDialog:Lcom/android/jrdsettings/wifi/WifiDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 906
    iget-object v0, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mDialog:Lcom/android/jrdsettings/wifi/WifiDialog;

    goto :goto_0

    .line 892
    :cond_1
    iget-object v0, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mExt:Lcom/mediatek/settings/ext/IWifiSettingsExt;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/mediatek/settings/ext/IWifiSettingsExt;->recordPriority(I)V

    goto :goto_1

    .line 908
    .end local v3           #ap:Lcom/android/jrdsettings/wifi/AccessPoint;
    :pswitch_1
    new-instance v0, Lcom/android/jrdsettings/wifi/WpsDialog;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Lcom/android/jrdsettings/wifi/WpsDialog;-><init>(Landroid/content/Context;I)V

    goto :goto_0

    .line 910
    :pswitch_2
    new-instance v0, Lcom/android/jrdsettings/wifi/WpsDialog;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, v6}, Lcom/android/jrdsettings/wifi/WpsDialog;-><init>(Landroid/content/Context;I)V

    goto :goto_0

    .line 912
    :pswitch_3
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f09046b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/jrdsettings/wifi/WifiSettings$9;

    invoke-direct {v1, p0}, Lcom/android/jrdsettings/wifi/WifiSettings$9;-><init>(Lcom/android/jrdsettings/wifi/WifiSettings;)V

    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/jrdsettings/wifi/WifiSettings$8;

    invoke-direct {v1, p0}, Lcom/android/jrdsettings/wifi/WifiSettings$8;-><init>(Lcom/android/jrdsettings/wifi/WifiSettings;)V

    invoke-virtual {v0, v5, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    .line 931
    :pswitch_4
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f09046c

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/jrdsettings/wifi/WifiSettings$11;

    invoke-direct {v1, p0}, Lcom/android/jrdsettings/wifi/WifiSettings$11;-><init>(Lcom/android/jrdsettings/wifi/WifiSettings;)V

    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/jrdsettings/wifi/WifiSettings$10;

    invoke-direct {v1, p0}, Lcom/android/jrdsettings/wifi/WifiSettings$10;-><init>(Lcom/android/jrdsettings/wifi/WifiSettings;)V

    invoke-virtual {v0, v5, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    .line 872
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 11
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v10, 0x4

    const v9, -0x777778

    const/4 v8, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 609
    iget-object v5, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v2

    .line 610
    .local v2, wifiIsEnabled:Z
    iget-boolean v5, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mSetupWizardMode:Z

    if-eqz v5, :cond_0

    .line 612
    const v5, 0x7f09041e

    invoke-interface {p1, v7, v6, v7, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v5

    const v6, 0x7f020118

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v8}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 616
    const v5, 0x7f09041c

    invoke-interface {p1, v7, v10, v7, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v8}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 664
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 665
    return-void

    .line 633
    :cond_0
    const v5, 0x7f09041e

    invoke-interface {p1, v7, v6, v7, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    .line 634
    .local v4, wpsMenuItem:Landroid/view/MenuItem;
    const v5, 0x7f020118

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 637
    const v5, 0x7f09041c

    invoke-interface {p1, v7, v10, v7, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    .line 638
    .local v1, addMenuItem:Landroid/view/MenuItem;
    const v5, 0x7f0200af

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 641
    invoke-interface {v4}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 642
    .local v3, wpsIcon:Landroid/graphics/drawable/Drawable;
    invoke-interface {v1}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 643
    .local v0, addIcon:Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_1

    if-eqz v0, :cond_1

    if-nez v2, :cond_1

    .line 644
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v9, v6}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 645
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v9, v6}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 648
    :cond_1
    const/4 v5, 0x6

    const v6, 0x7f090422

    invoke-interface {p1, v7, v5, v7, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v7}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 652
    const v5, 0x7f090420

    invoke-interface {p1, v7, v8, v7, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v7}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 655
    iget-boolean v5, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mP2pSupported:Z

    if-eqz v5, :cond_2

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c000d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 656
    const/4 v5, 0x3

    const v6, 0x7f090421

    invoke-interface {p1, v7, v5, v7, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v7}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 660
    :cond_2
    const/4 v5, 0x5

    const v6, 0x7f090423

    invoke-interface {p1, v7, v5, v7, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v7}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto/16 :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x0

    .line 332
    iget-boolean v4, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mSetupWizardMode:Z

    if-eqz v4, :cond_3

    .line 333
    const v4, 0x7f0400c4

    invoke-virtual {p1, v4, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 334
    .local v3, view:Landroid/view/View;
    const v4, 0x7f0b01f8

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mAddApView:Landroid/view/View;

    .line 335
    iget-object v4, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mAddApView:Landroid/view/View;

    new-instance v5, Lcom/android/jrdsettings/wifi/WifiSettings$2;

    invoke-direct {v5, p0}, Lcom/android/jrdsettings/wifi/WifiSettings$2;-><init>(Lcom/android/jrdsettings/wifi/WifiSettings;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 343
    const v4, 0x7f0b01f6

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 344
    .local v0, b:Landroid/widget/ImageButton;
    if-eqz v0, :cond_0

    .line 345
    new-instance v4, Lcom/android/jrdsettings/wifi/WifiSettings$3;

    invoke-direct {v4, p0, p1, v0}, Lcom/android/jrdsettings/wifi/WifiSettings$3;-><init>(Lcom/android/jrdsettings/wifi/WifiSettings;Landroid/view/LayoutInflater;Landroid/widget/ImageButton;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 367
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 368
    .local v2, intent:Landroid/content/Intent;
    const-string v4, "wifi_show_custom_button"

    invoke-virtual {v2, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 369
    const v4, 0x7f0b01fb

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 370
    const v4, 0x7f0b01fc

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 371
    const v4, 0x7f0b01fe

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 372
    const v4, 0x7f0b0048

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 374
    const v4, 0x7f0b01fd

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 375
    .local v1, customButton:Landroid/widget/Button;
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 376
    new-instance v4, Lcom/android/jrdsettings/wifi/WifiSettings$4;

    invoke-direct {v4, p0}, Lcom/android/jrdsettings/wifi/WifiSettings$4;-><init>(Lcom/android/jrdsettings/wifi/WifiSettings;)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 388
    .end local v1           #customButton:Landroid/widget/Button;
    :cond_1
    const-string v4, "wifi_show_wifi_required_info"

    invoke-virtual {v2, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 389
    const v4, 0x7f0b01f7

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 392
    :cond_2
    iget-object v4, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mWifiEnabler:Lcom/android/jrdsettings/wifi/WifiEnabler;

    invoke-static {p0, v3, v4}, Lcom/mediatek/settings/OobeUtils;->addWifiSwitch(Lcom/android/jrdsettings/SettingsPreferenceFragment;Landroid/view/View;Lcom/android/jrdsettings/wifi/WifiEnabler;)Lcom/android/jrdsettings/wifi/WifiEnabler;

    move-result-object v4

    iput-object v4, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mWifiEnabler:Lcom/android/jrdsettings/wifi/WifiEnabler;

    .line 396
    .end local v0           #b:Landroid/widget/ImageButton;
    .end local v2           #intent:Landroid/content/Intent;
    .end local v3           #view:Landroid/view/View;
    :goto_0
    return-object v3

    :cond_3
    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v3

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 604
    iget-object v0, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mExt:Lcom/mediatek/settings/ext/IWifiSettingsExt;

    invoke-virtual {p0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/mediatek/settings/ext/IWifiSettingsExt;->unregisterPriorityObserver(Landroid/content/ContentResolver;)V

    .line 605
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroy()V

    .line 606
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 8
    .parameter "item"

    .prologue
    const/4 v6, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v7, 0x1

    .line 684
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 724
    invoke-super {p0, p1}, Landroid/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 686
    :pswitch_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/jrdsettings/wifi/WifiSettings;->showDialog(I)V

    move v0, v7

    .line 687
    goto :goto_0

    .line 689
    :pswitch_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Landroid/preference/PreferenceActivity;

    if-eqz v0, :cond_0

    .line 690
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    const-class v1, Lcom/android/jrdsettings/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f090483

    move-object v4, v2

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    :goto_1
    move v0, v7

    .line 698
    goto :goto_0

    .line 696
    :cond_0
    const-class v0, Lcom/android/jrdsettings/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p0, v0, v1, v2}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;)Z

    goto :goto_1

    .line 700
    :pswitch_2
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/jrdsettings/wifi/WifiSettings;->showDialog(I)V

    move v0, v7

    .line 701
    goto :goto_0

    .line 703
    :pswitch_3
    iget-object v0, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 704
    iget-object v0, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mScanner:Lcom/android/jrdsettings/wifi/WifiSettings$Scanner;

    invoke-virtual {v0}, Lcom/android/jrdsettings/wifi/WifiSettings$Scanner;->forceScan()V

    :cond_1
    move v0, v7

    .line 706
    goto :goto_0

    .line 708
    :pswitch_4
    iget-object v0, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 709
    invoke-virtual {p0}, Lcom/android/jrdsettings/wifi/WifiSettings;->onAddNetworkPressed()V

    :cond_2
    move v0, v7

    .line 711
    goto :goto_0

    .line 713
    :pswitch_5
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Landroid/preference/PreferenceActivity;

    if-eqz v0, :cond_3

    .line 714
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    const-class v1, Lcom/android/jrdsettings/wifi/AdvancedWifiSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f09046e

    move-object v4, v2

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    :goto_2
    move v0, v7

    .line 722
    goto :goto_0

    .line 720
    :cond_3
    const-class v0, Lcom/android/jrdsettings/wifi/AdvancedWifiSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p0, v0, v1, v2}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;)Z

    goto :goto_2

    .line 684
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_3
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 589
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 590
    iget-object v0, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mWifiEnabler:Lcom/android/jrdsettings/wifi/WifiEnabler;

    if-eqz v0, :cond_0

    .line 591
    iget-object v0, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mWifiEnabler:Lcom/android/jrdsettings/wifi/WifiEnabler;

    invoke-virtual {v0}, Lcom/android/jrdsettings/wifi/WifiEnabler;->pause()V

    .line 594
    :cond_0
    iget-object v0, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mDialog:Lcom/android/jrdsettings/wifi/WifiDialog;

    if-eqz v0, :cond_1

    .line 595
    iget-object v0, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mDialog:Lcom/android/jrdsettings/wifi/WifiDialog;

    invoke-virtual {v0}, Lcom/android/jrdsettings/wifi/WifiDialog;->closeSpinnerDialog()V

    .line 598
    :cond_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 599
    iget-object v0, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mScanner:Lcom/android/jrdsettings/wifi/WifiSettings$Scanner;

    invoke-virtual {v0}, Lcom/android/jrdsettings/wifi/WifiSettings$Scanner;->pause()V

    .line 600
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .parameter "screen"
    .parameter "preference"

    .prologue
    const/4 v2, -0x1

    const/4 v0, 0x1

    const/4 v4, 0x0

    .line 809
    instance-of v1, p2, Lcom/android/jrdsettings/wifi/AccessPoint;

    if-eqz v1, :cond_4

    .line 810
    check-cast p2, Lcom/android/jrdsettings/wifi/AccessPoint;

    .end local p2
    iput-object p2, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/jrdsettings/wifi/AccessPoint;

    .line 812
    iget-object v1, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/jrdsettings/wifi/AccessPoint;

    iget v1, v1, Lcom/android/jrdsettings/wifi/AccessPoint;->security:I

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/jrdsettings/wifi/AccessPoint;

    iget v1, v1, Lcom/android/jrdsettings/wifi/AccessPoint;->networkId:I

    if-ne v1, v2, :cond_2

    .line 815
    iget-object v1, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/jrdsettings/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/jrdsettings/wifi/AccessPoint;->isOpenApWPSSupported()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mLastInfo:Landroid/net/wifi/WifiInfo;

    iget-object v2, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/jrdsettings/wifi/AccessPoint;

    iget-object v2, v2, Lcom/android/jrdsettings/wifi/AccessPoint;->bssid:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/jrdsettings/wifi/AccessPoint;

    iget-boolean v3, v3, Lcom/android/jrdsettings/wifi/AccessPoint;->mSupportedPasspoint:Z

    invoke-static {v1, v2, v3}, Lcom/mediatek/wifi/PasspointSettings;->shouldUpdate(Landroid/net/wifi/WifiInfo;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 819
    :cond_0
    iput-boolean v4, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->showInputMethodDialog:Z

    .line 821
    iget-object v1, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/jrdsettings/wifi/AccessPoint;

    invoke-direct {p0, v1, v4}, Lcom/android/jrdsettings/wifi/WifiSettings;->showDialog(Lcom/android/jrdsettings/wifi/AccessPoint;Z)V

    .line 843
    :goto_0
    return v0

    .line 824
    :cond_1
    iget-object v1, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/jrdsettings/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/jrdsettings/wifi/AccessPoint;->generateOpenNetworkConfig()V

    .line 825
    iget-object v1, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/jrdsettings/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/jrdsettings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    iget-object v3, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/WifiManager;->connect(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    .line 826
    iput-boolean v0, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mManuallyConnect:Z

    goto :goto_0

    .line 831
    :cond_2
    iget-object v1, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/jrdsettings/wifi/AccessPoint;

    iget v1, v1, Lcom/android/jrdsettings/wifi/AccessPoint;->networkId:I

    if-ne v1, v2, :cond_3

    .line 832
    iput-boolean v0, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->showInputMethodDialog:Z

    .line 836
    :goto_1
    iget-object v1, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/jrdsettings/wifi/AccessPoint;

    invoke-direct {p0, v1, v4}, Lcom/android/jrdsettings/wifi/WifiSettings;->showDialog(Lcom/android/jrdsettings/wifi/AccessPoint;Z)V

    goto :goto_0

    .line 834
    :cond_3
    iput-boolean v4, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->showInputMethodDialog:Z

    goto :goto_1

    .line 841
    .restart local p2
    :cond_4
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    goto :goto_0
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 572
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 573
    iget-object v0, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mWifiEnabler:Lcom/android/jrdsettings/wifi/WifiEnabler;

    if-eqz v0, :cond_0

    .line 574
    iget-object v0, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mWifiEnabler:Lcom/android/jrdsettings/wifi/WifiEnabler;

    invoke-virtual {v0}, Lcom/android/jrdsettings/wifi/WifiEnabler;->resume()V

    .line 577
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 578
    iget v0, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mKeyStoreNetworkId:I

    if-eq v0, v3, :cond_1

    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    invoke-virtual {v0}, Landroid/security/KeyStore;->state()Landroid/security/KeyStore$State;

    move-result-object v0

    sget-object v1, Landroid/security/KeyStore$State;->UNLOCKED:Landroid/security/KeyStore$State;

    if-ne v0, v1, :cond_1

    .line 580
    iget-object v0, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget v1, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mKeyStoreNetworkId:I

    iget-object v2, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->connect(ILandroid/net/wifi/WifiManager$ActionListener;)V

    .line 582
    :cond_1
    iput v3, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mKeyStoreNetworkId:I

    .line 584
    invoke-direct {p0}, Lcom/android/jrdsettings/wifi/WifiSettings;->updateAccessPoints()V

    .line 585
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 669
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 672
    iget-object v0, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mDialog:Lcom/android/jrdsettings/wifi/WifiDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mDialog:Lcom/android/jrdsettings/wifi/WifiDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 673
    const-string v0, "edit_mode"

    iget-boolean v1, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mDlgEdit:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 674
    iget-object v0, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mDlgAccessPoint:Lcom/android/jrdsettings/wifi/AccessPoint;

    if-eqz v0, :cond_0

    .line 675
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    .line 676
    iget-object v0, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mDlgAccessPoint:Lcom/android/jrdsettings/wifi/AccessPoint;

    iget-object v1, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/android/jrdsettings/wifi/AccessPoint;->saveWifiState(Landroid/os/Bundle;)V

    .line 677
    const-string v0, "wifi_ap_state"

    iget-object v1, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 680
    :cond_0
    return-void
.end method

.method pauseWifiScan()V
    .locals 1

    .prologue
    .line 1725
    iget-object v0, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1726
    iget-object v0, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mScanner:Lcom/android/jrdsettings/wifi/WifiSettings$Scanner;

    invoke-virtual {v0}, Lcom/android/jrdsettings/wifi/WifiSettings$Scanner;->pause()V

    .line 1728
    :cond_0
    return-void
.end method

.method refreshAccessPoints()V
    .locals 2

    .prologue
    .line 1682
    iget-object v0, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1683
    iget-object v0, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mScanner:Lcom/android/jrdsettings/wifi/WifiSettings$Scanner;

    invoke-virtual {v0}, Lcom/android/jrdsettings/wifi/WifiSettings$Scanner;->resume()V

    .line 1686
    :cond_0
    iget-object v0, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mExt:Lcom/mediatek/settings/ext/IWifiSettingsExt;

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/mediatek/settings/ext/IWifiSettingsExt;->emptyCategory(Landroid/preference/PreferenceScreen;)V

    .line 1687
    return-void
.end method

.method resumeWifiScan()V
    .locals 1

    .prologue
    .line 1734
    iget-object v0, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1735
    iget-object v0, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mScanner:Lcom/android/jrdsettings/wifi/WifiSettings$Scanner;

    invoke-virtual {v0}, Lcom/android/jrdsettings/wifi/WifiSettings$Scanner;->resume()V

    .line 1737
    :cond_0
    return-void
.end method

.method protected showDialog(I)V
    .locals 3
    .parameter "dialogId"

    .prologue
    .line 861
    iget-object v0, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mDialogFragment:Lcom/android/jrdsettings/SettingsPreferenceFragment$SettingsDialogFragment;

    if-eqz v0, :cond_0

    .line 862
    const-string v0, "WifiSettings"

    const-string v1, "Old dialog fragment not null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 863
    iget-object v0, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mDialogFragment:Lcom/android/jrdsettings/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-virtual {v0}, Lcom/android/jrdsettings/SettingsPreferenceFragment$SettingsDialogFragment;->getDialogId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->removeDialog(I)V

    .line 865
    :cond_0
    new-instance v0, Lcom/android/jrdsettings/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-direct {v0, p0, p1}, Lcom/android/jrdsettings/SettingsPreferenceFragment$SettingsDialogFragment;-><init>(Lcom/android/jrdsettings/DialogCreatable;I)V

    iput-object v0, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mDialogFragment:Lcom/android/jrdsettings/SettingsPreferenceFragment$SettingsDialogFragment;

    .line 866
    iget-object v0, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mDialogFragment:Lcom/android/jrdsettings/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 867
    return-void
.end method

.method submit(Lcom/android/jrdsettings/wifi/WifiConfigController;)V
    .locals 13
    .parameter "configController"

    .prologue
    const v12, 0x7f0900dc

    const/4 v11, 0x0

    const/4 v10, -0x1

    const/4 v9, 0x1

    .line 1560
    invoke-virtual {p1}, Lcom/android/jrdsettings/wifi/WifiConfigController;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 1561
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    const-string v6, "WifiSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "submit, config = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1565
    if-eqz v0, :cond_2

    :try_start_0
    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->imsi:Ljava/lang/String;

    if-eqz v6, :cond_2

    .line 1566
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "eap: SIM"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "eap: AKA"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1568
    :cond_0
    invoke-virtual {p0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "airplane_mode_on"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v9, :cond_1

    .line 1570
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const v7, 0x7f0900dc

    const/4 v8, 0x1

    invoke-static {v6, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 1655
    :goto_0
    return-void

    .line 1574
    :cond_1
    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->imsi:Ljava/lang/String;

    const-string v7, "\"error\""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1575
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const v7, 0x7f0900dd

    const/4 v8, 0x1

    invoke-static {v6, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1586
    :catch_0
    move-exception v2

    .line 1587
    .local v2, e:Ljava/lang/Exception;
    const-string v6, "WifiSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "submit exception() "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1591
    .end local v2           #e:Ljava/lang/Exception;
    :cond_2
    if-nez v0, :cond_a

    .line 1595
    const-string v6, "WifiSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mSelectedAccessPoint "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/jrdsettings/wifi/AccessPoint;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1596
    iget-object v6, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v1

    .line 1597
    .local v1, configs:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v1, :cond_6

    .line 1598
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiConfiguration;

    .line 1599
    .local v4, mConfig:Landroid/net/wifi/WifiConfiguration;
    const-string v6, "WifiSettings"

    const-string v7, "onClick() >>if ((mConfig.SSID).equals(mSelectedAccessPoint.ssid)) {"

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1600
    const-string v6, "WifiSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onClick()"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v4, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1601
    const-string v6, "WifiSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onClick() "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/jrdsettings/wifi/AccessPoint;

    iget-object v8, v8, Lcom/android/jrdsettings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1602
    if-eqz v4, :cond_3

    iget-object v6, v4, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v6, :cond_3

    iget-object v6, v4, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/jrdsettings/wifi/AccessPoint;

    iget-object v7, v7, Lcom/android/jrdsettings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-static {v7}, Lcom/android/jrdsettings/wifi/WifiDialog;->addQuote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {p0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "airplane_mode_on"

    invoke-static {v6, v7, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v9, :cond_3

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "eap: SIM"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "eap: AKA"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1606
    :cond_4
    const-string v6, "WifiSettings"

    const-string v7, "remind user: cannot user eap-sim/aka under airplane mode"

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1607
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6, v12, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 1579
    .end local v1           #configs:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #mConfig:Landroid/net/wifi/WifiConfiguration;
    :cond_5
    :try_start_1
    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->imsi:Ljava/lang/String;

    const-string v7, "\"none\""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1580
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const v7, 0x7f0900de

    const/4 v8, 0x1

    invoke-static {v6, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 1615
    .restart local v1       #configs:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    :cond_6
    iget-object v6, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/jrdsettings/wifi/AccessPoint;

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/jrdsettings/wifi/AccessPoint;

    invoke-virtual {v6}, Lcom/android/jrdsettings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/jrdsettings/wifi/WifiSettings;->requireKeyStore(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v6

    if-nez v6, :cond_7

    iget-object v6, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/jrdsettings/wifi/AccessPoint;

    iget v6, v6, Lcom/android/jrdsettings/wifi/AccessPoint;->networkId:I

    if-eq v6, v10, :cond_7

    .line 1619
    iget-object v6, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/jrdsettings/wifi/AccessPoint;

    invoke-virtual {v6}, Lcom/android/jrdsettings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v5

    .line 1620
    .local v5, state:Landroid/net/NetworkInfo$DetailedState;
    if-nez v5, :cond_9

    .line 1622
    iget-object v6, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v7, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/jrdsettings/wifi/AccessPoint;

    iget v7, v7, Lcom/android/jrdsettings/wifi/AccessPoint;->networkId:I

    iget-object v8, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v6, v7, v8}, Landroid/net/wifi/WifiManager;->connect(ILandroid/net/wifi/WifiManager$ActionListener;)V

    .line 1624
    iput-boolean v9, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mManuallyConnect:Z

    .line 1649
    .end local v1           #configs:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    .end local v5           #state:Landroid/net/NetworkInfo$DetailedState;
    :cond_7
    :goto_1
    iget-object v6, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mExt:Lcom/mediatek/settings/ext/IWifiSettingsExt;

    invoke-interface {v6, v0}, Lcom/mediatek/settings/ext/IWifiSettingsExt;->setLastConnectedConfig(Landroid/net/wifi/WifiConfiguration;)V

    .line 1651
    iget-object v6, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 1652
    iget-object v6, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mScanner:Lcom/android/jrdsettings/wifi/WifiSettings$Scanner;

    invoke-virtual {v6}, Lcom/android/jrdsettings/wifi/WifiSettings$Scanner;->resume()V

    .line 1654
    :cond_8
    invoke-direct {p0}, Lcom/android/jrdsettings/wifi/WifiSettings;->updateAccessPoints()V

    goto/16 :goto_0

    .line 1627
    .restart local v1       #configs:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    .restart local v5       #state:Landroid/net/NetworkInfo$DetailedState;
    :cond_9
    iget-object v6, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mExt:Lcom/mediatek/settings/ext/IWifiSettingsExt;

    iget-object v7, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/jrdsettings/wifi/AccessPoint;

    iget v7, v7, Lcom/android/jrdsettings/wifi/AccessPoint;->networkId:I

    invoke-interface {v6, v7}, Lcom/mediatek/settings/ext/IWifiSettingsExt;->disconnect(I)V

    goto :goto_1

    .line 1631
    .end local v1           #configs:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    .end local v5           #state:Landroid/net/NetworkInfo$DetailedState;
    :cond_a
    iget v6, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-eq v6, v10, :cond_b

    .line 1632
    iget-object v6, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/jrdsettings/wifi/AccessPoint;

    if-eqz v6, :cond_7

    .line 1634
    iget-object v6, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mExt:Lcom/mediatek/settings/ext/IWifiSettingsExt;

    invoke-interface {v6, v0}, Lcom/mediatek/settings/ext/IWifiSettingsExt;->setNewPriority(Landroid/net/wifi/WifiConfiguration;)V

    .line 1635
    iget-object v6, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v7, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v6, v0, v7}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_1

    .line 1639
    :cond_b
    iget-object v6, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mExt:Lcom/mediatek/settings/ext/IWifiSettingsExt;

    invoke-interface {v6, v0}, Lcom/mediatek/settings/ext/IWifiSettingsExt;->updatePriorityAfterSubmit(Landroid/net/wifi/WifiConfiguration;)V

    .line 1641
    invoke-virtual {p1}, Lcom/android/jrdsettings/wifi/WifiConfigController;->isEdit()Z

    move-result v6

    if-nez v6, :cond_c

    invoke-direct {p0, v0}, Lcom/android/jrdsettings/wifi/WifiSettings;->requireKeyStore(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 1642
    :cond_c
    iget-object v6, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v7, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v6, v0, v7}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_1

    .line 1644
    :cond_d
    iget-object v6, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v7, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v6, v0, v7}, Landroid/net/wifi/WifiManager;->connect(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    .line 1645
    iput-boolean v9, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mManuallyConnect:Z

    goto :goto_1
.end method

.method public updateAP(Landroid/preference/PreferenceCategory;)V
    .locals 5
    .parameter "screen"

    .prologue
    .line 1784
    invoke-virtual {p1}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_1

    .line 1786
    invoke-virtual {p1, v1}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    .line 1787
    .local v2, preference:Landroid/preference/Preference;
    instance-of v3, v2, Lcom/android/jrdsettings/wifi/AccessPoint;

    if-eqz v3, :cond_0

    move-object v0, v2

    .line 1788
    check-cast v0, Lcom/android/jrdsettings/wifi/AccessPoint;

    .line 1789
    .local v0, accessPoint:Lcom/android/jrdsettings/wifi/AccessPoint;
    iget-object v3, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mLastInfo:Landroid/net/wifi/WifiInfo;

    iget-object v4, p0, Lcom/android/jrdsettings/wifi/WifiSettings;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v3, v4}, Lcom/android/jrdsettings/wifi/AccessPoint;->update(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo$DetailedState;)V

    .line 1784
    .end local v0           #accessPoint:Lcom/android/jrdsettings/wifi/AccessPoint;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1792
    .end local v2           #preference:Landroid/preference/Preference;
    :cond_1
    return-void
.end method
