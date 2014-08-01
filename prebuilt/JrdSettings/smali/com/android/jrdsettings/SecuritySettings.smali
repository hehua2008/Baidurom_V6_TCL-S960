.class public Lcom/android/jrdsettings/SecuritySettings;
.super Lcom/android/jrdsettings/SettingsPreferenceFragment;
.source "SecuritySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final CONFIRM_EXISTING_FOR_BIOMETRIC_WEAK_IMPROVE_REQUEST:I = 0x7c

.field private static final CONFIRM_EXISTING_FOR_BIOMETRIC_WEAK_LIVELINESS_OFF:I = 0x7d

.field private static final DELAY_MILLIS:I = 0x1f4

.field private static final KEY_BIOMETRIC_WEAK_IMPROVE_MATCHING:Ljava/lang/String; = "biometric_weak_improve_matching"

.field private static final KEY_BIOMETRIC_WEAK_LIVELINESS:Ljava/lang/String; = "biometric_weak_liveliness"

.field private static final KEY_CREDENTIALS_MANAGER:Ljava/lang/String; = "credentials_management"

.field private static final KEY_DEVICE_ADMIN_CATEGORY:Ljava/lang/String; = "device_admin_category"

.field private static final KEY_GUESTMODE_SECUTRY:Ljava/lang/String; = "guestmode_preference"

.field private static final KEY_LOCKSCREEN_GSENSOR_SETTINGS:Ljava/lang/String; = "lockscreen_gsensor_settings"

.field private static final KEY_LOCK_AFTER_TIMEOUT:Ljava/lang/String; = "lock_after_timeout"

.field private static final KEY_LOCK_ENABLED:Ljava/lang/String; = "lockenabled"

.field private static final KEY_OWNER_INFO_SETTINGS:Ljava/lang/String; = "owner_info_settings"

.field private static final KEY_POWER_INSTANTLY_LOCKS:Ljava/lang/String; = "power_button_instantly_locks"

.field private static final KEY_REMOTE_SECURITY:Ljava/lang/String; = "remote_security"

.field private static final KEY_RESET_CREDENTIALS:Ljava/lang/String; = "reset_credentials"

.field private static final KEY_SECURITY_CATEGORY:Ljava/lang/String; = "security_category"

.field private static final KEY_SHOW_PASSWORD:Ljava/lang/String; = "show_password"

.field private static final KEY_SIM_LOCK:Ljava/lang/String; = "sim_lock"

.field private static final KEY_SIM_LOCK_PREF:Ljava/lang/String; = "sim_lock_pref"

.field private static final KEY_TACTILE_FEEDBACK_ENABLED:Ljava/lang/String; = "unlock_tactile_feedback"

.field private static final KEY_TOGGLE_INSTALL_APPLICATIONS:Ljava/lang/String; = "toggle_install_applications"

.field private static final KEY_TOGGLE_VERIFY_APPLICATIONS:Ljava/lang/String; = "toggle_verify_applications"

.field private static final KEY_UNLOCK_SET_OR_CHANGE:Ljava/lang/String; = "unlock_set_or_change"

.field private static final KEY_VISIBLE_PATTERN:Ljava/lang/String; = "visiblepattern"

.field private static final PACKAGE_MIME_TYPE:Ljava/lang/String; = "application/vnd.android.package-archive"

.field private static final SET_OR_CHANGE_LOCK_METHOD_REQUEST:I = 0x7b

.field private static final TAG:Ljava/lang/String; = "SecuritySettings"


# instance fields
.field private final LockScreen_Gsensor:Ljava/lang/String;

.field private mBiometricWeakLiveliness:Landroid/preference/CheckBoxPreference;

.field private mChooseLockSettingsHelper:Lcom/android/jrdsettings/ChooseLockSettingsHelper;

.field mDPM:Landroid/app/admin/DevicePolicyManager;

.field private mGuestModeSwitchPref:Lcom/android/jrdsettings/remotesecurity/RemoteSecuritySwitchPreference;

.field private mIsPrimary:Z

.field private mLockAfter:Landroid/preference/ListPreference;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockScreenGsensor:Landroid/preference/CheckBoxPreference;

.field private mPermCtrlExt:Lcom/mediatek/settings/ext/IPermissionControlExt;

.field private mPowerButtonInstantlyLocks:Landroid/preference/CheckBoxPreference;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field mRemoteSecurityOnSwitchChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mRemoteSecuritySwitchPreference:Lcom/android/jrdsettings/remotesecurity/RemoteSecuritySwitchPreference;

.field private mResetCredentials:Landroid/preference/Preference;

.field private mScrollHandler:Landroid/os/Handler;

.field private mScrollRunner:Ljava/lang/Runnable;

.field private mScrollToUnknownSources:Z

.field private mShowPassword:Landroid/preference/CheckBoxPreference;

.field private mSiminfoReceiver:Landroid/content/BroadcastReceiver;

.field private mToggleAppInstallation:Landroid/preference/CheckBoxPreference;

.field private mToggleVerifyApps:Landroid/preference/CheckBoxPreference;

.field private mUnknownSourcesPosition:I

.field private mVisiblePattern:Landroid/preference/CheckBoxPreference;

