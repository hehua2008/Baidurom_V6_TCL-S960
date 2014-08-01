.class public Lcom/android/jrdsettings/ChooseLockGeneric$ChooseLockGenericFragment;
.super Lcom/android/jrdsettings/SettingsPreferenceFragment;
.source "ChooseLockGeneric.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/jrdsettings/ChooseLockGeneric;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChooseLockGenericFragment"
.end annotation


# static fields
.field private static final ALWAY_SHOW_TUTORIAL:Z = true

.field private static final CONFIRM_CREDENTIALS:Ljava/lang/String; = "confirm_credentials"

.field private static final CONFIRM_EXISTING_REQUEST:I = 0x64

.field private static final FALLBACK_REQUEST:I = 0x65

.field private static final FINISH_PENDING:Ljava/lang/String; = "finish_pending"

.field private static final KEY_UNLOCK_BACKUP_INFO:Ljava/lang/String; = "unlock_backup_info"

.field private static final KEY_UNLOCK_SET_BIOMETRIC_WEAK:Ljava/lang/String; = "unlock_set_biometric_weak"

.field private static final KEY_UNLOCK_SET_NONE:Ljava/lang/String; = "unlock_set_none"

.field private static final KEY_UNLOCK_SET_OFF:Ljava/lang/String; = "unlock_set_off"

.field private static final KEY_UNLOCK_SET_PASSWORD:Ljava/lang/String; = "unlock_set_password"

.field private static final KEY_UNLOCK_SET_PATTERN:Ljava/lang/String; = "unlock_set_pattern"

.field private static final KEY_UNLOCK_SET_PIN:Ljava/lang/String; = "unlock_set_pin"

.field private static final KEY_UNLOCK_SET_VOICE_WEAK:Ljava/lang/String; = "unlock_set_voice_weak"

.field public static final MINIMUM_QUALITY_KEY:Ljava/lang/String; = "minimum_quality"

.field private static final MIN_PASSWORD_LENGTH:I = 0x4

.field private static final PASSWORD_CONFIRMED:Ljava/lang/String; = "password_confirmed"

.field private static final WAITING_FOR_CONFIRMATION:Ljava/lang/String; = "waiting_for_confirmation"


# instance fields
.field private mChooseLockSettingsHelper:Lcom/android/jrdsettings/ChooseLockSettingsHelper;

.field private mDPM:Landroid/app/admin/DevicePolicyManager;

.field private mFinishPending:Z

.field private mKeyStore:Landroid/security/KeyStore;

.field private mPasswordConfirmed:Z

