.class public Lcom/android/jrdsettings/JrdBrightnessPreference;
.super Landroid/preference/Preference;
.source "JrdBrightnessPreference.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# static fields
.field private static final AUTOMATIC_ECO_MODE:I = 0x2

.field private static final BRIGHTNESS_MODE_MANUAL:I

.field private static final USE_SCREEN_AUTO_BRIGHTNESS_ADJUSTMENT:Z


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mAutoBackLightLayout:Landroid/widget/LinearLayout;

.field private mAutoBacklightCheckBox:Landroid/widget/CheckBox;

.field private mAutoBacklightTitle:Landroid/widget/TextView;

.field private mAutoBackligthSummary:Landroid/widget/TextView;

.field private mAutomaticAvailable:Z

.field private mAutomaticEcoMode:Z

.field private mAutomaticMode:Z

.field private mBrightnessEcoModeObserver:Landroid/database/ContentObserver;

.field private mBrightnessLayout:Landroid/widget/LinearLayout;

.field private mBrightnessModeObserver:Landroid/database/ContentObserver;

.field private mBrightnessObserver:Landroid/database/ContentObserver;

.field private mCheckBox:Landroid/widget/CheckBox;

.field private mEcoFirstLaunch:Z

.field private mEcoModeChangeOut:Z

.field private mEcoModeChangeSelf:Z

.field private mFirstLaunch:Z

.field private mModeChangeOut:Z

.field private mModeChangeSelf:Z

.field private mOldAutomatic:I

.field private mOldAutomaticEco:I

.field private mOldBrightness:I

.field private mPSChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mPersist:Z

.field private final mScreenBrightnessMaximum:I

.field private final mScreenBrightnessMinimum:I

