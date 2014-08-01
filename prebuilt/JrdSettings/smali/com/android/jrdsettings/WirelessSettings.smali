.class public Lcom/android/jrdsettings/WirelessSettings;
.super Lcom/android/jrdsettings/SettingsPreferenceFragment;
.source "WirelessSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/jrdsettings/WirelessSettings$3;
    }
.end annotation


# static fields
.field public static final EXIT_ECM_RESULT:Ljava/lang/String; = "exit_ecm_result"

.field private static final KEY_ANDROID_BEAM_SETTINGS:Ljava/lang/String; = "android_beam_settings"

.field private static final KEY_CELL_BROADCAST_SETTINGS:Ljava/lang/String; = "cell_broadcast_settings"

.field private static final KEY_MOBILE_NETWORK_SETTINGS:Ljava/lang/String; = "mobile_network_settings"

.field private static final KEY_MTK_TOGGLE_NFC:Ljava/lang/String; = "toggle_mtk_nfc"

.field private static final KEY_PROXY_SETTINGS:Ljava/lang/String; = "proxy_settings"

.field private static final KEY_RCSE_SETTINGS:Ljava/lang/String; = "rcse_settings"

.field private static final KEY_TETHER_SETTINGS:Ljava/lang/String; = "tether_settings"

.field private static final KEY_TOGGLE_AIRPLANE:Ljava/lang/String; = "toggle_airplane"

.field private static final KEY_TOGGLE_NFC:Ljava/lang/String; = "toggle_nfc"

.field private static final KEY_TOGGLE_NSD:Ljava/lang/String; = "toggle_nsd"

.field private static final KEY_USB_SHARING:Ljava/lang/String; = "usb_sharing"

.field private static final KEY_VPN_SETTINGS:Ljava/lang/String; = "vpn_settings"

.field private static final KEY_WIMAX_SETTINGS:Ljava/lang/String; = "wimax_settings"

.field private static final RCSE_SETTINGS_INTENT:Ljava/lang/String; = "com.mediatek.rcse.RCSE_SETTINGS"

.field public static final REQUEST_CODE_EXIT_ECM:I = 0x1

.field private static final TAG:Ljava/lang/String; = "WirelessSettings"

.field private static final USB_DATA_STATE:Ljava/lang/String; = "mediatek.intent.action.USB_DATA_STATE"


# instance fields
.field private mAirplaneModeEnabler:Lcom/android/jrdsettings/AirplaneModeEnabler;

.field private mAirplaneModePreference:Landroid/preference/CheckBoxPreference;

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mMTKNfcEnabler:Lcom/mediatek/nfc/MtkNfcEnabler;

.field private mNetworkSettingsPreference:Landroid/preference/PreferenceScreen;

.field private mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private mNfcEnabler:Lcom/android/jrdsettings/nfc/NfcEnabler;

.field private mNfcPreference:Lcom/mediatek/nfc/NfcPreference;

.field private mNsdEnabler:Lcom/android/jrdsettings/NsdEnabler;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mTelephony:Lcom/android/internal/telephony/ITelephony;

.field private mTetherSettings:Landroid/preference/Preference;

.field private mUsbSharing:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;-><init>()V

    .line 118
    new-instance v0, Lcom/android/jrdsettings/WirelessSettings$1;

    invoke-direct {v0, p0}, Lcom/android/jrdsettings/WirelessSettings$1;-><init>(Lcom/android/jrdsettings/WirelessSettings;)V

    iput-object v0, p0, Lcom/android/jrdsettings/WirelessSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 410
    new-instance v0, Lcom/android/jrdsettings/WirelessSettings$2;

    invoke-direct {v0, p0}, Lcom/android/jrdsettings/WirelessSettings$2;-><init>(Lcom/android/jrdsettings/WirelessSettings;)V

    iput-object v0, p0, Lcom/android/jrdsettings/WirelessSettings;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/jrdsettings/WirelessSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/jrdsettings/WirelessSettings;->mUsbSharing:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/jrdsettings/WirelessSettings;)Landroid/net/ConnectivityManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/jrdsettings/WirelessSettings;->mConnectivityManager:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/jrdsettings/WirelessSettings;)Landroid/preference/PreferenceScreen;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/jrdsettings/WirelessSettings;->mNetworkSettingsPreference:Landroid/preference/PreferenceScreen;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/jrdsettings/WirelessSettings;Lcom/android/internal/telephony/ITelephony;)Lcom/android/internal/telephony/ITelephony;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput-object p1, p0, Lcom/android/jrdsettings/WirelessSettings;->mTelephony:Lcom/android/internal/telephony/ITelephony;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/jrdsettings/WirelessSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/jrdsettings/WirelessSettings;->updateMobileNetworkEnabled()V

    return-void