.field private mWaitingForConfirmation:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 61
    invoke-direct {p0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;-><init>()V

    .line 85
    iput-boolean v0, p0, Lcom/android/jrdsettings/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    .line 86
    iput-boolean v0, p0, Lcom/android/jrdsettings/ChooseLockGeneric$ChooseLockGenericFragment;->mWaitingForConfirmation:Z

    .line 87
    iput-boolean v0, p0, Lcom/android/jrdsettings/ChooseLockGeneric$ChooseLockGenericFragment;->mFinishPending:Z

    return-void
.end method

.method private allowedForFallback(Ljava/lang/String;)Z
    .locals 1
    .parameter "key"

    .prologue
    .line 373
    const-string v0, "unlock_backup_info"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "unlock_set_pattern"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "unlock_set_pin"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private disableUnusablePreferences(ILlibcore/util/MutableBoolean;)V
    .locals 15
    .parameter "quality"
    .parameter "allowBiometric"

    .prologue
    .line 314
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 315
    .local v2, entries:Landroid/preference/PreferenceScreen;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-virtual {v12}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v12

    const-string v13, "lockscreen.weak_fallback"

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    .line 317
    .local v6, onlyShowFallback:Z
    iget-object v12, p0, Lcom/android/jrdsettings/ChooseLockGeneric$ChooseLockGenericFragment;->mChooseLockSettingsHelper:Lcom/android/jrdsettings/ChooseLockSettingsHelper;

    invoke-virtual {v12}, Lcom/android/jrdsettings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/internal/widget/LockPatternUtils;->isBiometricWeakInstalled()Z

    move-result v11

    .line 321
    .local v11, weakBiometricAvailable:Z
    const-string v12, "user"

    invoke-virtual {p0, v12}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/UserManager;

    .line 322
    .local v5, mUm:Landroid/os/UserManager;
    const/4 v12, 0x1

    invoke-virtual {v5, v12}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v9

    .line 323
    .local v9, users:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_3

    const/4 v8, 0x1

    .line 325
    .local v8, singleUser:Z
    :goto_0
    invoke-virtual {v2}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v12

    add-int/lit8 v3, v12, -0x1

    .local v3, i:I
    :goto_1
    if-ltz v3, :cond_13

    .line 326
    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v7

    .line 327
    .local v7, pref:Landroid/preference/Preference;
    instance-of v12, v7, Landroid/preference/PreferenceScreen;

    if-eqz v12, :cond_2

    move-object v12, v7

    .line 328
    check-cast v12, Landroid/preference/PreferenceScreen;

    invoke-virtual {v12}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    .line 329
    .local v4, key:Ljava/lang/String;
    const/4 v1, 0x1

    .line 330
    .local v1, enabled:Z
    const/4 v10, 0x1

    .line 331
    .local v10, visible:Z
    const-string v12, "unlock_set_off"

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 332
    if-gtz p1, :cond_4

    const/4 v1, 0x1

    .line 333
    :goto_2
    move v10, v8

    .line 355
    :cond_0
    :goto_3
    if-eqz v10, :cond_1

    if-eqz v6, :cond_12

    invoke-direct {p0, v4}, Lcom/android/jrdsettings/ChooseLockGeneric$ChooseLockGenericFragment;->allowedForFallback(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_12

    .line 356
    :cond_1
    invoke-virtual {v2, v7}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 325
    .end local v1           #enabled:Z
    .end local v4           #key:Ljava/lang/String;
    .end local v10           #visible:Z
    :cond_2
    :goto_4
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 323
    .end local v3           #i:I
    .end local v7           #pref:Landroid/preference/Preference;
    .end local v8           #singleUser:Z
    :cond_3
    const/4 v8, 0x0

    goto :goto_0

    .line 332
    .restart local v1       #enabled:Z
    .restart local v3       #i:I
    .restart local v4       #key:Ljava/lang/String;
    .restart local v7       #pref:Landroid/preference/Preference;
    .restart local v8       #singleUser:Z
    .restart local v10       #visible:Z
    :cond_4
    const/4 v1, 0x0

    goto :goto_2

    .line 334
    :cond_5
    const-string v12, "unlock_set_none"

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 335
    if-gtz p1, :cond_6

    const/4 v1, 0x1

    :goto_5
    goto :goto_3

    :cond_6
    const/4 v1, 0x0

    goto :goto_5

    .line 336
    :cond_7
    const-string v12, "unlock_set_biometric_weak"

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 337
    const v12, 0x8000

    move/from16 v0, p1

    if-le v0, v12, :cond_8

    move-object/from16 v0, p2

    iget-boolean v12, v0, Llibcore/util/MutableBoolean;->value:Z

    if-eqz v12, :cond_9

    :cond_8
    const/4 v1, 0x1

    .line 339
    :goto_6
    move v10, v11

    goto :goto_3

    .line 337
    :cond_9
    const/4 v1, 0x0

    goto :goto_6

    .line 340
    :cond_a
    const-string v12, "unlock_set_voice_weak"

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_c

    .line 341
    const/16 v12, 0x4000

    move/from16 v0, p1

    if-gt v0, v12, :cond_b

    const/4 v1, 0x1

    .line 346
    :goto_7
    const/4 v10, 0x1

    goto :goto_3

    .line 341
    :cond_b
    const/4 v1, 0x0

    goto :goto_7

    .line 348
    :cond_c
    const-string v12, "unlock_set_pattern"

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_e

    .line 349
    const/high16 v12, 0x1

    move/from16 v0, p1

    if-gt v0, v12, :cond_d

    const/4 v1, 0x1

    :goto_8
    goto :goto_3

    :cond_d
    const/4 v1, 0x0

    goto :goto_8

    .line 350
    :cond_e
    const-string v12, "unlock_set_pin"

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_10

    .line 351
    const/high16 v12, 0x2

    move/from16 v0, p1

    if-gt v0, v12, :cond_f

    const/4 v1, 0x1

    :goto_9
    goto :goto_3

    :cond_f
    const/4 v1, 0x0

    goto :goto_9

    .line 352
    :cond_10
    const-string v12, "unlock_set_password"

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 353
    const/high16 v12, 0x6

    move/from16 v0, p1

    if-gt v0, v12, :cond_11

    const/4 v1, 0x1

    :goto_a
    goto/16 :goto_3

    :cond_11
    const/4 v1, 0x0

    goto :goto_a

    .line 357
    :cond_12
    if-nez v1, :cond_2

    .line 358
    const v12, 0x7f090374

    invoke-virtual {v7, v12}, Landroid/preference/Preference;->setSummary(I)V

    .line 359
    const/4 v12, 0x0

    invoke-virtual {v7, v12}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_4

    .line 363
    .end local v1           #enabled:Z
    .end local v4           #key:Ljava/lang/String;
    .end local v7           #pref:Landroid/preference/Preference;
    .end local v10           #visible:Z
    :cond_13
    return-void
.end method

.method private getBiometricSensorIntent()Landroid/content/Intent;
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 379
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-class v6, Lcom/android/jrdsettings/ChooseLockGeneric$InternalActivity;

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 384
    .local v0, fallBackIntent:Landroid/content/Intent;
    const-string v4, "lockscreen.weak_fallback"

    const/4 v5, 0x1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 385
    const-string v4, "lockscreen.weak_fallback_for"

    const-string v5, "face_unlock"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 387
    const-string v4, "confirm_credentials"

    invoke-virtual {v0, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 388
    const-string v4, ":android:show_fragment_title"

    const v5, 0x7f090362

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 391
    const/4 v3, 0x1

    .line 393
    .local v3, showTutorial:Z
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 394
    .local v1, intent:Landroid/content/Intent;
    const-string v4, "com.android.facelock"

    const-string v5, "com.android.facelock.SetupIntro"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 395
    const-string v4, "showTutorial"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 396
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4, v7, v0, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 397
    .local v2, pending:Landroid/app/PendingIntent;
    const-string v4, "PendingIntent"

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 398
    return-object v1
.end method

.method private getVoiceSensorIntent()Landroid/content/Intent;
    .locals 6

    .prologue
    .line 504
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-class v5, Lcom/android/jrdsettings/ChooseLockGeneric;

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 505
    .local v0, fallBackIntent:Landroid/content/Intent;
    const-string v3, "lockscreen.weak_fallback"

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 506
    const-string v3, "lockscreen.weak_fallback_for"

    const-string v4, "voice_unlock"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 507
    const-string v3, "confirm_credentials"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 508
    const-string v3, ":android:show_fragment_title"

    const v4, 0x7f090362

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 511
    const/4 v2, 0x1

    .line 513
    .local v2, showTutorial:Z
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 514
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "com.mediatek.voiceunlock"

    const-string v4, "com.mediatek.voiceunlock.VoiceUnlock"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 515
    return-object v1
.end method

.method private updatePreferencesOrFinish()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 219
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 220
    .local v2, intent:Landroid/content/Intent;
    const-string v5, "lockscreen.password_type"

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 221
    .local v4, quality:I
    if-ne v4, v6, :cond_1

    .line 223
    const-string v5, "minimum_quality"

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 224
    new-instance v0, Llibcore/util/MutableBoolean;

    invoke-direct {v0, v7}, Llibcore/util/MutableBoolean;-><init>(Z)V

    .line 225
    .local v0, allowBiometric:Llibcore/util/MutableBoolean;
    invoke-direct {p0, v4, v0}, Lcom/android/jrdsettings/ChooseLockGeneric$ChooseLockGenericFragment;->upgradeQuality(ILlibcore/util/MutableBoolean;)I

    move-result v4

    .line 226
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    .line 227
    .local v3, prefScreen:Landroid/preference/PreferenceScreen;
    if-eqz v3, :cond_0

    .line 228
    invoke-virtual {v3}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 233
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string v6, "com.jrdcom.lockscreen"

    const/16 v7, 0x2000

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 236
    const v5, 0x7f060020

    invoke-virtual {p0, v5}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 244
    :goto_0
    invoke-direct {p0, v4, v0}, Lcom/android/jrdsettings/ChooseLockGeneric$ChooseLockGenericFragment;->disableUnusablePreferences(ILlibcore/util/MutableBoolean;)V

    .line 248
    .end local v0           #allowBiometric:Llibcore/util/MutableBoolean;
    .end local v3           #prefScreen:Landroid/preference/PreferenceScreen;
    :goto_1
    return-void

    .line 237
    .restart local v0       #allowBiometric:Llibcore/util/MutableBoolean;
    .restart local v3       #prefScreen:Landroid/preference/PreferenceScreen;
    :catch_0
    move-exception v1

    .line 238
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 240
    const v5, 0x7f060034

    invoke-virtual {p0, v5}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    goto :goto_0

    .line 246
    .end local v0           #allowBiometric:Llibcore/util/MutableBoolean;
    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v3           #prefScreen:Landroid/preference/PreferenceScreen;
    :cond_1
    invoke-virtual {p0, v4, v7}, Lcom/android/jrdsettings/ChooseLockGeneric$ChooseLockGenericFragment;->updateUnlockMethodAndFinish(IZ)V

    goto :goto_1
.end method

.method private upgradeQuality(ILlibcore/util/MutableBoolean;)I
    .locals 2
    .parameter "quality"
    .parameter "allowBiometric"

    .prologue
    const v1, 0x8000

    .line 252
    invoke-direct {p0, p1}, Lcom/android/jrdsettings/ChooseLockGeneric$ChooseLockGenericFragment;->upgradeQualityForDPM(I)I

    move-result p1

    .line 253
    invoke-direct {p0, p1}, Lcom/android/jrdsettings/ChooseLockGeneric$ChooseLockGenericFragment;->upgradeQualityForKeyStore(I)I

    move-result p1

    .line 254
    invoke-direct {p0, p1}, Lcom/android/jrdsettings/ChooseLockGeneric$ChooseLockGenericFragment;->upgradeQualityForEncryption(I)I

    move-result v0

    .line 255
    .local v0, encryptionQuality:I
    if-le v0, p1, :cond_0

    .line 258
    if-eqz p2, :cond_3

    .line 259
    if-gt p1, v1, :cond_2

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p2, Llibcore/util/MutableBoolean;->value:Z

    :cond_0
    move p1, v0

    .line 268
    .end local p1
    :cond_1
    :goto_1
    return p1

    .line 259
    .restart local p1
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 261
    :cond_3
    if-eq p1, v1, :cond_1

    const/16 v1, 0x4000

    if-ne p1, v1, :cond_0

    goto :goto_1
.end method

.method private upgradeQualityForDPM(I)I
    .locals 3
    .parameter "quality"

    .prologue
    .line 273
    iget-object v1, p0, Lcom/android/jrdsettings/ChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;)I

    move-result v0

    .line 274
    .local v0, minQuality:I
    if-ge p1, v0, :cond_0

    .line 275
    move p1, v0

    .line 277
    :cond_0
    return p1
.end method

.method private upgradeQualityForEncryption(I)I
    .locals 3
    .parameter "quality"

    .prologue
    .line 288
    iget-object v2, p0, Lcom/android/jrdsettings/ChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v2}, Landroid/app/admin/DevicePolicyManager;->getStorageEncryptionStatus()I

    move-result v1

    .line 289
    .local v1, encryptionStatus:I
    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 291
    .local v0, encrypted:Z
    :goto_0
    if-eqz v0, :cond_1

    .line 292
    const/high16 v2, 0x2

    if-ge p1, v2, :cond_1

    .line 293
    const/high16 p1, 0x2

    .line 296
    :cond_1
    return p1

    .line 289
    .end local v0           #encrypted:Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private upgradeQualityForKeyStore(I)I
    .locals 1
    .parameter "quality"

    .prologue
    .line 300
    iget-object v0, p0, Lcom/android/jrdsettings/ChooseLockGeneric$ChooseLockGenericFragment;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v0}, Landroid/security/KeyStore;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 301
    const/high16 v0, 0x1

    if-ge p1, v0, :cond_0

    .line 302
    const/high16 p1, 0x1

    .line 305
    :cond_0
    return p1