.field private mWarnInstallApps:Landroid/content/DialogInterface;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;-><init>()V

    .line 153
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/jrdsettings/SecuritySettings;->mScrollHandler:Landroid/os/Handler;

    .line 154
    new-instance v0, Lcom/android/jrdsettings/SecuritySettings$1;

    invoke-direct {v0, p0}, Lcom/android/jrdsettings/SecuritySettings$1;-><init>(Lcom/android/jrdsettings/SecuritySettings;)V

    iput-object v0, p0, Lcom/android/jrdsettings/SecuritySettings;->mScrollRunner:Ljava/lang/Runnable;

    .line 165
    new-instance v0, Lcom/android/jrdsettings/SecuritySettings$2;

    invoke-direct {v0, p0}, Lcom/android/jrdsettings/SecuritySettings$2;-><init>(Lcom/android/jrdsettings/SecuritySettings;)V

    iput-object v0, p0, Lcom/android/jrdsettings/SecuritySettings;->mSiminfoReceiver:Landroid/content/BroadcastReceiver;

    .line 203
    const-string v0, "lockscreen_gsensor"

    iput-object v0, p0, Lcom/android/jrdsettings/SecuritySettings;->LockScreen_Gsensor:Ljava/lang/String;

    .line 207
    new-instance v0, Lcom/android/jrdsettings/SecuritySettings$3;

    invoke-direct {v0, p0}, Lcom/android/jrdsettings/SecuritySettings$3;-><init>(Lcom/android/jrdsettings/SecuritySettings;)V

    iput-object v0, p0, Lcom/android/jrdsettings/SecuritySettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 548
    new-instance v0, Lcom/android/jrdsettings/SecuritySettings$5;

    invoke-direct {v0, p0}, Lcom/android/jrdsettings/SecuritySettings$5;-><init>(Lcom/android/jrdsettings/SecuritySettings;)V

    iput-object v0, p0, Lcom/android/jrdsettings/SecuritySettings;->mRemoteSecurityOnSwitchChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/jrdsettings/SecuritySettings;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget v0, p0, Lcom/android/jrdsettings/SecuritySettings;->mUnknownSourcesPosition:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/jrdsettings/SecuritySettings;)Landroid/preference/PreferenceScreen;
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/android/jrdsettings/SecuritySettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/jrdsettings/SecuritySettings;)Lcom/android/jrdsettings/ChooseLockSettingsHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/jrdsettings/SecuritySettings;->mChooseLockSettingsHelper:Lcom/android/jrdsettings/ChooseLockSettingsHelper;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/jrdsettings/SecuritySettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/jrdsettings/SecuritySettings;->mBiometricWeakLiveliness:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/jrdsettings/SecuritySettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/jrdsettings/SecuritySettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/jrdsettings/SecuritySettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/jrdsettings/SecuritySettings;->mPowerButtonInstantlyLocks:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/jrdsettings/SecuritySettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/jrdsettings/SecuritySettings;->mShowPassword:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/jrdsettings/SecuritySettings;)Landroid/preference/Preference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/jrdsettings/SecuritySettings;->mResetCredentials:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/jrdsettings/SecuritySettings;)Lcom/android/jrdsettings/remotesecurity/RemoteSecuritySwitchPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/jrdsettings/SecuritySettings;->mRemoteSecuritySwitchPreference:Lcom/android/jrdsettings/remotesecurity/RemoteSecuritySwitchPreference;

    return-object v0
.end method