.end method

.method public static isRadioAllowed(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .parameter "context"
    .parameter "type"

    .prologue
    const/4 v1, 0x1

    .line 219
    invoke-static {p0}, Lcom/android/jrdsettings/AirplaneModeEnabler;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 225
    :cond_0
    :goto_0
    return v1

    .line 223
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_toggleable_radios"

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 225
    .local v0, toggleable:Ljava/lang/String;
    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private updateMobileNetworkEnabled()V
    .locals 4

    .prologue
    .line 400
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/telephony/SimInfoManager;->getInsertedSimCount(Landroid/content/Context;)I

    move-result v0

    .line 401
    .local v0, simNum:I
    const-string v1, "WirelessSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "simNum="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    if-lez v0, :cond_0

    .line 403
    iget-object v1, p0, Lcom/android/jrdsettings/WirelessSettings;->mNetworkSettingsPreference:Landroid/preference/PreferenceScreen;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    .line 408
    :goto_0
    return-void

    .line 405
    :cond_0
    iget-object v1, p0, Lcom/android/jrdsettings/WirelessSettings;->mNetworkSettingsPreference:Landroid/preference/PreferenceScreen;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    goto :goto_0
.end method


# virtual methods
.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 502
    const v0, 0x7f090907

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 492
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 493
    const-string v1, "exit_ecm_result"

    const/4 v2, 0x0

    invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 495
    .local v0, isChoiceYes:Ljava/lang/Boolean;
    iget-object v1, p0, Lcom/android/jrdsettings/WirelessSettings;->mAirplaneModeEnabler:Lcom/android/jrdsettings/AirplaneModeEnabler;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iget-object v3, p0, Lcom/android/jrdsettings/WirelessSettings;->mAirplaneModePreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/jrdsettings/AirplaneModeEnabler;->setAirplaneModeInECM(ZZ)V

    .line 498
    .end local v0           #isChoiceYes:Ljava/lang/Boolean;
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 20
    .parameter "savedInstanceState"

    .prologue
    .line 230
    invoke-super/range {p0 .. p1}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 232
    const v18, 0x7f060057

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 234
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v18

    if-eqz v18, :cond_f

    const/4 v7, 0x1

    .line 236
    .local v7, isSecondaryUser:Z
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 237
    .local v2, activity:Landroid/app/Activity;
    const-string v18, "toggle_airplane"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    check-cast v18, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/jrdsettings/WirelessSettings;->mAirplaneModePreference:Landroid/preference/CheckBoxPreference;

    .line 238
    const-string v18, "toggle_nfc"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/preference/CheckBoxPreference;

    .line 239
    .local v11, nfc:Landroid/preference/CheckBoxPreference;
    const-string v18, "android_beam_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceScreen;

    .line 241
    .local v3, androidBeam:Landroid/preference/PreferenceScreen;
    const-string v18, "toggle_mtk_nfc"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    check-cast v18, Lcom/mediatek/nfc/NfcPreference;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/jrdsettings/WirelessSettings;->mNfcPreference:Lcom/mediatek/nfc/NfcPreference;

    .line 243
    invoke-static {v2}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/jrdsettings/WirelessSettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 251
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/WirelessSettings;->mNfcPreference:Lcom/mediatek/nfc/NfcPreference;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 252
    new-instance v18, Lcom/android/jrdsettings/nfc/NfcEnabler;

    move-object/from16 v0, v18

    invoke-direct {v0, v2, v11, v3}, Lcom/android/jrdsettings/nfc/NfcEnabler;-><init>(Landroid/content/Context;Landroid/preference/CheckBoxPreference;Landroid/preference/PreferenceScreen;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/jrdsettings/WirelessSettings;->mNfcEnabler:Lcom/android/jrdsettings/nfc/NfcEnabler;

    .line 257
    const-string v18, "mobile_network_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    check-cast v18, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/jrdsettings/WirelessSettings;->mNetworkSettingsPreference:Landroid/preference/PreferenceScreen;

    .line 258
    const-string v18, "usb_sharing"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    check-cast v18, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/jrdsettings/WirelessSettings;->mUsbSharing:Landroid/preference/CheckBoxPreference;

    .line 259
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/WirelessSettings;->mUsbSharing:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 261
    const-string v18, "toggle_nsd"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    check-cast v12, Landroid/preference/CheckBoxPreference;

    .line 263
    .local v12, nsd:Landroid/preference/CheckBoxPreference;
    new-instance v18, Lcom/android/jrdsettings/AirplaneModeEnabler;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/WirelessSettings;->mAirplaneModePreference:Landroid/preference/CheckBoxPreference;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v0, v2, v1}, Lcom/android/jrdsettings/AirplaneModeEnabler;-><init>(Landroid/content/Context;Landroid/preference/CheckBoxPreference;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/jrdsettings/WirelessSettings;->mAirplaneModeEnabler:Lcom/android/jrdsettings/AirplaneModeEnabler;

    .line 266
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 269
    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string v19, "airplane_mode_toggleable_radios"

    invoke-static/range {v18 .. v19}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 273
    .local v17, toggleable:Ljava/lang/String;
    if-nez v7, :cond_10

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x111003f

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v18

    if-eqz v18, :cond_10

    const/4 v8, 0x1

    .line 275
    .local v8, isWimaxEnabled:Z
    :goto_1
    if-nez v8, :cond_11

    .line 276
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v16

    .line 277
    .local v16, root:Landroid/preference/PreferenceScreen;
    const-string v18, "wimax_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    .line 278
    .local v14, ps:Landroid/preference/Preference;
    if-eqz v14, :cond_0

    .line 279
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 289
    .end local v14           #ps:Landroid/preference/Preference;
    .end local v16           #root:Landroid/preference/PreferenceScreen;
    :cond_0
    :goto_2
    if-eqz v17, :cond_1

    const-string v18, "wifi"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_2

    .line 290
    :cond_1
    const-string v18, "vpn_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    const-string v19, "toggle_airplane"

    invoke-virtual/range {v18 .. v19}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    .line 293
    :cond_2
    if-eqz v7, :cond_3

    .line 294
    const-string v18, "vpn_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)V

    .line 303
    :cond_3
    if-eqz v17, :cond_4

    const-string v18, "nfc"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_5

    .line 308
    :cond_4
    const-string v18, "toggle_airplane"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    .line 311
    const-string v18, "android_beam_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    const-string v19, "toggle_airplane"

    invoke-virtual/range {v18 .. v19}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    .line 316
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/WirelessSettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    move-object/from16 v18, v0

    if-nez v18, :cond_6

    .line 321
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 322
    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/jrdsettings/WirelessSettings;->mNfcEnabler:Lcom/android/jrdsettings/nfc/NfcEnabler;

    .line 324
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 329
    :cond_6
    if-nez v7, :cond_7

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/jrdsettings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v18

    if-eqz v18, :cond_8

    .line 331
    :cond_7
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/WirelessSettings;->mNetworkSettingsPreference:Landroid/preference/PreferenceScreen;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 335
    :cond_8
    const-string v18, "proxy_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    .line 336
    .local v10, mGlobalProxy:Landroid/preference/Preference;
    const-string v18, "device_policy"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/admin/DevicePolicyManager;

    .line 339
    .local v9, mDPM:Landroid/app/admin/DevicePolicyManager;
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 340
    invoke-virtual {v9}, Landroid/app/admin/DevicePolicyManager;->getGlobalProxyAdmin()Landroid/content/ComponentName;

    move-result-object v18

    if-nez v18, :cond_13

    const/16 v18, 0x1

    :goto_3
    move/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 344
    const-string v18, "connectivity"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/net/ConnectivityManager;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/jrdsettings/WirelessSettings;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 345
    const-string v18, "tether_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/jrdsettings/WirelessSettings;->mTetherSettings:Landroid/preference/Preference;

    .line 346
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/WirelessSettings;->mConnectivityManager:Landroid/net/ConnectivityManager;

    move-object/from16 v18, v0

    if-eqz v18, :cond_a

    .line 347
    if-nez v7, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/WirelessSettings;->mConnectivityManager:Landroid/net/ConnectivityManager;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/net/ConnectivityManager;->isTetheringSupported()Z

    move-result v18

    if-eqz v18, :cond_9

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/jrdsettings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v18

    if-eqz v18, :cond_14

    .line 348
    :cond_9
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/WirelessSettings;->mTetherSettings:Landroid/preference/Preference;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 356
    :cond_a
    :goto_4
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x1110044

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    .line 359
    .local v6, isCellBroadcastAppLinkEnabled:Z
    if-eqz v6, :cond_b

    .line 360
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    .line 361
    .local v13, pm:Landroid/content/pm/PackageManager;
    const-string v18, "com.android.cellbroadcastreceiver"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v18

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_b

    .line 363
    const/4 v6, 0x0

    .line 369
    .end local v13           #pm:Landroid/content/pm/PackageManager;
    :cond_b
    :goto_5
    if-nez v7, :cond_c

    if-nez v6, :cond_d

    .line 370
    :cond_c
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v16

    .line 371
    .restart local v16       #root:Landroid/preference/PreferenceScreen;
    const-string v18, "cell_broadcast_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    .line 372
    .restart local v14       #ps:Landroid/preference/Preference;
    if-eqz v14, :cond_d

    .line 373
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 379
    .end local v14           #ps:Landroid/preference/Preference;
    .end local v16           #root:Landroid/preference/PreferenceScreen;
    :cond_d
    new-instance v5, Landroid/content/Intent;

    const-string v18, "com.mediatek.rcse.RCSE_SETTINGS"

    move-object/from16 v0, v18

    invoke-direct {v5, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 380
    .local v5, intent:Landroid/content/Intent;
    invoke-virtual/range {p0 .. p0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v18

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v5, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v15

    .line 381
    .local v15, rcseApps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v15, :cond_e

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v18

    if-nez v18, :cond_15

    .line 382
    :cond_e
    const-string v18, "WirelessSettings"

    const-string v19, "com.mediatek.rcse.RCSE_SETTINGS is not installed"

    invoke-static/range {v18 .. v19}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v18

    const-string v19, "rcse_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 389
    :goto_6
    new-instance v18, Landroid/content/IntentFilter;

    const-string v19, "mediatek.intent.action.USB_DATA_STATE"

    invoke-direct/range {v18 .. v19}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/jrdsettings/WirelessSettings;->mIntentFilter:Landroid/content/IntentFilter;

    .line 390
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/WirelessSettings;->mIntentFilter:Landroid/content/IntentFilter;

    move-object/from16 v18, v0

    const-string v19, "android.hardware.usb.action.USB_STATE"

    invoke-virtual/range {v18 .. v19}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 391
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/WirelessSettings;->mIntentFilter:Landroid/content/IntentFilter;

    move-object/from16 v18, v0

    const-string v19, "android.intent.action.SIM_INFO_UPDATE"

    invoke-virtual/range {v18 .. v19}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 393
    return-void

    .line 234
    .end local v2           #activity:Landroid/app/Activity;
    .end local v3           #androidBeam:Landroid/preference/PreferenceScreen;
    .end local v5           #intent:Landroid/content/Intent;
    .end local v6           #isCellBroadcastAppLinkEnabled:Z
    .end local v7           #isSecondaryUser:Z
    .end local v8           #isWimaxEnabled:Z
    .end local v9           #mDPM:Landroid/app/admin/DevicePolicyManager;
    .end local v10           #mGlobalProxy:Landroid/preference/Preference;
    .end local v11           #nfc:Landroid/preference/CheckBoxPreference;
    .end local v12           #nsd:Landroid/preference/CheckBoxPreference;
    .end local v15           #rcseApps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v17           #toggleable:Ljava/lang/String;
    :cond_f
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 273
    .restart local v2       #activity:Landroid/app/Activity;
    .restart local v3       #androidBeam:Landroid/preference/PreferenceScreen;
    .restart local v7       #isSecondaryUser:Z
    .restart local v11       #nfc:Landroid/preference/CheckBoxPreference;
    .restart local v12       #nsd:Landroid/preference/CheckBoxPreference;
    .restart local v17       #toggleable:Ljava/lang/String;
    :cond_10
    const/4 v8, 0x0

    goto/16 :goto_1

    .line 282
    .restart local v8       #isWimaxEnabled:Z
    :cond_11
    if-eqz v17, :cond_12

    const-string v18, "wimax"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_0

    if-eqz v8, :cond_0

    .line 284
    :cond_12
    const-string v18, "wimax_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    .line 285
    .restart local v14       #ps:Landroid/preference/Preference;
    const-string v18, "toggle_airplane"

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 340
    .end local v14           #ps:Landroid/preference/Preference;
    .restart local v9       #mDPM:Landroid/app/admin/DevicePolicyManager;
    .restart local v10       #mGlobalProxy:Landroid/preference/Preference;
    :cond_13
    const/16 v18, 0x0

    goto/16 :goto_3

    .line 350
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/WirelessSettings;->mTetherSettings:Landroid/preference/Preference;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/WirelessSettings;->mConnectivityManager:Landroid/net/ConnectivityManager;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/jrdsettings/Utils;->getTetheringLabel(Landroid/net/ConnectivityManager;)I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Landroid/preference/Preference;->setTitle(I)V

    goto/16 :goto_4

    .line 366
    .restart local v6       #isCellBroadcastAppLinkEnabled:Z
    :catch_0
    move-exception v4

    .line 367
    .local v4, ignored:Ljava/lang/IllegalArgumentException;
    const/4 v6, 0x0

    goto/16 :goto_5

    .line 385
    .end local v4           #ignored:Ljava/lang/IllegalArgumentException;
    .restart local v5       #intent:Landroid/content/Intent;
    .restart local v15       #rcseApps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_15
    const-string v18, "WirelessSettings"

    const-string v19, "com.mediatek.rcse.RCSE_SETTINGS is installed"

    invoke-static/range {v18 .. v19}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    const-string v18, "rcse_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    goto :goto_6
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 466
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 468
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 470
    .local v0, telephonyManager:Landroid/telephony/TelephonyManager;
    iget-object v1, p0, Lcom/android/jrdsettings/WirelessSettings;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 472
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/jrdsettings/WirelessSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 475
    iget-object v1, p0, Lcom/android/jrdsettings/WirelessSettings;->mAirplaneModeEnabler:Lcom/android/jrdsettings/AirplaneModeEnabler;

    invoke-virtual {v1}, Lcom/android/jrdsettings/AirplaneModeEnabler;->pause()V

    .line 481
    iget-object v1, p0, Lcom/android/jrdsettings/WirelessSettings;->mNfcEnabler:Lcom/android/jrdsettings/nfc/NfcEnabler;

    if-eqz v1, :cond_0

    .line 482
    iget-object v1, p0, Lcom/android/jrdsettings/WirelessSettings;->mNfcEnabler:Lcom/android/jrdsettings/nfc/NfcEnabler;

    invoke-virtual {v1}, Lcom/android/jrdsettings/nfc/NfcEnabler;->pause()V

    .line 485
    :cond_0
    iget-object v1, p0, Lcom/android/jrdsettings/WirelessSettings;->mNsdEnabler:Lcom/android/jrdsettings/NsdEnabler;

    if-eqz v1, :cond_1

    .line 486
    iget-object v1, p0, Lcom/android/jrdsettings/WirelessSettings;->mNsdEnabler:Lcom/android/jrdsettings/NsdEnabler;

    invoke-virtual {v1}, Lcom/android/jrdsettings/NsdEnabler;->pause()V

    .line 488
    :cond_1
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 7
    .parameter "preference"
    .parameter "value"

    .prologue
    const/4 v3, 0x0

    .line 205
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    .line 206
    .local v6, key:Ljava/lang/String;
    const-string v0, "usb_sharing"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 207
    iget-object v0, p0, Lcom/android/jrdsettings/WirelessSettings;->mUsbSharing:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/android/jrdsettings/WirelessSettings;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->setUsbInternet(Z)Z

    .line 215
    :goto_0
    return v3

    .line 210
    :cond_0
    const-class v0, Lcom/mediatek/wireless/UsbSharingChoose;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    const v5, 0x7f090124

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z

    .line 211
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f050002

    const v2, 0x7f050001

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_0

    .line 215
    :cond_1
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 7
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v0, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 187
    iget-object v1, p0, Lcom/android/jrdsettings/WirelessSettings;->mAirplaneModePreference:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_0

    const-string v1, "ril.cdma.inecmmode"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 190
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.ACTION_SHOW_NOTICE_ECM_BLOCK_OTHERS"

    invoke-direct {v1, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v1, v0}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 201
    :goto_0
    return v0

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/android/jrdsettings/WirelessSettings;->mNfcPreference:Lcom/mediatek/nfc/NfcPreference;

    if-ne p2, v0, :cond_1

    .line 196
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    const-class v1, Lcom/mediatek/nfc/NfcSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    move-object v4, v2

    move-object v5, v2

    move v6, v3

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 201
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    goto :goto_0
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 432
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 434
    iget-object v1, p0, Lcom/android/jrdsettings/WirelessSettings;->mAirplaneModeEnabler:Lcom/android/jrdsettings/AirplaneModeEnabler;

    invoke-virtual {v1}, Lcom/android/jrdsettings/AirplaneModeEnabler;->resume()V

    .line 440
    iget-object v1, p0, Lcom/android/jrdsettings/WirelessSettings;->mNfcEnabler:Lcom/android/jrdsettings/nfc/NfcEnabler;

    if-eqz v1, :cond_0

    .line 441
    iget-object v1, p0, Lcom/android/jrdsettings/WirelessSettings;->mNfcEnabler:Lcom/android/jrdsettings/nfc/NfcEnabler;

    invoke-virtual {v1}, Lcom/android/jrdsettings/nfc/NfcEnabler;->resume()V

    .line 444
    :cond_0
    iget-object v1, p0, Lcom/android/jrdsettings/WirelessSettings;->mNsdEnabler:Lcom/android/jrdsettings/NsdEnabler;

    if-eqz v1, :cond_1

    .line 445
    iget-object v1, p0, Lcom/android/jrdsettings/WirelessSettings;->mNsdEnabler:Lcom/android/jrdsettings/NsdEnabler;

    invoke-virtual {v1}, Lcom/android/jrdsettings/NsdEnabler;->resume()V

    .line 449
    :cond_1
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 451
    .local v0, telephonyManager:Landroid/telephony/TelephonyManager;
    iget-object v1, p0, Lcom/android/jrdsettings/WirelessSettings;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 453
    const-string v1, "WirelessSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onResume(), call state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v1

    if-eqz v1, :cond_2

    .line 455
    iget-object v1, p0, Lcom/android/jrdsettings/WirelessSettings;->mNetworkSettingsPreference:Landroid/preference/PreferenceScreen;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    .line 460
    :goto_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/jrdsettings/WirelessSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/android/jrdsettings/WirelessSettings;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 462
    return-void

    .line 457
    :cond_2
    iget-object v1, p0, Lcom/android/jrdsettings/WirelessSettings;->mNetworkSettingsPreference:Landroid/preference/PreferenceScreen;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    goto :goto_0
.end method