.end method


# virtual methods
.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 496
    const v0, 0x7f09090c

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v1, 0x0

    .line 194
    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 195
    iput-boolean v1, p0, Lcom/android/jrdsettings/ChooseLockGeneric$ChooseLockGenericFragment;->mWaitingForConfirmation:Z

    .line 196
    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 197
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/jrdsettings/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    .line 198
    invoke-direct {p0}, Lcom/android/jrdsettings/ChooseLockGeneric$ChooseLockGenericFragment;->updatePreferencesOrFinish()V

    .line 207
    :goto_0
    return-void

    .line 199
    :cond_0
    const/16 v0, 0x65

    if-ne p1, v0, :cond_1

    .line 200
    iget-object v0, p0, Lcom/android/jrdsettings/ChooseLockGeneric$ChooseLockGenericFragment;->mChooseLockSettingsHelper:Lcom/android/jrdsettings/ChooseLockSettingsHelper;

    invoke-virtual {v0}, Lcom/android/jrdsettings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->deleteTempGallery()V

    .line 201
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/app/Activity;->setResult(I)V

    .line 202
    invoke-virtual {p0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->finish()V

    goto :goto_0

    .line 204
    :cond_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 205
    invoke-virtual {p0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->finish()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x1

    .line 91
    invoke-super {p0, p1}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 93
    const-string v2, "device_policy"

    invoke-virtual {p0, v2}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DevicePolicyManager;

    iput-object v2, p0, Lcom/android/jrdsettings/ChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 94
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v2

    iput-object v2, p0, Lcom/android/jrdsettings/ChooseLockGeneric$ChooseLockGenericFragment;->mKeyStore:Landroid/security/KeyStore;

    .line 95
    new-instance v2, Lcom/android/jrdsettings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/android/jrdsettings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object v2, p0, Lcom/android/jrdsettings/ChooseLockGeneric$ChooseLockGenericFragment;->mChooseLockSettingsHelper:Lcom/android/jrdsettings/ChooseLockSettingsHelper;

    .line 98
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v4, "confirm_credentials"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 102
    .local v0, confirmCredentials:Z
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    instance-of v2, v2, Lcom/android/jrdsettings/ChooseLockGeneric$InternalActivity;

    if-eqz v2, :cond_0

    .line 103
    if-nez v0, :cond_3

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/android/jrdsettings/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    .line 107
    :cond_0
    if-eqz p1, :cond_1

    .line 108
    const-string v2, "password_confirmed"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/jrdsettings/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    .line 109
    const-string v2, "waiting_for_confirmation"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/jrdsettings/ChooseLockGeneric$ChooseLockGenericFragment;->mWaitingForConfirmation:Z

    .line 110
    const-string v2, "finish_pending"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/jrdsettings/ChooseLockGeneric$ChooseLockGenericFragment;->mFinishPending:Z

    .line 113
    :cond_1
    iget-boolean v2, p0, Lcom/android/jrdsettings/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    if-eqz v2, :cond_4

    .line 114
    invoke-direct {p0}, Lcom/android/jrdsettings/ChooseLockGeneric$ChooseLockGenericFragment;->updatePreferencesOrFinish()V

    .line 125
    :cond_2
    :goto_1
    return-void

    .line 103
    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    .line 115
    :cond_4
    iget-boolean v2, p0, Lcom/android/jrdsettings/ChooseLockGeneric$ChooseLockGenericFragment;->mWaitingForConfirmation:Z

    if-nez v2, :cond_2

    .line 116
    new-instance v1, Lcom/android/jrdsettings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lcom/android/jrdsettings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    .line 118
    .local v1, helper:Lcom/android/jrdsettings/ChooseLockSettingsHelper;
    const/16 v2, 0x64

    invoke-virtual {v1, v2, v5, v5}, Lcom/android/jrdsettings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 119
    iput-boolean v3, p0, Lcom/android/jrdsettings/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    .line 120
    invoke-direct {p0}, Lcom/android/jrdsettings/ChooseLockGeneric$ChooseLockGenericFragment;->updatePreferencesOrFinish()V

    goto :goto_1

    .line 122
    :cond_5
    iput-boolean v3, p0, Lcom/android/jrdsettings/ChooseLockGeneric$ChooseLockGenericFragment;->mWaitingForConfirmation:Z

    goto :goto_1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 171
    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v3

    .line 173
    .local v3, v:Landroid/view/View;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "lockscreen.weak_fallback"

    invoke-virtual {v4, v5, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 175
    .local v2, onlyShowFallback:Z
    if-eqz v2, :cond_1

    .line 176
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "lockscreen.weak_fallback_for"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 177
    .local v0, fallBackFor:Ljava/lang/String;
    const/4 v1, 0x0

    .line 178
    .local v1, header:Landroid/view/View;
    const-string v4, "face_unlock"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 179
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0400e0

    invoke-static {v4, v5, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 186
    :cond_0
    :goto_0
    const v4, 0x102000a

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView;

    invoke-virtual {v4, v1, v6, v7}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 189
    .end local v0           #fallBackFor:Ljava/lang/String;
    .end local v1           #header:Landroid/view/View;
    :cond_1
    return-object v3

    .line 181
    .restart local v0       #fallBackFor:Ljava/lang/String;
    .restart local v1       #header:Landroid/view/View;
    :cond_2
    const-string v4, "voice_unlock"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 182
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0400e1

    invoke-static {v4, v5, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v3, 0x0

    .line 139
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 140
    .local v1, key:Ljava/lang/String;
    const/4 v0, 0x1

    .line 141
    .local v0, handled:Z
    const-string v2, "unlock_set_off"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 142
    const/4 v2, 0x1

    invoke-virtual {p0, v3, v2}, Lcom/android/jrdsettings/ChooseLockGeneric$ChooseLockGenericFragment;->updateUnlockMethodAndFinish(IZ)V

    .line 165
    :goto_0
    return v0

    .line 144
    :cond_0
    const-string v2, "unlock_set_none"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 145
    invoke-virtual {p0, v3, v3}, Lcom/android/jrdsettings/ChooseLockGeneric$ChooseLockGenericFragment;->updateUnlockMethodAndFinish(IZ)V

    goto :goto_0

    .line 147
    :cond_1
    const-string v2, "unlock_set_biometric_weak"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 148
    const v2, 0x8000

    invoke-virtual {p0, v2, v3}, Lcom/android/jrdsettings/ChooseLockGeneric$ChooseLockGenericFragment;->updateUnlockMethodAndFinish(IZ)V

    goto :goto_0

    .line 150
    :cond_2
    const-string v2, "unlock_set_voice_weak"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 151
    const/16 v2, 0x4000

    invoke-virtual {p0, v2, v3}, Lcom/android/jrdsettings/ChooseLockGeneric$ChooseLockGenericFragment;->updateUnlockMethodAndFinish(IZ)V

    goto :goto_0

    .line 153
    :cond_3
    const-string v2, "unlock_set_pattern"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 154
    const/high16 v2, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/android/jrdsettings/ChooseLockGeneric$ChooseLockGenericFragment;->updateUnlockMethodAndFinish(IZ)V

    goto :goto_0

    .line 156
    :cond_4
    const-string v2, "unlock_set_pin"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 157
    const/high16 v2, 0x2

    invoke-virtual {p0, v2, v3}, Lcom/android/jrdsettings/ChooseLockGeneric$ChooseLockGenericFragment;->updateUnlockMethodAndFinish(IZ)V

    goto :goto_0

    .line 159
    :cond_5
    const-string v2, "unlock_set_password"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 160
    const/high16 v2, 0x4

    invoke-virtual {p0, v2, v3}, Lcom/android/jrdsettings/ChooseLockGeneric$ChooseLockGenericFragment;->updateUnlockMethodAndFinish(IZ)V

    goto :goto_0

    .line 163
    :cond_6
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 129
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 130
    iget-boolean v0, p0, Lcom/android/jrdsettings/ChooseLockGeneric$ChooseLockGenericFragment;->mFinishPending:Z

    if-eqz v0, :cond_0

    .line 131
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/jrdsettings/ChooseLockGeneric$ChooseLockGenericFragment;->mFinishPending:Z

    .line 132
    invoke-virtual {p0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->finish()V

    .line 134
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 211
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 213
    const-string v0, "password_confirmed"

    iget-boolean v1, p0, Lcom/android/jrdsettings/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 214
    const-string v0, "waiting_for_confirmation"

    iget-boolean v1, p0, Lcom/android/jrdsettings/ChooseLockGeneric$ChooseLockGenericFragment;->mWaitingForConfirmation:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 215
    const-string v0, "finish_pending"

    iget-boolean v1, p0, Lcom/android/jrdsettings/ChooseLockGeneric$ChooseLockGenericFragment;->mFinishPending:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 216
    return-void
.end method

.method updateUnlockMethodAndFinish(IZ)V
    .locals 10
    .parameter "quality"
    .parameter "disabled"

    .prologue
    .line 412
    iget-boolean v7, p0, Lcom/android/jrdsettings/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    if-nez v7, :cond_0

    .line 413
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string v8, "Tried to update password without confirming it"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 416
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "lockscreen.weak_fallback"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 419
    .local v3, isFallback:Z
    const/4 v7, 0x0

    invoke-direct {p0, p1, v7}, Lcom/android/jrdsettings/ChooseLockGeneric$ChooseLockGenericFragment;->upgradeQuality(ILlibcore/util/MutableBoolean;)I

    move-result p1

    .line 421
    const/high16 v7, 0x2

    if-lt p1, v7, :cond_3

    .line 422
    iget-object v7, p0, Lcom/android/jrdsettings/ChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLength(Landroid/content/ComponentName;)I

    move-result v6

    .line 423
    .local v6, minLength:I
    const/4 v7, 0x4

    if-ge v6, v7, :cond_1

    .line 424
    const/4 v6, 0x4

    .line 426
    :cond_1
    iget-object v7, p0, Lcom/android/jrdsettings/ChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v7, p1}, Landroid/app/admin/DevicePolicyManager;->getPasswordMaximumLength(I)I

    move-result v5

    .line 427
    .local v5, maxLength:I
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const-class v9, Lcom/android/jrdsettings/ChooseLockPassword;

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v2

    .line 428
    .local v2, intent:Landroid/content/Intent;
    const-string v7, "lockscreen.password_type"

    invoke-virtual {v2, v7, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 429
    const-string v7, "lockscreen.password_min"

    invoke-virtual {v2, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 430
    const-string v7, "lockscreen.password_max"

    invoke-virtual {v2, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 431
    const-string v7, "confirm_credentials"

    const/4 v8, 0x0

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 432
    const-string v7, "lockscreen.weak_fallback"

    invoke-virtual {v2, v7, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 433
    if-eqz v3, :cond_2

    .line 435
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "lockscreen.weak_fallback_for"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 436
    .local v4, isFallbackFor:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "settings_command_key"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 438
    .local v0, commandKey:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "settings_command_value"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 440
    .local v1, commandValue:Ljava/lang/String;
    const-string v7, "settings_command_key"

    invoke-virtual {v2, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 441
    const-string v7, "settings_command_value"

    invoke-virtual {v2, v7, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 442
    const-string v7, "lockscreen.weak_fallback_for"

    invoke-virtual {v2, v7, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 444
    const/16 v7, 0x65

    invoke-virtual {p0, v2, v7}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 492
    .end local v0           #commandKey:Ljava/lang/String;
    .end local v1           #commandValue:Ljava/lang/String;
    .end local v2           #intent:Landroid/content/Intent;
    .end local v4           #isFallbackFor:Ljava/lang/String;
    .end local v5           #maxLength:I
    .end local v6           #minLength:I
    :goto_0
    return-void

    .line 447
    .restart local v2       #intent:Landroid/content/Intent;
    .restart local v5       #maxLength:I
    .restart local v6       #minLength:I
    :cond_2
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/jrdsettings/ChooseLockGeneric$ChooseLockGenericFragment;->mFinishPending:Z

    .line 448
    const/high16 v7, 0x200

    invoke-virtual {v2, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 449
    invoke-virtual {p0, v2}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 451
    .end local v2           #intent:Landroid/content/Intent;
    .end local v5           #maxLength:I
    .end local v6           #minLength:I
    :cond_3
    const/high16 v7, 0x1

    if-ne p1, v7, :cond_5

    .line 452
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const-class v8, Lcom/android/jrdsettings/ChooseLockPattern;

    invoke-direct {v2, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 453
    .restart local v2       #intent:Landroid/content/Intent;
    const-string v7, "key_lock_method"

    const-string v8, "pattern"

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 454
    const-string v7, "confirm_credentials"

    const/4 v8, 0x0

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 455
    const-string v7, "lockscreen.weak_fallback"

    invoke-virtual {v2, v7, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 457
    if-eqz v3, :cond_4

    .line 459
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "lockscreen.weak_fallback_for"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 461
    .restart local v4       #isFallbackFor:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "settings_command_key"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 463
    .restart local v0       #commandKey:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "settings_command_value"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 465
    .restart local v1       #commandValue:Ljava/lang/String;
    const-string v7, "settings_command_key"

    invoke-virtual {v2, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 466
    const-string v7, "settings_command_value"

    invoke-virtual {v2, v7, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 467
    const-string v7, "lockscreen.weak_fallback_for"

    invoke-virtual {v2, v7, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 469
    const/16 v7, 0x65

    invoke-virtual {p0, v2, v7}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 472
    .end local v0           #commandKey:Ljava/lang/String;
    .end local v1           #commandValue:Ljava/lang/String;
    .end local v4           #isFallbackFor:Ljava/lang/String;
    :cond_4
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/jrdsettings/ChooseLockGeneric$ChooseLockGenericFragment;->mFinishPending:Z

    .line 473
    const/high16 v7, 0x200

    invoke-virtual {v2, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 474
    invoke-virtual {p0, v2}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 476
    .end local v2           #intent:Landroid/content/Intent;
    :cond_5
    const v7, 0x8000

    if-ne p1, v7, :cond_6

    .line 477
    invoke-direct {p0}, Lcom/android/jrdsettings/ChooseLockGeneric$ChooseLockGenericFragment;->getBiometricSensorIntent()Landroid/content/Intent;

    move-result-object v2

    .line 478
    .restart local v2       #intent:Landroid/content/Intent;
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/jrdsettings/ChooseLockGeneric$ChooseLockGenericFragment;->mFinishPending:Z

    .line 479
    invoke-virtual {p0, v2}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 480
    .end local v2           #intent:Landroid/content/Intent;
    :cond_6
    const/16 v7, 0x4000

    if-ne p1, v7, :cond_7

    .line 481
    invoke-direct {p0}, Lcom/android/jrdsettings/ChooseLockGeneric$ChooseLockGenericFragment;->getVoiceSensorIntent()Landroid/content/Intent;

    move-result-object v2

    .line 482
    .restart local v2       #intent:Landroid/content/Intent;
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/jrdsettings/ChooseLockGeneric$ChooseLockGenericFragment;->mFinishPending:Z

    .line 483
    invoke-virtual {p0, v2}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 484
    .end local v2           #intent:Landroid/content/Intent;
    :cond_7
    if-nez p1, :cond_8

    .line 485
    iget-object v7, p0, Lcom/android/jrdsettings/ChooseLockGeneric$ChooseLockGenericFragment;->mChooseLockSettingsHelper:Lcom/android/jrdsettings/ChooseLockSettingsHelper;

    invoke-virtual {v7}, Lcom/android/jrdsettings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/android/internal/widget/LockPatternUtils;->clearLock(Z)V

    .line 486
    iget-object v7, p0, Lcom/android/jrdsettings/ChooseLockGeneric$ChooseLockGenericFragment;->mChooseLockSettingsHelper:Lcom/android/jrdsettings/ChooseLockSettingsHelper;

    invoke-virtual {v7}, Lcom/android/jrdsettings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v7

    invoke-virtual {v7, p2}, Lcom/android/internal/widget/LockPatternUtils;->setLockScreenDisabled(Z)V

    .line 487
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const/4 v8, -0x1

    invoke-virtual {v7, v8}, Landroid/app/Activity;->setResult(I)V

    .line 488
    invoke-virtual {p0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->finish()V

    goto/16 :goto_0

    .line 490
    :cond_8
    invoke-virtual {p0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->finish()V

    goto/16 :goto_0
.end method