.method private createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
    .locals 27

    .prologue
    .line 256
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v17

    .line 257
    .local v17, root:Landroid/preference/PreferenceScreen;
    if-eqz v17, :cond_0

    .line 258
    invoke-virtual/range {v17 .. v17}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 260
    :cond_0
    const v24, 0x7f06002b

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 261
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v17

    .line 264
    const/16 v16, 0x0

    .line 265
    .local v16, resid:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v24

    if-nez v24, :cond_e

    .line 267
    const-string v24, "user"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/UserManager;

    .line 268
    .local v10, mUm:Landroid/os/UserManager;
    const/16 v24, 0x1

    move/from16 v0, v24

    invoke-virtual {v10, v0}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v23

    .line 269
    .local v23, users:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v24

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_c

    const/16 v21, 0x1

    .line 271
    .local v21, singleUser:Z
    :goto_0
    if-eqz v21, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled()Z

    move-result v24

    if-eqz v24, :cond_d

    .line 272
    const v16, 0x7f060030

    .line 296
    .end local v10           #mUm:Landroid/os/UserManager;
    .end local v21           #singleUser:Z
    .end local v23           #users:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :goto_1
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 299
    invoke-direct/range {p0 .. p0}, Lcom/android/jrdsettings/SecuritySettings;->isRemoteSecurityShow()Z

    move-result v24

    if-eqz v24, :cond_1

    .line 301
    const v24, 0x7f060036

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 306
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f0c000f

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v9

    .line 307
    .local v9, isShowOwnerInfo:Z
    if-nez v9, :cond_2

    .line 308
    const-string v24, "owner_info_settings"

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v13

    check-cast v13, Landroid/preference/PreferenceScreen;

    .line 309
    .local v13, owner_options:Landroid/preference/PreferenceScreen;
    const-string v24, "security_category"

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    check-cast v18, Landroid/preference/PreferenceGroup;

    .line 310
    .local v18, securityCategory:Landroid/preference/PreferenceGroup;
    if-eqz v13, :cond_2

    if-eqz v18, :cond_2

    .line 311
    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 317
    .end local v13           #owner_options:Landroid/preference/PreferenceScreen;
    .end local v18           #securityCategory:Landroid/preference/PreferenceGroup;
    :cond_2
    const-string v24, "SecuritySettings"

    const-string v25, "FeatureOption.MTK_EMMC_SUPPORT=true"

    invoke-static/range {v24 .. v25}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    const-string v24, "SecuritySettings"

    const-string v25, "FeatureOption.MTK_CACHE_MERGE_SUPPORT=false"

    invoke-static/range {v24 .. v25}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v24

    if-nez v24, :cond_11

    const/16 v24, 0x1

    :goto_2
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/jrdsettings/SecuritySettings;->mIsPrimary:Z

    .line 322
    const-string v24, "device_policy"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/admin/DevicePolicyManager;

    .line 324
    .local v5, dpm:Landroid/app/admin/DevicePolicyManager;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/jrdsettings/SecuritySettings;->mIsPrimary:Z

    move/from16 v24, v0

    if-nez v24, :cond_3

    .line 326
    const-string v24, "owner_info_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    .line 327
    .local v12, ownerInfoPref:Landroid/preference/Preference;
    if-eqz v12, :cond_3

    .line 328
    const v24, 0x7f090348

    move/from16 v0, v24

    invoke-virtual {v12, v0}, Landroid/preference/Preference;->setTitle(I)V

    .line 333
    .end local v12           #ownerInfoPref:Landroid/preference/Preference;
    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f0c0010

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    .line 335
    .local v8, isHideEncrypt:Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/jrdsettings/SecuritySettings;->mIsPrimary:Z

    move/from16 v24, v0

    if-eqz v24, :cond_4

    if-nez v8, :cond_4

    .line 337
    invoke-virtual {v5}, Landroid/app/admin/DevicePolicyManager;->getStorageEncryptionStatus()I

    move-result v24

    packed-switch v24, :pswitch_data_0

    .line 352
    :cond_4
    :goto_3
    :pswitch_0
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    .line 353
    .local v14, pm:Landroid/content/pm/PackageManager;
    const-string v24, "com.jrdcom.guestmode"

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v14, v0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 354
    .local v2, appInfo:Landroid/content/pm/ApplicationInfo;
    if-eqz v2, :cond_5

    .line 355
    const v24, 0x7f06002f

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 356
    const-string v24, "persist.security.guestmode"

    const/16 v25, 0x0

    invoke-static/range {v24 .. v25}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v24

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_12

    const/4 v7, 0x1

    .line 358
    .local v7, isGuestModeTurnOn:Z
    :goto_4
    const-string v24, "guestmode_preference"

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v24

    check-cast v24, Lcom/android/jrdsettings/remotesecurity/RemoteSecuritySwitchPreference;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/jrdsettings/SecuritySettings;->mGuestModeSwitchPref:Lcom/android/jrdsettings/remotesecurity/RemoteSecuritySwitchPreference;

    .line 359
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/SecuritySettings;->mGuestModeSwitchPref:Lcom/android/jrdsettings/remotesecurity/RemoteSecuritySwitchPreference;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Lcom/android/jrdsettings/remotesecurity/RemoteSecuritySwitchPreference;->setChecked(Z)V

    .line 360
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/SecuritySettings;->mGuestModeSwitchPref:Lcom/android/jrdsettings/remotesecurity/RemoteSecuritySwitchPreference;

    move-object/from16 v24, v0

    new-instance v25, Lcom/android/jrdsettings/SecuritySettings$4;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/jrdsettings/SecuritySettings$4;-><init>(Lcom/android/jrdsettings/SecuritySettings;)V

    invoke-virtual/range {v24 .. v25}, Lcom/android/jrdsettings/remotesecurity/RemoteSecuritySwitchPreference;->setmSwitchChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 382
    .end local v2           #appInfo:Landroid/content/pm/ApplicationInfo;
    .end local v7           #isGuestModeTurnOn:Z
    .end local v14           #pm:Landroid/content/pm/PackageManager;
    :cond_5
    :goto_5
    const-string v24, "lockscreen_gsensor_settings"

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v24

    check-cast v24, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/jrdsettings/SecuritySettings;->mLockScreenGsensor:Landroid/preference/CheckBoxPreference;

    .line 385
    const-string v24, "lock_after_timeout"

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v24

    check-cast v24, Landroid/preference/ListPreference;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/jrdsettings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    .line 386
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    move-object/from16 v24, v0

    if-eqz v24, :cond_6

    .line 387
    invoke-direct/range {p0 .. p0}, Lcom/android/jrdsettings/SecuritySettings;->setupLockAfterPreference()V

    .line 388
    invoke-direct/range {p0 .. p0}, Lcom/android/jrdsettings/SecuritySettings;->updateLockAfterPreferenceSummary()V

    .line 392
    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/android/jrdsettings/SecuritySettings;->isRemoteSecurityShow()Z

    move-result v24

    if-eqz v24, :cond_7

    .line 394
    const-string v24, "remote_security"

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v24

    check-cast v24, Lcom/android/jrdsettings/remotesecurity/RemoteSecuritySwitchPreference;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/jrdsettings/SecuritySettings;->mRemoteSecuritySwitchPreference:Lcom/android/jrdsettings/remotesecurity/RemoteSecuritySwitchPreference;

    .line 395
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/SecuritySettings;->mRemoteSecuritySwitchPreference:Lcom/android/jrdsettings/remotesecurity/RemoteSecuritySwitchPreference;

    move-object/from16 v24, v0

    if-eqz v24, :cond_7

    .line 396
    new-instance v3, Lcom/android/jrdsettings/remotesecurity/logic/RSDBHelper;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-direct {v3, v0}, Lcom/android/jrdsettings/remotesecurity/logic/RSDBHelper;-><init>(Landroid/content/Context;)V

    .line 397
    .local v3, db:Lcom/android/jrdsettings/remotesecurity/logic/RSDBHelper;
    const-string v24, "SecuritySettings"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "db="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/android/jrdsettings/remotesecurity/util/LogX;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    const-string v24, "rs_state"

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Lcom/android/jrdsettings/remotesecurity/logic/RSDBHelper;->getIntValue(Ljava/lang/String;)I

    move-result v24

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_13

    const/16 v22, 0x1

    .line 399
    .local v22, state:Z
    :goto_6
    const-string v24, "SecuritySettings"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "init state="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/android/jrdsettings/remotesecurity/util/LogX;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/SecuritySettings;->mRemoteSecuritySwitchPreference:Lcom/android/jrdsettings/remotesecurity/RemoteSecuritySwitchPreference;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/jrdsettings/remotesecurity/RemoteSecuritySwitchPreference;->setChecked(Z)V

    .line 401
    new-instance v15, Landroid/content/ComponentName;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v24

    const-class v25, Lcom/android/jrdsettings/remotesecurity/logic/RSMessageBroadcastReceiver;

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-direct {v15, v0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 402
    .local v15, receiver:Landroid/content/ComponentName;
    invoke-virtual/range {p0 .. p0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    .line 403
    .restart local v14       #pm:Landroid/content/pm/PackageManager;
    if-eqz v22, :cond_14

    .line 404
    const/16 v24, 0x1

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v14, v15, v0, v1}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 415
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/SecuritySettings;->mRemoteSecuritySwitchPreference:Lcom/android/jrdsettings/remotesecurity/RemoteSecuritySwitchPreference;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/SecuritySettings;->mRemoteSecurityOnSwitchChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Lcom/android/jrdsettings/remotesecurity/RemoteSecuritySwitchPreference;->setmSwitchChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 423
    .end local v3           #db:Lcom/android/jrdsettings/remotesecurity/logic/RSDBHelper;
    .end local v14           #pm:Landroid/content/pm/PackageManager;
    .end local v15           #receiver:Landroid/content/ComponentName;
    .end local v22           #state:Z
    :cond_7
    const-string v24, "biometric_weak_liveliness"

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v24

    check-cast v24, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/jrdsettings/SecuritySettings;->mBiometricWeakLiveliness:Landroid/preference/CheckBoxPreference;

    .line 427
    const-string v24, "visiblepattern"

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v24

    check-cast v24, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/jrdsettings/SecuritySettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    .line 430
    const-string v24, "power_button_instantly_locks"

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v24

    check-cast v24, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/jrdsettings/SecuritySettings;->mPowerButtonInstantlyLocks:Landroid/preference/CheckBoxPreference;

    .line 434
    const v24, 0x7f06002c

    move/from16 v0, v16

    move/from16 v1, v24

    if-eq v0, v1, :cond_8

    const v24, 0x7f060039

    move/from16 v0, v16

    move/from16 v1, v24

    if-ne v0, v1, :cond_9

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v24

    const/high16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_9

    .line 438
    const-string v24, "security_category"

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    check-cast v18, Landroid/preference/PreferenceGroup;

    .line 440
    .restart local v18       #securityCategory:Landroid/preference/PreferenceGroup;
    if-eqz v18, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/SecuritySettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    move-object/from16 v24, v0

    if-eqz v24, :cond_9

    .line 441
    const-string v24, "visiblepattern"

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v24

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 446
    .end local v18           #securityCategory:Landroid/preference/PreferenceGroup;
    :cond_9
    const v24, 0x7f060031

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 448
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/android/jrdsettings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v24

    if-nez v24, :cond_15

    .line 464
    const-string v24, "sim_lock"

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v24

    if-eqz v24, :cond_a

    .line 465
    const-string v24, "sim_lock_pref"

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    .line 466
    .local v20, simLockPref:Landroid/preference/Preference;
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/mediatek/telephony/SimInfoManager;->getInsertedSimInfoList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v19

    .line 468
    .local v19, simList:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;>;"
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v11

    .line 469
    .local v11, nSimNum:I
    if-nez v11, :cond_a

    .line 470
    const-string v24, "SecuritySettings"

    const-string v25, "No sim found"

    invoke-static/range {v24 .. v25}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    const/16 v24, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 478
    .end local v11           #nSimNum:I
    .end local v19           #simList:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;>;"
    .end local v20           #simLockPref:Landroid/preference/Preference;
    :cond_a
    :goto_8
    const-string v24, "show_password"

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v24

    check-cast v24, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/jrdsettings/SecuritySettings;->mShowPassword:Landroid/preference/CheckBoxPreference;

    .line 481
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/jrdsettings/SecuritySettings;->mIsPrimary:Z

    move/from16 v24, v0

    if-eqz v24, :cond_16

    .line 482
    const-string v24, "reset_credentials"

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/jrdsettings/SecuritySettings;->mResetCredentials:Landroid/preference/Preference;

    .line 487
    :goto_9
    const-string v24, "toggle_install_applications"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v24

    check-cast v24, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/jrdsettings/SecuritySettings;->mToggleAppInstallation:Landroid/preference/CheckBoxPreference;

    .line 489
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/SecuritySettings;->mToggleAppInstallation:Landroid/preference/CheckBoxPreference;

    move-object/from16 v24, v0

    invoke-direct/range {p0 .. p0}, Lcom/android/jrdsettings/SecuritySettings;->isNonMarketAppsAllowed()Z

    move-result v25

    invoke-virtual/range {v24 .. v25}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 492
    const-string v24, "toggle_verify_applications"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v24

    check-cast v24, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/jrdsettings/SecuritySettings;->mToggleVerifyApps:Landroid/preference/CheckBoxPreference;

    .line 493
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/jrdsettings/SecuritySettings;->mIsPrimary:Z

    move/from16 v24, v0

    if-eqz v24, :cond_18

    invoke-direct/range {p0 .. p0}, Lcom/android/jrdsettings/SecuritySettings;->showVerifierSetting()Z

    move-result v24

    if-eqz v24, :cond_18

    .line 494
    invoke-direct/range {p0 .. p0}, Lcom/android/jrdsettings/SecuritySettings;->isVerifierInstalled()Z

    move-result v24

    if-eqz v24, :cond_17

    .line 495
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/SecuritySettings;->mToggleVerifyApps:Landroid/preference/CheckBoxPreference;

    move-object/from16 v24, v0

    invoke-direct/range {p0 .. p0}, Lcom/android/jrdsettings/SecuritySettings;->isVerifyAppsEnabled()Z

    move-result v25

    invoke-virtual/range {v24 .. v25}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 519
    :cond_b
    :goto_a
    const-string v24, "device_admin_category"

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceGroup;

    .line 521
    .local v4, deviceAdminCategory:Landroid/preference/PreferenceGroup;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/SecuritySettings;->mPermCtrlExt:Lcom/mediatek/settings/ext/IPermissionControlExt;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-interface {v0, v4}, Lcom/mediatek/settings/ext/IPermissionControlExt;->addPermSwitchPrf(Landroid/preference/PreferenceGroup;)V

    .line 522
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/SecuritySettings;->mPermCtrlExt:Lcom/mediatek/settings/ext/IPermissionControlExt;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lcom/mediatek/settings/ext/IPermissionControlExt;->enablerResume()V

    .line 526
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v24

    const-string v25, "com.jrdcom.lockscreen"

    const/16 v26, 0x2000

    invoke-virtual/range {v24 .. v26}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 529
    const-string v24, "security_category"

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    check-cast v18, Landroid/preference/PreferenceGroup;

    .line 532
    .restart local v18       #securityCategory:Landroid/preference/PreferenceGroup;
    invoke-virtual/range {v17 .. v18}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 537
    .end local v18           #securityCategory:Landroid/preference/PreferenceGroup;
    :goto_b
    return-object v17

    .line 269
    .end local v4           #deviceAdminCategory:Landroid/preference/PreferenceGroup;
    .end local v5           #dpm:Landroid/app/admin/DevicePolicyManager;
    .end local v8           #isHideEncrypt:Z
    .end local v9           #isShowOwnerInfo:Z
    .restart local v10       #mUm:Landroid/os/UserManager;
    .restart local v23       #users:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_c
    const/16 v21, 0x0

    goto/16 :goto_0

    .line 274
    .restart local v21       #singleUser:Z
    :cond_d
    const v16, 0x7f06002d

    goto/16 :goto_1

    .line 276
    .end local v10           #mUm:Landroid/os/UserManager;
    .end local v21           #singleUser:Z
    .end local v23           #users:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/widget/LockPatternUtils;->usingBiometricWeak()Z

    move-result v24

    if-eqz v24, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/widget/LockPatternUtils;->isBiometricWeakInstalled()Z

    move-result v24

    if-eqz v24, :cond_f

    .line 278
    const v16, 0x7f06002c

    goto/16 :goto_1

    .line 279
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/widget/LockPatternUtils;->usingVoiceWeak()Z

    move-result v24

    if-eqz v24, :cond_10

    .line 280
    const v16, 0x7f060039

    goto/16 :goto_1

    .line 282
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v24

    sparse-switch v24, :sswitch_data_0

    goto/16 :goto_1

    .line 284
    :sswitch_0
    const v16, 0x7f060033

    .line 285
    goto/16 :goto_1

    .line 287
    :sswitch_1
    const v16, 0x7f060035

    .line 288
    goto/16 :goto_1

    .line 292
    :sswitch_2
    const v16, 0x7f060032

    goto/16 :goto_1

    .line 319
    .restart local v9       #isShowOwnerInfo:Z
    :cond_11
    const/16 v24, 0x0

    goto/16 :goto_2

    .line 340
    .restart local v5       #dpm:Landroid/app/admin/DevicePolicyManager;
    .restart local v8       #isHideEncrypt:Z
    :pswitch_1
    const v24, 0x7f06002e

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    goto/16 :goto_3

    .line 344
    :pswitch_2
    const v24, 0x7f060038

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    goto/16 :goto_3

    .line 356
    .restart local v2       #appInfo:Landroid/content/pm/ApplicationInfo;
    .restart local v14       #pm:Landroid/content/pm/PackageManager;
    :cond_12
    const/4 v7, 0x0

    goto/16 :goto_4

    .line 376
    .end local v2           #appInfo:Landroid/content/pm/ApplicationInfo;
    .end local v14           #pm:Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v6

    .line 377
    .local v6, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v24, "SecuritySettings"

    const-string v25, "com.jrdcom.guestmode is not installed"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 398
    .end local v6           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v3       #db:Lcom/android/jrdsettings/remotesecurity/logic/RSDBHelper;
    :cond_13
    const/16 v22, 0x0

    goto/16 :goto_6

    .line 409
    .restart local v14       #pm:Landroid/content/pm/PackageManager;
    .restart local v15       #receiver:Landroid/content/ComponentName;
    .restart local v22       #state:Z
    :cond_14
    const/16 v24, 0x2

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v14, v15, v0, v1}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    goto/16 :goto_7

    .line 475
    .end local v3           #db:Lcom/android/jrdsettings/remotesecurity/logic/RSDBHelper;
    .end local v14           #pm:Landroid/content/pm/PackageManager;
    .end local v15           #receiver:Landroid/content/ComponentName;
    .end local v22           #state:Z
    :cond_15
    const-string v24, "sim_lock"

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v24

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_8

    .line 484
    :cond_16
    const-string v24, "credentials_management"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 501
    :cond_17
    const-string v24, "device_admin_category"

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceGroup;

    .line 503
    .restart local v4       #deviceAdminCategory:Landroid/preference/PreferenceGroup;
    if-eqz v4, :cond_b

    .line 504
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/SecuritySettings;->mToggleVerifyApps:Landroid/preference/CheckBoxPreference;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_a

    .line 509
    .end local v4           #deviceAdminCategory:Landroid/preference/PreferenceGroup;
    :cond_18
    const-string v24, "device_admin_category"

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceGroup;

    .line 511
    .restart local v4       #deviceAdminCategory:Landroid/preference/PreferenceGroup;
    if-eqz v4, :cond_19

    .line 512
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/SecuritySettings;->mToggleVerifyApps:Landroid/preference/CheckBoxPreference;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_a

    .line 514
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/SecuritySettings;->mToggleVerifyApps:Landroid/preference/CheckBoxPreference;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_a

    .line 533
    :catch_1
    move-exception v6

    .line 534
    .restart local v6       #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_b

    .line 337
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 282
    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_0
        0x20000 -> :sswitch_1
        0x40000 -> :sswitch_2
        0x50000 -> :sswitch_2
        0x60000 -> :sswitch_2
    .end sparse-switch
