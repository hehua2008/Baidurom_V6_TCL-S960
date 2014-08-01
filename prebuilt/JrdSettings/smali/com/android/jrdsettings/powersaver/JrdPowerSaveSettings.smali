.class public Lcom/android/jrdsettings/powersaver/JrdPowerSaveSettings;
.super Landroid/preference/PreferenceActivity;
.source "JrdPowerSaveSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/jrdsettings/powersaver/JrdPowerSaveSettings$ApplicationPreference;
    }
.end annotation


# static fields
.field private static APPPICKER_RESULT:I = 0x0

.field private static final BACKLIGHT_MAX_VALUE:I = 0xff

.field private static final BACKLIGHT_MIN_VALUE:I = 0x1e

.field private static final FALLBACK_SCREEN_TIMEOUT_VALUE:I = 0x7530

.field public static final KEY_AUTOSYNC_PREFERENCE:Ljava/lang/String; = "jrdtoggle_autosync"

.field public static final KEY_BRIGHTNESS:Ljava/lang/String; = "jrdbrightness"

.field public static final KEY_BT_PREFERENCE:Ljava/lang/String; = "jrdtoggle_bt"

.field public static final KEY_DATATRAFFIC_PREFERENCE:Ljava/lang/String; = "jrdtoggle_datatraffic"

.field public static final KEY_GPS_PREFERENCE:Ljava/lang/String; = "jrdtoggle_gps"

.field public static final KEY_POWSAVER_BRIGHTNESS:Ljava/lang/String; = "jrdpowsaver_brightness"

.field public static final KEY_SCREEN_TIMEOUT:Ljava/lang/String; = "jrdscreen_timeout"

.field public static final KEY_WIFI_PREFERENCE:Ljava/lang/String; = "jrdtoggle_wifi"

.field private static final TAG:Ljava/lang/String; = "JrdPowerSaveSettings"

.field private static hidePackageList:Ljava/util/List;


# instance fields
.field mJrdFileUtils:Landroid/os/JrdFileUtils;

.field mModeDataMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field mPackageManager:Landroid/content/pm/PackageManager;

.field private mScreenPowSaverPreference:Landroid/preference/ListPreference;

.field private mScreenTimeoutPreference:Landroid/preference/ListPreference;

.field private mSharedPreferences:Landroid/content/SharedPreferences;

.field private mSystemMethodImp:Lcom/android/jrdsettings/powersaver/SystemMethodImp;

.field mWhiteList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mWhitelistPreferenceCategory:Landroid/preference/PreferenceCategory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 107
    const/16 v0, 0x101

    sput v0, Lcom/android/jrdsettings/powersaver/JrdPowerSaveSettings;->APPPICKER_RESULT:I

    .line 124
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/jrdsettings/powersaver/JrdPowerSaveSettings;->hidePackageList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 88
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 106
    invoke-static {}, Lcom/android/jrdsettings/powersaver/SystemMethodImp;->getInstance()Lcom/android/jrdsettings/powersaver/SystemMethodImp;

    move-result-object v0

    iput-object v0, p0, Lcom/android/jrdsettings/powersaver/JrdPowerSaveSettings;->mSystemMethodImp:Lcom/android/jrdsettings/powersaver/SystemMethodImp;

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/jrdsettings/powersaver/JrdPowerSaveSettings;->mWhiteList:Ljava/util/ArrayList;

    .line 112
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/jrdsettings/powersaver/JrdPowerSaveSettings;->mModeDataMap:Ljava/util/HashMap;

    .line 623
    return-void
.end method

.method static synthetic access$000(Lcom/android/jrdsettings/powersaver/JrdPowerSaveSettings;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/android/jrdsettings/powersaver/JrdPowerSaveSettings;->getTimoutValue()I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/jrdsettings/powersaver/JrdPowerSaveSettings;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/android/jrdsettings/powersaver/JrdPowerSaveSettings;->getBrightnessValue()I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/jrdsettings/powersaver/JrdPowerSaveSettings;)Landroid/preference/ListPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/jrdsettings/powersaver/JrdPowerSaveSettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/jrdsettings/powersaver/JrdPowerSaveSettings;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/android/jrdsettings/powersaver/JrdPowerSaveSettings;->updateTimeoutPreferenceDescription(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/jrdsettings/powersaver/JrdPowerSaveSettings;)Landroid/preference/ListPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/jrdsettings/powersaver/JrdPowerSaveSettings;->mScreenPowSaverPreference:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/jrdsettings/powersaver/JrdPowerSaveSettings;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/android/jrdsettings/powersaver/JrdPowerSaveSettings;->updateBrightnessPreferenceDescription(I)V

    return-void