.field private mSeekBar:Landroid/widget/SeekBar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    invoke-static {}, Landroid/os/PowerManager;->useScreenAutoBrightnessAdjustmentFeature()Z

    move-result v0

    sput-boolean v0, Lcom/android/jrdsettings/JrdBrightnessPreference;->USE_SCREEN_AUTO_BRIGHTNESS_ADJUSTMENT:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 131
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 66
    const-string v6, "JrdBrightnessPreference"

    iput-object v6, p0, Lcom/android/jrdsettings/JrdBrightnessPreference;->TAG:Ljava/lang/String;

    .line 74
    iput-boolean v4, p0, Lcom/android/jrdsettings/JrdBrightnessPreference;->mAutomaticAvailable:Z

    .line 85
    iput-boolean v5, p0, Lcom/android/jrdsettings/JrdBrightnessPreference;->mEcoModeChangeOut:Z

    .line 86
    iput-boolean v5, p0, Lcom/android/jrdsettings/JrdBrightnessPreference;->mEcoModeChangeSelf:Z

    .line 87
    iput-boolean v5, p0, Lcom/android/jrdsettings/JrdBrightnessPreference;->mEcoFirstLaunch:Z

    .line 94
    iput-boolean v5, p0, Lcom/android/jrdsettings/JrdBrightnessPreference;->mModeChangeOut:Z

    .line 96
    iput-boolean v5, p0, Lcom/android/jrdsettings/JrdBrightnessPreference;->mModeChangeSelf:Z

    .line 97
    iput-boolean v5, p0, Lcom/android/jrdsettings/JrdBrightnessPreference;->mFirstLaunch:Z

    .line 99
    iput-boolean v5, p0, Lcom/android/jrdsettings/JrdBrightnessPreference;->mPersist:Z

    .line 106
    new-instance v6, Lcom/android/jrdsettings/JrdBrightnessPreference$1;

    new-instance v7, Landroid/os/Handler;

    invoke-direct {v7}, Landroid/os/Handler;-><init>()V

    invoke-direct {v6, p0, v7}, Lcom/android/jrdsettings/JrdBrightnessPreference$1;-><init>(Lcom/android/jrdsettings/JrdBrightnessPreference;Landroid/os/Handler;)V

    iput-object v6, p0, Lcom/android/jrdsettings/JrdBrightnessPreference;->mBrightnessObserver:Landroid/database/ContentObserver;

    .line 116
    new-instance v6, Lcom/android/jrdsettings/JrdBrightnessPreference$2;

    new-instance v7, Landroid/os/Handler;

    invoke-direct {v7}, Landroid/os/Handler;-><init>()V

    invoke-direct {v6, p0, v7}, Lcom/android/jrdsettings/JrdBrightnessPreference$2;-><init>(Lcom/android/jrdsettings/JrdBrightnessPreference;Landroid/os/Handler;)V

    iput-object v6, p0, Lcom/android/jrdsettings/JrdBrightnessPreference;->mBrightnessModeObserver:Landroid/database/ContentObserver;

    .line 123
    new-instance v6, Lcom/android/jrdsettings/JrdBrightnessPreference$3;

    new-instance v7, Landroid/os/Handler;

    invoke-direct {v7}, Landroid/os/Handler;-><init>()V

    invoke-direct {v6, p0, v7}, Lcom/android/jrdsettings/JrdBrightnessPreference$3;-><init>(Lcom/android/jrdsettings/JrdBrightnessPreference;Landroid/os/Handler;)V

    iput-object v6, p0, Lcom/android/jrdsettings/JrdBrightnessPreference;->mBrightnessEcoModeObserver:Landroid/database/ContentObserver;

    .line 176
    new-instance v6, Lcom/android/jrdsettings/JrdBrightnessPreference$5;

    invoke-direct {v6, p0}, Lcom/android/jrdsettings/JrdBrightnessPreference$5;-><init>(Lcom/android/jrdsettings/JrdBrightnessPreference;)V

    iput-object v6, p0, Lcom/android/jrdsettings/JrdBrightnessPreference;->mPSChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 134
    const-string v6, "power"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    .line 135
    .local v3, pm:Landroid/os/PowerManager;
    invoke-virtual {v3}, Landroid/os/PowerManager;->getMinimumScreenBrightnessSetting()I

    move-result v6

    iput v6, p0, Lcom/android/jrdsettings/JrdBrightnessPreference;->mScreenBrightnessMinimum:I

    .line 136
    invoke-virtual {v3}, Landroid/os/PowerManager;->getMaximumScreenBrightnessSetting()I

    move-result v6

    iput v6, p0, Lcom/android/jrdsettings/JrdBrightnessPreference;->mScreenBrightnessMaximum:I

    .line 137
    const-string v6, "sensor"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    .line 139
    .local v0, mgr:Landroid/hardware/SensorManager;
    const-string v6, "ro.def.screen.brightness.mode"

    const-string v7, "auto"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 140
    .local v1, mode:Ljava/lang/String;
    const-string v6, "auto"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 141
    iput-boolean v4, p0, Lcom/android/jrdsettings/JrdBrightnessPreference;->mAutomaticAvailable:Z

    .line 146
    :goto_0
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v2, v4, Landroid/content/res/Configuration;->orientation:I

    .line 147
    .local v2, orientation:I
    const-string v4, "JrdBrightnessPreference"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "JrdBrightnessPreference, setLayoutResource, orientation="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    const/4 v4, 0x2

    if-ne v2, v4, :cond_2

    .line 149
    const v4, 0x7f040051

    invoke-virtual {p0, v4}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 154
    :goto_1
    return-void

    .line 143
    .end local v2           #orientation:I
    :cond_0
    const/4 v6, 0x5

    invoke-virtual {v0, v6}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v6

    if-eqz v6, :cond_1

    :goto_2
    iput-boolean v4, p0, Lcom/android/jrdsettings/JrdBrightnessPreference;->mAutomaticAvailable:Z

    goto :goto_0

    :cond_1
    move v4, v5

    goto :goto_2

    .line 151
    .restart local v2       #orientation:I
    :cond_2
    const v4, 0x7f040050

    invoke-virtual {p0, v4}, Landroid/preference/Preference;->setLayoutResource(I)V

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/android/jrdsettings/JrdBrightnessPreference;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/jrdsettings/JrdBrightnessPreference;->onBrightnessChanged()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/jrdsettings/JrdBrightnessPreference;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/jrdsettings/JrdBrightnessPreference;->onBrightnessModeChanged()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/jrdsettings/JrdBrightnessPreference;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/jrdsettings/JrdBrightnessPreference;->onBrightnessEcoModeChanged()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/jrdsettings/JrdBrightnessPreference;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/jrdsettings/JrdBrightnessPreference;->mCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/jrdsettings/JrdBrightnessPreference;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/jrdsettings/JrdBrightnessPreference;->mAutoBacklightCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method private getBrightness(I)I
    .locals 4
    .parameter "defaultValue"

    .prologue
    .line 302
    move v0, p1

    .line 304
    .local v0, brightness:I
    :try_start_0
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_brightness"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 309
    :goto_0
    return v0

    .line 306
    :catch_0
    move-exception v1

    .line 307
    .local v1, snfe:Landroid/provider/Settings$SettingNotFoundException;
    const-string v2, "JrdBrightnessPreference"

    const-string v3, "SettingNotFoundException"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getBrightnessEcoMode(I)I
    .locals 5
    .parameter "defaultValue"

    .prologue
    .line 446
    move v0, p1

    .line 448
    .local v0, brightnessEcoMode:I
    :try_start_0
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_brightness_eco_mode"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 453
    :goto_0
    const-string v2, "JrdBrightnessPreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "brightnessEcoMode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    return v0

    .line 450
    :catch_0
    move-exception v1

    .line 451
    .local v1, snfe:Landroid/provider/Settings$SettingNotFoundException;
    const-string v2, "JrdBrightnessPreference"

    const-string v3, "SettingNotFoundException"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getBrightnessMode(I)I
    .locals 5
    .parameter "defaultValue"

    .prologue
    .line 350
    move v0, p1

    .line 352
    .local v0, brightnessMode:I
    :try_start_0
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_brightness_mode"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 357
    :goto_0
    const-string v2, "JrdBrightnessPreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "brightnessMode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    return v0

    .line 354
    :catch_0
    move-exception v1

    .line 355
    .local v1, snfe:Landroid/provider/Settings$SettingNotFoundException;
    const-string v2, "JrdBrightnessPreference"

    const-string v3, "SettingNotFoundException"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private onBrightnessChanged()V
    .locals 3

    .prologue
    .line 403
    const-string v1, "JrdBrightnessPreference"

    const-string v2, "onBrightnessChanged"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    iget v1, p0, Lcom/android/jrdsettings/JrdBrightnessPreference;->mScreenBrightnessMaximum:I

    invoke-direct {p0, v1}, Lcom/android/jrdsettings/JrdBrightnessPreference;->getBrightness(I)I

    move-result v0

    .line 405
    .local v0, brightness:I
    iget-object v1, p0, Lcom/android/jrdsettings/JrdBrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget v2, p0, Lcom/android/jrdsettings/JrdBrightnessPreference;->mScreenBrightnessMinimum:I

    sub-int v2, v0, v2

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 406
    iput v0, p0, Lcom/android/jrdsettings/JrdBrightnessPreference;->mOldBrightness:I

    .line 411
    return-void
