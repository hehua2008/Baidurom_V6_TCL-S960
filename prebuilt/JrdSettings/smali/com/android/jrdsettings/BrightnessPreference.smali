.class public Lcom/android/jrdsettings/BrightnessPreference;
.super Landroid/preference/SeekBarDialogPreference;
.source "BrightnessPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/jrdsettings/BrightnessPreference$SavedState;
    }
.end annotation


# static fields
.field private static final AUTOMATIC_ECO_MODE:I = 0x2

.field private static final BRIGHTNESS_MODE_MANUAL:I = 0x0

.field private static final SEEK_BAR_RANGE:I = 0x2710

.field private static final TAG:Ljava/lang/String; = "BrightnessPreference"

.field private static final USE_SCREEN_AUTO_BRIGHTNESS_ADJUSTMENT:Z


# instance fields
.field private mActivityDestoryed:Z

.field private mAutoBacklightCheckBox:Landroid/widget/CheckBox;

.field private mAutoBacklightTitle:Landroid/widget/TextView;

.field private mAutoBackligthSummary:Landroid/widget/TextView;

.field private mAutomaticAvailable:Z

.field private mAutomaticEcoMode:Z

.field private mAutomaticMode:Z

.field private mBrightnessEcoModeObserver:Landroid/database/ContentObserver;

.field private mBrightnessModeObserver:Landroid/database/ContentObserver;

.field private mBrightnessObserver:Landroid/database/ContentObserver;

.field private mCheckBox:Landroid/widget/CheckBox;

.field private mCurBrightness:I

.field private mEcoFirstLaunch:Z

.field private mEcoModeChangeOut:Z

.field private mEcoModeChangeSelf:Z

.field private mFirstLaunch:Z

.field private mModeChangeOut:Z

.field private mModeChangeSelf:Z

.field private mOldAutomatic:I

.field private mOldAutomaticEco:I

.field private mOldBrightness:I

.field private mRestoredOldState:Z

.field private final mScreenBrightnessMaximum:I

.field private final mScreenBrightnessMinimum:I

.field private mSeekBar:Landroid/widget/SeekBar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    invoke-static {}, Landroid/os/PowerManager;->useScreenAutoBrightnessAdjustmentFeature()Z

    move-result v0

    sput-boolean v0, Lcom/android/jrdsettings/BrightnessPreference;->USE_SCREEN_AUTO_BRIGHTNESS_ADJUSTMENT:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 129
    invoke-direct {p0, p1, p2}, Landroid/preference/SeekBarDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 66
    iput-boolean v4, p0, Lcom/android/jrdsettings/BrightnessPreference;->mEcoModeChangeOut:Z

    .line 67
    iput-boolean v4, p0, Lcom/android/jrdsettings/BrightnessPreference;->mEcoModeChangeSelf:Z

    .line 68
    iput-boolean v4, p0, Lcom/android/jrdsettings/BrightnessPreference;->mEcoFirstLaunch:Z

    .line 77
    const/4 v5, -0x1

    iput v5, p0, Lcom/android/jrdsettings/BrightnessPreference;->mCurBrightness:I

    .line 83
    iput-boolean v4, p0, Lcom/android/jrdsettings/BrightnessPreference;->mModeChangeOut:Z

    .line 85
    iput-boolean v4, p0, Lcom/android/jrdsettings/BrightnessPreference;->mModeChangeSelf:Z

    .line 86
    iput-boolean v4, p0, Lcom/android/jrdsettings/BrightnessPreference;->mFirstLaunch:Z

    .line 104
    new-instance v5, Lcom/android/jrdsettings/BrightnessPreference$1;

    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    invoke-direct {v5, p0, v6}, Lcom/android/jrdsettings/BrightnessPreference$1;-><init>(Lcom/android/jrdsettings/BrightnessPreference;Landroid/os/Handler;)V

    iput-object v5, p0, Lcom/android/jrdsettings/BrightnessPreference;->mBrightnessObserver:Landroid/database/ContentObserver;

    .line 114
    new-instance v5, Lcom/android/jrdsettings/BrightnessPreference$2;

    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    invoke-direct {v5, p0, v6}, Lcom/android/jrdsettings/BrightnessPreference$2;-><init>(Lcom/android/jrdsettings/BrightnessPreference;Landroid/os/Handler;)V

    iput-object v5, p0, Lcom/android/jrdsettings/BrightnessPreference;->mBrightnessModeObserver:Landroid/database/ContentObserver;

    .line 121
    new-instance v5, Lcom/android/jrdsettings/BrightnessPreference$3;

    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    invoke-direct {v5, p0, v6}, Lcom/android/jrdsettings/BrightnessPreference$3;-><init>(Lcom/android/jrdsettings/BrightnessPreference;Landroid/os/Handler;)V

    iput-object v5, p0, Lcom/android/jrdsettings/BrightnessPreference;->mBrightnessEcoModeObserver:Landroid/database/ContentObserver;

    .line 131
    const-string v5, "power"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    .line 132
    .local v2, pm:Landroid/os/PowerManager;
    invoke-virtual {v2}, Landroid/os/PowerManager;->getMinimumScreenBrightnessSetting()I

    move-result v5

    iput v5, p0, Lcom/android/jrdsettings/BrightnessPreference;->mScreenBrightnessMinimum:I

    .line 133
    invoke-virtual {v2}, Landroid/os/PowerManager;->getMaximumScreenBrightnessSetting()I

    move-result v5

    iput v5, p0, Lcom/android/jrdsettings/BrightnessPreference;->mScreenBrightnessMaximum:I

    .line 140
    const-string v5, "sensor"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    .line 144
    .local v0, mgr:Landroid/hardware/SensorManager;
    const-string v5, "ro.def.screen.brightness.mode"

    const-string v6, "auto"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 145
    .local v1, mode:Ljava/lang/String;
    const-string v5, "auto"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 146
    iput-boolean v3, p0, Lcom/android/jrdsettings/BrightnessPreference;->mAutomaticAvailable:Z

    .line 151
    :goto_0
    const-string v3, "BrightnessPreference"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mAutomaticAvailable="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/jrdsettings/BrightnessPreference;->mAutomaticAvailable:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    const v3, 0x7f040088

    invoke-virtual {p0, v3}, Landroid/preference/DialogPreference;->setDialogLayoutResource(I)V

    .line 154
    const v3, 0x7f0200da

    invoke-virtual {p0, v3}, Landroid/preference/DialogPreference;->setDialogIcon(I)V

    .line 157
    iput-boolean v4, p0, Lcom/android/jrdsettings/BrightnessPreference;->mActivityDestoryed:Z

    .line 158
    return-void

    .line 148
    :cond_0
    const/4 v5, 0x5

    invoke-virtual {v0, v5}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v5

    if-eqz v5, :cond_1

    :goto_1
    iput-boolean v3, p0, Lcom/android/jrdsettings/BrightnessPreference;->mAutomaticAvailable:Z

    goto :goto_0

    :cond_1
    move v3, v4

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/android/jrdsettings/BrightnessPreference;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/jrdsettings/BrightnessPreference;->onBrightnessChanged()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/jrdsettings/BrightnessPreference;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/jrdsettings/BrightnessPreference;->onBrightnessModeChanged()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/jrdsettings/BrightnessPreference;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/jrdsettings/BrightnessPreference;->onBrightnessEcoModeChanged()V

    return-void
