.class public Lcom/android/jrdsettings/JrdLockSettings;
.super Lcom/android/jrdsettings/SettingsPreferenceFragment;
.source "JrdLockSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final CONFIRM_EXISTING_FOR_BIOMETRIC_WEAK_IMPROVE_REQUEST:I = 0x7c

.field private static final CONFIRM_EXISTING_FOR_BIOMETRIC_WEAK_LIVELINESS_OFF:I = 0x7d

.field private static final CONTACT_STRING:Ljava/lang/String; = "&"

.field private static final KEY_BIOMETRIC_WEAK_IMPROVE_MATCHING:Ljava/lang/String; = "biometric_weak_improve_matching"

.field private static final KEY_BIOMETRIC_WEAK_LIVELINESS:Ljava/lang/String; = "biometric_weak_liveliness"

.field private static final KEY_JRD_LOCKSCREEN_OPTIONS:Ljava/lang/String; = "jrd_lockscreen_options"

.field private static final KEY_LOCK_AFTER_TIMEOUT:Ljava/lang/String; = "lock_after_timeout"

.field private static final KEY_OWNER_INFO_SETTINGS:Ljava/lang/String; = "owner_info_settings"

.field private static final KEY_POWER_INSTANTLY_LOCKS:Ljava/lang/String; = "power_button_instantly_locks"

.field private static final KEY_UNLOCK_SET_OR_CHANGE:Ljava/lang/String; = "unlock_set_or_change"

.field private static final KEY_VISIBLE_PATTERN:Ljava/lang/String; = "visiblepattern"

.field private static final KEY_WALLPAPER:Ljava/lang/String; = "wallpaper"

.field private static final PARSER_STRING_LENGTH_ONE:I = 0x1

.field private static final PARSER_STRING_LENGTH_TWO:I = 0x2

.field private static final PARSER_STRING_LENGTH_ZERO:I = 0x0

.field private static final SET_OR_CHANGE_LOCK_METHOD_REQUEST:I = 0x7b

.field private static final TAG:Ljava/lang/String; = "JrdLockSettings"


# instance fields
.field private mBiometricWeakLiveliness:Landroid/preference/CheckBoxPreference;

.field private mChooseLockSettingsHelper:Lcom/android/jrdsettings/ChooseLockSettingsHelper;

.field mDPM:Landroid/app/admin/DevicePolicyManager;

.field private mLockAfter:Landroid/preference/ListPreference;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mPowerButtonInstantlyLocks:Landroid/preference/CheckBoxPreference;

.field private mSiminfoReceiver:Landroid/content/BroadcastReceiver;

.field private mUnlockPref:Landroid/preference/Preference;

.field private mVisiblePattern:Landroid/preference/CheckBoxPreference;