.end method

.method private onBrightnessEcoModeChanged()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 438
    const-string v1, "JrdBrightnessPreference"

    const-string v2, "onBrightnessEcoModeChanged"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    invoke-direct {p0, v0}, Lcom/android/jrdsettings/JrdBrightnessPreference;->getBrightnessEcoMode(I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 440
    .local v0, checked:Z
    :cond_0
    invoke-direct {p0}, Lcom/android/jrdsettings/JrdBrightnessPreference;->updateOldAutomaticEcoMode()V

    .line 441
    iget-object v1, p0, Lcom/android/jrdsettings/JrdBrightnessPreference;->mAutoBacklightCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 443
    return-void
.end method

.method private onBrightnessModeChanged()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 415
    const-string v3, "JrdBrightnessPreference"

    const-string v4, "onBrightnessModeChanged"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    invoke-direct {p0, v2}, Lcom/android/jrdsettings/JrdBrightnessPreference;->getBrightnessMode(I)I

    move-result v3

    if-eqz v3, :cond_5

    move v0, v1

    .line 417
    .local v0, checked:Z
    :goto_0
    invoke-direct {p0}, Lcom/android/jrdsettings/JrdBrightnessPreference;->updateOldAutomaticMode()V

    .line 418
    iget-object v3, p0, Lcom/android/jrdsettings/JrdBrightnessPreference;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v3, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 419
    iget-object v4, p0, Lcom/android/jrdsettings/JrdBrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_0

    sget-boolean v3, Lcom/android/jrdsettings/JrdBrightnessPreference;->USE_SCREEN_AUTO_BRIGHTNESS_ADJUSTMENT:Z

    if-eqz v3, :cond_6

    :cond_0
    move v3, v1

    :goto_1
    invoke-virtual {v4, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 423
    iget-object v4, p0, Lcom/android/jrdsettings/JrdBrightnessPreference;->mAutoBacklightCheckBox:Landroid/widget/CheckBox;

    iget-boolean v3, p0, Lcom/android/jrdsettings/JrdBrightnessPreference;->mAutomaticMode:Z

    if-eqz v3, :cond_1

    sget-boolean v3, Lcom/android/jrdsettings/JrdBrightnessPreference;->USE_SCREEN_AUTO_BRIGHTNESS_ADJUSTMENT:Z

    if-eqz v3, :cond_7

    :cond_1
    move v3, v1

    :goto_2
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 424
    iget-object v4, p0, Lcom/android/jrdsettings/JrdBrightnessPreference;->mAutoBacklightTitle:Landroid/widget/TextView;

    iget-boolean v3, p0, Lcom/android/jrdsettings/JrdBrightnessPreference;->mAutomaticMode:Z

    if-eqz v3, :cond_2

    sget-boolean v3, Lcom/android/jrdsettings/JrdBrightnessPreference;->USE_SCREEN_AUTO_BRIGHTNESS_ADJUSTMENT:Z

    if-eqz v3, :cond_8

    :cond_2
    move v3, v1

    :goto_3
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 425
    iget-object v3, p0, Lcom/android/jrdsettings/JrdBrightnessPreference;->mAutoBackligthSummary:Landroid/widget/TextView;

    iget-boolean v4, p0, Lcom/android/jrdsettings/JrdBrightnessPreference;->mAutomaticMode:Z

    if-eqz v4, :cond_3

    sget-boolean v4, Lcom/android/jrdsettings/JrdBrightnessPreference;->USE_SCREEN_AUTO_BRIGHTNESS_ADJUSTMENT:Z

    if-eqz v4, :cond_4

    :cond_3
    move v2, v1

    :cond_4
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 434
    return-void

    .end local v0           #checked:Z
    :cond_5
    move v0, v2

    .line 416
    goto :goto_0

    .restart local v0       #checked:Z
    :cond_6
    move v3, v2

    .line 419
    goto :goto_1

    :cond_7
    move v3, v2

    .line 423
    goto :goto_2

    :cond_8
    move v3, v2

    .line 424
    goto :goto_3
.end method

.method private setBrightness(I)V
    .locals 4
    .parameter "brightness"

    .prologue
    .line 385
    const-string v1, "JrdBrightnessPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  === setBrightness = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    :try_start_0
    const-string v1, "power"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v0

    .line 390
    .local v0, power:Landroid/os/IPowerManager;
    if-eqz v0, :cond_0

    .line 391
    invoke-interface {v0}, Landroid/os/IPowerManager;->isScreenOn()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 392
    invoke-interface {v0, p1}, Landroid/os/IPowerManager;->setTemporaryScreenBrightnessSettingOverride(I)V

    .line 399
    .end local v0           #power:Landroid/os/IPowerManager;
    :cond_0
    :goto_0
    return-void

    .line 394
    .restart local v0       #power:Landroid/os/IPowerManager;
    :cond_1
    const/4 v1, -0x1

    invoke-interface {v0, v1}, Landroid/os/IPowerManager;->setTemporaryScreenBrightnessSettingOverride(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 397
    .end local v0           #power:Landroid/os/IPowerManager;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private setEcoMode(I)V
    .locals 3
    .parameter "mode"

    .prologue
    .line 474
    const-string v0, "JrdBrightnessPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setEcoMode, the mode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/jrdsettings/JrdBrightnessPreference;->mAutomaticEcoMode:Z

    .line 476
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness_eco_mode"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 478
    return-void

    .line 475
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setEcoModeChangeState()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 486
    iget-boolean v0, p0, Lcom/android/jrdsettings/JrdBrightnessPreference;->mEcoFirstLaunch:Z

    if-eqz v0, :cond_2

    .line 489
    iput-boolean v1, p0, Lcom/android/jrdsettings/JrdBrightnessPreference;->mEcoFirstLaunch:Z

    .line 498
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/android/jrdsettings/JrdBrightnessPreference;->mEcoModeChangeOut:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/jrdsettings/JrdBrightnessPreference;->mEcoModeChangeSelf:Z

    if-nez v0, :cond_1

    .line 499
    iput-boolean v1, p0, Lcom/android/jrdsettings/JrdBrightnessPreference;->mEcoModeChangeOut:Z

    .line 501
    :cond_1
    return-void

    .line 493
    :cond_2
    iget-boolean v0, p0, Lcom/android/jrdsettings/JrdBrightnessPreference;->mEcoModeChangeOut:Z

    if-nez v0, :cond_0

    .line 494
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/jrdsettings/JrdBrightnessPreference;->mEcoModeChangeSelf:Z

    goto :goto_0
.end method

.method private setMode(I)V
    .locals 3
    .parameter "mode"

    .prologue
    .line 362
    const-string v0, "JrdBrightnessPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMode, the mode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness_mode"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 365
    return-void
.end method

.method private updateOldAutomaticEcoMode()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 458
    const-string v0, "JrdBrightnessPreference"

    const-string v1, "updateOldAutomaticEcoMode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    iget-boolean v0, p0, Lcom/android/jrdsettings/JrdBrightnessPreference;->mEcoModeChangeSelf:Z

    if-nez v0, :cond_0

    .line 460
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/jrdsettings/JrdBrightnessPreference;->mEcoModeChangeOut:Z

    .line 462
    :cond_0
    iget-boolean v0, p0, Lcom/android/jrdsettings/JrdBrightnessPreference;->mEcoModeChangeOut:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/jrdsettings/JrdBrightnessPreference;->mEcoModeChangeSelf:Z

    if-nez v0, :cond_1

    .line 464
    invoke-direct {p0, v3}, Lcom/android/jrdsettings/JrdBrightnessPreference;->getBrightnessEcoMode(I)I

    move-result v0

    iput v0, p0, Lcom/android/jrdsettings/JrdBrightnessPreference;->mOldAutomaticEco:I

    .line 465
    const-string v0, "JrdBrightnessPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateOldAutomaticEcoMode + mOldAutomaticEco = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/jrdsettings/JrdBrightnessPreference;->mOldAutomaticEco:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    :cond_1
    iget-boolean v0, p0, Lcom/android/jrdsettings/JrdBrightnessPreference;->mEcoModeChangeSelf:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/jrdsettings/JrdBrightnessPreference;->mEcoModeChangeOut:Z

    if-nez v0, :cond_2

    .line 469
    iput-boolean v3, p0, Lcom/android/jrdsettings/JrdBrightnessPreference;->mEcoModeChangeSelf:Z

    .line 471
    :cond_2
    return-void
.end method

.method private updateOldAutomaticMode()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 511
    const-string v0, "JrdBrightnessPreference"

    const-string v1, "updateOldAutomaticMode"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    iget-boolean v0, p0, Lcom/android/jrdsettings/JrdBrightnessPreference;->mModeChangeSelf:Z

    if-nez v0, :cond_0

    .line 513
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/jrdsettings/JrdBrightnessPreference;->mModeChangeOut:Z

    .line 515
    :cond_0
    iget-boolean v0, p0, Lcom/android/jrdsettings/JrdBrightnessPreference;->mModeChangeOut:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/jrdsettings/JrdBrightnessPreference;->mModeChangeSelf:Z

    if-nez v0, :cond_1

    .line 517
    invoke-direct {p0, v3}, Lcom/android/jrdsettings/JrdBrightnessPreference;->getBrightnessMode(I)I

    move-result v0

    iput v0, p0, Lcom/android/jrdsettings/JrdBrightnessPreference;->mOldAutomatic:I

    .line 518
    const-string v0, "JrdBrightnessPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateOldAutomaticMode+mOldAutomatic="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/jrdsettings/JrdBrightnessPreference;->mOldAutomatic:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    :cond_1
    iget-boolean v0, p0, Lcom/android/jrdsettings/JrdBrightnessPreference;->mModeChangeSelf:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/jrdsettings/JrdBrightnessPreference;->mModeChangeOut:Z

    if-nez v0, :cond_2

    .line 522
    iput-boolean v3, p0, Lcom/android/jrdsettings/JrdBrightnessPreference;->mModeChangeSelf:Z

    .line 524
    :cond_2
    return-void
.end method


# virtual methods
.method public onBindView(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 205
    const v0, 0x7f0b00e2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/android/jrdsettings/JrdBrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    .line 206
    const v0, 0x7f0b00dd

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/jrdsettings/JrdBrightnessPreference;->mCheckBox:Landroid/widget/CheckBox;

    .line 207
    const v0, 0x7f0b00db

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/jrdsettings/JrdBrightnessPreference;->mBrightnessLayout:Landroid/widget/LinearLayout;

    .line 209
    iget-object v0, p0, Lcom/android/jrdsettings/JrdBrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget v3, p0, Lcom/android/jrdsettings/JrdBrightnessPreference;->mScreenBrightnessMaximum:I

    iget v4, p0, Lcom/android/jrdsettings/JrdBrightnessPreference;->mScreenBrightnessMinimum:I

    sub-int/2addr v3, v4

    invoke-virtual {v0, v3}, Landroid/widget/AbsSeekBar;->setMax(I)V

    .line 210
    invoke-direct {p0, v2}, Lcom/android/jrdsettings/JrdBrightnessPreference;->getBrightness(I)I

    move-result v0

    iput v0, p0, Lcom/android/jrdsettings/JrdBrightnessPreference;->mOldBrightness:I

    .line 211
    iget-object v0, p0, Lcom/android/jrdsettings/JrdBrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget v3, p0, Lcom/android/jrdsettings/JrdBrightnessPreference;->mOldBrightness:I

    iget v4, p0, Lcom/android/jrdsettings/JrdBrightnessPreference;->mScreenBrightnessMinimum:I

    sub-int/2addr v3, v4

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 214
    const v0, 0x7f0b00e1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/jrdsettings/JrdBrightnessPreference;->mAutoBacklightCheckBox:Landroid/widget/CheckBox;

    .line 215
    const v0, 0x7f0b00df

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/jrdsettings/JrdBrightnessPreference;->mAutoBacklightTitle:Landroid/widget/TextView;

    .line 216
    const v0, 0x7f0b00e0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/jrdsettings/JrdBrightnessPreference;->mAutoBackligthSummary:Landroid/widget/TextView;

    .line 217
    const v0, 0x7f0b00de

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/jrdsettings/JrdBrightnessPreference;->mAutoBackLightLayout:Landroid/widget/LinearLayout;

    .line 218
    iget-boolean v0, p0, Lcom/android/jrdsettings/JrdBrightnessPreference;->mAutomaticAvailable:Z

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/android/jrdsettings/JrdBrightnessPreference;->mAutoBacklightCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 225
    :cond_0
    iget-boolean v0, p0, Lcom/android/jrdsettings/JrdBrightnessPreference;->mAutomaticAvailable:Z

    if-eqz v0, :cond_5

    .line 226
    iget-object v0, p0, Lcom/android/jrdsettings/JrdBrightnessPreference;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 227
    iget-object v0, p0, Lcom/android/jrdsettings/JrdBrightnessPreference;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/view/View;->setClickable(Z)V

    .line 228
    invoke-direct {p0, v2}, Lcom/android/jrdsettings/JrdBrightnessPreference;->getBrightnessMode(I)I

    move-result v0

    iput v0, p0, Lcom/android/jrdsettings/JrdBrightnessPreference;->mOldAutomatic:I

    .line 229
    iget v0, p0, Lcom/android/jrdsettings/JrdBrightnessPreference;->mOldAutomatic:I

    if-ne v0, v1, :cond_6

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/jrdsettings/JrdBrightnessPreference;->mAutomaticMode:Z

    .line 230
    iget-object v0, p0, Lcom/android/jrdsettings/JrdBrightnessPreference;->mCheckBox:Landroid/widget/CheckBox;

    iget-boolean v3, p0, Lcom/android/jrdsettings/JrdBrightnessPreference;->mAutomaticMode:Z

    invoke-virtual {v0, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 231
    iget-object v3, p0, Lcom/android/jrdsettings/JrdBrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget-boolean v0, p0, Lcom/android/jrdsettings/JrdBrightnessPreference;->mAutomaticMode:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/jrdsettings/JrdBrightnessPreference;->USE_SCREEN_AUTO_BRIGHTNESS_ADJUSTMENT:Z

    if-eqz v0, :cond_7

    :cond_1
    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 236
    invoke-direct {p0, v2}, Lcom/android/jrdsettings/JrdBrightnessPreference;->getBrightnessEcoMode(I)I

    move-result v0

    iput v0, p0, Lcom/android/jrdsettings/JrdBrightnessPreference;->mOldAutomaticEco:I

    .line 237
    iget v0, p0, Lcom/android/jrdsettings/JrdBrightnessPreference;->mOldAutomaticEco:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_8

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/android/jrdsettings/JrdBrightnessPreference;->mAutomaticEcoMode:Z

    .line 238
    iget-object v0, p0, Lcom/android/jrdsettings/JrdBrightnessPreference;->mAutoBacklightCheckBox:Landroid/widget/CheckBox;

    iget-boolean v3, p0, Lcom/android/jrdsettings/JrdBrightnessPreference;->mAutomaticEcoMode:Z

    invoke-virtual {v0, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 239
    iget-object v0, p0, Lcom/android/jrdsettings/JrdBrightnessPreference;->mAutoBacklightCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/view/View;->setClickable(Z)V

    .line 240
    iget-object v3, p0, Lcom/android/jrdsettings/JrdBrightnessPreference;->mAutoBacklightCheckBox:Landroid/widget/CheckBox;

    iget-boolean v0, p0, Lcom/android/jrdsettings/JrdBrightnessPreference;->mAutomaticMode:Z

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/android/jrdsettings/JrdBrightnessPreference;->USE_SCREEN_AUTO_BRIGHTNESS_ADJUSTMENT:Z

    if-eqz v0, :cond_9

    :cond_2
    move v0, v1

    :goto_3
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 241
    iget-object v3, p0, Lcom/android/jrdsettings/JrdBrightnessPreference;->mAutoBacklightTitle:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/android/jrdsettings/JrdBrightnessPreference;->mAutomaticMode:Z

    if-eqz v0, :cond_3

    sget-boolean v0, Lcom/android/jrdsettings/JrdBrightnessPreference;->USE_SCREEN_AUTO_BRIGHTNESS_ADJUSTMENT:Z

    if-eqz v0, :cond_a

    :cond_3
    move v0, v1

    :goto_4
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 242
    iget-object v3, p0, Lcom/android/jrdsettings/JrdBrightnessPreference;->mAutoBackligthSummary:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/android/jrdsettings/JrdBrightnessPreference;->mAutomaticMode:Z

    if-eqz v0, :cond_4

    sget-boolean v0, Lcom/android/jrdsettings/JrdBrightnessPreference;->USE_SCREEN_AUTO_BRIGHTNESS_ADJUSTMENT:Z

    if-eqz v0, :cond_b

    :cond_4
    move v0, v1

    :goto_5
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 245
    :cond_5
    iget-object v0, p0, Lcom/android/jrdsettings/JrdBrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 247
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "power_saving_mode"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v1, v0, :cond_c

    .line 248
    iget-object v0, p0, Lcom/android/jrdsettings/JrdBrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 249
    iget-object v0, p0, Lcom/android/jrdsettings/JrdBrightnessPreference;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 250
    iget-object v0, p0, Lcom/android/jrdsettings/JrdBrightnessPreference;->mBrightnessLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 265
    :goto_6
    iget-object v0, p0, Lcom/android/jrdsettings/JrdBrightnessPreference;->mBrightnessLayout:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/android/jrdsettings/JrdBrightnessPreference$7;

    invoke-direct {v2, p0}, Lcom/android/jrdsettings/JrdBrightnessPreference$7;-><init>(Lcom/android/jrdsettings/JrdBrightnessPreference;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 271
    iget-object v0, p0, Lcom/android/jrdsettings/JrdBrightnessPreference;->mAutoBackLightLayout:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/android/jrdsettings/JrdBrightnessPreference$8;

    invoke-direct {v2, p0}, Lcom/android/jrdsettings/JrdBrightnessPreference$8;-><init>(Lcom/android/jrdsettings/JrdBrightnessPreference;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 277
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "screen_brightness"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/jrdsettings/JrdBrightnessPreference;->mBrightnessObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 281
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "screen_brightness_mode"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/jrdsettings/JrdBrightnessPreference;->mBrightnessModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 289
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "screen_brightness_eco_mode"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/jrdsettings/JrdBrightnessPreference;->mBrightnessEcoModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 293
    return-void

    :cond_6
    move v0, v2

    .line 229
    goto/16 :goto_0

    :cond_7
    move v0, v2

    .line 231
    goto/16 :goto_1

    :cond_8
    move v0, v2

    .line 237
    goto/16 :goto_2

    :cond_9
    move v0, v2

    .line 240
    goto/16 :goto_3

    :cond_a
    move v0, v2

    .line 241
    goto/16 :goto_4

    :cond_b
    move v0, v2

    .line 242
    goto/16 :goto_5

    .line 252
    :cond_c
    iget-boolean v0, p0, Lcom/android/jrdsettings/JrdBrightnessPreference;->mAutomaticAvailable:Z

    if-eqz v0, :cond_f

    .line 253
    iget-object v0, p0, Lcom/android/jrdsettings/JrdBrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget-boolean v3, p0, Lcom/android/jrdsettings/JrdBrightnessPreference;->mAutomaticMode:Z

    if-eqz v3, :cond_d

    sget-boolean v3, Lcom/android/jrdsettings/JrdBrightnessPreference;->USE_SCREEN_AUTO_BRIGHTNESS_ADJUSTMENT:Z

    if-eqz v3, :cond_e

    :cond_d
    move v2, v1

    :cond_e
    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 255
    :cond_f
    iget-object v0, p0, Lcom/android/jrdsettings/JrdBrightnessPreference;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 256
    iget-object v0, p0, Lcom/android/jrdsettings/JrdBrightnessPreference;->mBrightnessLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 257
    iget-object v0, p0, Lcom/android/jrdsettings/JrdBrightnessPreference;->mBrightnessLayout:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/android/jrdsettings/JrdBrightnessPreference$6;

    invoke-direct {v2, p0}, Lcom/android/jrdsettings/JrdBrightnessPreference$6;-><init>(Lcom/android/jrdsettings/JrdBrightnessPreference;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_6
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 321
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v3, 0x7f0b00dd

    if-ne v0, v3, :cond_d

    .line 322
    if-eqz p2, :cond_7

    move v0, v1

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/jrdsettings/JrdBrightnessPreference;->setMode(I)V

    .line 324
    iget-object v3, p0, Lcom/android/jrdsettings/JrdBrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    if-nez p2, :cond_8

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 325
    if-nez p2, :cond_0

    .line 326
    iget-object v0, p0, Lcom/android/jrdsettings/JrdBrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    iget v3, p0, Lcom/android/jrdsettings/JrdBrightnessPreference;->mScreenBrightnessMinimum:I

    add-int/2addr v0, v3

    invoke-direct {p0, v0}, Lcom/android/jrdsettings/JrdBrightnessPreference;->setBrightness(I)V

    .line 334
    :cond_0
    invoke-direct {p0, v2}, Lcom/android/jrdsettings/JrdBrightnessPreference;->getBrightnessMode(I)I

    move-result v0

    iput v0, p0, Lcom/android/jrdsettings/JrdBrightnessPreference;->mOldAutomatic:I

    .line 335
    iget v0, p0, Lcom/android/jrdsettings/JrdBrightnessPreference;->mOldAutomatic:I

    if-ne v0, v1, :cond_9

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/android/jrdsettings/JrdBrightnessPreference;->mAutomaticMode:Z

    .line 336
    iget-object v3, p0, Lcom/android/jrdsettings/JrdBrightnessPreference;->mAutoBacklightCheckBox:Landroid/widget/CheckBox;

    iget-boolean v0, p0, Lcom/android/jrdsettings/JrdBrightnessPreference;->mAutomaticMode:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/jrdsettings/JrdBrightnessPreference;->USE_SCREEN_AUTO_BRIGHTNESS_ADJUSTMENT:Z

    if-eqz v0, :cond_a

    :cond_1
    move v0, v1

    :goto_3
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 337
    iget-object v3, p0, Lcom/android/jrdsettings/JrdBrightnessPreference;->mAutoBacklightTitle:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/android/jrdsettings/JrdBrightnessPreference;->mAutomaticMode:Z

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/android/jrdsettings/JrdBrightnessPreference;->USE_SCREEN_AUTO_BRIGHTNESS_ADJUSTMENT:Z

    if-eqz v0, :cond_b

    :cond_2
    move v0, v1

    :goto_4
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 338
    iget-object v3, p0, Lcom/android/jrdsettings/JrdBrightnessPreference;->mAutoBackligthSummary:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/android/jrdsettings/JrdBrightnessPreference;->mAutomaticMode:Z

    if-eqz v0, :cond_3

    sget-boolean v0, Lcom/android/jrdsettings/JrdBrightnessPreference;->USE_SCREEN_AUTO_BRIGHTNESS_ADJUSTMENT:Z

    if-eqz v0, :cond_c

    :cond_3
    move v0, v1

    :goto_5
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 339
    iget-object v0, p0, Lcom/android/jrdsettings/JrdBrightnessPreference;->mAutoBackLightLayout:Landroid/widget/LinearLayout;

    iget-boolean v3, p0, Lcom/android/jrdsettings/JrdBrightnessPreference;->mAutomaticMode:Z

    if-eqz v3, :cond_4

    sget-boolean v3, Lcom/android/jrdsettings/JrdBrightnessPreference;->USE_SCREEN_AUTO_BRIGHTNESS_ADJUSTMENT:Z

    if-eqz v3, :cond_5

    :cond_4
    move v2, v1

    :cond_5
    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 347
    :cond_6
    :goto_6
    return-void

    :cond_7
    move v0, v2

    .line 322
    goto :goto_0

    :cond_8
    move v0, v2

    .line 324
    goto :goto_1

    :cond_9
    move v0, v2

    .line 335
    goto :goto_2

    :cond_a
    move v0, v2

    .line 336
    goto :goto_3

    :cond_b
    move v0, v2

    .line 337
    goto :goto_4

    :cond_c
    move v0, v2

    .line 338
    goto :goto_5

    .line 341
    :cond_d
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0b00e1

    if-ne v0, v1, :cond_6

    .line 342
    const-string v0, "JrdBrightnessPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCheckedChanged, backlight isChecked =  "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    invoke-direct {p0}, Lcom/android/jrdsettings/JrdBrightnessPreference;->setEcoModeChangeState()V

    .line 344
    if-eqz p2, :cond_e

    const/4 v2, 0x2

    :cond_e
    invoke-direct {p0, v2}, Lcom/android/jrdsettings/JrdBrightnessPreference;->setEcoMode(I)V

    goto :goto_6
.end method

.method public onPowerSaverModeChange()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 158
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "power_saving_mode"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 159
    iget-object v1, p0, Lcom/android/jrdsettings/JrdBrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 160
    iget-object v1, p0, Lcom/android/jrdsettings/JrdBrightnessPreference;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 161
    iget-object v1, p0, Lcom/android/jrdsettings/JrdBrightnessPreference;->mBrightnessLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 174
    :goto_0
    return-void

    .line 163
    :cond_0
    iget-boolean v2, p0, Lcom/android/jrdsettings/JrdBrightnessPreference;->mAutomaticAvailable:Z

    if-eqz v2, :cond_3

    .line 164
    iget-object v2, p0, Lcom/android/jrdsettings/JrdBrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget-boolean v3, p0, Lcom/android/jrdsettings/JrdBrightnessPreference;->mAutomaticMode:Z

    if-eqz v3, :cond_1

    sget-boolean v3, Lcom/android/jrdsettings/JrdBrightnessPreference;->USE_SCREEN_AUTO_BRIGHTNESS_ADJUSTMENT:Z

    if-eqz v3, :cond_2

    :cond_1
    move v0, v1

    :cond_2
    invoke-virtual {v2, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 166
    :cond_3
    iget-object v0, p0, Lcom/android/jrdsettings/JrdBrightnessPreference;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 167
    iget-object v0, p0, Lcom/android/jrdsettings/JrdBrightnessPreference;->mBrightnessLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 168
    iget-object v0, p0, Lcom/android/jrdsettings/JrdBrightnessPreference;->mBrightnessLayout:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/android/jrdsettings/JrdBrightnessPreference$4;

    invoke-direct {v1, p0}, Lcom/android/jrdsettings/JrdBrightnessPreference$4;-><init>(Lcom/android/jrdsettings/JrdBrightnessPreference;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromTouch"

    .prologue
    .line 315
    iget v0, p0, Lcom/android/jrdsettings/JrdBrightnessPreference;->mScreenBrightnessMinimum:I

    add-int/2addr v0, p2

    invoke-direct {p0, v0}, Lcom/android/jrdsettings/JrdBrightnessPreference;->setBrightness(I)V

    .line 316
    iget v0, p0, Lcom/android/jrdsettings/JrdBrightnessPreference;->mScreenBrightnessMinimum:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/android/jrdsettings/JrdBrightnessPreference;->mOldBrightness:I

    .line 317
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 371
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3
    .parameter "seekBar"

    .prologue
    .line 376
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness"

    iget v2, p0, Lcom/android/jrdsettings/JrdBrightnessPreference;->mOldBrightness:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 379
    return-void
.end method

.method public registerPSChangeReceiver()V
    .locals 4

    .prologue
    .line 195
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/jrdsettings/JrdBrightnessPreference;->mPSChangeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "QUICKSETTINGS_POWERSAVER_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 196
    return-void
.end method

.method public unRegisterPSChangeReceiver()V
    .locals 2

    .prologue
    .line 200
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/jrdsettings/JrdBrightnessPreference;->mPSChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 201
    return-void
.end method