.end method

.method private getBrightness(I)I
    .locals 4
    .parameter "defaultValue"

    .prologue
    .line 321
    move v0, p1

    .line 323
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

    .line 328
    :goto_0
    return v0

    .line 325
    :catch_0
    move-exception v1

    .line 326
    .local v1, snfe:Landroid/provider/Settings$SettingNotFoundException;
    const-string v2, "BrightnessPreference"

    const-string v3, "SettingNotFoundException"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getBrightnessEcoMode(I)I
    .locals 5
    .parameter "defaultValue"

    .prologue
    .line 412
    move v0, p1

    .line 414
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

    .line 419
    :goto_0
    const-string v2, "BrightnessPreference"

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

    .line 420
    return v0

    .line 416
    :catch_0
    move-exception v1

    .line 417
    .local v1, snfe:Landroid/provider/Settings$SettingNotFoundException;
    const-string v2, "BrightnessPreference"

    const-string v3, "SettingNotFoundException"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getBrightnessMode(I)I
    .locals 5
    .parameter "defaultValue"

    .prologue
    .line 354
    move v0, p1

    .line 356
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

    .line 361
    :goto_0
    const-string v2, "BrightnessPreference"

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

    .line 362
    return v0

    .line 358
    :catch_0
    move-exception v1

    .line 359
    .local v1, snfe:Landroid/provider/Settings$SettingNotFoundException;
    const-string v2, "BrightnessPreference"

    const-string v3, "SettingNotFoundException"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private onBrightnessChanged()V
    .locals 3

    .prologue
    .line 367
    const-string v1, "BrightnessPreference"

    const-string v2, "onBrightnessChanged"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    iget v1, p0, Lcom/android/jrdsettings/BrightnessPreference;->mScreenBrightnessMaximum:I

    invoke-direct {p0, v1}, Lcom/android/jrdsettings/BrightnessPreference;->getBrightness(I)I

    move-result v0

    .line 369
    .local v0, brightness:I
    iget-object v1, p0, Lcom/android/jrdsettings/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget v2, p0, Lcom/android/jrdsettings/BrightnessPreference;->mScreenBrightnessMinimum:I

    sub-int v2, v0, v2

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 370
    iput v0, p0, Lcom/android/jrdsettings/BrightnessPreference;->mOldBrightness:I

    .line 375
    return-void
.end method