.field private mWallpaperPref:Landroid/preference/Preference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;-><init>()V

    .line 247
    new-instance v0, Lcom/android/jrdsettings/JrdLockSettings$1;

    invoke-direct {v0, p0}, Lcom/android/jrdsettings/JrdLockSettings$1;-><init>(Lcom/android/jrdsettings/JrdLockSettings;)V

    iput-object v0, p0, Lcom/android/jrdsettings/JrdLockSettings;->mSiminfoReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/jrdsettings/JrdLockSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/jrdsettings/JrdLockSettings;->initUI()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/jrdsettings/JrdLockSettings;)Lcom/android/jrdsettings/ChooseLockSettingsHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/jrdsettings/JrdLockSettings;->mChooseLockSettingsHelper:Lcom/android/jrdsettings/ChooseLockSettingsHelper;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/jrdsettings/JrdLockSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/jrdsettings/JrdLockSettings;->mBiometricWeakLiveliness:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/jrdsettings/JrdLockSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/jrdsettings/JrdLockSettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/jrdsettings/JrdLockSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/jrdsettings/JrdLockSettings;->mPowerButtonInstantlyLocks:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method private disableUnusableTimeouts(J)V
    .locals 10
    .parameter "maxTimeout"

    .prologue
    .line 184
    iget-object v8, p0, Lcom/android/jrdsettings/JrdLockSettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 185
    .local v0, entries:[Ljava/lang/CharSequence;
    iget-object v8, p0, Lcom/android/jrdsettings/JrdLockSettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v7

    .line 186
    .local v7, values:[Ljava/lang/CharSequence;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 187
    .local v2, revisedEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 188
    .local v3, revisedValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v8, v7

    if-ge v1, v8, :cond_1

    .line 189
    aget-object v8, v7, v1

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 190
    .local v4, timeout:J
    cmp-long v8, v4, p1

    if-gtz v8, :cond_0

    .line 191
    aget-object v8, v0, v1

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 192
    aget-object v8, v7, v1

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 188
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 195
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

    .line 196
    :cond_2
    iget-object v9, p0, Lcom/android/jrdsettings/JrdLockSettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v8, v8, [Ljava/lang/CharSequence;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/CharSequence;

    invoke-virtual {v9, v8}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 198
    iget-object v9, p0, Lcom/android/jrdsettings/JrdLockSettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v8, v8, [Ljava/lang/CharSequence;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/CharSequence;

    invoke-virtual {v9, v8}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 200
    iget-object v8, p0, Lcom/android/jrdsettings/JrdLockSettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 201
    .local v6, userPreference:I
    int-to-long v8, v6

    cmp-long v8, v8, p1

    if-gtz v8, :cond_3

    .line 202
    iget-object v8, p0, Lcom/android/jrdsettings/JrdLockSettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 211
    .end local v6           #userPreference:I
    :cond_3
    iget-object v9, p0, Lcom/android/jrdsettings/JrdLockSettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_4

    const/4 v8, 0x1

    :goto_1
    invoke-virtual {v9, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 212
    return-void

    .line 211
    :cond_4
    const/4 v8, 0x0

    goto :goto_1
.end method

.method private displayWallpaperDialog()V
    .locals 17

    .prologue
    .line 375
    new-instance v5, Landroid/content/Intent;

    const-string v14, "android.intent.action.SET_WALLPAPER"

    invoke-direct {v5, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 376
    .local v5, intent:Landroid/content/Intent;
    invoke-virtual/range {p0 .. p0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    .line 377
    .local v10, pm:Landroid/content/pm/PackageManager;
    const/high16 v14, 0x1

    invoke-virtual {v10, v5, v14}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v12

    .line 380
    .local v12, rList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v14, 0x2

    new-array v13, v14, [Ljava/lang/String;

    .line 381
    .local v13, wallpapers:[Ljava/lang/String;
    const/4 v14, 0x2

    new-array v6, v14, [Landroid/content/Intent;

    .line 382
    .local v6, intents:[Landroid/content/Intent;
    const/4 v7, 0x0

    .line 383
    .local v7, j:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v14

    if-ge v3, v14, :cond_3

    .line 384
    invoke-interface {v12, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 386
    .local v4, info:Landroid/content/pm/ResolveInfo;
    iget-object v14, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v14, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 387
    .local v9, packageName:Ljava/lang/String;
    iget-object v14, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v14, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    .line 388
    .local v1, className:Ljava/lang/String;
    const-string v14, "com.jrdcom.launcher.LockScreenWallpaperChooser"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_0

    const-string v14, "com.jrdcom.android.gallery3d"

    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 390
    :cond_0
    new-instance v11, Landroid/content/Intent;

    invoke-direct {v11, v5}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 391
    .local v11, prefIntent:Landroid/content/Intent;
    new-instance v14, Landroid/content/ComponentName;

    iget-object v15, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v15, v15, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-direct {v14, v9, v15}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11, v14}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 393
    aput-object v11, v6, v7

    .line 395
    invoke-virtual {v4, v10}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    .line 396
    .local v8, label:Ljava/lang/CharSequence;
    if-nez v8, :cond_1

    .line 397
    iget-object v14, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v14, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 399
    :cond_1
    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v13, v7

    .line 401
    add-int/lit8 v7, v7, 0x1

    .line 383
    .end local v8           #label:Ljava/lang/CharSequence;
    .end local v11           #prefIntent:Landroid/content/Intent;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 405
    .end local v1           #className:Ljava/lang/String;
    .end local v4           #info:Landroid/content/pm/ResolveInfo;
    .end local v9           #packageName:Ljava/lang/String;
    :cond_3
    new-instance v14, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v15

    invoke-direct {v14, v15}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v15, 0x7f09037f

    invoke-virtual {v14, v15}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v14

    new-instance v15, Lcom/android/jrdsettings/JrdLockSettings$3;

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v6}, Lcom/android/jrdsettings/JrdLockSettings$3;-><init>(Lcom/android/jrdsettings/JrdLockSettings;[Landroid/content/Intent;)V

    invoke-virtual {v14, v13, v15}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v14

    const/high16 v15, 0x104

    new-instance v16, Lcom/android/jrdsettings/JrdLockSettings$2;

    invoke-direct/range {v16 .. v17}, Lcom/android/jrdsettings/JrdLockSettings$2;-><init>(Lcom/android/jrdsettings/JrdLockSettings;)V

    invoke-virtual/range {v14 .. v16}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v14

    invoke-virtual {v14}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 418
    .local v2, dialog:Landroid/app/Dialog;
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 419
    return-void
.end method

.method private initUI()V
    .locals 6

    .prologue
    .line 95
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    .line 96
    .local v3, root:Landroid/preference/PreferenceScreen;
    if-eqz v3, :cond_0

    .line 97
    invoke-virtual {v3}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 99
    :cond_0
    const v4, 0x7f06001f

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 100
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    .line 103
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c000f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 104
    .local v0, isShowOwnerInfo:Z
    if-nez v0, :cond_1

    .line 105
    const-string v4, "owner_info_settings"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceScreen;

    .line 107
    .local v2, owner_options:Landroid/preference/PreferenceScreen;
    if-eqz v2, :cond_1

    .line 108
    invoke-virtual {v3, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 113
    .end local v2           #owner_options:Landroid/preference/PreferenceScreen;
    :cond_1
    const-string v4, "unlock_set_or_change"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/jrdsettings/JrdLockSettings;->mUnlockPref:Landroid/preference/Preference;

    .line 114
    const-string v4, "wallpaper"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/jrdsettings/JrdLockSettings;->mWallpaperPref:Landroid/preference/Preference;

    .line 117
    const-string v4, "biometric_weak_liveliness"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/jrdsettings/JrdLockSettings;->mBiometricWeakLiveliness:Landroid/preference/CheckBoxPreference;

    .line 121
    const-string v4, "visiblepattern"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/jrdsettings/JrdLockSettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    .line 124
    const-string v4, "power_button_instantly_locks"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/jrdsettings/JrdLockSettings;->mPowerButtonInstantlyLocks:Landroid/preference/CheckBoxPreference;

    .line 127
    const-string v4, "lock_after_timeout"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/ListPreference;

    iput-object v4, p0, Lcom/android/jrdsettings/JrdLockSettings;->mLockAfter:Landroid/preference/ListPreference;

    .line 128
    iget-object v4, p0, Lcom/android/jrdsettings/JrdLockSettings;->mLockAfter:Landroid/preference/ListPreference;

    if-eqz v4, :cond_2

    .line 129
    invoke-direct {p0}, Lcom/android/jrdsettings/JrdLockSettings;->setupLockAfterPreference()V

    .line 130
    invoke-direct {p0}, Lcom/android/jrdsettings/JrdLockSettings;->updateLockAfterPreferenceSummary()V

    .line 133
    :cond_2
    iget-object v4, p0, Lcom/android/jrdsettings/JrdLockSettings;->mChooseLockSettingsHelper:Lcom/android/jrdsettings/ChooseLockSettingsHelper;

    invoke-virtual {v4}, Lcom/android/jrdsettings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    .line 134
    .local v1, lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    iget-object v4, p0, Lcom/android/jrdsettings/JrdLockSettings;->mBiometricWeakLiveliness:Landroid/preference/CheckBoxPreference;

    if-eqz v4, :cond_3

    .line 135
    iget-object v4, p0, Lcom/android/jrdsettings/JrdLockSettings;->mBiometricWeakLiveliness:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isBiometricWeakLivelinessEnabled()Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 138
    :cond_3
    iget-object v4, p0, Lcom/android/jrdsettings/JrdLockSettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    if-eqz v4, :cond_4

    .line 139
    iget-object v4, p0, Lcom/android/jrdsettings/JrdLockSettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isVisiblePatternEnabled()Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 141
    :cond_4
    iget-object v4, p0, Lcom/android/jrdsettings/JrdLockSettings;->mPowerButtonInstantlyLocks:Landroid/preference/CheckBoxPreference;

    if-eqz v4, :cond_5

    .line 142
    iget-object v4, p0, Lcom/android/jrdsettings/JrdLockSettings;->mPowerButtonInstantlyLocks:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->getPowerButtonInstantlyLocks()Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 145
    :cond_5
    invoke-direct {p0}, Lcom/android/jrdsettings/JrdLockSettings;->setUnlock()V

    .line 147
    return-void
.end method

.method private isToggled(Landroid/preference/Preference;)Z
    .locals 1
    .parameter "pref"

    .prologue
    .line 370
    check-cast p1, Landroid/preference/CheckBoxPreference;

    .end local p1
    invoke-virtual {p1}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    return v0
.end method

.method private setUnlock()V
    .locals 7

    .prologue
    const/high16 v5, 0x1

    const/4 v2, 0x1

    .line 424
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 425
    .local v1, root:Landroid/preference/PreferenceScreen;
    iget-object v4, p0, Lcom/android/jrdsettings/JrdLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v4

    if-nez v4, :cond_2

    .line 427
    const-string v4, "biometric_weak_improve_matching"

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 428
    const-string v4, "biometric_weak_liveliness"

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 429
    const-string v4, "visiblepattern"

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 430
    const-string v4, "lock_after_timeout"

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 431
    const-string v4, "power_button_instantly_locks"

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 435
    const-string v4, "user"

    invoke-virtual {p0, v4}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 436
    .local v0, mUm:Landroid/os/UserManager;
    invoke-virtual {v0, v2}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v3

    .line 437
    .local v3, users:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ne v4, v2, :cond_0

    .line 439
    .local v2, singleUser:Z
    :goto_0
    if-eqz v2, :cond_1

    iget-object v4, p0, Lcom/android/jrdsettings/JrdLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 440
    iget-object v4, p0, Lcom/android/jrdsettings/JrdLockSettings;->mUnlockPref:Landroid/preference/Preference;

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090375

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 502
    .end local v0           #mUm:Landroid/os/UserManager;
    .end local v2           #singleUser:Z
    .end local v3           #users:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :goto_1
    return-void

    .line 437
    .restart local v0       #mUm:Landroid/os/UserManager;
    .restart local v3       #users:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 443
    .restart local v2       #singleUser:Z
    :cond_1
    iget-object v4, p0, Lcom/android/jrdsettings/JrdLockSettings;->mUnlockPref:Landroid/preference/Preference;

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090376

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 446
    .end local v0           #mUm:Landroid/os/UserManager;
    .end local v2           #singleUser:Z
    .end local v3           #users:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_2
    iget-object v4, p0, Lcom/android/jrdsettings/JrdLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->usingBiometricWeak()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/jrdsettings/JrdLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->isBiometricWeakInstalled()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 449
    iget-object v4, p0, Lcom/android/jrdsettings/JrdLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v4

    if-eq v4, v5, :cond_3

    .line 450
    const-string v4, "visiblepattern"

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 454
    :cond_3
    iget-object v4, p0, Lcom/android/jrdsettings/JrdLockSettings;->mUnlockPref:Landroid/preference/Preference;

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090377

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 456
    :cond_4
    iget-object v4, p0, Lcom/android/jrdsettings/JrdLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->usingVoiceWeak()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 458
    const-string v4, "biometric_weak_improve_matching"

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 459
    const-string v4, "biometric_weak_liveliness"

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 460
    iget-object v4, p0, Lcom/android/jrdsettings/JrdLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v4

    if-eq v4, v5, :cond_5

    .line 461
    const-string v4, "visiblepattern"

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 465
    :cond_5
    iget-object v4, p0, Lcom/android/jrdsettings/JrdLockSettings;->mUnlockPref:Landroid/preference/Preference;

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090171

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 468
    :cond_6
    iget-object v4, p0, Lcom/android/jrdsettings/JrdLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    goto/16 :goto_1

    .line 471
    :sswitch_0
    const-string v4, "biometric_weak_improve_matching"

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 472
    const-string v4, "biometric_weak_liveliness"

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 475
    iget-object v4, p0, Lcom/android/jrdsettings/JrdLockSettings;->mUnlockPref:Landroid/preference/Preference;

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090378

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 480
    :sswitch_1
    const-string v4, "biometric_weak_improve_matching"

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 481
    const-string v4, "biometric_weak_liveliness"

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 482
    const-string v4, "visiblepattern"

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 485
    iget-object v4, p0, Lcom/android/jrdsettings/JrdLockSettings;->mUnlockPref:Landroid/preference/Preference;

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090379

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 492
    :sswitch_2
    const-string v4, "biometric_weak_improve_matching"

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 493
    const-string v4, "biometric_weak_liveliness"

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 494
    const-string v4, "visiblepattern"

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 497
    iget-object v4, p0, Lcom/android/jrdsettings/JrdLockSettings;->mUnlockPref:Landroid/preference/Preference;

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f09037a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 468
    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_0
        0x20000 -> :sswitch_1
        0x40000 -> :sswitch_2
        0x50000 -> :sswitch_2
        0x60000 -> :sswitch_2
    .end sparse-switch
.end method

.method private setupLockAfterPreference()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const-wide/16 v6, 0x0

    .line 151
    invoke-virtual {p0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "lock_screen_lock_after_timeout"

    const-wide/16 v10, 0x1388

    invoke-static {v8, v9, v10, v11}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    .line 153
    .local v2, currentTimeout:J
    iget-object v8, p0, Lcom/android/jrdsettings/JrdLockSettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 154
    iget-object v8, p0, Lcom/android/jrdsettings/JrdLockSettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v8, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 155
    iget-object v8, p0, Lcom/android/jrdsettings/JrdLockSettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/jrdsettings/JrdLockSettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v0

    .line 156
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

    .line 158
    .local v4, displayTimeout:J
    cmp-long v8, v0, v6

    if-lez v8, :cond_0

    .line 163
    sub-long v8, v0, v4

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    invoke-direct {p0, v6, v7}, Lcom/android/jrdsettings/JrdLockSettings;->disableUnusableTimeouts(J)V

    .line 165
    :cond_0
    return-void

    .end local v0           #adminTimeout:J
    .end local v4           #displayTimeout:J
    :cond_1
    move-wide v0, v6

    .line 155
    goto :goto_0
.end method

.method private updateLockAfterPreferenceSummary()V
    .locals 13

    .prologue
    .line 169
    invoke-virtual {p0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "lock_screen_lock_after_timeout"

    const-wide/16 v10, 0x1388

    invoke-static {v8, v9, v10, v11}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v1

    .line 171
    .local v1, currentTimeout:J
    iget-object v8, p0, Lcom/android/jrdsettings/JrdLockSettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v3

    .line 172
    .local v3, entries:[Ljava/lang/CharSequence;
    iget-object v8, p0, Lcom/android/jrdsettings/JrdLockSettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v7

    .line 173
    .local v7, values:[Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .line 174
    .local v0, best:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    array-length v8, v7

    if-ge v4, v8, :cond_1

    .line 175
    aget-object v8, v7, v4

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 176
    .local v5, timeout:J
    cmp-long v8, v1, v5

    if-ltz v8, :cond_0

    .line 177
    move v0, v4

    .line 174
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 180
    .end local v5           #timeout:J
    :cond_1
    iget-object v8, p0, Lcom/android/jrdsettings/JrdLockSettings;->mLockAfter:Landroid/preference/ListPreference;

    const v9, 0x7f090340

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aget-object v12, v3, v0

    aput-object v12, v10, v11

    invoke-virtual {p0, v9, v10}, Landroid/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 181
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

    .line 275
    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 276
    const/16 v1, 0x7c

    if-ne p1, v1, :cond_0

    if-ne p2, v2, :cond_0

    .line 278
    invoke-virtual {p0}, Lcom/android/jrdsettings/JrdLockSettings;->startBiometricWeakImprove()V

    .line 292
    :goto_0
    return-void

    .line 280
    :cond_0
    const/16 v1, 0x7d

    if-ne p1, v1, :cond_1

    if-ne p2, v2, :cond_1

    .line 282
    iget-object v1, p0, Lcom/android/jrdsettings/JrdLockSettings;->mChooseLockSettingsHelper:Lcom/android/jrdsettings/ChooseLockSettingsHelper;

    invoke-virtual {v1}, Lcom/android/jrdsettings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    .line 283
    .local v0, lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->setBiometricWeakLivelinessEnabled(Z)V

    goto :goto_0

    .line 291
    .end local v0           #lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    :cond_1
    invoke-direct {p0}, Lcom/android/jrdsettings/JrdLockSettings;->initUI()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 81
    invoke-super {p0, p1}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 83
    const v0, 0x7f06001f

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 85
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/jrdsettings/JrdLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 88
    new-instance v0, Lcom/android/jrdsettings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/jrdsettings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/jrdsettings/JrdLockSettings;->mChooseLockSettingsHelper:Lcom/android/jrdsettings/ChooseLockSettingsHelper;

    .line 89
    const-string v0, "device_policy"

    invoke-virtual {p0, v0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/jrdsettings/JrdLockSettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 91
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 243
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 244
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/jrdsettings/JrdLockSettings;->mSiminfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 245
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .parameter "preference"
    .parameter "value"

    .prologue
    .line 215
    iget-object v2, p0, Lcom/android/jrdsettings/JrdLockSettings;->mLockAfter:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_0

    .line 216
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 218
    .local v1, timeout:I
    :try_start_0
    invoke-virtual {p0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lock_screen_lock_after_timeout"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 223
    :goto_0
    invoke-direct {p0}, Lcom/android/jrdsettings/JrdLockSettings;->updateLockAfterPreferenceSummary()V

    .line 225
    .end local v1           #timeout:I
    :cond_0
    const/4 v2, 0x1

    return v2

    .line 220
    .restart local v1       #timeout:I
    :catch_0
    move-exception v0

    .line 221
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v2, "SecuritySettings"

    const-string v3, "could not persist lockAfter timeout setting"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 8
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x1

    const/4 v7, 0x0

    .line 304
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 305
    .local v2, key:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/jrdsettings/JrdLockSettings;->mChooseLockSettingsHelper:Lcom/android/jrdsettings/ChooseLockSettingsHelper;

    invoke-virtual {v5}, Lcom/android/jrdsettings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v3

    .line 306
    .local v3, lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    const-string v5, "unlock_set_or_change"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 307
    const-string v5, "com.android.jrdsettings.ChooseLockGeneric$ChooseLockGenericFragment"

    const/16 v6, 0x7b

    invoke-virtual {p0, p0, v5, v6, v7}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;)Z

    .line 365
    :cond_0
    :goto_0
    return v4

    .line 310
    :cond_1
    const-string v5, "jrd_lockscreen_options"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 311
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 312
    .local v1, intent:Landroid/content/Intent;
    const-string v5, "com.jrdcom.lockscreen"

    const-string v6, "com.jrdcom.lockscreen.JrdLockOptionsActivity"

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 314
    invoke-virtual {p0, v1}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 315
    .end local v1           #intent:Landroid/content/Intent;
    :cond_2
    const-string v5, "wallpaper"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 316
    invoke-direct {p0}, Lcom/android/jrdsettings/JrdLockSettings;->displayWallpaperDialog()V

    goto :goto_0

    .line 318
    :cond_3
    const-string v5, "biometric_weak_improve_matching"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 319
    new-instance v0, Lcom/android/jrdsettings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v0, v5, p0}, Lcom/android/jrdsettings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    .line 321
    .local v0, helper:Lcom/android/jrdsettings/ChooseLockSettingsHelper;
    const/16 v5, 0x7c

    invoke-virtual {v0, v5, v7, v7}, Lcom/android/jrdsettings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 330
    invoke-virtual {p0}, Lcom/android/jrdsettings/JrdLockSettings;->startBiometricWeakImprove()V

    goto :goto_0

    .line 332
    .end local v0           #helper:Lcom/android/jrdsettings/ChooseLockSettingsHelper;
    :cond_4
    const-string v5, "biometric_weak_liveliness"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 333
    invoke-direct {p0, p2}, Lcom/android/jrdsettings/JrdLockSettings;->isToggled(Landroid/preference/Preference;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 334
    invoke-virtual {v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->setBiometricWeakLivelinessEnabled(Z)V

    goto :goto_0

    .line 341
    :cond_5
    iget-object v5, p0, Lcom/android/jrdsettings/JrdLockSettings;->mBiometricWeakLiveliness:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v4}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 342
    new-instance v0, Lcom/android/jrdsettings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v0, v5, p0}, Lcom/android/jrdsettings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    .line 344
    .restart local v0       #helper:Lcom/android/jrdsettings/ChooseLockSettingsHelper;
    const/16 v5, 0x7d

    invoke-virtual {v0, v5, v7, v7}, Lcom/android/jrdsettings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 353
    invoke-virtual {v3, v6}, Lcom/android/internal/widget/LockPatternUtils;->setBiometricWeakLivelinessEnabled(Z)V

    .line 354
    iget-object v5, p0, Lcom/android/jrdsettings/JrdLockSettings;->mBiometricWeakLiveliness:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v6}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0

    .line 357
    .end local v0           #helper:Lcom/android/jrdsettings/ChooseLockSettingsHelper;
    :cond_6
    const-string v5, "visiblepattern"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 358
    invoke-direct {p0, p2}, Lcom/android/jrdsettings/JrdLockSettings;->isToggled(Landroid/preference/Preference;)Z

    move-result v5

    invoke-virtual {v3, v5}, Lcom/android/internal/widget/LockPatternUtils;->setVisiblePatternEnabled(Z)V

    goto/16 :goto_0

    .line 359
    :cond_7
    const-string v5, "power_button_instantly_locks"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 360
    invoke-direct {p0, p2}, Lcom/android/jrdsettings/JrdLockSettings;->isToggled(Landroid/preference/Preference;)Z

    move-result v5

    invoke-virtual {v3, v5}, Lcom/android/internal/widget/LockPatternUtils;->setPowerButtonInstantlyLocks(Z)V

    goto/16 :goto_0

    .line 363
    :cond_8
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v4

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 232
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 234
    invoke-direct {p0}, Lcom/android/jrdsettings/JrdLockSettings;->initUI()V

    .line 235
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/jrdsettings/JrdLockSettings;->mSiminfoReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.SIM_INFO_UPDATE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 238
    return-void
.end method

.method public parseString(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .parameter "decodeStr"

    .prologue
    const/4 v8, 0x2

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 505
    if-nez p1, :cond_0

    .line 506
    const-string v7, "JrdLockSettings"

    const-string v8, "parseString error as decodeStr is null"

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    const-string v4, ""

    .line 537
    :goto_0
    return-object v4

    .line 509
    :cond_0
    move-object v4, p1

    .line 510
    .local v4, ret:Ljava/lang/String;
    const-string v7, "&"

    invoke-virtual {p1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 511
    .local v6, tokens:[Ljava/lang/String;
    array-length v5, v6

    .line 512
    .local v5, tokenSize:I
    if-le v5, v10, :cond_1

    .line 513
    invoke-virtual {p0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 516
    .local v1, pm:Landroid/content/pm/PackageManager;
    const/4 v7, 0x0

    :try_start_0
    aget-object v7, v6, v7

    invoke-virtual {v1, v7}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 524
    .local v3, resources:Landroid/content/res/Resources;
    const/4 v7, 0x1

    :try_start_1
    aget-object v7, v6, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    .line 529
    .local v2, resId:I
    if-ne v5, v8, :cond_2

    .line 530
    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 536
    .end local v1           #pm:Landroid/content/pm/PackageManager;
    .end local v2           #resId:I
    .end local v3           #resources:Landroid/content/res/Resources;
    :cond_1
    :goto_1
    const-string v7, "JrdLockSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "parseString return string: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 517
    .restart local v1       #pm:Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v0

    .line 518
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v7, "JrdLockSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "parseString can not find pakcage: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v6, v11

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 525
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v3       #resources:Landroid/content/res/Resources;
    :catch_1
    move-exception v0

    .line 526
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v7, "JrdLockSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid format of propery string: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v6, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 532
    .end local v0           #e:Ljava/lang/NumberFormatException;
    .restart local v2       #resId:I
    :cond_2
    new-array v7, v10, [Ljava/lang/Object;

    aget-object v8, v6, v8

    aput-object v8, v7, v11

    invoke-virtual {v3, v2, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1
.end method

.method public startBiometricWeakImprove()V
    .locals 3

    .prologue
    .line 295
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 296
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.facelock"

    const-string v2, "com.android.facelock.AddToSetup"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 297
    invoke-virtual {p0, v0}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 298
    return-void
.end method