.end method

.method private disableUnusableBrightness(Landroid/preference/ListPreference;)V
    .locals 12
    .parameter "BrightnessPreference"

    .prologue
    .line 497
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    const-string v11, "power"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PowerManager;

    .line 498
    .local v4, pm:Landroid/os/PowerManager;
    invoke-virtual {v4}, Landroid/os/PowerManager;->getMaximumScreenBrightnessSetting()I

    move-result v3

    .line 499
    .local v3, mScreenBrightnessMaximum:I
    if-nez v3, :cond_1

    .line 531
    :cond_0
    :goto_0
    return-void

    .line 502
    :cond_1
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 503
    .local v1, entries:[Ljava/lang/CharSequence;
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v9

    .line 504
    .local v9, values:[Ljava/lang/CharSequence;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 505
    .local v5, revisedEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 506
    .local v6, revisedValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    array-length v10, v9

    if-ge v2, v10, :cond_3

    .line 507
    aget-object v10, v9, v2

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 510
    .local v8, value:I
    add-int/lit8 v10, v2, 0x2

    mul-int/lit16 v10, v10, 0xe1

    div-int/lit8 v10, v10, 0xa

    add-int/lit8 v0, v10, 0x1e

    .line 511
    .local v0, brightness:I
    if-gt v0, v3, :cond_2

    .line 512
    aget-object v10, v1, v2

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 513
    aget-object v10, v9, v2

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 506
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 516
    .end local v0           #brightness:I
    .end local v8           #value:I
    :cond_3
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v10

    array-length v11, v1

    if-ne v10, v11, :cond_4

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v10

    array-length v11, v9

    if-eq v10, v11, :cond_0

    .line 517
    :cond_4
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v10

    new-array v10, v10, [Ljava/lang/CharSequence;

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/CharSequence;

    invoke-virtual {p1, v10}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 519
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v10

    new-array v10, v10, [Ljava/lang/CharSequence;

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/CharSequence;

    invoke-virtual {p1, v10}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 521
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 522
    .local v7, userPreference:I
    if-gt v7, v3, :cond_0

    .line 523
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v10}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private disableUnusableTimeouts(Landroid/preference/ListPreference;)V
    .locals 14
    .parameter "screenTimeoutPreference"

    .prologue
    const-wide/16 v11, 0x0

    .line 461
    const-string v13, "device_policy"

    invoke-virtual {p0, v13}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 464
    .local v0, dpm:Landroid/app/admin/DevicePolicyManager;
    if-eqz v0, :cond_0

    const/4 v13, 0x0

    invoke-virtual {v0, v13}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v3

    .line 465
    .local v3, maxTimeout:J
    :goto_0
    cmp-long v11, v3, v11

    if-nez v11, :cond_1

    .line 494
    :goto_1
    return-void

    .end local v3           #maxTimeout:J
    :cond_0
    move-wide v3, v11

    .line 464
    goto :goto_0

    .line 468
    .restart local v3       #maxTimeout:J
    :cond_1
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 469
    .local v1, entries:[Ljava/lang/CharSequence;
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v10

    .line 470
    .local v10, values:[Ljava/lang/CharSequence;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 471
    .local v5, revisedEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 472
    .local v6, revisedValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    array-length v11, v10

    if-ge v2, v11, :cond_3

    .line 473
    aget-object v11, v10, v2

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    .line 474
    .local v7, timeout:J
    cmp-long v11, v7, v3

    if-gtz v11, :cond_2

    .line 475
    aget-object v11, v1, v2

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 476
    aget-object v11, v10, v2

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 472
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 479
    .end local v7           #timeout:J
    :cond_3
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v11

    array-length v12, v1

    if-ne v11, v12, :cond_4

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v11

    array-length v12, v10

    if-eq v11, v12, :cond_5

    .line 480
    :cond_4
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v11

    new-array v11, v11, [Ljava/lang/CharSequence;

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/lang/CharSequence;

    invoke-virtual {p1, v11}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 482
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v11

    new-array v11, v11, [Ljava/lang/CharSequence;

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/lang/CharSequence;

    invoke-virtual {p1, v11}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 484
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 485
    .local v9, userPreference:I
    int-to-long v11, v9

    cmp-long v11, v11, v3

    if-gtz v11, :cond_5

    .line 486
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1, v11}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 493
    .end local v9           #userPreference:I
    :cond_5
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_6

    const/4 v11, 0x1

    :goto_3
    invoke-virtual {p1, v11}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_1

    :cond_6
    const/4 v11, 0x0

    goto :goto_3
.end method

.method private getBrightnessValue()I
    .locals 11

    .prologue
    .line 425
    const/4 v3, 0x0

    .line 427
    .local v3, currentValue:I
    const/4 v7, 0x1

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "power_saving_mode"

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-ne v7, v8, :cond_1

    .line 429
    iget-object v7, p0, Lcom/android/jrdsettings/powersaver/JrdPowerSaveSettings;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v8, "jrdpowsaver_brightness"

    const-string v9, "96"

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 437
    :goto_0
    const-string v7, "JrdPowerSaveSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getBrightnessValue()---currentValue="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    const/4 v0, 0x0

    .line 439
    .local v0, bestMatch:I
    const/4 v1, 0x0

    .line 440
    .local v1, brightness:I
    iget-object v7, p0, Lcom/android/jrdsettings/powersaver/JrdPowerSaveSettings;->mScreenPowSaverPreference:Landroid/preference/ListPreference;

    invoke-virtual {v7}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v6

    .line 441
    .local v6, valuesBrightness:[Ljava/lang/CharSequence;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    array-length v7, v6

    if-ge v5, v7, :cond_0

    .line 442
    aget-object v7, v6, v5

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 445
    add-int/lit8 v7, v5, 0x2

    mul-int/lit16 v7, v7, 0xe1

    div-int/lit8 v7, v7, 0xa

    add-int/lit8 v2, v7, 0x1e

    .line 446
    .local v2, brightnessvalue:I
    if-gt v3, v2, :cond_2

    .line 447
    move v0, v5

    .line 455
    .end local v2           #brightnessvalue:I
    :cond_0
    const-string v7, "JrdPowerSaveSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getBrightnessValue()---bestMatch="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    aget-object v7, v6, v0

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    return v7

    .line 432
    .end local v0           #bestMatch:I
    .end local v1           #brightness:I
    .end local v5           #i:I
    .end local v6           #valuesBrightness:[Ljava/lang/CharSequence;
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "screen_brightness"

    invoke-static {v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    goto :goto_0

    .line 433
    :catch_0
    move-exception v4

    .line 434
    .local v4, e:Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 450
    .end local v4           #e:Landroid/provider/Settings$SettingNotFoundException;
    .restart local v0       #bestMatch:I
    .restart local v1       #brightness:I
    .restart local v2       #brightnessvalue:I
    .restart local v5       #i:I
    .restart local v6       #valuesBrightness:[Ljava/lang/CharSequence;
    :cond_2
    if-le v3, v2, :cond_3

    .line 451
    move v0, v5

    .line 441
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1
.end method

.method private getTimoutValue()I
    .locals 9

    .prologue
    .line 395
    const/4 v1, 0x0

    .line 396
    .local v1, currentValue:I
    const/4 v5, 0x1

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "power_saving_mode"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v5, v6, :cond_0

    .line 398
    iget-object v5, p0, Lcom/android/jrdsettings/powersaver/JrdPowerSaveSettings;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v6, "jrdscreen_timeout"

    const-string v7, "30000"

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 399
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "screen_off_timeout"

    invoke-static {v5, v6, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 404
    :goto_0
    const-string v5, "JrdPowerSaveSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getTimoutValue()---currentValue="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    const/4 v0, 0x0

    .line 406
    .local v0, bestMatch:I
    const/4 v3, 0x0

    .line 407
    .local v3, timeout:I
    iget-object v5, p0, Lcom/android/jrdsettings/powersaver/JrdPowerSaveSettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    invoke-virtual {v5}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v4

    .line 409
    .local v4, valuesTimeout:[Ljava/lang/CharSequence;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    array-length v5, v4

    if-ge v2, v5, :cond_3

    .line 410
    aget-object v5, v4, v2

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 411
    if-ne v1, v3, :cond_1

    .line 420
    .end local v1           #currentValue:I
    :goto_2
    return v1

    .line 401
    .end local v0           #bestMatch:I
    .end local v2           #i:I
    .end local v3           #timeout:I
    .end local v4           #valuesTimeout:[Ljava/lang/CharSequence;
    .restart local v1       #currentValue:I
    :cond_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "screen_off_timeout"

    const/16 v7, 0x7530

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    goto :goto_0

    .line 414
    .restart local v0       #bestMatch:I
    .restart local v2       #i:I
    .restart local v3       #timeout:I
    .restart local v4       #valuesTimeout:[Ljava/lang/CharSequence;
    :cond_1
    if-le v1, v3, :cond_2

    .line 415
    move v0, v2

    .line 409
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 419
    :cond_3
    const-string v5, "JrdPowerSaveSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getTimoutValue()---bestMatch="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    aget-object v5, v4, v0

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_2
.end method

.method private setBrightness(I)V
    .locals 4
    .parameter "brightness"

    .prologue
    .line 378
    :try_start_0
    const-string v2, "power"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v1

    .line 381
    .local v1, power:Landroid/os/IPowerManager;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/os/IPowerManager;->isScreenOn()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 382
    invoke-interface {v1, p1}, Landroid/os/IPowerManager;->setTemporaryScreenBrightnessSettingOverride(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 387
    .end local v1           #power:Landroid/os/IPowerManager;
    :cond_0
    :goto_0
    return-void

    .line 384
    :catch_0
    move-exception v0

    .line 385
    .local v0, doe:Landroid/os/RemoteException;
    const-string v2, "JrdPowerSaveSettings"

    const-string v3, "could not setBrightness"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private updateBrightnessPreferenceDescription(I)V
    .locals 12
    .parameter "currentBrightness"

    .prologue
    const/4 v11, 0x0

    .line 572
    iget-object v5, p0, Lcom/android/jrdsettings/powersaver/JrdPowerSaveSettings;->mScreenPowSaverPreference:Landroid/preference/ListPreference;

    .line 574
    .local v5, preference:Landroid/preference/ListPreference;
    invoke-virtual {v5}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v3

    .line 575
    .local v3, entry:Ljava/lang/CharSequence;
    invoke-virtual {v5}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v2

    .line 576
    .local v2, entries:[Ljava/lang/CharSequence;
    invoke-virtual {v5}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v7

    .line 577
    .local v7, values:[Ljava/lang/CharSequence;
    if-gez p1, :cond_1

    .line 579
    aget-object v8, v2, v11

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 609
    .local v6, summary:Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 610
    return-void

    .line 581
    .end local v6           #summary:Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    .line 583
    .local v0, best:I
    const/4 v8, 0x1

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "power_saving_mode"

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-ne v8, v9, :cond_2

    .line 585
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "jrdpowsaver_brightness"

    invoke-static {v8, v9, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 587
    :cond_2
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    array-length v8, v7

    if-ge v4, v8, :cond_3

    .line 588
    aget-object v8, v7, v4

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 590
    .local v1, brightness:I
    const/4 v8, -0x1

    if-ne v1, v8, :cond_4

    .line 599
    .end local v1           #brightness:I
    :cond_3
    array-length v8, v2

    if-eqz v8, :cond_6

    .line 600
    aget-object v8, v2, v0

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 601
    .restart local v6       #summary:Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 602
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "%"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 594
    .end local v6           #summary:Ljava/lang/String;
    .restart local v1       #brightness:I
    :cond_4
    if-lt p1, v1, :cond_5

    .line 595
    move v0, v4

    .line 587
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 605
    .end local v1           #brightness:I
    :cond_6
    const-string v6, ""

    .restart local v6       #summary:Ljava/lang/String;
    goto :goto_0
.end method

.method private updateTimeoutPreferenceDescription(I)V
    .locals 13
    .parameter "currentTimeout"

    .prologue
    const/4 v10, 0x1

    const/4 v12, 0x0

    .line 534
    iget-object v3, p0, Lcom/android/jrdsettings/powersaver/JrdPowerSaveSettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    .line 536
    .local v3, preference:Landroid/preference/ListPreference;
    if-gez p1, :cond_0

    .line 538
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0904ef

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 568
    .local v4, summary:Ljava/lang/String;
    :goto_0
    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 569
    return-void

    .line 540
    .end local v4           #summary:Ljava/lang/String;
    :cond_0
    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 541
    .local v1, entries:[Ljava/lang/CharSequence;
    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v7

    .line 542
    .local v7, values:[Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .line 544
    .local v0, best:I
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "power_saving_mode"

    invoke-static {v8, v9, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-ne v10, v8, :cond_1

    .line 546
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "jrdscreen_timeout"

    invoke-static {v8, v9, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 548
    :cond_1
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    array-length v8, v7

    if-ge v2, v8, :cond_2

    .line 549
    aget-object v8, v7, v2

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 551
    .local v5, timeout:J
    const-wide/16 v8, -0x1

    cmp-long v8, v5, v8

    if-nez v8, :cond_3

    .line 560
    .end local v5           #timeout:J
    :cond_2
    array-length v8, v1

    if-eqz v8, :cond_5

    .line 561
    invoke-virtual {v3}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f0904ee

    new-array v10, v10, [Ljava/lang/Object;

    aget-object v11, v1, v0

    aput-object v11, v10, v12

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .restart local v4       #summary:Ljava/lang/String;
    goto :goto_0

    .line 555
    .end local v4           #summary:Ljava/lang/String;
    .restart local v5       #timeout:J
    :cond_3
    int-to-long v8, p1

    cmp-long v8, v8, v5

    if-ltz v8, :cond_4

    .line 556
    move v0, v2

    .line 548
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 564
    .end local v5           #timeout:J
    :cond_5
    const-string v4, ""

    .restart local v4       #summary:Ljava/lang/String;
    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 18
    .parameter "savedInstanceState"

    .prologue
    .line 128
    invoke-super/range {p0 .. p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 129
    sget-object v14, Lcom/android/jrdsettings/powersaver/JrdPowerSaveSettings;->hidePackageList:Ljava/util/List;

    const-string v15, "com.android.deskclock"

    invoke-interface {v14, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    sget-object v14, Lcom/android/jrdsettings/powersaver/JrdPowerSaveSettings;->hidePackageList:Ljava/util/List;

    const-string v15, "com.android.calendar"

    invoke-interface {v14, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    sget-object v14, Lcom/android/jrdsettings/powersaver/JrdPowerSaveSettings;->hidePackageList:Ljava/util/List;

    const-string v15, "com.mediatek.bluetooth"

    invoke-interface {v14, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    sget-object v14, Lcom/android/jrdsettings/powersaver/JrdPowerSaveSettings;->hidePackageList:Ljava/util/List;

    const-string v15, "com.android.contacts"

    invoke-interface {v14, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    sget-object v14, Lcom/android/jrdsettings/powersaver/JrdPowerSaveSettings;->hidePackageList:Ljava/util/List;

    const-string v15, "com.android.mms"

    invoke-interface {v14, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    sget-object v14, Lcom/android/jrdsettings/powersaver/JrdPowerSaveSettings;->hidePackageList:Ljava/util/List;

    const-string v15, "com.android.jrdsettings"

    invoke-interface {v14, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    sget-object v14, Lcom/android/jrdsettings/powersaver/JrdPowerSaveSettings;->hidePackageList:Ljava/util/List;

    const-string v15, "com.jrdcom.weather"

    invoke-interface {v14, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    sget-object v14, Lcom/android/jrdsettings/powersaver/JrdPowerSaveSettings;->hidePackageList:Ljava/util/List;

    const-string v15, "com.jrdcom.fota"

    invoke-interface {v14, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    new-instance v14, Landroid/os/JrdFileUtils;

    const-string v15, "/data/system/whitelist"

    invoke-direct {v14, v15}, Landroid/os/JrdFileUtils;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/jrdsettings/powersaver/JrdPowerSaveSettings;->mJrdFileUtils:Landroid/os/JrdFileUtils;

    .line 142
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/jrdsettings/powersaver/JrdPowerSaveSettings;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 147
    const v14, 0x7f09091e

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/app/Activity;->setTitle(I)V

    .line 148
    const v14, 0x7f060028

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    .line 157
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceActivity;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v14

    invoke-virtual {v14}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/jrdsettings/powersaver/JrdPowerSaveSettings;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 162
    const-string v14, "jrdtoggle_autosync"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/SwitchPreference;

    .line 163
    .local v9, tempPreference:Landroid/preference/SwitchPreference;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/jrdsettings/powersaver/JrdPowerSaveSettings;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v15, "jrdtoggle_autosync"

    const/16 v16, 0x1

    invoke-interface/range {v14 .. v16}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v14

    invoke-virtual {v9, v14}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 164
    move-object/from16 v0, p0

    invoke-virtual {v9, v0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 171
    const-string v14, "jrdtoggle_bt"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    .end local v9           #tempPreference:Landroid/preference/SwitchPreference;
    check-cast v9, Landroid/preference/SwitchPreference;

    .line 172
    .restart local v9       #tempPreference:Landroid/preference/SwitchPreference;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/jrdsettings/powersaver/JrdPowerSaveSettings;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v15, "jrdtoggle_bt"

    const/16 v16, 0x1

    invoke-interface/range {v14 .. v16}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v14

    invoke-virtual {v9, v14}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 173
    move-object/from16 v0, p0

    invoke-virtual {v9, v0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 179
    const-string v14, "jrdtoggle_datatraffic"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    .end local v9           #tempPreference:Landroid/preference/SwitchPreference;
    check-cast v9, Landroid/preference/SwitchPreference;

    .line 180
    .restart local v9       #tempPreference:Landroid/preference/SwitchPreference;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/jrdsettings/powersaver/JrdPowerSaveSettings;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v15, "jrdtoggle_datatraffic"

    const/16 v16, 0x0

    invoke-interface/range {v14 .. v16}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v14

    invoke-virtual {v9, v14}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 187
    const-string v14, "jrdtoggle_gps"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    .end local v9           #tempPreference:Landroid/preference/SwitchPreference;
    check-cast v9, Landroid/preference/SwitchPreference;

    .line 188
    .restart local v9       #tempPreference:Landroid/preference/SwitchPreference;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/jrdsettings/powersaver/JrdPowerSaveSettings;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v15, "jrdtoggle_gps"

    const/16 v16, 0x1

    invoke-interface/range {v14 .. v16}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v14

    invoke-virtual {v9, v14}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 189
    move-object/from16 v0, p0

    invoke-virtual {v9, v0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 195
    const-string v14, "jrdtoggle_wifi"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    .end local v9           #tempPreference:Landroid/preference/SwitchPreference;
    check-cast v9, Landroid/preference/SwitchPreference;

    .line 196
    .restart local v9       #tempPreference:Landroid/preference/SwitchPreference;
    move-object/from16 v0, p0

    invoke-virtual {v9, v0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 201
    const-string v14, "whitelist_settings"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    check-cast v14, Landroid/preference/PreferenceCategory;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/jrdsettings/powersaver/JrdPowerSaveSettings;->mWhitelistPreferenceCategory:Landroid/preference/PreferenceCategory;

    .line 203
    const-string v14, "jrdscreen_timeout"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    check-cast v14, Landroid/preference/ListPreference;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/jrdsettings/powersaver/JrdPowerSaveSettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    .line 204
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/jrdsettings/powersaver/JrdPowerSaveSettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    invoke-virtual {v14}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v6

    .line 205
    .local v6, entriesAll:[Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/jrdsettings/powersaver/JrdPowerSaveSettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    invoke-virtual {v14}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v11

    .line 206
    .local v11, valuesAll:[Ljava/lang/CharSequence;
    array-length v14, v6

    const/4 v15, 0x4

    if-le v14, v15, :cond_0

    .line 207
    const/4 v14, 0x4

    new-array v5, v14, [Ljava/lang/CharSequence;

    .line 208
    .local v5, entries:[Ljava/lang/CharSequence;
    const/4 v14, 0x4

    new-array v10, v14, [Ljava/lang/CharSequence;

    .line 209
    .local v10, values:[Ljava/lang/CharSequence;
    const/4 v14, 0x0

    const/4 v15, 0x0

    array-length v0, v5

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-static {v6, v14, v5, v15, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 210
    const/4 v14, 0x0

    const/4 v15, 0x0

    array-length v0, v10

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-static {v11, v14, v10, v15, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 211
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/jrdsettings/powersaver/JrdPowerSaveSettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    invoke-virtual {v14, v5}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 212
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/jrdsettings/powersaver/JrdPowerSaveSettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    invoke-virtual {v14, v10}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 216
    .end local v5           #entries:[Ljava/lang/CharSequence;
    .end local v10           #values:[Ljava/lang/CharSequence;
    :cond_0
    const-string v14, "jrdpowsaver_brightness"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    check-cast v14, Landroid/preference/ListPreference;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/jrdsettings/powersaver/JrdPowerSaveSettings;->mScreenPowSaverPreference:Landroid/preference/ListPreference;

    .line 217
    const/4 v1, 0x0

    .line 219
    .local v1, brightness:I
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "screen_brightness"

    invoke-static {v14, v15}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 223
    :goto_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/jrdsettings/powersaver/JrdPowerSaveSettings;->mScreenPowSaverPreference:Landroid/preference/ListPreference;

    invoke-virtual {v14}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v8

    .line 224
    .local v8, entriesPowSaverBrightness:[Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/jrdsettings/powersaver/JrdPowerSaveSettings;->mScreenPowSaverPreference:Landroid/preference/ListPreference;

    invoke-virtual {v14}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v13

    .line 225
    .local v13, valuesPowSaverBrightness:[Ljava/lang/CharSequence;
    array-length v14, v6

    const/4 v15, 0x5

    if-le v14, v15, :cond_1

    .line 226
    const/4 v14, 0x5

    new-array v7, v14, [Ljava/lang/CharSequence;

    .line 227
    .local v7, entriesPowSaver:[Ljava/lang/CharSequence;
    const/4 v14, 0x5

    new-array v12, v14, [Ljava/lang/CharSequence;

    .line 228
    .local v12, valuesPowSaver:[Ljava/lang/CharSequence;
    const/4 v14, 0x0

    const/4 v15, 0x0

    array-length v0, v7

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-static {v8, v14, v7, v15, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 229
    const/4 v14, 0x0

    const/4 v15, 0x0

    array-length v0, v12

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-static {v13, v14, v12, v15, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 230
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/jrdsettings/powersaver/JrdPowerSaveSettings;->mScreenPowSaverPreference:Landroid/preference/ListPreference;

    invoke-virtual {v14, v7}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 231
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/jrdsettings/powersaver/JrdPowerSaveSettings;->mScreenPowSaverPreference:Landroid/preference/ListPreference;

    invoke-virtual {v14, v12}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 237
    .end local v7           #entriesPowSaver:[Ljava/lang/CharSequence;
    .end local v12           #valuesPowSaver:[Ljava/lang/CharSequence;
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/android/jrdsettings/powersaver/JrdPowerSaveSettings;->getTimoutValue()I

    move-result v3

    .line 238
    .local v3, currentTimeout:I
    const-string v14, "JrdPowerSaveSettings"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "currentTimeout="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    invoke-direct/range {p0 .. p0}, Lcom/android/jrdsettings/powersaver/JrdPowerSaveSettings;->getBrightnessValue()I

    move-result v2

    .line 243
    .local v2, currentBrightness:I
    const/4 v14, 0x1

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string v16, "power_saving_mode"

    const/16 v17, 0x0

    invoke-static/range {v15 .. v17}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v15

    if-ne v14, v15, :cond_2

    .line 246
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/jrdsettings/powersaver/JrdPowerSaveSettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 247
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/jrdsettings/powersaver/JrdPowerSaveSettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 248
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/jrdsettings/powersaver/JrdPowerSaveSettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 249
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/jrdsettings/powersaver/JrdPowerSaveSettings;->mScreenPowSaverPreference:Landroid/preference/ListPreference;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 250
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/jrdsettings/powersaver/JrdPowerSaveSettings;->mScreenPowSaverPreference:Landroid/preference/ListPreference;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 251
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/jrdsettings/powersaver/JrdPowerSaveSettings;->mScreenPowSaverPreference:Landroid/preference/ListPreference;

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 257
    :goto_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/jrdsettings/powersaver/JrdPowerSaveSettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/jrdsettings/powersaver/JrdPowerSaveSettings;->disableUnusableTimeouts(Landroid/preference/ListPreference;)V

    .line 258
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/jrdsettings/powersaver/JrdPowerSaveSettings;->updateTimeoutPreferenceDescription(I)V

    .line 260
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/jrdsettings/powersaver/JrdPowerSaveSettings;->mScreenPowSaverPreference:Landroid/preference/ListPreference;

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/jrdsettings/powersaver/JrdPowerSaveSettings;->disableUnusableBrightness(Landroid/preference/ListPreference;)V

    .line 261
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/jrdsettings/powersaver/JrdPowerSaveSettings;->updateBrightnessPreferenceDescription(I)V

    .line 262
    return-void

    .line 220
    .end local v2           #currentBrightness:I
    .end local v3           #currentTimeout:I
    .end local v8           #entriesPowSaverBrightness:[Ljava/lang/CharSequence;
    .end local v13           #valuesPowSaverBrightness:[Ljava/lang/CharSequence;
    :catch_0
    move-exception v4

    .line 221
    .local v4, e:Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    .line 253
    .end local v4           #e:Landroid/provider/Settings$SettingNotFoundException;
    .restart local v2       #currentBrightness:I
    .restart local v3       #currentTimeout:I
    .restart local v8       #entriesPowSaverBrightness:[Ljava/lang/CharSequence;
    .restart local v13       #valuesPowSaverBrightness:[Ljava/lang/CharSequence;
    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/jrdsettings/powersaver/JrdPowerSaveSettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 254
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/jrdsettings/powersaver/JrdPowerSaveSettings;->mScreenPowSaverPreference:Landroid/preference/ListPreference;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_1
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 615
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 616
    sget-boolean v0, Lcom/android/jrdsettings/powersaver/JrdBatteryService;->mSaverMode:Z

    if-eqz v0, :cond_0

    .line 621
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .parameter "preference"
    .parameter "arg1"

    .prologue
    .line 679
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 680
    .local v1, key:Ljava/lang/String;
    const-string v3, "jrdscreen_timeout"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 681
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 683
    .local v2, value:I
    :try_start_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "screen_off_timeout"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 684
    invoke-direct {p0, v2}, Lcom/android/jrdsettings/powersaver/JrdPowerSaveSettings;->updateTimeoutPreferenceDescription(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 702
    .end local v2           #value:I
    :cond_0
    :goto_0
    const/4 v3, 0x1

    return v3

    .line 685
    .restart local v2       #value:I
    :catch_0
    move-exception v0

    .line 686
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v3, "JrdPowerSaveSettings"

    const-string v4, "could not persist screen timeout setting"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 690
    .end local v0           #e:Ljava/lang/NumberFormatException;
    .end local v2           #value:I
    .restart local p2
    :cond_1
    const-string v3, "jrdpowsaver_brightness"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 691
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 696
    .restart local v2       #value:I
    :try_start_1
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "screen_brightness"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 697
    invoke-direct {p0, v2}, Lcom/android/jrdsettings/powersaver/JrdPowerSaveSettings;->updateBrightnessPreferenceDescription(I)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 698
    :catch_1
    move-exception v0

    .line 699
    .restart local v0       #e:Ljava/lang/NumberFormatException;
    const-string v3, "JrdPowerSaveSettings"

    const-string v4, "could not persist screen timeout setting"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 6
    .parameter "arg0"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 272
    const-string v2, "JrdPowerSaveSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mode="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v3, Lcom/android/jrdsettings/powersaver/JrdBatteryService;->mSaverMode:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " checked"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v1, p1

    check-cast v1, Landroid/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, p1

    .line 273
    check-cast v1, Landroid/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    .line 274
    .local v0, checked:Z
    sget-boolean v1, Lcom/android/jrdsettings/powersaver/JrdBatteryService;->mSaverMode:Z

    if-eqz v1, :cond_0

    .line 275
    if-eqz v0, :cond_4

    .line 276
    const-string v1, "jrdtoggle_bt"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 277
    iget-object v1, p0, Lcom/android/jrdsettings/powersaver/JrdPowerSaveSettings;->mSystemMethodImp:Lcom/android/jrdsettings/powersaver/SystemMethodImp;

    invoke-virtual {v1, v4}, Lcom/android/jrdsettings/powersaver/SystemMethodImp;->setBluetoothEnabled(Z)V

    .line 294
    :cond_0
    :goto_0
    return v5

    .line 278
    :cond_1
    const-string v1, "jrdtoggle_autosync"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 279
    invoke-static {v4}, Landroid/content/ContentResolver;->setMasterSyncAutomatically(Z)V

    goto :goto_0

    .line 281
    :cond_2
    const-string v1, "jrdtoggle_gps"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 282
    iget-object v1, p0, Lcom/android/jrdsettings/powersaver/JrdPowerSaveSettings;->mSystemMethodImp:Lcom/android/jrdsettings/powersaver/SystemMethodImp;

    invoke-virtual {v1, p0, v4}, Lcom/android/jrdsettings/powersaver/SystemMethodImp;->setGpsEnabled(Landroid/content/Context;Z)V

    goto :goto_0

    .line 284
    :cond_3
    const-string v1, "jrdtoggle_wifi"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 285
    iget-object v1, p0, Lcom/android/jrdsettings/powersaver/JrdPowerSaveSettings;->mSystemMethodImp:Lcom/android/jrdsettings/powersaver/SystemMethodImp;

    invoke-virtual {v1, p0, v4}, Lcom/android/jrdsettings/powersaver/SystemMethodImp;->setWifiEnabled(Landroid/content/Context;Z)V

    goto :goto_0

    .line 289
    :cond_4
    const-string v1, "jrdtoggle_autosync"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 290
    invoke-static {v5}, Landroid/content/ContentResolver;->setMasterSyncAutomatically(Z)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 8

    .prologue
    const/16 v6, 0x10

    const/4 v2, 0x1

    const/4 v7, -0x2

    const/4 v3, 0x0

    .line 300
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 328
    new-instance v0, Landroid/widget/Switch;

    invoke-direct {v0, p0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    .line 330
    .local v0, actionBarSwitch:Landroid/widget/Switch;
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080004

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 332
    .local v1, padding:I
    invoke-virtual {v0, v3, v3, v1, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 333
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    invoke-virtual {v4, v6, v6}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 335
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    new-instance v5, Landroid/app/ActionBar$LayoutParams;

    const v6, 0x800015

    invoke-direct {v5, v7, v7, v6}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v4, v0, v5}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 340
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "power_saving_mode"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 343
    new-instance v2, Lcom/android/jrdsettings/powersaver/JrdPowerSaveSettings$1;

    invoke-direct {v2, p0}, Lcom/android/jrdsettings/powersaver/JrdPowerSaveSettings$1;-><init>(Lcom/android/jrdsettings/powersaver/JrdPowerSaveSettings;)V

    invoke-virtual {v0, v2}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 370
    return-void

    :cond_0
    move v2, v3

    .line 340
    goto :goto_0
.end method