.method private onBrightnessEcoModeChanged()V
    .locals 3

    .prologue
    .line 404
    const-string v1, "BrightnessPreference"

    const-string v2, "onBrightnessEcoModeChanged"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/android/jrdsettings/BrightnessPreference;->getBrightnessEcoMode(I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 406
    .local v0, checked:Z
    :goto_0
    invoke-direct {p0}, Lcom/android/jrdsettings/BrightnessPreference;->updateOldAutomaticEcoMode()V

    .line 407
    iget-object v1, p0, Lcom/android/jrdsettings/BrightnessPreference;->mAutoBacklightCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 409
    return-void

    .line 405
    .end local v0           #checked:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onBrightnessModeChanged()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 379
    const-string v3, "BrightnessPreference"

    const-string v4, "onBrightnessModeChanged"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    invoke-direct {p0, v2}, Lcom/android/jrdsettings/BrightnessPreference;->getBrightnessMode(I)I

    move-result v3

    if-eqz v3, :cond_5

    move v0, v1

    .line 381
    .local v0, checked:Z
    :goto_0
    invoke-direct {p0}, Lcom/android/jrdsettings/BrightnessPreference;->updateOldAutomaticMode()V

    .line 382
    iget-object v3, p0, Lcom/android/jrdsettings/BrightnessPreference;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v3, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 383
    iget-object v4, p0, Lcom/android/jrdsettings/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_0

    sget-boolean v3, Lcom/android/jrdsettings/BrightnessPreference;->USE_SCREEN_AUTO_BRIGHTNESS_ADJUSTMENT:Z

    if-eqz v3, :cond_6

    :cond_0
    move v3, v1

    :goto_1
    invoke-virtual {v4, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 388
    iget-object v4, p0, Lcom/android/jrdsettings/BrightnessPreference;->mAutoBacklightCheckBox:Landroid/widget/CheckBox;

    iget-boolean v3, p0, Lcom/android/jrdsettings/BrightnessPreference;->mAutomaticMode:Z

    if-eqz v3, :cond_1

    sget-boolean v3, Lcom/android/jrdsettings/BrightnessPreference;->USE_SCREEN_AUTO_BRIGHTNESS_ADJUSTMENT:Z

    if-eqz v3, :cond_7

    :cond_1
    move v3, v1

    :goto_2
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 389
    iget-object v4, p0, Lcom/android/jrdsettings/BrightnessPreference;->mAutoBacklightTitle:Landroid/widget/TextView;

    iget-boolean v3, p0, Lcom/android/jrdsettings/BrightnessPreference;->mAutomaticMode:Z

    if-eqz v3, :cond_2

    sget-boolean v3, Lcom/android/jrdsettings/BrightnessPreference;->USE_SCREEN_AUTO_BRIGHTNESS_ADJUSTMENT:Z

    if-eqz v3, :cond_8

    :cond_2
    move v3, v1

    :goto_3
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 390
    iget-object v3, p0, Lcom/android/jrdsettings/BrightnessPreference;->mAutoBackligthSummary:Landroid/widget/TextView;

    iget-boolean v4, p0, Lcom/android/jrdsettings/BrightnessPreference;->mAutomaticMode:Z

    if-eqz v4, :cond_3

    sget-boolean v4, Lcom/android/jrdsettings/BrightnessPreference;->USE_SCREEN_AUTO_BRIGHTNESS_ADJUSTMENT:Z

    if-eqz v4, :cond_4

    :cond_3
    move v2, v1

    :cond_4
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 400
    return-void

    .end local v0           #checked:Z
    :cond_5
    move v0, v2

    .line 380
    goto :goto_0

    .restart local v0       #checked:Z
    :cond_6
    move v3, v2

    .line 383
    goto :goto_1

    :cond_7
    move v3, v2

    .line 388
    goto :goto_2

    :cond_8
    move v3, v2

    .line 389
    goto :goto_3
.end method

.method private restoreOldState()V
    .locals 3

    .prologue
    .line 531
    iget-boolean v0, p0, Lcom/android/jrdsettings/BrightnessPreference;->mActivityDestoryed:Z

    if-eqz v0, :cond_0

    .line 532
    const-string v0, "BrightnessPreference"

    const-string v1, "restoreOldState Activity is already destroyed, just return"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    :goto_0
    return-void

    .line 539
    :cond_0
    iget-boolean v0, p0, Lcom/android/jrdsettings/BrightnessPreference;->mAutomaticAvailable:Z

    if-eqz v0, :cond_1

    .line 540
    iget v0, p0, Lcom/android/jrdsettings/BrightnessPreference;->mOldAutomatic:I

    invoke-direct {p0, v0}, Lcom/android/jrdsettings/BrightnessPreference;->setMode(I)V

    .line 543
    :cond_1
    iget-boolean v0, p0, Lcom/android/jrdsettings/BrightnessPreference;->mAutomaticAvailable:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/jrdsettings/BrightnessPreference;->mOldAutomatic:I

    if-nez v0, :cond_3

    .line 544
    :cond_2
    iget v0, p0, Lcom/android/jrdsettings/BrightnessPreference;->mOldBrightness:I

    invoke-direct {p0, v0}, Lcom/android/jrdsettings/BrightnessPreference;->setBrightness(I)V

    .line 545
    iget v0, p0, Lcom/android/jrdsettings/BrightnessPreference;->mOldBrightness:I

    invoke-direct {p0, v0}, Lcom/android/jrdsettings/BrightnessPreference;->updateSeekBarPos(I)V

    .line 546
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness"

    iget v2, p0, Lcom/android/jrdsettings/BrightnessPreference;->mOldBrightness:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 551
    :cond_3
    iget v0, p0, Lcom/android/jrdsettings/BrightnessPreference;->mOldAutomaticEco:I

    invoke-direct {p0, v0}, Lcom/android/jrdsettings/BrightnessPreference;->setEcoMode(I)V

    goto :goto_0
.end method

.method private setBrightness(I)V
    .locals 2
    .parameter "brightness"

    .prologue
    .line 618
    :try_start_0
    const-string v1, "power"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v0

    .line 621
    .local v0, power:Landroid/os/IPowerManager;
    if-eqz v0, :cond_0

    .line 622
    invoke-interface {v0}, Landroid/os/IPowerManager;->isScreenOn()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 623
    invoke-interface {v0, p1}, Landroid/os/IPowerManager;->setTemporaryScreenBrightnessSettingOverride(I)V

    .line 631
    .end local v0           #power:Landroid/os/IPowerManager;
    :cond_0
    :goto_0
    return-void

    .line 625
    .restart local v0       #power:Landroid/os/IPowerManager;
    :cond_1
    const/4 v1, -0x1

    invoke-interface {v0, v1}, Landroid/os/IPowerManager;->setTemporaryScreenBrightnessSettingOverride(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 628
    .end local v0           #power:Landroid/os/IPowerManager;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private setEcoMode(I)V
    .locals 3
    .parameter "mode"

    .prologue
    .line 440
    const-string v0, "BrightnessPreference"

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

    .line 441
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/jrdsettings/BrightnessPreference;->mAutomaticEcoMode:Z

    .line 442
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness_eco_mode"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 444
    return-void

    .line 441
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setEcoModeChangeState()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 452
    iget-boolean v0, p0, Lcom/android/jrdsettings/BrightnessPreference;->mEcoFirstLaunch:Z

    if-eqz v0, :cond_2

    .line 455
    iput-boolean v1, p0, Lcom/android/jrdsettings/BrightnessPreference;->mEcoFirstLaunch:Z

    .line 464
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/android/jrdsettings/BrightnessPreference;->mEcoModeChangeOut:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/jrdsettings/BrightnessPreference;->mEcoModeChangeSelf:Z

    if-nez v0, :cond_1

    .line 465
    iput-boolean v1, p0, Lcom/android/jrdsettings/BrightnessPreference;->mEcoModeChangeOut:Z

    .line 467
    :cond_1
    return-void

    .line 459
    :cond_2
    iget-boolean v0, p0, Lcom/android/jrdsettings/BrightnessPreference;->mEcoModeChangeOut:Z

    if-nez v0, :cond_0

    .line 460
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/jrdsettings/BrightnessPreference;->mEcoModeChangeSelf:Z

    goto :goto_0
.end method

.method private setMode(I)V
    .locals 4
    .parameter "mode"

    .prologue
    const/4 v0, 0x1

    .line 634
    const-string v1, "BrightnessPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setMode, the mode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    if-ne p1, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/android/jrdsettings/BrightnessPreference;->mAutomaticMode:Z

    .line 636
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness_mode"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 638
    return-void

    .line 635
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setModeChangeState()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 299
    iget-boolean v0, p0, Lcom/android/jrdsettings/BrightnessPreference;->mFirstLaunch:Z

    if-eqz v0, :cond_2

    .line 302
    iput-boolean v1, p0, Lcom/android/jrdsettings/BrightnessPreference;->mFirstLaunch:Z

    .line 311
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/android/jrdsettings/BrightnessPreference;->mModeChangeOut:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/jrdsettings/BrightnessPreference;->mModeChangeSelf:Z

    if-nez v0, :cond_1

    .line 312
    iput-boolean v1, p0, Lcom/android/jrdsettings/BrightnessPreference;->mModeChangeOut:Z

    .line 314
    :cond_1
    return-void

    .line 306
    :cond_2
    iget-boolean v0, p0, Lcom/android/jrdsettings/BrightnessPreference;->mModeChangeOut:Z

    if-nez v0, :cond_0

    .line 307
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/jrdsettings/BrightnessPreference;->mModeChangeSelf:Z

    goto :goto_0
.end method

.method private updateOldAutomaticEcoMode()V
    .locals 3

    .prologue
    .line 424
    const-string v0, "BrightnessPreference"

    const-string v1, "updateOldAutomaticEcoMode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    iget-boolean v0, p0, Lcom/android/jrdsettings/BrightnessPreference;->mEcoModeChangeSelf:Z

    if-nez v0, :cond_0

    .line 426
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/jrdsettings/BrightnessPreference;->mEcoModeChangeOut:Z

    .line 428
    :cond_0
    iget-boolean v0, p0, Lcom/android/jrdsettings/BrightnessPreference;->mEcoModeChangeOut:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/jrdsettings/BrightnessPreference;->mEcoModeChangeSelf:Z

    if-nez v0, :cond_1

    .line 430
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/jrdsettings/BrightnessPreference;->getBrightnessEcoMode(I)I

    move-result v0

    iput v0, p0, Lcom/android/jrdsettings/BrightnessPreference;->mOldAutomaticEco:I

    .line 431
    const-string v0, "BrightnessPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateOldAutomaticEcoMode + mOldAutomaticEco = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/jrdsettings/BrightnessPreference;->mOldAutomaticEco:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    :cond_1
    iget-boolean v0, p0, Lcom/android/jrdsettings/BrightnessPreference;->mEcoModeChangeSelf:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/jrdsettings/BrightnessPreference;->mEcoModeChangeOut:Z

    if-nez v0, :cond_2

    .line 435
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/jrdsettings/BrightnessPreference;->mEcoModeChangeSelf:Z

    .line 437
    :cond_2
    return-void
.end method

.method private updateOldAutomaticMode()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 478
    const-string v0, "BrightnessPreference"

    const-string v1, "updateOldAutomaticMode"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    iget-boolean v0, p0, Lcom/android/jrdsettings/BrightnessPreference;->mModeChangeSelf:Z

    if-nez v0, :cond_0

    .line 480
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/jrdsettings/BrightnessPreference;->mModeChangeOut:Z

    .line 482
    :cond_0
    iget-boolean v0, p0, Lcom/android/jrdsettings/BrightnessPreference;->mModeChangeOut:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/jrdsettings/BrightnessPreference;->mModeChangeSelf:Z

    if-nez v0, :cond_1

    .line 484
    invoke-direct {p0, v3}, Lcom/android/jrdsettings/BrightnessPreference;->getBrightnessMode(I)I

    move-result v0

    iput v0, p0, Lcom/android/jrdsettings/BrightnessPreference;->mOldAutomatic:I

    .line 485
    const-string v0, "BrightnessPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateOldAutomaticMode+mOldAutomatic="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/jrdsettings/BrightnessPreference;->mOldAutomatic:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    :cond_1
    iget-boolean v0, p0, Lcom/android/jrdsettings/BrightnessPreference;->mModeChangeSelf:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/jrdsettings/BrightnessPreference;->mModeChangeOut:Z

    if-nez v0, :cond_2

    .line 489
    iput-boolean v3, p0, Lcom/android/jrdsettings/BrightnessPreference;->mModeChangeSelf:Z

    .line 491
    :cond_2
    return-void
.end method

.method private updateSeekBarPos(I)V
    .locals 2
    .parameter "value"

    .prologue
    .line 565
    iget-object v0, p0, Lcom/android/jrdsettings/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_0

    .line 566
    const-string v0, "BrightnessPreference"

    const-string v1, "updateSeekBar position"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    iget-object v0, p0, Lcom/android/jrdsettings/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/android/jrdsettings/BrightnessPreference;->mScreenBrightnessMinimum:I

    sub-int v1, p1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 569
    :cond_0
    return-void
.end method


# virtual methods
.method public onActivityDestroy()V
    .locals 1

    .prologue
    .line 496
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/jrdsettings/BrightnessPreference;->mActivityDestoryed:Z

    .line 497
    invoke-super {p0}, Landroid/preference/DialogPreference;->onActivityDestroy()V

    .line 498
    return-void
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 6
    .parameter "view"

    .prologue
    const/4 v5, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 192
    invoke-super {p0, p1}, Landroid/preference/SeekBarDialogPreference;->onBindDialogView(Landroid/view/View;)V

    .line 193
    invoke-static {p1}, Lcom/android/jrdsettings/BrightnessPreference;->getSeekBar(Landroid/view/View;)Landroid/widget/SeekBar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/jrdsettings/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    .line 195
    iget-object v0, p0, Lcom/android/jrdsettings/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget v3, p0, Lcom/android/jrdsettings/BrightnessPreference;->mScreenBrightnessMaximum:I

    iget v4, p0, Lcom/android/jrdsettings/BrightnessPreference;->mScreenBrightnessMinimum:I

    sub-int/2addr v3, v4

    invoke-virtual {v0, v3}, Landroid/widget/AbsSeekBar;->setMax(I)V

    .line 196
    invoke-direct {p0, v2}, Lcom/android/jrdsettings/BrightnessPreference;->getBrightness(I)I

    move-result v0

    iput v0, p0, Lcom/android/jrdsettings/BrightnessPreference;->mOldBrightness:I

    .line 197
    iget-object v0, p0, Lcom/android/jrdsettings/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget v3, p0, Lcom/android/jrdsettings/BrightnessPreference;->mOldBrightness:I

    iget v4, p0, Lcom/android/jrdsettings/BrightnessPreference;->mScreenBrightnessMinimum:I

    sub-int/2addr v3, v4

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 204
    const v0, 0x7f0b00dd

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/jrdsettings/BrightnessPreference;->mCheckBox:Landroid/widget/CheckBox;

    .line 206
    const v0, 0x7f0b00e1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/jrdsettings/BrightnessPreference;->mAutoBacklightCheckBox:Landroid/widget/CheckBox;

    .line 207
    const v0, 0x7f0b00df

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/jrdsettings/BrightnessPreference;->mAutoBacklightTitle:Landroid/widget/TextView;

    .line 208
    const v0, 0x7f0b00e0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/jrdsettings/BrightnessPreference;->mAutoBackligthSummary:Landroid/widget/TextView;

    .line 214
    iget-object v0, p0, Lcom/android/jrdsettings/BrightnessPreference;->mAutoBacklightCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 215
    iget-object v0, p0, Lcom/android/jrdsettings/BrightnessPreference;->mAutoBacklightTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 216
    iget-object v0, p0, Lcom/android/jrdsettings/BrightnessPreference;->mAutoBackligthSummary:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 217
    invoke-direct {p0, v5}, Lcom/android/jrdsettings/BrightnessPreference;->getBrightnessEcoMode(I)I

    move-result v0

    iput v0, p0, Lcom/android/jrdsettings/BrightnessPreference;->mOldAutomaticEco:I

    .line 218
    iget v0, p0, Lcom/android/jrdsettings/BrightnessPreference;->mOldAutomaticEco:I

    if-ne v0, v5, :cond_5

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/jrdsettings/BrightnessPreference;->mAutomaticEcoMode:Z

    .line 219
    iget-object v0, p0, Lcom/android/jrdsettings/BrightnessPreference;->mAutoBacklightCheckBox:Landroid/widget/CheckBox;

    iget-boolean v3, p0, Lcom/android/jrdsettings/BrightnessPreference;->mAutomaticEcoMode:Z

    invoke-virtual {v0, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 220
    iget-object v3, p0, Lcom/android/jrdsettings/BrightnessPreference;->mAutoBacklightCheckBox:Landroid/widget/CheckBox;

    iget-boolean v0, p0, Lcom/android/jrdsettings/BrightnessPreference;->mAutomaticMode:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/jrdsettings/BrightnessPreference;->USE_SCREEN_AUTO_BRIGHTNESS_ADJUSTMENT:Z

    if-eqz v0, :cond_6

    :cond_0
    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 221
    iget-object v3, p0, Lcom/android/jrdsettings/BrightnessPreference;->mAutoBacklightTitle:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/android/jrdsettings/BrightnessPreference;->mAutomaticMode:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/jrdsettings/BrightnessPreference;->USE_SCREEN_AUTO_BRIGHTNESS_ADJUSTMENT:Z

    if-eqz v0, :cond_7

    :cond_1
    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 222
    iget-object v3, p0, Lcom/android/jrdsettings/BrightnessPreference;->mAutoBackligthSummary:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/android/jrdsettings/BrightnessPreference;->mAutomaticMode:Z

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/android/jrdsettings/BrightnessPreference;->USE_SCREEN_AUTO_BRIGHTNESS_ADJUSTMENT:Z

    if-eqz v0, :cond_8

    :cond_2
    move v0, v1

    :goto_3
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 226
    iget-boolean v0, p0, Lcom/android/jrdsettings/BrightnessPreference;->mAutomaticAvailable:Z

    if-eqz v0, :cond_a

    .line 227
    iget-object v0, p0, Lcom/android/jrdsettings/BrightnessPreference;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 228
    invoke-direct {p0, v2}, Lcom/android/jrdsettings/BrightnessPreference;->getBrightnessMode(I)I

    move-result v0

    iput v0, p0, Lcom/android/jrdsettings/BrightnessPreference;->mOldAutomatic:I

    .line 229
    iget v0, p0, Lcom/android/jrdsettings/BrightnessPreference;->mOldAutomatic:I

    if-ne v0, v1, :cond_9

    move v0, v1

    :goto_4
    iput-boolean v0, p0, Lcom/android/jrdsettings/BrightnessPreference;->mAutomaticMode:Z

    .line 230
    iget-object v0, p0, Lcom/android/jrdsettings/BrightnessPreference;->mCheckBox:Landroid/widget/CheckBox;

    iget-boolean v3, p0, Lcom/android/jrdsettings/BrightnessPreference;->mAutomaticMode:Z

    invoke-virtual {v0, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 231
    iget-object v0, p0, Lcom/android/jrdsettings/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget-boolean v3, p0, Lcom/android/jrdsettings/BrightnessPreference;->mAutomaticMode:Z

    if-eqz v3, :cond_3

    sget-boolean v3, Lcom/android/jrdsettings/BrightnessPreference;->USE_SCREEN_AUTO_BRIGHTNESS_ADJUSTMENT:Z

    if-eqz v3, :cond_4

    :cond_3
    move v2, v1

    :cond_4
    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 238
    :goto_5
    iget-object v0, p0, Lcom/android/jrdsettings/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 239
    return-void

    :cond_5
    move v0, v2

    .line 218
    goto :goto_0

    :cond_6
    move v0, v2

    .line 220
    goto :goto_1

    :cond_7
    move v0, v2

    .line 221
    goto :goto_2

    :cond_8
    move v0, v2

    .line 222
    goto :goto_3

    :cond_9
    move v0, v2

    .line 229
    goto :goto_4

    .line 233
    :cond_a
    iget-object v0, p0, Lcom/android/jrdsettings/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 235
    iget-object v0, p0, Lcom/android/jrdsettings/BrightnessPreference;->mCheckBox:Landroid/widget/CheckBox;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 5
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 260
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v3, 0x7f0b00dd

    if-ne v0, v3, :cond_a

    .line 261
    const-string v0, "BrightnessPreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCheckedChanged, automatic isChecked =  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    invoke-direct {p0}, Lcom/android/jrdsettings/BrightnessPreference;->setModeChangeState()V

    .line 263
    if-eqz p2, :cond_6

    move v0, v1

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/jrdsettings/BrightnessPreference;->setMode(I)V

    .line 265
    iget-object v3, p0, Lcom/android/jrdsettings/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget-boolean v0, p0, Lcom/android/jrdsettings/BrightnessPreference;->mAutomaticMode:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/jrdsettings/BrightnessPreference;->USE_SCREEN_AUTO_BRIGHTNESS_ADJUSTMENT:Z

    if-eqz v0, :cond_7

    :cond_0
    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 268
    iget-object v3, p0, Lcom/android/jrdsettings/BrightnessPreference;->mAutoBacklightCheckBox:Landroid/widget/CheckBox;

    iget-boolean v0, p0, Lcom/android/jrdsettings/BrightnessPreference;->mAutomaticMode:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/jrdsettings/BrightnessPreference;->USE_SCREEN_AUTO_BRIGHTNESS_ADJUSTMENT:Z

    if-eqz v0, :cond_8

    :cond_1
    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 269
    iget-object v3, p0, Lcom/android/jrdsettings/BrightnessPreference;->mAutoBacklightTitle:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/android/jrdsettings/BrightnessPreference;->mAutomaticMode:Z

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/android/jrdsettings/BrightnessPreference;->USE_SCREEN_AUTO_BRIGHTNESS_ADJUSTMENT:Z

    if-eqz v0, :cond_9

    :cond_2
    move v0, v1

    :goto_3
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 270
    iget-object v0, p0, Lcom/android/jrdsettings/BrightnessPreference;->mAutoBackligthSummary:Landroid/widget/TextView;

    iget-boolean v3, p0, Lcom/android/jrdsettings/BrightnessPreference;->mAutomaticMode:Z

    if-eqz v3, :cond_3

    sget-boolean v3, Lcom/android/jrdsettings/BrightnessPreference;->USE_SCREEN_AUTO_BRIGHTNESS_ADJUSTMENT:Z

    if-eqz v3, :cond_4

    :cond_3
    move v2, v1

    :cond_4
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 283
    if-nez p2, :cond_5

    .line 284
    iget-object v0, p0, Lcom/android/jrdsettings/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    iget v1, p0, Lcom/android/jrdsettings/BrightnessPreference;->mScreenBrightnessMinimum:I

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/android/jrdsettings/BrightnessPreference;->setBrightness(I)V

    .line 292
    :cond_5
    :goto_4
    return-void

    :cond_6
    move v0, v2

    .line 263
    goto :goto_0

    :cond_7
    move v0, v2

    .line 265
    goto :goto_1

    :cond_8
    move v0, v2

    .line 268
    goto :goto_2

    :cond_9
    move v0, v2

    .line 269
    goto :goto_3

    .line 286
    :cond_a
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0b00e1

    if-ne v0, v1, :cond_5

    .line 287
    const-string v0, "BrightnessPreference"

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

    .line 288
    invoke-direct {p0}, Lcom/android/jrdsettings/BrightnessPreference;->setEcoModeChangeState()V

    .line 289
    if-eqz p2, :cond_b

    const/4 v2, 0x2

    :cond_b
    invoke-direct {p0, v2}, Lcom/android/jrdsettings/BrightnessPreference;->setEcoMode(I)V

    goto :goto_4
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 470
    iget-object v0, p0, Lcom/android/jrdsettings/BrightnessPreference;->mAutoBacklightTitle:Landroid/widget/TextView;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/jrdsettings/BrightnessPreference;->mAutoBackligthSummary:Landroid/widget/TextView;

    if-ne p1, v0, :cond_1

    .line 471
    :cond_0
    iget-object v1, p0, Lcom/android/jrdsettings/BrightnessPreference;->mAutoBacklightCheckBox:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/android/jrdsettings/BrightnessPreference;->mAutoBacklightCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 473
    :cond_1
    return-void

    .line 471
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDialogClosed(Z)V
    .locals 4
    .parameter "positiveResult"

    .prologue
    .line 502
    const-string v1, "BrightnessPreference"

    const-string v2, "onDialogClosed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onDialogClosed(Z)V

    .line 505
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 507
    .local v0, resolver:Landroid/content/ContentResolver;
    if-eqz p1, :cond_0

    .line 509
    const-string v1, "screen_brightness"

    iget-object v2, p0, Lcom/android/jrdsettings/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v2

    iget v3, p0, Lcom/android/jrdsettings/BrightnessPreference;->mScreenBrightnessMinimum:I

    add-int/2addr v2, v3

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 520
    :goto_0
    iget-object v1, p0, Lcom/android/jrdsettings/BrightnessPreference;->mBrightnessObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 521
    iget-object v1, p0, Lcom/android/jrdsettings/BrightnessPreference;->mBrightnessModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 524
    iget-object v1, p0, Lcom/android/jrdsettings/BrightnessPreference;->mBrightnessEcoModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 527
    return-void

    .line 517
    :cond_0
    invoke-direct {p0}, Lcom/android/jrdsettings/BrightnessPreference;->restoreOldState()V

    goto :goto_0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromTouch"

    .prologue
    .line 247
    iget v0, p0, Lcom/android/jrdsettings/BrightnessPreference;->mScreenBrightnessMinimum:I

    add-int/2addr v0, p2

    invoke-direct {p0, v0}, Lcom/android/jrdsettings/BrightnessPreference;->setBrightness(I)V

    .line 249
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 6
    .parameter "state"

    .prologue
    const/4 v4, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 666
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v5, Lcom/android/jrdsettings/BrightnessPreference$SavedState;

    invoke-virtual {v1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 668
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 691
    :goto_0
    return-void

    :cond_1
    move-object v0, p1

    .line 672
    check-cast v0, Lcom/android/jrdsettings/BrightnessPreference$SavedState;

    .line 673
    .local v0, myState:Lcom/android/jrdsettings/BrightnessPreference$SavedState;
    invoke-virtual {v0}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/preference/DialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 674
    iget v1, v0, Lcom/android/jrdsettings/BrightnessPreference$SavedState;->oldProgress:I

    iput v1, p0, Lcom/android/jrdsettings/BrightnessPreference;->mOldBrightness:I

    .line 675
    iget-boolean v1, v0, Lcom/android/jrdsettings/BrightnessPreference$SavedState;->oldAutomatic:Z

    if-eqz v1, :cond_2

    move v1, v2

    :goto_1
    iput v1, p0, Lcom/android/jrdsettings/BrightnessPreference;->mOldAutomatic:I

    .line 676
    iget-boolean v1, v0, Lcom/android/jrdsettings/BrightnessPreference$SavedState;->automatic:Z

    if-eqz v1, :cond_3

    :goto_2
    invoke-direct {p0, v2}, Lcom/android/jrdsettings/BrightnessPreference;->setMode(I)V

    .line 680
    iget-boolean v1, v0, Lcom/android/jrdsettings/BrightnessPreference$SavedState;->oldAutomaticEco:Z

    if-eqz v1, :cond_4

    move v1, v4

    :goto_3
    iput v1, p0, Lcom/android/jrdsettings/BrightnessPreference;->mOldAutomaticEco:I

    .line 681
    iget-boolean v1, v0, Lcom/android/jrdsettings/BrightnessPreference$SavedState;->automaticEco:Z

    if-eqz v1, :cond_5

    :goto_4
    invoke-direct {p0, v4}, Lcom/android/jrdsettings/BrightnessPreference;->setEcoMode(I)V

    .line 687
    iget v1, v0, Lcom/android/jrdsettings/BrightnessPreference$SavedState;->curBrightness:I

    iput v1, p0, Lcom/android/jrdsettings/BrightnessPreference;->mCurBrightness:I

    .line 689
    iget v1, v0, Lcom/android/jrdsettings/BrightnessPreference$SavedState;->progress:I

    iget v2, p0, Lcom/android/jrdsettings/BrightnessPreference;->mScreenBrightnessMinimum:I

    add-int/2addr v1, v2

    invoke-direct {p0, v1}, Lcom/android/jrdsettings/BrightnessPreference;->setBrightness(I)V

    goto :goto_0

    :cond_2
    move v1, v3

    .line 675
    goto :goto_1

    :cond_3
    move v2, v3

    .line 676
    goto :goto_2

    :cond_4
    move v1, v3

    .line 680
    goto :goto_3

    :cond_5
    move v4, v3

    .line 681
    goto :goto_4
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 642
    invoke-super {p0}, Landroid/preference/DialogPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 643
    .local v1, superState:Landroid/os/Parcelable;
    invoke-virtual {p0}, Landroid/preference/DialogPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/preference/DialogPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move-object v0, v1

    .line 661
    :goto_0
    return-object v0

    .line 646
    :cond_1
    new-instance v0, Lcom/android/jrdsettings/BrightnessPreference$SavedState;

    invoke-direct {v0, v1}, Lcom/android/jrdsettings/BrightnessPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 647
    .local v0, myState:Lcom/android/jrdsettings/BrightnessPreference$SavedState;
    iget-object v2, p0, Lcom/android/jrdsettings/BrightnessPreference;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/jrdsettings/BrightnessPreference$SavedState;->automatic:Z

    .line 648
    iget-object v2, p0, Lcom/android/jrdsettings/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v2

    iput v2, v0, Lcom/android/jrdsettings/BrightnessPreference$SavedState;->progress:I

    .line 649
    iget v2, p0, Lcom/android/jrdsettings/BrightnessPreference;->mOldAutomatic:I

    if-ne v2, v3, :cond_2

    move v2, v3

    :goto_1
    iput-boolean v2, v0, Lcom/android/jrdsettings/BrightnessPreference$SavedState;->oldAutomatic:Z

    .line 650
    iget v2, p0, Lcom/android/jrdsettings/BrightnessPreference;->mOldBrightness:I

    iput v2, v0, Lcom/android/jrdsettings/BrightnessPreference$SavedState;->oldProgress:I

    .line 651
    iget v2, p0, Lcom/android/jrdsettings/BrightnessPreference;->mCurBrightness:I

    iput v2, v0, Lcom/android/jrdsettings/BrightnessPreference$SavedState;->curBrightness:I

    .line 654
    iget-object v2, p0, Lcom/android/jrdsettings/BrightnessPreference;->mAutoBacklightCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/jrdsettings/BrightnessPreference$SavedState;->automaticEco:Z

    .line 655
    iget v2, p0, Lcom/android/jrdsettings/BrightnessPreference;->mOldAutomaticEco:I

    const/4 v5, 0x2

    if-ne v2, v5, :cond_3

    :goto_2
    iput-boolean v3, v0, Lcom/android/jrdsettings/BrightnessPreference$SavedState;->oldAutomaticEco:Z

    .line 660
    invoke-direct {p0}, Lcom/android/jrdsettings/BrightnessPreference;->restoreOldState()V

    goto :goto_0

    :cond_2
    move v2, v4

    .line 649
    goto :goto_1

    :cond_3
    move v3, v4

    .line 655
    goto :goto_2
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 253
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 257
    return-void
.end method

.method protected showDialog(Landroid/os/Bundle;)V
    .locals 4
    .parameter "state"

    .prologue
    const/4 v3, 0x1

    .line 163
    iget-boolean v0, p0, Lcom/android/jrdsettings/BrightnessPreference;->mAutomaticAvailable:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/jrdsettings/BrightnessPreference;->getBrightnessMode(I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    iput-boolean v3, p0, Lcom/android/jrdsettings/BrightnessPreference;->mFirstLaunch:Z

    .line 165
    const-string v0, "BrightnessPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBindDialogView---mFirstLaunch="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/jrdsettings/BrightnessPreference;->mFirstLaunch:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->showDialog(Landroid/os/Bundle;)V

    .line 170
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/jrdsettings/BrightnessPreference;->mBrightnessObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 174
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/jrdsettings/BrightnessPreference;->mBrightnessModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 183
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness_eco_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/jrdsettings/BrightnessPreference;->mBrightnessEcoModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 188
    return-void
.end method