.end method

.method private disableUnusableTimeouts(J)V
    .locals 10
    .parameter "maxTimeout"

    .prologue
    .line 696
    iget-object v8, p0, Lcom/android/jrdsettings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 697
    .local v0, entries:[Ljava/lang/CharSequence;
    iget-object v8, p0, Lcom/android/jrdsettings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v7

    .line 698
    .local v7, values:[Ljava/lang/CharSequence;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 699
    .local v2, revisedEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 700
    .local v3, revisedValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v8, v7

    if-ge v1, v8, :cond_1

    .line 701
    aget-object v8, v7, v1

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 702
    .local v4, timeout:J
    cmp-long v8, v4, p1

    if-gtz v8, :cond_0

    .line 703
    aget-object v8, v0, v1

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 704
    aget-object v8, v7, v1

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 700
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 707
    .end local v4           #timeout:J
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    array-length v9, v0

    if-ne v8, v9, :cond_2

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    array-length v9, v7

    if-eq v8, v9, :cond_3

    .line 708
    :cond_2
    iget-object v9, p0, Lcom/android/jrdsettings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v8, v8, [Ljava/lang/CharSequence;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/CharSequence;

    invoke-virtual {v9, v8}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 710
    iget-object v9, p0, Lcom/android/jrdsettings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v8, v8, [Ljava/lang/CharSequence;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/CharSequence;

    invoke-virtual {v9, v8}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 712
    iget-object v8, p0, Lcom/android/jrdsettings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 713
    .local v6, userPreference:I
    int-to-long v8, v6

    cmp-long v8, v8, p1

    if-gtz v8, :cond_3

    .line 714
    iget-object v8, p0, Lcom/android/jrdsettings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 721
    .end local v6           #userPreference:I
    :cond_3
    iget-object v9, p0, Lcom/android/jrdsettings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_4

    const/4 v8, 0x1

    :goto_1
    invoke-virtual {v9, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 722
    return-void

    .line 721
    :cond_4
    const/4 v8, 0x0

    goto :goto_1
.end method

.method private findPreferencePosition(Ljava/lang/CharSequence;Landroid/preference/PreferenceGroup;)Landroid/preference/Preference;
    .locals 7
    .parameter "key"
    .parameter "root"

    .prologue
    .line 795
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 821
    .end local p2
    :goto_0
    return-object p2

    .line 799
    .restart local p2
    :cond_0
    iget v6, p0, Lcom/android/jrdsettings/SecuritySettings;->mUnknownSourcesPosition:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/android/jrdsettings/SecuritySettings;->mUnknownSourcesPosition:I

    .line 801
    invoke-virtual {p2}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v4

    .line 802
    .local v4, preferenceCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v4, :cond_4

    .line 803
    invoke-virtual {p2, v2}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v3

    .line 804
    .local v3, preference:Landroid/preference/Preference;
    invoke-virtual {v3}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 805
    .local v0, curKey:Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move-object p2, v3

    .line 806
    goto :goto_0

    .line 809
    :cond_1
    instance-of v6, v3, Landroid/preference/PreferenceGroup;

    if-eqz v6, :cond_2

    move-object v1, v3

    .line 810
    check-cast v1, Landroid/preference/PreferenceGroup;

    .line 811
    .local v1, group:Landroid/preference/PreferenceGroup;
    invoke-direct {p0, p1, v1}, Lcom/android/jrdsettings/SecuritySettings;->findPreferencePosition(Ljava/lang/CharSequence;Landroid/preference/PreferenceGroup;)Landroid/preference/Preference;

    move-result-object v5

    .line 812
    .local v5, returnedPreference:Landroid/preference/Preference;
    if-eqz v5, :cond_3

    move-object p2, v5

    .line 813
    goto :goto_0

    .line 817
    .end local v1           #group:Landroid/preference/PreferenceGroup;
    .end local v5           #returnedPreference:Landroid/preference/Preference;
    :cond_2
    iget v6, p0, Lcom/android/jrdsettings/SecuritySettings;->mUnknownSourcesPosition:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/android/jrdsettings/SecuritySettings;->mUnknownSourcesPosition:I

    .line 802
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 821
    .end local v0           #curKey:Ljava/lang/String;
    .end local v3           #preference:Landroid/preference/Preference;
    :cond_4
    const/4 p2, 0x0

    goto :goto_0
.end method

.method private isNonMarketAppsAllowed()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 605
    invoke-virtual {p0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "install_non_market_apps"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isRemoteSecurityShow()Z
    .locals 2

    .prologue
    .line 543
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0011

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method private isToggled(Landroid/preference/Preference;)Z
    .locals 1
    .parameter "pref"

    .prologue
    .line 908
    check-cast p1, Landroid/preference/CheckBoxPreference;

    .end local p1
    invoke-virtual {p1}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    return v0
.end method

.method private isVerifierInstalled()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 621
    invoke-virtual {p0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 622
    .local v0, pm:Landroid/content/pm/PackageManager;
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.PACKAGE_NEEDS_VERIFICATION"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 623
    .local v2, verification:Landroid/content/Intent;
    const-string v5, "application/vnd.android.package-archive"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 624
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 625
    invoke-virtual {v0, v2, v4}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 626
    .local v1, receivers:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    :goto_0
    return v3

    :cond_0
    move v3, v4

    goto :goto_0
.end method

.method private isVerifyAppsEnabled()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 616
    invoke-virtual {p0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "package_verifier_enable"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setNonMarketAppsAllowed(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 611
    invoke-virtual {p0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "install_non_market_apps"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 613
    return-void

    .line 611
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setupLockAfterPreference()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const-wide/16 v6, 0x0

    .line 664
    invoke-virtual {p0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "lock_screen_lock_after_timeout"

    const-wide/16 v10, 0x1388

    invoke-static {v8, v9, v10, v11}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    .line 666
    .local v2, currentTimeout:J
    iget-object v8, p0, Lcom/android/jrdsettings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 667
    iget-object v8, p0, Lcom/android/jrdsettings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v8, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 668
    iget-object v8, p0, Lcom/android/jrdsettings/SecuritySettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/jrdsettings/SecuritySettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v0

    .line 669
    .local v0, adminTimeout:J
    :goto_0
    invoke-virtual {p0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "screen_off_timeout"

    invoke-static {v8, v9, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    invoke-static {v12, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    int-to-long v4, v8

    .line 671
    .local v4, displayTimeout:J
    cmp-long v8, v0, v6

    if-lez v8, :cond_0

    .line 675
    sub-long v8, v0, v4

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    invoke-direct {p0, v6, v7}, Lcom/android/jrdsettings/SecuritySettings;->disableUnusableTimeouts(J)V

    .line 677
    :cond_0
    return-void

    .end local v0           #adminTimeout:J
    .end local v4           #displayTimeout:J
    :cond_1
    move-wide v0, v6

    .line 668
    goto :goto_0
.end method

.method private showVerifierSetting()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 630
    invoke-virtual {p0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "verifier_setting_visible"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateLockAfterPreferenceSummary()V
    .locals 13

    .prologue
    .line 681
    invoke-virtual {p0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "lock_screen_lock_after_timeout"

    const-wide/16 v10, 0x1388

    invoke-static {v8, v9, v10, v11}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v1

    .line 683
    .local v1, currentTimeout:J
    iget-object v8, p0, Lcom/android/jrdsettings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v3

    .line 684
    .local v3, entries:[Ljava/lang/CharSequence;
    iget-object v8, p0, Lcom/android/jrdsettings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v7

    .line 685
    .local v7, values:[Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .line 686
    .local v0, best:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    array-length v8, v7

    if-ge v4, v8, :cond_1

    .line 687
    aget-object v8, v7, v4

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 688
    .local v5, timeout:J
    cmp-long v8, v1, v5

    if-ltz v8, :cond_0

    .line 689
    move v0, v4

    .line 686
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 692
    .end local v5           #timeout:J
    :cond_1
    iget-object v8, p0, Lcom/android/jrdsettings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    const v9, 0x7f090340

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aget-object v12, v3, v0

    aput-object v12, v10, v11

    invoke-virtual {p0, v9, v10}, Landroid/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 693
    return-void
.end method

.method private warnAppInstallation()V
    .locals 3

    .prologue
    .line 636
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090585

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09060a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040013

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040009

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/jrdsettings/SecuritySettings;->mWarnInstallApps:Landroid/content/DialogInterface;

    .line 643
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v2, -0x1

    .line 916
    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 917
    const/16 v1, 0x7c

    if-ne p1, v1, :cond_0

    if-ne p2, v2, :cond_0

    .line 919
    invoke-virtual {p0}, Lcom/android/jrdsettings/SecuritySettings;->startBiometricWeakImprove()V

    .line 931
    :goto_0
    return-void

    .line 921
    :cond_0
    const/16 v1, 0x7d

    if-ne p1, v1, :cond_1

    if-ne p2, v2, :cond_1

    .line 923
    iget-object v1, p0, Lcom/android/jrdsettings/SecuritySettings;->mChooseLockSettingsHelper:Lcom/android/jrdsettings/ChooseLockSettingsHelper;

    invoke-virtual {v1}, Lcom/android/jrdsettings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    .line 924
    .local v0, lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->setBiometricWeakLivelinessEnabled(Z)V

    goto :goto_0

    .line 930
    .end local v0           #lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    :cond_1
    invoke-direct {p0}, Lcom/android/jrdsettings/SecuritySettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v1, 0x1

    .line 646
    iget-object v0, p0, Lcom/android/jrdsettings/SecuritySettings;->mWarnInstallApps:Landroid/content/DialogInterface;

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 647
    invoke-direct {p0, v1}, Lcom/android/jrdsettings/SecuritySettings;->setNonMarketAppsAllowed(Z)V

    .line 648
    iget-object v0, p0, Lcom/android/jrdsettings/SecuritySettings;->mToggleAppInstallation:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    .line 649
    iget-object v0, p0, Lcom/android/jrdsettings/SecuritySettings;->mToggleAppInstallation:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 652
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 960
    const-string v0, "SecuritySettings"

    const-string v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 961
    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 962
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->clearScrapViewsIfNeeded()V

    .line 963
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 234
    invoke-super {p0, p1}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 236
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/jrdsettings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 238
    const-string v1, "device_policy"

    invoke-virtual {p0, v1}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    iput-object v1, p0, Lcom/android/jrdsettings/SecuritySettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 240
    new-instance v1, Lcom/android/jrdsettings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/jrdsettings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/android/jrdsettings/SecuritySettings;->mChooseLockSettingsHelper:Lcom/android/jrdsettings/ChooseLockSettingsHelper;

    .line 243
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 244
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.settings.SECURITY_SETTINGS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 245
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/jrdsettings/SecuritySettings;->mScrollToUnknownSources:Z

    .line 247
    :cond_0
    const-string v1, "SecuritySettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "action :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    const-string v1, "SecuritySettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "activity name :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/jrdsettings/Utils;->getPermControlExtPlugin(Landroid/content/Context;)Lcom/mediatek/settings/ext/IPermissionControlExt;

    move-result-object v1

    iput-object v1, p0, Lcom/android/jrdsettings/SecuritySettings;->mPermCtrlExt:Lcom/mediatek/settings/ext/IPermissionControlExt;

    .line 253
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 656
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroy()V

    .line 657
    iget-object v0, p0, Lcom/android/jrdsettings/SecuritySettings;->mWarnInstallApps:Landroid/content/DialogInterface;

    if-eqz v0, :cond_0

    .line 658
    iget-object v0, p0, Lcom/android/jrdsettings/SecuritySettings;->mWarnInstallApps:Landroid/content/DialogInterface;

    invoke-interface {v0}, Landroid/content/DialogInterface;->dismiss()V

    .line 660
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 782
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 783
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/jrdsettings/SecuritySettings;->mSiminfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 784
    iget-object v0, p0, Lcom/android/jrdsettings/SecuritySettings;->mPermCtrlExt:Lcom/mediatek/settings/ext/IPermissionControlExt;

    invoke-interface {v0}, Lcom/mediatek/settings/ext/IPermissionControlExt;->enablerPause()V

    .line 786
    invoke-direct {p0}, Lcom/android/jrdsettings/SecuritySettings;->isRemoteSecurityShow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 788
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/jrdsettings/SecuritySettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 791
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .parameter "preference"
    .parameter "value"

    .prologue
    .line 934
    iget-object v2, p0, Lcom/android/jrdsettings/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_0

    .line 935
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 937
    .local v1, timeout:I
    :try_start_0
    invoke-virtual {p0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lock_screen_lock_after_timeout"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 942
    :goto_0
    invoke-direct {p0}, Lcom/android/jrdsettings/SecuritySettings;->updateLockAfterPreferenceSummary()V

    .line 944
    .end local v1           #timeout:I
    :cond_0
    const/4 v2, 0x1

    return v2

    .line 939
    .restart local v1       #timeout:I
    :catch_0
    move-exception v0

    .line 940
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v2, "SecuritySettings"

    const-string v3, "could not persist lockAfter timeout setting"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 9
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 827
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 829
    .local v2, key:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/jrdsettings/SecuritySettings;->mChooseLockSettingsHelper:Lcom/android/jrdsettings/ChooseLockSettingsHelper;

    invoke-virtual {v6}, Lcom/android/jrdsettings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v3

    .line 830
    .local v3, lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    const-string v6, "unlock_set_or_change"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 831
    const-string v4, "com.android.jrdsettings.ChooseLockGeneric$ChooseLockGenericFragment"

    const/16 v6, 0x7b

    invoke-virtual {p0, p0, v4, v6, v7}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;)Z

    .line 904
    .end local p2
    :cond_0
    :goto_0
    return v5

    .line 833
    .restart local p2
    :cond_1
    const-string v6, "biometric_weak_improve_matching"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 834
    new-instance v0, Lcom/android/jrdsettings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v0, v4, p0}, Lcom/android/jrdsettings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    .line 836
    .local v0, helper:Lcom/android/jrdsettings/ChooseLockSettingsHelper;
    const/16 v4, 0x7c

    invoke-virtual {v0, v4, v7, v7}, Lcom/android/jrdsettings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 842
    invoke-virtual {p0}, Lcom/android/jrdsettings/SecuritySettings;->startBiometricWeakImprove()V

    goto :goto_0

    .line 844
    .end local v0           #helper:Lcom/android/jrdsettings/ChooseLockSettingsHelper;
    :cond_2
    const-string v6, "biometric_weak_liveliness"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 845
    invoke-direct {p0, p2}, Lcom/android/jrdsettings/SecuritySettings;->isToggled(Landroid/preference/Preference;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 846
    invoke-virtual {v3, v5}, Lcom/android/internal/widget/LockPatternUtils;->setBiometricWeakLivelinessEnabled(Z)V

    goto :goto_0

    .line 851
    :cond_3
    iget-object v6, p0, Lcom/android/jrdsettings/SecuritySettings;->mBiometricWeakLiveliness:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v5}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 852
    new-instance v0, Lcom/android/jrdsettings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v0, v6, p0}, Lcom/android/jrdsettings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    .line 854
    .restart local v0       #helper:Lcom/android/jrdsettings/ChooseLockSettingsHelper;
    const/16 v6, 0x7d

    invoke-virtual {v0, v6, v7, v7}, Lcom/android/jrdsettings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 860
    invoke-virtual {v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->setBiometricWeakLivelinessEnabled(Z)V

    .line 861
    iget-object v6, p0, Lcom/android/jrdsettings/SecuritySettings;->mBiometricWeakLiveliness:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v4}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0

    .line 864
    .end local v0           #helper:Lcom/android/jrdsettings/ChooseLockSettingsHelper;
    :cond_4
    const-string v6, "lockenabled"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 865
    invoke-direct {p0, p2}, Lcom/android/jrdsettings/SecuritySettings;->isToggled(Landroid/preference/Preference;)Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->setLockPatternEnabled(Z)V

    goto :goto_0

    .line 866
    :cond_5
    const-string v6, "visiblepattern"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 867
    invoke-direct {p0, p2}, Lcom/android/jrdsettings/SecuritySettings;->isToggled(Landroid/preference/Preference;)Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->setVisiblePatternEnabled(Z)V

    goto :goto_0

    .line 868
    :cond_6
    const-string v6, "power_button_instantly_locks"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 869
    invoke-direct {p0, p2}, Lcom/android/jrdsettings/SecuritySettings;->isToggled(Landroid/preference/Preference;)Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->setPowerButtonInstantlyLocks(Z)V

    goto :goto_0

    .line 870
    :cond_7
    iget-object v6, p0, Lcom/android/jrdsettings/SecuritySettings;->mShowPassword:Landroid/preference/CheckBoxPreference;

    if-ne p2, v6, :cond_9

    .line 871
    invoke-virtual {p0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "show_password"

    iget-object v8, p0, Lcom/android/jrdsettings/SecuritySettings;->mShowPassword:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v8

    if-eqz v8, :cond_8

    move v4, v5

    :cond_8
    invoke-static {v6, v7, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 875
    :cond_9
    const-string v6, "lockscreen_gsensor_settings"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 876
    invoke-virtual {p0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "lockscreen_gsensor"

    check-cast p2, Landroid/preference/CheckBoxPreference;

    .end local p2
    invoke-virtual {p2}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v8

    if-eqz v8, :cond_a

    move v4, v5

    :cond_a
    invoke-static {v6, v7, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 882
    .restart local p2
    :cond_b
    iget-object v6, p0, Lcom/android/jrdsettings/SecuritySettings;->mToggleAppInstallation:Landroid/preference/CheckBoxPreference;

    if-ne p2, v6, :cond_d

    .line 883
    iget-object v6, p0, Lcom/android/jrdsettings/SecuritySettings;->mToggleAppInstallation:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_c

    .line 884
    iget-object v6, p0, Lcom/android/jrdsettings/SecuritySettings;->mToggleAppInstallation:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v4}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 885
    invoke-direct {p0}, Lcom/android/jrdsettings/SecuritySettings;->warnAppInstallation()V

    goto/16 :goto_0

    .line 887
    :cond_c
    invoke-direct {p0, v4}, Lcom/android/jrdsettings/SecuritySettings;->setNonMarketAppsAllowed(Z)V

    goto/16 :goto_0

    .line 889
    :cond_d
    const-string v6, "toggle_verify_applications"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 890
    invoke-virtual {p0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "package_verifier_enable"

    iget-object v8, p0, Lcom/android/jrdsettings/SecuritySettings;->mToggleVerifyApps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v8

    if-eqz v8, :cond_e

    move v4, v5

    :cond_e
    invoke-static {v6, v7, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 892
    :cond_f
    const-string v4, "guestmode_preference"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 893
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 894
    .local v1, in:Landroid/content/Intent;
    const-string v4, "android.jrdcom.guestmode.LOCK_APP"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 895
    const/high16 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 896
    invoke-virtual {p0, v1}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 901
    .end local v1           #in:Landroid/content/Intent;
    :cond_10
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v5

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 726
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 730
    invoke-direct {p0}, Lcom/android/jrdsettings/SecuritySettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    .line 733
    iget-boolean v2, p0, Lcom/android/jrdsettings/SecuritySettings;->mScrollToUnknownSources:Z

    if-eqz v2, :cond_0

    .line 734
    iput-boolean v4, p0, Lcom/android/jrdsettings/SecuritySettings;->mScrollToUnknownSources:Z

    .line 736
    iput v4, p0, Lcom/android/jrdsettings/SecuritySettings;->mUnknownSourcesPosition:I

    .line 737
    const-string v2, "toggle_install_applications"

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-direct {p0, v2, v5}, Lcom/android/jrdsettings/SecuritySettings;->findPreferencePosition(Ljava/lang/CharSequence;Landroid/preference/PreferenceGroup;)Landroid/preference/Preference;

    .line 738
    const-string v2, "SecuritySettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "find position unknown resources: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/jrdsettings/SecuritySettings;->mUnknownSourcesPosition:I

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    iget-object v2, p0, Lcom/android/jrdsettings/SecuritySettings;->mScrollHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/jrdsettings/SecuritySettings;->mScrollRunner:Ljava/lang/Runnable;

    const-wide/16 v6, 0x1f4

    invoke-virtual {v2, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 743
    :cond_0
    iget-object v2, p0, Lcom/android/jrdsettings/SecuritySettings;->mChooseLockSettingsHelper:Lcom/android/jrdsettings/ChooseLockSettingsHelper;

    invoke-virtual {v2}, Lcom/android/jrdsettings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    .line 744
    .local v0, lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    iget-object v2, p0, Lcom/android/jrdsettings/SecuritySettings;->mBiometricWeakLiveliness:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_1

    .line 745
    iget-object v2, p0, Lcom/android/jrdsettings/SecuritySettings;->mBiometricWeakLiveliness:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isBiometricWeakLivelinessEnabled()Z

    move-result v5

    invoke-virtual {v2, v5}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 748
    :cond_1
    iget-object v2, p0, Lcom/android/jrdsettings/SecuritySettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_2

    .line 749
    iget-object v2, p0, Lcom/android/jrdsettings/SecuritySettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isVisiblePatternEnabled()Z

    move-result v5

    invoke-virtual {v2, v5}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 751
    :cond_2
    iget-object v2, p0, Lcom/android/jrdsettings/SecuritySettings;->mPowerButtonInstantlyLocks:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_3

    .line 752
    iget-object v2, p0, Lcom/android/jrdsettings/SecuritySettings;->mPowerButtonInstantlyLocks:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->getPowerButtonInstantlyLocks()Z

    move-result v5

    invoke-virtual {v2, v5}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 755
    :cond_3
    iget-object v2, p0, Lcom/android/jrdsettings/SecuritySettings;->mShowPassword:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_4

    .line 756
    iget-object v5, p0, Lcom/android/jrdsettings/SecuritySettings;->mShowPassword:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v6, "show_password"

    invoke-static {v2, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_7

    move v2, v3

    :goto_0
    invoke-virtual {v5, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 760
    :cond_4
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v2

    invoke-virtual {v2}, Landroid/security/KeyStore;->state()Landroid/security/KeyStore$State;

    move-result-object v1

    .line 761
    .local v1, state:Landroid/security/KeyStore$State;
    const-string v2, "SecuritySettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "KeyStore.State on resume:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    iget-object v2, p0, Lcom/android/jrdsettings/SecuritySettings;->mResetCredentials:Landroid/preference/Preference;

    if-eqz v2, :cond_5

    .line 763
    iget-object v2, p0, Lcom/android/jrdsettings/SecuritySettings;->mResetCredentials:Landroid/preference/Preference;

    sget-object v5, Landroid/security/KeyStore$State;->UNINITIALIZED:Landroid/security/KeyStore$State;

    if-eq v1, v5, :cond_8

    :goto_1
    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 766
    :cond_5
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/jrdsettings/SecuritySettings;->mSiminfoReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.SIM_INFO_UPDATE"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 770
    invoke-direct {p0}, Lcom/android/jrdsettings/SecuritySettings;->isRemoteSecurityShow()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 772
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/jrdsettings/SecuritySettings;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "com.android.jrdsettings.remotesecurity.RS_STATE_CHANGED"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 777
    :cond_6
    return-void

    .end local v1           #state:Landroid/security/KeyStore$State;
    :cond_7
    move v2, v4

    .line 756
    goto :goto_0

    .restart local v1       #state:Landroid/security/KeyStore$State;
    :cond_8
    move v3, v4

    .line 763
    goto :goto_1
.end method

.method public startBiometricWeakImprove()V
    .locals 3

    .prologue
    .line 948
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 949
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.facelock"

    const-string v2, "com.android.facelock.AddToSetup"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 950
    invoke-virtual {p0, v0}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 951
    return-void
.end method
