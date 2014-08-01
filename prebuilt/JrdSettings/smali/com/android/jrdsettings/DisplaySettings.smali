.class public Lcom/android/jrdsettings/DisplaySettings;
.super Lcom/android/jrdsettings/SettingsPreferenceFragment;
.source "DisplaySettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# static fields
.field private static final ACTION_CLEARMOTION_DIMMED:Ljava/lang/String; = "com.mediatek.clearmotion.DIMMED_UPDATE"

.field private static final CONTACT_STRING:Ljava/lang/String; = "&"

.field public static final CURRENT_KEYGURAD_LAYER_KEY:Ljava/lang/String; = "mtk_current_keyguard_layer"

.field private static final DATA_STORE_NONE:Ljava/lang/String; = "none"

.field private static final DEFAULT_LOCK_SCREEN_NOTIFICATIONS:I = 0x1

.field private static final DISPLAY_DEFAULT:Ljava/lang/String; = "display_default"

.field private static final DISPLAY_PERSONALIZE:Ljava/lang/String; = "display_personalize"

.field private static final DLG_GLOBAL_CHANGE_WARNING:I = 0x1

.field private static final FALLBACK_SCREEN_Off_VALUE:I = 0x1

.field private static final FALLBACK_SCREEN_TIMEOUT_VALUE:I = 0x7530

.field private static final FONT_MANAGER_PKG:Ljava/lang/String; = "com.jrdcom.fontmanager"

.field private static final INCOMING_INDICATOR_ON_LOCKSCREEN:Ljava/lang/String; = "incoming_indicator_on_lockscreen"

.field private static final KEY_ACCELEROMETER:Ljava/lang/String; = "accelerometer"

.field private static final KEY_BRIGHTNESS:Ljava/lang/String; = "brightness"

.field private static final KEY_BUTTON_LED:Ljava/lang/String; = "button_led"

.field private static final KEY_CLEAR_MOTION:Ljava/lang/String; = "clearMotion"

.field private static final KEY_COLOR:Ljava/lang/String; = "color"

.field private static final KEY_DISPLAY_CLEAR_MOTION:Ljava/lang/String; = "persist.sys.display.clearMotion"

.field private static final KEY_DISPLAY_CLEAR_MOTION_DIMMED:Ljava/lang/String; = "sys.display.clearMotion.dimmed"

.field private static final KEY_FONT_SIZE:Ljava/lang/String; = "font_size"

.field private static final KEY_FONT_STYLE:Ljava/lang/String; = "font_style"

.field private static final KEY_HDMI_SETTINGS:Ljava/lang/String; = "hdmi_settings"

.field private static final KEY_LANDSCAPE_LAUNCHER:Ljava/lang/String; = "landscape_launcher"

.field private static final KEY_LOCK_SCREEN_NOTIFICATIONS:Ljava/lang/String; = "lock_screen_notifications"

.field private static final KEY_LOCK_SCREEN_STYLE:Ljava/lang/String; = "lock_screen_style"

.field private static final KEY_NOTIFICATION_PULSE:Ljava/lang/String; = "notification_pulse"

.field private static final KEY_SCENES:Ljava/lang/String; = "scenes"

.field private static final KEY_SCREEN_OFF:Ljava/lang/String; = "screen_off"

.field private static final KEY_SCREEN_SAVER:Ljava/lang/String; = "screensaver"

.field private static final KEY_SCREEN_TIMEOUT:Ljava/lang/String; = "screen_timeout"

.field private static final KEY_WALLPAPER:Ljava/lang/String; = "wallpaper"

.field private static final KEY_WIFI_DISPLAY:Ljava/lang/String; = "wifi_display"

.field private static final LOCK_SCREEN_STYLE_INTENT_NAME:Ljava/lang/String; = "com.mediatek.lockscreensettings.LockScreenStyleSettings"

.field private static final LOCK_SCREEN_STYLE_INTENT_PACKAGE:Ljava/lang/String; = "com.android.jrdsettings"

.field private static final PARSER_STRING_LENGTH_ONE:I = 0x1

.field private static final PARSER_STRING_LENGTH_TWO:I = 0x2

.field private static final PARSER_STRING_LENGTH_ZERO:I = 0x0

.field private static final TAG:Ljava/lang/String; = "DisplaySettings"


# instance fields
.field private mAccelerometer:Landroid/preference/CheckBoxPreference;

.field mBrightNess:Lcom/android/jrdsettings/JrdBrightnessPreference;

.field private mButtonLED:Landroid/preference/CheckBoxPreference;

.field private mClearMotion:Landroid/preference/CheckBoxPreference;

.field mColorPref:Landroid/preference/Preference;

.field private final mCurConfig:Landroid/content/res/Configuration;

.field private mDisplayDefCategory:Landroid/preference/PreferenceCategory;

.field private mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mDisplayPerCategory:Landroid/preference/PreferenceCategory;

.field private mExt:Lcom/mediatek/settings/ext/ISettingsMiscExt;

.field private mFontSizePref:Lcom/android/jrdsettings/WarnedListPreference;

.field private mFontStylePref:Landroid/preference/PreferenceScreen;

.field private mHDMISettings:Landroid/preference/Preference;

.field private mHdmiManager:Lcom/mediatek/common/hdmi/IMtkHdmiManager;

.field private mIsFontManagerExsit:Z

.field private mIsUpdateFont:Z

.field private mLandscapeLauncher:Landroid/preference/ListPreference;

.field private mLockScreenNotifications:Lcom/android/jrdsettings/MultiLineCheckBoxPreference;

.field private mLockScreenStylePref:Landroid/preference/Preference;

.field private mNotificationPulse:Landroid/preference/CheckBoxPreference;

.field private mPackageReceiver:Landroid/content/BroadcastReceiver;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private final mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

.field mScencePref:Landroid/preference/Preference;

.field private mScreenOffObserver:Landroid/database/ContentObserver;

.field private mScreenOffPreference:Landroid/preference/ListPreference;

.field private mScreenSaverPreference:Landroid/preference/Preference;

.field private mScreenTimeoutObserver:Landroid/database/ContentObserver;

.field private mScreenTimeoutPreference:Landroid/preference/ListPreference;

.field private mSmartBookPlugReceiver:Landroid/content/BroadcastReceiver;

.field private mUpdateClearMotionStatusReceiver:Landroid/content/BroadcastReceiver;

.field mWallpaperPref:Landroid/preference/Preference;

.field private mWfdExt:Lcom/mediatek/settings/wfd/WfdSettingsExt;

.field private mWifiDisplayPreference:Landroid/preference/Preference;

.field private mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;-><init>()V

    .line 143
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/android/jrdsettings/DisplaySettings;->mCurConfig:Landroid/content/res/Configuration;

    .line 209
    new-instance v0, Lcom/android/jrdsettings/DisplaySettings$1;

    invoke-direct {v0, p0}, Lcom/android/jrdsettings/DisplaySettings$1;-><init>(Lcom/android/jrdsettings/DisplaySettings;)V

    iput-object v0, p0, Lcom/android/jrdsettings/DisplaySettings;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    .line 217
    new-instance v0, Lcom/android/jrdsettings/DisplaySettings$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/jrdsettings/DisplaySettings$2;-><init>(Lcom/android/jrdsettings/DisplaySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/jrdsettings/DisplaySettings;->mScreenTimeoutObserver:Landroid/database/ContentObserver;

    .line 228
    new-instance v0, Lcom/android/jrdsettings/DisplaySettings$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/jrdsettings/DisplaySettings$3;-><init>(Lcom/android/jrdsettings/DisplaySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/jrdsettings/DisplaySettings;->mScreenOffObserver:Landroid/database/ContentObserver;

    .line 244
    new-instance v0, Lcom/android/jrdsettings/DisplaySettings$4;

    invoke-direct {v0, p0}, Lcom/android/jrdsettings/DisplaySettings$4;-><init>(Lcom/android/jrdsettings/DisplaySettings;)V

    iput-object v0, p0, Lcom/android/jrdsettings/DisplaySettings;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    .line 1130
    new-instance v0, Lcom/android/jrdsettings/DisplaySettings$6;

    invoke-direct {v0, p0}, Lcom/android/jrdsettings/DisplaySettings$6;-><init>(Lcom/android/jrdsettings/DisplaySettings;)V

    iput-object v0, p0, Lcom/android/jrdsettings/DisplaySettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 1231
    new-instance v0, Lcom/android/jrdsettings/DisplaySettings$7;

    invoke-direct {v0, p0}, Lcom/android/jrdsettings/DisplaySettings$7;-><init>(Lcom/android/jrdsettings/DisplaySettings;)V

    iput-object v0, p0, Lcom/android/jrdsettings/DisplaySettings;->mSmartBookPlugReceiver:Landroid/content/BroadcastReceiver;

    .line 1255
    new-instance v0, Lcom/android/jrdsettings/DisplaySettings$8;

    invoke-direct {v0, p0}, Lcom/android/jrdsettings/DisplaySettings$8;-><init>(Lcom/android/jrdsettings/DisplaySettings;)V

    iput-object v0, p0, Lcom/android/jrdsettings/DisplaySettings;->mUpdateClearMotionStatusReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/jrdsettings/DisplaySettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/android/jrdsettings/DisplaySettings;->updateAccelerometerRotationCheckbox()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/jrdsettings/DisplaySettings;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 112
    invoke-direct {p0, p1}, Lcom/android/jrdsettings/DisplaySettings;->updateTimeoutPreference(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/jrdsettings/DisplaySettings;)Lcom/mediatek/common/hdmi/IMtkHdmiManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/jrdsettings/DisplaySettings;->mHdmiManager:Lcom/mediatek/common/hdmi/IMtkHdmiManager;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/jrdsettings/DisplaySettings;)Landroid/preference/Preference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/jrdsettings/DisplaySettings;->mHDMISettings:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/jrdsettings/DisplaySettings;)Landroid/preference/PreferenceCategory;
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/jrdsettings/DisplaySettings;->mDisplayDefCategory:Landroid/preference/PreferenceCategory;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/jrdsettings/DisplaySettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/android/jrdsettings/DisplaySettings;->updateClearMotionStatus()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/jrdsettings/DisplaySettings;)Landroid/preference/ListPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/jrdsettings/DisplaySettings;->mScreenOffPreference:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/jrdsettings/DisplaySettings;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 112
    invoke-direct {p0, p1}, Lcom/android/jrdsettings/DisplaySettings;->updateScreenOffPreference(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/jrdsettings/DisplaySettings;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 112
    invoke-direct {p0, p1}, Lcom/android/jrdsettings/DisplaySettings;->updateScreenOffPreferenceDescription(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/jrdsettings/DisplaySettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/android/jrdsettings/DisplaySettings;->updateLandscapeList()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/jrdsettings/DisplaySettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/android/jrdsettings/DisplaySettings;->updateLockScreenStyle()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/jrdsettings/DisplaySettings;)Lcom/android/jrdsettings/WarnedListPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/jrdsettings/DisplaySettings;->mFontSizePref:Lcom/android/jrdsettings/WarnedListPreference;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/jrdsettings/DisplaySettings;Landroid/hardware/display/WifiDisplayStatus;)Landroid/hardware/display/WifiDisplayStatus;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 112
    iput-object p1, p0, Lcom/android/jrdsettings/DisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/jrdsettings/DisplaySettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/android/jrdsettings/DisplaySettings;->updateWifiDisplaySummary()V

    return-void
.end method

.method private clearMotionStyle()V
    .locals 6

    .prologue
    const/16 v5, 0x11

    .line 496
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f090198

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 497
    .local v2, title:Ljava/lang/String;
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 498
    .local v0, spanText:Landroid/text/SpannableString;
    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v1

    .line 499
    .local v1, strLen:I
    new-instance v3, Landroid/text/style/SuperscriptSpan;

    invoke-direct {v3}, Landroid/text/style/SuperscriptSpan;-><init>()V

    add-int/lit8 v4, v1, -0x2

    invoke-virtual {v0, v3, v4, v1, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 500
    new-instance v3, Landroid/text/style/RelativeSizeSpan;

    const v4, 0x3f19999a

    invoke-direct {v3, v4}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    add-int/lit8 v4, v1, -0x2

    invoke-virtual {v0, v3, v4, v1, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 501
    iget-object v3, p0, Lcom/android/jrdsettings/DisplaySettings;->mClearMotion:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v0}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 502
    return-void
.end method

.method private disableUnusableTimeouts(Landroid/preference/ListPreference;)V
    .locals 13
    .parameter "screenTimeoutPreference"

    .prologue
    .line 645
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    const-string v12, "device_policy"

    invoke-virtual {v11, v12}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 648
    .local v0, dpm:Landroid/app/admin/DevicePolicyManager;
    if-eqz v0, :cond_0

    const/4 v11, 0x0

    invoke-virtual {v0, v11}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v3

    .line 649
    .local v3, maxTimeout:J
    :goto_0
    const-wide/16 v11, 0x0

    cmp-long v11, v3, v11

    if-nez v11, :cond_1

    .line 678
    :goto_1
    return-void

    .line 648
    .end local v3           #maxTimeout:J
    :cond_0
    const-wide/16 v3, 0x0

    goto :goto_0

    .line 652
    .restart local v3       #maxTimeout:J
    :cond_1
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 653
    .local v1, entries:[Ljava/lang/CharSequence;
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v10

    .line 654
    .local v10, values:[Ljava/lang/CharSequence;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 655
    .local v5, revisedEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 656
    .local v6, revisedValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    array-length v11, v10

    if-ge v2, v11, :cond_3

    .line 657
    aget-object v11, v10, v2

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    .line 658
    .local v7, timeout:J
    cmp-long v11, v7, v3

    if-gtz v11, :cond_2

    .line 659
    aget-object v11, v1, v2

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 660
    aget-object v11, v10, v2

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 656
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 663
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

    .line 664
    :cond_4
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v11

    new-array v11, v11, [Ljava/lang/CharSequence;

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/lang/CharSequence;

    invoke-virtual {p1, v11}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 666
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v11

    new-array v11, v11, [Ljava/lang/CharSequence;

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/lang/CharSequence;

    invoke-virtual {p1, v11}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 668
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 669
    .local v9, userPreference:I
    int-to-long v11, v9

    cmp-long v11, v11, v3

    if-gtz v11, :cond_5

    .line 670
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1, v11}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 677
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

.method private getScreenOffValue()I
    .locals 8

    .prologue
    .line 530
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "screen_off"

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 533
    .local v1, currentValue:I
    const-string v5, "DisplaySettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getScreenOffValue()---currentValue="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    const/4 v0, 0x0

    .line 535
    .local v0, bestMatch:I
    const/4 v3, 0x0

    .line 536
    .local v3, timeout:I
    iget-object v5, p0, Lcom/android/jrdsettings/DisplaySettings;->mScreenOffPreference:Landroid/preference/ListPreference;

    invoke-virtual {v5}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v4

    .line 538
    .local v4, valuesTimeout:[Ljava/lang/CharSequence;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v5, v4

    if-ge v2, v5, :cond_2

    .line 539
    aget-object v5, v4, v2

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 540
    if-ne v1, v3, :cond_0

    .line 549
    .end local v1           #currentValue:I
    :goto_1
    return v1

    .line 543
    .restart local v1       #currentValue:I
    :cond_0
    if-le v1, v3, :cond_1

    .line 544
    move v0, v2

    .line 538
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 548
    :cond_2
    const-string v5, "DisplaySettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getTimoutValue()---bestMatch="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    aget-object v5, v4, v0

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_1
.end method

.method private getTimoutValue()I
    .locals 8

    .prologue
    .line 555
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "screen_off_timeout"

    const/16 v7, 0x7530

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 558
    .local v1, currentValue:I
    const-string v5, "DisplaySettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getTimoutValue()---currentValue="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    const/4 v0, 0x0

    .line 560
    .local v0, bestMatch:I
    const/4 v3, 0x0

    .line 561
    .local v3, timeout:I
    iget-object v5, p0, Lcom/android/jrdsettings/DisplaySettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    invoke-virtual {v5}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v4

    .line 563
    .local v4, valuesTimeout:[Ljava/lang/CharSequence;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v5, v4

    if-ge v2, v5, :cond_2

    .line 564
    aget-object v5, v4, v2

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 565
    if-ne v1, v3, :cond_0

    .line 574
    .end local v1           #currentValue:I
    :goto_1
    return v1

    .line 568
    .restart local v1       #currentValue:I
    :cond_0
    if-le v1, v3, :cond_1

    .line 569
    move v0, v2

    .line 563
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 573
    :cond_2
    const-string v5, "DisplaySettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getTimoutValue()---bestMatch="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    aget-object v5, v4, v0

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_1
.end method

.method private queryPluginKeyguardLayers()Z
    .locals 12

    .prologue
    const/4 v8, 0x0

    .line 1188
    const/4 v7, 0x0

    .line 1189
    .local v7, pluginLayers:Z
    const/4 v2, 0x0

    .line 1191
    .local v2, info:Lcom/mediatek/common/policy/KeyguardLayerInfo;
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const-class v10, Lcom/mediatek/common/policy/IKeyguardLayer;

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    new-array v11, v11, [Landroid/content/pm/Signature;

    invoke-static {v9, v10, v11}, Lcom/mediatek/pluginmanager/PluginManager;->create(Landroid/content/Context;Ljava/lang/String;[Landroid/content/pm/Signature;)Lcom/mediatek/pluginmanager/PluginManager;

    move-result-object v4

    .line 1193
    .local v4, plugManager:Lcom/mediatek/pluginmanager/PluginManager;
    invoke-virtual {v4}, Lcom/mediatek/pluginmanager/PluginManager;->getPluginCount()I

    move-result v6

    .line 1194
    .local v6, pluginCount:I
    const-string v9, "DisplaySettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getKeyguardLayers: pluginCount = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1195
    if-eqz v6, :cond_1

    .line 1198
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v6, :cond_1

    .line 1199
    invoke-virtual {v4, v1}, Lcom/mediatek/pluginmanager/PluginManager;->getPlugin(I)Lcom/mediatek/pluginmanager/Plugin;

    move-result-object v5

    .line 1200
    .local v5, plugin:Lcom/mediatek/pluginmanager/Plugin;,"Lcom/mediatek/pluginmanager/Plugin<Lcom/mediatek/common/policy/IKeyguardLayer;>;"
    invoke-virtual {v5}, Lcom/mediatek/pluginmanager/Plugin;->createObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/common/policy/IKeyguardLayer;

    .line 1201
    .local v3, keyguardLayer:Lcom/mediatek/common/policy/IKeyguardLayer;
    invoke-interface {v3}, Lcom/mediatek/common/policy/IKeyguardLayer;->getKeyguardLayerInfo()Lcom/mediatek/common/policy/KeyguardLayerInfo;

    move-result-object v2

    .line 1202
    const-string v9, "DisplaySettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getKeyguardLayers: i = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ",keyguardLayer = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ",info = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1203
    if-eqz v2, :cond_0

    .line 1204
    const/4 v7, 0x1

    move v8, v7

    .line 1214
    .end local v1           #i:I
    .end local v3           #keyguardLayer:Lcom/mediatek/common/policy/IKeyguardLayer;
    .end local v4           #plugManager:Lcom/mediatek/pluginmanager/PluginManager;
    .end local v5           #plugin:Lcom/mediatek/pluginmanager/Plugin;,"Lcom/mediatek/pluginmanager/Plugin<Lcom/mediatek/common/policy/IKeyguardLayer;>;"
    .end local v6           #pluginCount:I
    :goto_1
    return v8

    .line 1198
    .restart local v1       #i:I
    .restart local v3       #keyguardLayer:Lcom/mediatek/common/policy/IKeyguardLayer;
    .restart local v4       #plugManager:Lcom/mediatek/pluginmanager/PluginManager;
    .restart local v5       #plugin:Lcom/mediatek/pluginmanager/Plugin;,"Lcom/mediatek/pluginmanager/Plugin<Lcom/mediatek/common/policy/IKeyguardLayer;>;"
    .restart local v6       #pluginCount:I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1209
    .end local v1           #i:I
    .end local v3           #keyguardLayer:Lcom/mediatek/common/policy/IKeyguardLayer;
    .end local v4           #plugManager:Lcom/mediatek/pluginmanager/PluginManager;
    .end local v5           #plugin:Lcom/mediatek/pluginmanager/Plugin;,"Lcom/mediatek/pluginmanager/Plugin<Lcom/mediatek/common/policy/IKeyguardLayer;>;"
    .end local v6           #pluginCount:I
    :catch_0
    move-exception v0

    .line 1210
    .local v0, e:Ljava/lang/Exception;
    const-string v9, "DisplaySettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getPluginKeyguardLayers exception happens: e = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v0           #e:Ljava/lang/Exception;
    .restart local v4       #plugManager:Lcom/mediatek/pluginmanager/PluginManager;
    .restart local v6       #pluginCount:I
    :cond_1
    move v8, v7

    .line 1214
    goto :goto_1
.end method

.method private updateAccelerometerRotationCheckbox()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 962
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 972
    :cond_0
    :goto_0
    return-void

    .line 964
    :cond_1
    iget-object v3, p0, Lcom/android/jrdsettings/DisplaySettings;->mAccelerometer:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/view/RotationPolicy;->isRotationLocked(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 965
    iget-object v0, p0, Lcom/android/jrdsettings/DisplaySettings;->mLandscapeLauncher:Landroid/preference/ListPreference;

    if-eqz v0, :cond_0

    .line 966
    iget-object v0, p0, Lcom/android/jrdsettings/DisplaySettings;->mAccelerometer:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 967
    iget-object v0, p0, Lcom/android/jrdsettings/DisplaySettings;->mLandscapeLauncher:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    :cond_2
    move v0, v2

    .line 964
    goto :goto_1

    .line 969
    :cond_3
    iget-object v0, p0, Lcom/android/jrdsettings/DisplaySettings;->mLandscapeLauncher:Landroid/preference/ListPreference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0
.end method

.method private updateClearMotionStatus()V
    .locals 3

    .prologue
    .line 1248
    iget-object v0, p0, Lcom/android/jrdsettings/DisplaySettings;->mClearMotion:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    .line 1249
    const-string v0, "DisplaySettings"

    const-string v1, "updateClearMotionStatus"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1250
    iget-object v0, p0, Lcom/android/jrdsettings/DisplaySettings;->mClearMotion:Landroid/preference/CheckBoxPreference;

    const-string v1, "persist.sys.display.clearMotion"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 1251
    iget-object v0, p0, Lcom/android/jrdsettings/DisplaySettings;->mClearMotion:Landroid/preference/CheckBoxPreference;

    const-string v1, "sys.display.clearMotion.dimmed"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1253
    :cond_0
    return-void
.end method

.method private updateFontSize(Landroid/preference/ListPreference;)V
    .locals 11
    .parameter "fontSizePreference"

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x0

    const/high16 v7, -0x4080

    .line 685
    const-string v4, "DisplaySettings"

    const-string v5, "update font size "

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v3

    .line 689
    .local v3, values:[Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "settings_fontsize_small"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v2

    .line 691
    .local v2, small:F
    invoke-virtual {p0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "settings_fontsize_large"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v1

    .line 693
    .local v1, large:F
    invoke-virtual {p0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "settings_fontsize_extralarge"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v0

    .line 695
    .local v0, extraLarge:F
    const-string v4, "DisplaySettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "update font size small = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    const-string v4, "DisplaySettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "update font size large = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    const-string v4, "DisplaySettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "update font size extraLarge = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    cmpl-float v4, v2, v7

    if-nez v4, :cond_0

    cmpl-float v4, v1, v7

    if-nez v4, :cond_0

    cmpl-float v4, v0, v7

    if-eqz v4, :cond_5

    .line 700
    :cond_0
    aget-object v4, v3, v8

    if-eqz v4, :cond_1

    cmpl-float v4, v2, v7

    if-eqz v4, :cond_1

    .line 701
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    .line 702
    const-string v4, "DisplaySettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "update font size : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v3, v8

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    :cond_1
    aget-object v4, v3, v9

    if-eqz v4, :cond_2

    cmpl-float v4, v1, v7

    if-eqz v4, :cond_2

    .line 705
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v9

    .line 706
    const-string v4, "DisplaySettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "update font size : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v3, v9

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    :cond_2
    aget-object v4, v3, v10

    if-eqz v4, :cond_3

    cmpl-float v4, v0, v7

    if-eqz v4, :cond_3

    .line 709
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v10

    .line 710
    const-string v4, "DisplaySettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "update font size : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v3, v10

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    :cond_3
    if-eqz v3, :cond_4

    .line 714
    invoke-virtual {p1, v3}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 717
    :cond_4
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/jrdsettings/DisplaySettings;->mIsUpdateFont:Z

    .line 719
    :cond_5
    return-void
.end method

.method private updateLandscapeList()V
    .locals 15

    .prologue
    const/4 v14, 0x0

    .line 1062
    const/4 v0, 0x0

    .line 1064
    .local v0, appListSize:I
    new-instance v7, Landroid/content/Intent;

    const-string v11, "android.intent.action.ROTATED_MAIN"

    invoke-direct {v7, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1065
    .local v7, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    invoke-virtual {v11, v7, v14}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v8

    .line 1068
    .local v8, mLandscapeLauncherApps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v8, :cond_3

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v11

    if-eqz v11, :cond_3

    .line 1070
    const-string v11, "DisplaySettings"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "mLandscapeLauncherApps.size()="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1072
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    .line 1075
    iget-object v11, p0, Lcom/android/jrdsettings/DisplaySettings;->mDisplayDefCategory:Landroid/preference/PreferenceCategory;

    if-eqz v11, :cond_0

    iget-object v11, p0, Lcom/android/jrdsettings/DisplaySettings;->mLandscapeLauncher:Landroid/preference/ListPreference;

    if-eqz v11, :cond_0

    .line 1076
    iget-object v11, p0, Lcom/android/jrdsettings/DisplaySettings;->mDisplayDefCategory:Landroid/preference/PreferenceCategory;

    iget-object v12, p0, Lcom/android/jrdsettings/DisplaySettings;->mLandscapeLauncher:Landroid/preference/ListPreference;

    invoke-virtual {v11, v12}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 1089
    :cond_0
    add-int/lit8 v11, v0, 0x1

    new-array v1, v11, [Ljava/lang/CharSequence;

    .line 1090
    .local v1, appStrs:[Ljava/lang/CharSequence;
    add-int/lit8 v11, v0, 0x1

    new-array v2, v11, [Ljava/lang/CharSequence;

    .line 1091
    .local v2, appValues:[Ljava/lang/CharSequence;
    const v11, 0x7f09006d

    invoke-virtual {p0, v11}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v1, v14

    .line 1092
    const-string v11, "none"

    aput-object v11, v2, v14

    .line 1093
    invoke-virtual {p0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "landscape_launcher"

    invoke-static {v11, v12}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1095
    .local v3, current:Ljava/lang/String;
    if-nez v3, :cond_1

    .line 1096
    invoke-virtual {p0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "landscape_launcher"

    const-string v13, "none"

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1098
    const-string v3, "none"

    .line 1101
    :cond_1
    const/4 v4, 0x1

    .line 1102
    .local v4, i:I
    const/4 v10, 0x0

    .line 1103
    .local v10, setIdx:I
    if-eqz v8, :cond_5

    .line 1105
    invoke-virtual {p0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    .line 1106
    .local v9, pm:Landroid/content/pm/PackageManager;
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 1107
    .local v6, info:Landroid/content/pm/ResolveInfo;
    const-string v11, "DisplaySettings"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "resolve app : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v13, v13, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v13, v13, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1109
    iget-object v11, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v11, v9}, Landroid/content/pm/ComponentInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v11

    aput-object v11, v1, v4

    .line 1110
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v2, v4

    .line 1112
    aget-object v11, v2, v4

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 1113
    move v10, v4

    .line 1115
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1079
    .end local v1           #appStrs:[Ljava/lang/CharSequence;
    .end local v2           #appValues:[Ljava/lang/CharSequence;
    .end local v3           #current:Ljava/lang/String;
    .end local v4           #i:I
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v6           #info:Landroid/content/pm/ResolveInfo;
    .end local v9           #pm:Landroid/content/pm/PackageManager;
    .end local v10           #setIdx:I
    :cond_3
    const-string v11, "DisplaySettings"

    const-string v12, "landscape launcher query return null or size 0 "

    invoke-static {v11, v12}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1082
    iget-object v11, p0, Lcom/android/jrdsettings/DisplaySettings;->mDisplayDefCategory:Landroid/preference/PreferenceCategory;

    if-eqz v11, :cond_4

    iget-object v11, p0, Lcom/android/jrdsettings/DisplaySettings;->mLandscapeLauncher:Landroid/preference/ListPreference;

    if-eqz v11, :cond_4

    .line 1083
    iget-object v11, p0, Lcom/android/jrdsettings/DisplaySettings;->mDisplayDefCategory:Landroid/preference/PreferenceCategory;

    iget-object v12, p0, Lcom/android/jrdsettings/DisplaySettings;->mLandscapeLauncher:Landroid/preference/ListPreference;

    invoke-virtual {v11, v12}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 1085
    :cond_4
    invoke-virtual {p0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "landscape_launcher"

    const-string v13, "none"

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1128
    :goto_1
    return-void

    .line 1118
    .restart local v1       #appStrs:[Ljava/lang/CharSequence;
    .restart local v2       #appValues:[Ljava/lang/CharSequence;
    .restart local v3       #current:Ljava/lang/String;
    .restart local v4       #i:I
    .restart local v10       #setIdx:I
    :cond_5
    if-nez v10, :cond_6

    const-string v11, "none"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_6

    .line 1121
    invoke-virtual {p0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "landscape_launcher"

    const-string v13, "none"

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1124
    :cond_6
    iget-object v11, p0, Lcom/android/jrdsettings/DisplaySettings;->mLandscapeLauncher:Landroid/preference/ListPreference;

    invoke-virtual {v11, v1}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 1125
    iget-object v11, p0, Lcom/android/jrdsettings/DisplaySettings;->mLandscapeLauncher:Landroid/preference/ListPreference;

    invoke-virtual {v11, v2}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 1126
    iget-object v11, p0, Lcom/android/jrdsettings/DisplaySettings;->mLandscapeLauncher:Landroid/preference/ListPreference;

    invoke-virtual {v11, v10}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 1127
    iget-object v11, p0, Lcom/android/jrdsettings/DisplaySettings;->mLandscapeLauncher:Landroid/preference/ListPreference;

    aget-object v12, v1, v10

    invoke-virtual {v11, v12}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private updateLockScreenStyle()V
    .locals 7

    .prologue
    .line 1156
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1157
    .local v2, intent:Landroid/content/Intent;
    new-instance v0, Landroid/content/ComponentName;

    const-string v4, "com.android.jrdsettings"

    const-string v5, "com.mediatek.lockscreensettings.LockScreenStyleSettings"

    invoke-direct {v0, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1158
    .local v0, comName:Landroid/content/ComponentName;
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1159
    invoke-virtual {p0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 1161
    .local v3, lockScreenStyleApps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-direct {p0}, Lcom/android/jrdsettings/DisplaySettings;->queryPluginKeyguardLayers()Z

    move-result v1

    .line 1163
    .local v1, hasPlugin:Z
    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-eqz v4, :cond_2

    if-eqz v1, :cond_2

    .line 1165
    const-string v4, "DisplaySettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "lockScreenStyleApps.size()="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1167
    iget-object v4, p0, Lcom/android/jrdsettings/DisplaySettings;->mDisplayPerCategory:Landroid/preference/PreferenceCategory;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/jrdsettings/DisplaySettings;->mLockScreenStylePref:Landroid/preference/Preference;

    if-eqz v4, :cond_0

    .line 1168
    iget-object v4, p0, Lcom/android/jrdsettings/DisplaySettings;->mDisplayPerCategory:Landroid/preference/PreferenceCategory;

    iget-object v5, p0, Lcom/android/jrdsettings/DisplaySettings;->mLockScreenStylePref:Landroid/preference/Preference;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 1179
    :cond_0
    invoke-direct {p0}, Lcom/android/jrdsettings/DisplaySettings;->updateLockScreenStyleSummary()V

    .line 1181
    :cond_1
    :goto_0
    return-void

    .line 1171
    :cond_2
    const-string v4, "DisplaySettings"

    const-string v5, "lock screen style query return null or size 0 "

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1173
    iget-object v4, p0, Lcom/android/jrdsettings/DisplaySettings;->mDisplayPerCategory:Landroid/preference/PreferenceCategory;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/jrdsettings/DisplaySettings;->mLockScreenStylePref:Landroid/preference/Preference;

    if-eqz v4, :cond_1

    .line 1174
    iget-object v4, p0, Lcom/android/jrdsettings/DisplaySettings;->mDisplayPerCategory:Landroid/preference/PreferenceCategory;

    iget-object v5, p0, Lcom/android/jrdsettings/DisplaySettings;->mLockScreenStylePref:Landroid/preference/Preference;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method private updateLockScreenStyleSummary()V
    .locals 4

    .prologue
    .line 1218
    invoke-virtual {p0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "mtk_current_keyguard_layer"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/jrdsettings/DisplaySettings;->parseString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1220
    .local v0, lockScreenStyleSummary:Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1221
    const-string v1, "DisplaySettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lockScreenStyleSummary = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1222
    iget-object v1, p0, Lcom/android/jrdsettings/DisplaySettings;->mLockScreenStylePref:Landroid/preference/Preference;

    const v2, 0x7f09007c

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(I)V

    .line 1227
    :goto_0
    return-void

    .line 1224
    :cond_0
    iget-object v1, p0, Lcom/android/jrdsettings/DisplaySettings;->mLockScreenStylePref:Landroid/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateScreenOffPreference(I)V
    .locals 6
    .parameter "currentTimeout"

    .prologue
    .line 476
    const-string v3, "DisplaySettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "currentTimeout="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    iget-object v3, p0, Lcom/android/jrdsettings/DisplaySettings;->mScreenOffPreference:Landroid/preference/ListPreference;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 479
    iget-object v3, p0, Lcom/android/jrdsettings/DisplaySettings;->mScreenOffPreference:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/DialogPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    check-cast v1, Landroid/app/AlertDialog;

    .line 480
    .local v1, dlg:Landroid/app/AlertDialog;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v3

    if-nez v3, :cond_1

    .line 490
    :cond_0
    :goto_0
    return-void

    .line 483
    :cond_1
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v2

    .line 484
    .local v2, listview:Landroid/widget/ListView;
    iget-object v3, p0, Lcom/android/jrdsettings/DisplaySettings;->mScreenOffPreference:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/android/jrdsettings/DisplaySettings;->mScreenOffPreference:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 486
    .local v0, checkedItem:I
    const/4 v3, -0x1

    if-le v0, v3, :cond_0

    .line 487
    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    .line 488
    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_0
.end method

.method private updateScreenOffPreferenceDescription(I)V
    .locals 5
    .parameter "currentTimeout"

    .prologue
    .line 579
    iget-object v1, p0, Lcom/android/jrdsettings/DisplaySettings;->mScreenOffPreference:Landroid/preference/ListPreference;

    .line 581
    .local v1, preference:Landroid/preference/ListPreference;
    if-gez p1, :cond_1

    .line 600
    :cond_0
    :goto_0
    return-void

    .line 584
    :cond_1
    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 585
    .local v0, entries:[Ljava/lang/CharSequence;
    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v3

    .line 586
    .local v3, values:[Ljava/lang/CharSequence;
    if-eqz v0, :cond_2

    array-length v4, v0

    if-nez v4, :cond_3

    .line 587
    :cond_2
    const-string v4, ""

    .line 589
    :cond_3
    array-length v4, v0

    if-ge p1, v4, :cond_0

    .line 593
    array-length v4, v0

    if-eqz v4, :cond_4

    .line 594
    aget-object v4, v0, p1

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 599
    .local v2, summary:Ljava/lang/String;
    :goto_1
    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 596
    .end local v2           #summary:Ljava/lang/String;
    :cond_4
    const-string v2, ""

    .restart local v2       #summary:Ljava/lang/String;
    goto :goto_1
.end method

.method private updateScreenSaverSummary()V
    .locals 2

    .prologue
    .line 896
    iget-object v0, p0, Lcom/android/jrdsettings/DisplaySettings;->mScreenSaverPreference:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    .line 897
    iget-object v0, p0, Lcom/android/jrdsettings/DisplaySettings;->mScreenSaverPreference:Landroid/preference/Preference;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/jrdsettings/DreamSettings;->getSummaryTextWithDreamName(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 900
    :cond_0
    return-void
.end method

.method private updateState()V
    .locals 0

    .prologue
    .line 870
    invoke-direct {p0}, Lcom/android/jrdsettings/DisplaySettings;->updateAccelerometerRotationCheckbox()V

    .line 872
    invoke-direct {p0}, Lcom/android/jrdsettings/DisplaySettings;->updateScreenSaverSummary()V

    .line 873
    invoke-direct {p0}, Lcom/android/jrdsettings/DisplaySettings;->updateWifiDisplaySummary()V

    .line 874
    return-void
.end method

.method private updateTimeoutPreference(I)V
    .locals 6
    .parameter "currentTimeout"

    .prologue
    .line 878
    const-string v3, "DisplaySettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "currentTimeout="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 879
    iget-object v3, p0, Lcom/android/jrdsettings/DisplaySettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 880
    int-to-long v3, p1

    invoke-direct {p0, v3, v4}, Lcom/android/jrdsettings/DisplaySettings;->updateTimeoutPreferenceDescription(J)V

    .line 881
    iget-object v3, p0, Lcom/android/jrdsettings/DisplaySettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/DialogPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    check-cast v1, Landroid/app/AlertDialog;

    .line 882
    .local v1, dlg:Landroid/app/AlertDialog;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v3

    if-nez v3, :cond_1

    .line 892
    :cond_0
    :goto_0
    return-void

    .line 885
    :cond_1
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v2

    .line 886
    .local v2, listview:Landroid/widget/ListView;
    iget-object v3, p0, Lcom/android/jrdsettings/DisplaySettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/android/jrdsettings/DisplaySettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 888
    .local v0, checkedItem:I
    const/4 v3, -0x1

    if-le v0, v3, :cond_0

    .line 889
    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    .line 890
    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_0
.end method

.method private updateTimeoutPreferenceDescription(J)V
    .locals 13
    .parameter "currentTimeout"

    .prologue
    .line 604
    iget-object v3, p0, Lcom/android/jrdsettings/DisplaySettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    .line 606
    .local v3, preference:Landroid/preference/ListPreference;
    const-wide/16 v8, 0x0

    cmp-long v8, p1, v8

    if-gez v8, :cond_0

    .line 610
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0904ef

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 641
    .local v4, summary:Ljava/lang/String;
    :goto_0
    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 642
    return-void

    .line 613
    .end local v4           #summary:Ljava/lang/String;
    :cond_0
    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 614
    .local v1, entries:[Ljava/lang/CharSequence;
    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v7

    .line 615
    .local v7, values:[Ljava/lang/CharSequence;
    if-eqz v1, :cond_1

    array-length v8, v1

    if-nez v8, :cond_2

    .line 616
    :cond_1
    const-string v4, ""

    .restart local v4       #summary:Ljava/lang/String;
    goto :goto_0

    .line 618
    .end local v4           #summary:Ljava/lang/String;
    :cond_2
    const/4 v0, 0x0

    .line 619
    .local v0, best:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    array-length v8, v7

    if-ge v2, v8, :cond_3

    .line 620
    aget-object v8, v7, v2

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 622
    .local v5, timeout:J
    const-wide/16 v8, -0x1

    cmp-long v8, v5, v8

    if-nez v8, :cond_4

    .line 631
    .end local v5           #timeout:J
    :cond_3
    array-length v8, v1

    if-eqz v8, :cond_6

    .line 632
    invoke-virtual {v3}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f0904ee

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aget-object v12, v1, v0

    aput-object v12, v10, v11

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .restart local v4       #summary:Ljava/lang/String;
    goto :goto_0

    .line 626
    .end local v4           #summary:Ljava/lang/String;
    .restart local v5       #timeout:J
    :cond_4
    cmp-long v8, p1, v5

    if-ltz v8, :cond_5

    .line 627
    move v0, v2

    .line 619
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 635
    .end local v5           #timeout:J
    :cond_6
    const-string v4, ""

    .restart local v4       #summary:Ljava/lang/String;
    goto :goto_0
.end method

.method private updateWifiDisplaySummary()V
    .locals 2

    .prologue
    .line 903
    iget-object v0, p0, Lcom/android/jrdsettings/DisplaySettings;->mWifiDisplayPreference:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    .line 905
    iget-object v0, p0, Lcom/android/jrdsettings/DisplaySettings;->mWfdExt:Lcom/mediatek/settings/wfd/WfdSettingsExt;

    if-nez v0, :cond_1

    .line 906
    iget-object v0, p0, Lcom/android/jrdsettings/DisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplayStatus;->getFeatureState()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 915
    iget-object v0, p0, Lcom/android/jrdsettings/DisplaySettings;->mWifiDisplayPreference:Landroid/preference/Preference;

    const v1, 0x7f0903fd

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 922
    :cond_0
    :goto_0
    return-void

    .line 908
    :pswitch_0
    iget-object v0, p0, Lcom/android/jrdsettings/DisplaySettings;->mWifiDisplayPreference:Landroid/preference/Preference;

    const v1, 0x7f0903fc

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 911
    :pswitch_1
    iget-object v0, p0, Lcom/android/jrdsettings/DisplaySettings;->mWifiDisplayPreference:Landroid/preference/Preference;

    const v1, 0x7f0903fb

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 919
    :cond_1
    iget-object v0, p0, Lcom/android/jrdsettings/DisplaySettings;->mWfdExt:Lcom/mediatek/settings/wfd/WfdSettingsExt;

    iget-object v1, p0, Lcom/android/jrdsettings/DisplaySettings;->mWifiDisplayPreference:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Lcom/mediatek/settings/wfd/WfdSettingsExt;->updateWfdPreferenceSummary(Landroid/preference/Preference;)V

    goto :goto_0

    .line 906
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method floatToIndex(F)I
    .locals 8
    .parameter "val"

    .prologue
    .line 723
    const-string v5, "DisplaySettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "floatToIndex enter val = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    iget-boolean v5, p0, Lcom/android/jrdsettings/DisplaySettings;->mIsUpdateFont:Z

    if-eqz v5, :cond_1

    .line 725
    iget-object v5, p0, Lcom/android/jrdsettings/DisplaySettings;->mFontSizePref:Lcom/android/jrdsettings/WarnedListPreference;

    invoke-virtual {v5}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v2

    .line 726
    .local v2, indicesEntry:[Ljava/lang/CharSequence;
    const-string v5, "DisplaySettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "current font size : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v5, v2

    if-ge v0, v5, :cond_4

    .line 728
    aget-object v5, v2, v0

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    .line 729
    .local v4, thisVal:F
    cmpl-float v5, p1, v4

    if-nez v5, :cond_0

    .line 730
    const-string v5, "DisplaySettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Select : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    .end local v0           #i:I
    .end local v2           #indicesEntry:[Ljava/lang/CharSequence;
    .end local v4           #thisVal:F
    :goto_1
    return v0

    .line 727
    .restart local v0       #i:I
    .restart local v2       #indicesEntry:[Ljava/lang/CharSequence;
    .restart local v4       #thisVal:F
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 735
    .end local v0           #i:I
    .end local v2           #indicesEntry:[Ljava/lang/CharSequence;
    .end local v4           #thisVal:F
    :cond_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a000b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 736
    .local v1, indices:[Ljava/lang/String;
    const/4 v5, 0x0

    aget-object v5, v1, v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    .line 737
    .local v3, lastVal:F
    const/4 v0, 0x1

    .restart local v0       #i:I
    :goto_2
    array-length v5, v1

    if-ge v0, v5, :cond_3

    .line 738
    aget-object v5, v1, v0

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    .line 739
    .restart local v4       #thisVal:F
    sub-float v5, v4, v3

    const/high16 v6, 0x3f00

    mul-float/2addr v5, v6

    add-float/2addr v5, v3

    cmpg-float v5, p1, v5

    if-gez v5, :cond_2

    .line 740
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 742
    :cond_2
    move v3, v4

    .line 737
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 744
    .end local v4           #thisVal:F
    :cond_3
    array-length v5, v1

    add-int/lit8 v0, v5, -0x1

    goto :goto_1

    .line 746
    .end local v1           #indices:[Ljava/lang/String;
    .end local v3           #lastVal:F
    .restart local v2       #indicesEntry:[Ljava/lang/CharSequence;
    :cond_4
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5
    .parameter "newConfig"

    .prologue
    .line 505
    const-string v2, "DisplaySettings"

    const-string v3, "onConfigurationChanged"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 507
    iget-object v2, p0, Lcom/android/jrdsettings/DisplaySettings;->mCurConfig:Landroid/content/res/Configuration;

    invoke-virtual {v2, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 509
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->clearScrapViewsIfNeeded()V

    .line 510
    iget-object v2, p0, Lcom/android/jrdsettings/DisplaySettings;->mBrightNess:Lcom/android/jrdsettings/JrdBrightnessPreference;

    if-eqz v2, :cond_0

    .line 511
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    .line 512
    .local v1, orientation:I
    const-string v2, "DisplaySettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onConfigurationChanged,  orientation="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 514
    iget-object v2, p0, Lcom/android/jrdsettings/DisplaySettings;->mBrightNess:Lcom/android/jrdsettings/JrdBrightnessPreference;

    const v3, 0x7f040051

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 522
    .end local v1           #orientation:I
    :cond_0
    :goto_0
    iget-boolean v2, p0, Lcom/android/jrdsettings/DisplaySettings;->mIsFontManagerExsit:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/jrdsettings/DisplaySettings;->mFontStylePref:Landroid/preference/PreferenceScreen;

    if-eqz v2, :cond_1

    .line 523
    sget-object v2, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v3, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 524
    .local v0, isSupportedLocal:Z
    iget-object v2, p0, Lcom/android/jrdsettings/DisplaySettings;->mFontStylePref:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    .line 527
    .end local v0           #isSupportedLocal:Z
    :cond_1
    return-void

    .line 516
    .restart local v1       #orientation:I
    :cond_2
    iget-object v2, p0, Lcom/android/jrdsettings/DisplaySettings;->mBrightNess:Lcom/android/jrdsettings/JrdBrightnessPreference;

    const v3, 0x7f040050

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setLayoutResource(I)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 18
    .parameter "savedInstanceState"

    .prologue
    .line 258
    const-string v14, "DisplaySettings"

    const-string v15, "onCreate"

    invoke-static {v14, v15}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    invoke-super/range {p0 .. p1}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 260
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v14

    invoke-static {v14}, Lcom/android/jrdsettings/Utils;->getMiscPlugin(Landroid/content/Context;)Lcom/mediatek/settings/ext/ISettingsMiscExt;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/jrdsettings/DisplaySettings;->mExt:Lcom/mediatek/settings/ext/ISettingsMiscExt;

    .line 264
    new-instance v14, Lcom/mediatek/settings/wfd/WfdSettingsExt;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v15

    invoke-direct {v14, v15}, Lcom/mediatek/settings/wfd/WfdSettingsExt;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/jrdsettings/DisplaySettings;->mWfdExt:Lcom/mediatek/settings/wfd/WfdSettingsExt;

    .line 267
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    .line 269
    .local v12, resolver:Landroid/content/ContentResolver;
    const v14, 0x7f060017

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 272
    const-string v14, "display_personalize"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    check-cast v14, Landroid/preference/PreferenceCategory;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/jrdsettings/DisplaySettings;->mDisplayPerCategory:Landroid/preference/PreferenceCategory;

    .line 273
    const-string v14, "display_default"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    check-cast v14, Landroid/preference/PreferenceCategory;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/jrdsettings/DisplaySettings;->mDisplayDefCategory:Landroid/preference/PreferenceCategory;

    .line 277
    const-string v14, "font_style"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    check-cast v14, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/jrdsettings/DisplaySettings;->mFontStylePref:Landroid/preference/PreferenceScreen;

    .line 278
    invoke-virtual/range {p0 .. p0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    .line 279
    .local v11, pm:Landroid/content/pm/PackageManager;
    const/4 v8, 0x0

    .line 282
    .local v8, info:Landroid/content/pm/PackageInfo;
    :try_start_0
    const-string v14, "com.jrdcom.fontmanager"

    const/4 v15, 0x1

    invoke-virtual {v11, v14, v15}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 287
    :goto_0
    if-eqz v8, :cond_0

    .line 288
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/jrdsettings/DisplaySettings;->mIsFontManagerExsit:Z

    .line 290
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/jrdsettings/DisplaySettings;->mIsFontManagerExsit:Z

    if-nez v14, :cond_b

    .line 291
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/jrdsettings/DisplaySettings;->mFontStylePref:Landroid/preference/PreferenceScreen;

    if-eqz v14, :cond_1

    .line 292
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/jrdsettings/DisplaySettings;->mDisplayDefCategory:Landroid/preference/PreferenceCategory;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/jrdsettings/DisplaySettings;->mFontStylePref:Landroid/preference/PreferenceScreen;

    invoke-virtual {v14, v15}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 303
    :cond_1
    :goto_1
    const-string v14, "accelerometer"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    check-cast v14, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/jrdsettings/DisplaySettings;->mAccelerometer:Landroid/preference/CheckBoxPreference;

    .line 304
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/jrdsettings/DisplaySettings;->mAccelerometer:Landroid/preference/CheckBoxPreference;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 305
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v14

    invoke-static {v14}, Lcom/android/internal/view/RotationPolicy;->isRotationLockToggleSupported(Landroid/content/Context;)Z

    move-result v14

    if-eqz v14, :cond_2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/jrdsettings/DisplaySettings;->mDisplayDefCategory:Landroid/preference/PreferenceCategory;

    if-eqz v14, :cond_2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/jrdsettings/DisplaySettings;->mAccelerometer:Landroid/preference/CheckBoxPreference;

    if-eqz v14, :cond_2

    .line 310
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/jrdsettings/DisplaySettings;->mDisplayDefCategory:Landroid/preference/PreferenceCategory;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/jrdsettings/DisplaySettings;->mAccelerometer:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v14, v15}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 313
    :cond_2
    const-string v14, "screensaver"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/jrdsettings/DisplaySettings;->mScreenSaverPreference:Landroid/preference/Preference;

    .line 314
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/jrdsettings/DisplaySettings;->mScreenSaverPreference:Landroid/preference/Preference;

    if-eqz v14, :cond_3

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x1110040

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v14

    if-nez v14, :cond_3

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/jrdsettings/DisplaySettings;->mDisplayDefCategory:Landroid/preference/PreferenceCategory;

    if-eqz v14, :cond_3

    .line 318
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/jrdsettings/DisplaySettings;->mDisplayDefCategory:Landroid/preference/PreferenceCategory;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/jrdsettings/DisplaySettings;->mScreenSaverPreference:Landroid/preference/Preference;

    invoke-virtual {v14, v15}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 321
    :cond_3
    const-string v14, "screen_timeout"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    check-cast v14, Landroid/preference/ListPreference;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/jrdsettings/DisplaySettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    .line 323
    invoke-direct/range {p0 .. p0}, Lcom/android/jrdsettings/DisplaySettings;->getTimoutValue()I

    move-result v14

    int-to-long v5, v14

    .line 324
    .local v5, currentTimeout:J
    const-string v14, "DisplaySettings"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "currentTimeout="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/jrdsettings/DisplaySettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 328
    const/4 v14, 0x1

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string v16, "power_saving_mode"

    const/16 v17, 0x0

    invoke-static/range {v15 .. v17}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v15

    if-ne v14, v15, :cond_c

    .line 329
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/jrdsettings/DisplaySettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 333
    :goto_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/jrdsettings/DisplaySettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 334
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/jrdsettings/DisplaySettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/jrdsettings/DisplaySettings;->disableUnusableTimeouts(Landroid/preference/ListPreference;)V

    .line 335
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6}, Lcom/android/jrdsettings/DisplaySettings;->updateTimeoutPreferenceDescription(J)V

    .line 337
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/jrdsettings/DisplaySettings;->mExt:Lcom/mediatek/settings/ext/ISettingsMiscExt;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/jrdsettings/DisplaySettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    invoke-interface {v14, v15}, Lcom/mediatek/settings/ext/ISettingsMiscExt;->setTimeoutPrefTitle(Landroid/preference/Preference;)V

    .line 339
    const-string v14, "font_size"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    check-cast v14, Lcom/android/jrdsettings/WarnedListPreference;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/jrdsettings/DisplaySettings;->mFontSizePref:Lcom/android/jrdsettings/WarnedListPreference;

    .line 346
    const-string v14, "notification_pulse"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    check-cast v14, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/jrdsettings/DisplaySettings;->mNotificationPulse:Landroid/preference/CheckBoxPreference;

    .line 347
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/jrdsettings/DisplaySettings;->mNotificationPulse:Landroid/preference/CheckBoxPreference;

    if-eqz v14, :cond_d

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x1110024

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v14

    if-nez v14, :cond_d

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/jrdsettings/DisplaySettings;->mDisplayDefCategory:Landroid/preference/PreferenceCategory;

    if-eqz v14, :cond_d

    .line 352
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/jrdsettings/DisplaySettings;->mDisplayDefCategory:Landroid/preference/PreferenceCategory;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/jrdsettings/DisplaySettings;->mNotificationPulse:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v14, v15}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 363
    :goto_3
    const-string v14, "landscape_launcher"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    check-cast v14, Landroid/preference/ListPreference;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/jrdsettings/DisplaySettings;->mLandscapeLauncher:Landroid/preference/ListPreference;

    .line 364
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/jrdsettings/DisplaySettings;->mLandscapeLauncher:Landroid/preference/ListPreference;

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 366
    const-string v14, "hdmi_settings"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/jrdsettings/DisplaySettings;->mHDMISettings:Landroid/preference/Preference;

    .line 367
    const-string v14, "mtkhdmi"

    invoke-static {v14}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v14

    invoke-static {v14}, Lcom/mediatek/common/hdmi/IMtkHdmiManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/hdmi/IMtkHdmiManager;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/jrdsettings/DisplaySettings;->mHdmiManager:Lcom/mediatek/common/hdmi/IMtkHdmiManager;

    .line 370
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/jrdsettings/DisplaySettings;->mHdmiManager:Lcom/mediatek/common/hdmi/IMtkHdmiManager;

    if-nez v14, :cond_4

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/jrdsettings/DisplaySettings;->mHDMISettings:Landroid/preference/Preference;

    if-eqz v14, :cond_4

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/jrdsettings/DisplaySettings;->mDisplayDefCategory:Landroid/preference/PreferenceCategory;

    if-eqz v14, :cond_4

    .line 373
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/jrdsettings/DisplaySettings;->mDisplayDefCategory:Landroid/preference/PreferenceCategory;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/jrdsettings/DisplaySettings;->mHDMISettings:Landroid/preference/Preference;

    invoke-virtual {v14, v15}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 386
    :cond_4
    const-string v14, "color"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/jrdsettings/DisplaySettings;->mColorPref:Landroid/preference/Preference;

    .line 387
    const-string v14, "scenes"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/jrdsettings/DisplaySettings;->mScencePref:Landroid/preference/Preference;

    .line 388
    const-string v14, "wallpaper"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/jrdsettings/DisplaySettings;->mWallpaperPref:Landroid/preference/Preference;

    .line 390
    const-string v14, "brightness"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    check-cast v14, Lcom/android/jrdsettings/JrdBrightnessPreference;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/jrdsettings/DisplaySettings;->mBrightNess:Lcom/android/jrdsettings/JrdBrightnessPreference;

    .line 402
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    .line 403
    .local v9, intent:Landroid/content/Intent;
    new-instance v3, Landroid/content/ComponentName;

    const-string v14, "com.android.launcher"

    const-string v15, "com.android.launcher2.SceneChooser"

    invoke-direct {v3, v14, v15}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    .local v3, comName:Landroid/content/ComponentName;
    invoke-virtual {v9, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 405
    invoke-virtual/range {p0 .. p0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v14, v9, v15}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 407
    .local v1, chooseScenceActivities:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v1, :cond_f

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v14

    if-eqz v14, :cond_f

    const/4 v2, 0x1

    .line 408
    .local v2, chooseScenceActivityExist:Z
    :goto_4
    if-nez v2, :cond_5

    .line 409
    const-string v14, "DisplaySettings"

    const-string v15, "SceneChooserActivity doesn\'t exist, remove Scence pref"

    invoke-static {v14, v15}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/jrdsettings/DisplaySettings;->mDisplayPerCategory:Landroid/preference/PreferenceCategory;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/jrdsettings/DisplaySettings;->mScencePref:Landroid/preference/Preference;

    invoke-virtual {v14, v15}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 417
    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/jrdsettings/DisplaySettings;->mDisplayPerCategory:Landroid/preference/PreferenceCategory;

    if-eqz v14, :cond_6

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/jrdsettings/DisplaySettings;->mColorPref:Landroid/preference/Preference;

    if-eqz v14, :cond_6

    .line 418
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/jrdsettings/DisplaySettings;->mDisplayPerCategory:Landroid/preference/PreferenceCategory;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/jrdsettings/DisplaySettings;->mColorPref:Landroid/preference/Preference;

    invoke-virtual {v14, v15}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 422
    :cond_6
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v14

    const-string v15, "display"

    invoke-virtual {v14, v15}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/hardware/display/DisplayManager;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/jrdsettings/DisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 424
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/jrdsettings/DisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v14}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/jrdsettings/DisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    .line 425
    const-string v14, "wifi_display"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/jrdsettings/DisplaySettings;->mWifiDisplayPreference:Landroid/preference/Preference;

    .line 427
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/jrdsettings/DisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v14}, Landroid/hardware/display/WifiDisplayStatus;->getFeatureState()I

    move-result v14

    if-eqz v14, :cond_7

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x111005a

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v14

    if-nez v14, :cond_8

    .line 432
    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/jrdsettings/DisplaySettings;->mDisplayDefCategory:Landroid/preference/PreferenceCategory;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/jrdsettings/DisplaySettings;->mWifiDisplayPreference:Landroid/preference/Preference;

    invoke-virtual {v14, v15}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 433
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/jrdsettings/DisplaySettings;->mWifiDisplayPreference:Landroid/preference/Preference;

    .line 436
    :cond_8
    const-string v14, "lock_screen_notifications"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    check-cast v14, Lcom/android/jrdsettings/MultiLineCheckBoxPreference;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/jrdsettings/DisplaySettings;->mLockScreenNotifications:Lcom/android/jrdsettings/MultiLineCheckBoxPreference;

    .line 437
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/jrdsettings/DisplaySettings;->mLockScreenNotifications:Lcom/android/jrdsettings/MultiLineCheckBoxPreference;

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 438
    const-string v14, "lock_screen_style"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/jrdsettings/DisplaySettings;->mLockScreenStylePref:Landroid/preference/Preference;

    .line 439
    invoke-direct/range {p0 .. p0}, Lcom/android/jrdsettings/DisplaySettings;->updateLockScreenStyle()V

    .line 443
    const-string v14, "clearMotion"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    check-cast v14, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/jrdsettings/DisplaySettings;->mClearMotion:Landroid/preference/CheckBoxPreference;

    .line 444
    invoke-direct/range {p0 .. p0}, Lcom/android/jrdsettings/DisplaySettings;->clearMotionStyle()V

    .line 445
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/jrdsettings/DisplaySettings;->mClearMotion:Landroid/preference/CheckBoxPreference;

    if-eqz v14, :cond_9

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/jrdsettings/DisplaySettings;->mDisplayPerCategory:Landroid/preference/PreferenceCategory;

    if-eqz v14, :cond_9

    .line 449
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/jrdsettings/DisplaySettings;->mClearMotion:Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 455
    :cond_9
    const-string v14, "button_led"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    check-cast v14, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/jrdsettings/DisplaySettings;->mButtonLED:Landroid/preference/CheckBoxPreference;

    .line 456
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/jrdsettings/DisplaySettings;->mButtonLED:Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 461
    const-string v14, "screen_off"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    check-cast v14, Landroid/preference/ListPreference;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/jrdsettings/DisplaySettings;->mScreenOffPreference:Landroid/preference/ListPreference;

    .line 463
    invoke-direct/range {p0 .. p0}, Lcom/android/jrdsettings/DisplaySettings;->getScreenOffValue()I

    move-result v4

    .line 464
    .local v4, currentOff:I
    const-string v14, "DisplaySettings"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "currentOff="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/jrdsettings/DisplaySettings;->mScreenOffPreference:Landroid/preference/ListPreference;

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 467
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/jrdsettings/DisplaySettings;->mScreenOffPreference:Landroid/preference/ListPreference;

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 468
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/jrdsettings/DisplaySettings;->updateScreenOffPreference(I)V

    .line 469
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/jrdsettings/DisplaySettings;->updateScreenOffPreferenceDescription(I)V

    .line 470
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0c0018

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v14

    if-nez v14, :cond_a

    .line 471
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/jrdsettings/DisplaySettings;->mDisplayDefCategory:Landroid/preference/PreferenceCategory;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/jrdsettings/DisplaySettings;->mScreenOffPreference:Landroid/preference/ListPreference;

    invoke-virtual {v14, v15}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 473
    :cond_a
    return-void

    .line 283
    .end local v1           #chooseScenceActivities:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v2           #chooseScenceActivityExist:Z
    .end local v3           #comName:Landroid/content/ComponentName;
    .end local v4           #currentOff:I
    .end local v5           #currentTimeout:J
    .end local v9           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v7

    .line 284
    .local v7, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    .line 285
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 296
    .end local v7           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_b
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/jrdsettings/DisplaySettings;->mFontStylePref:Landroid/preference/PreferenceScreen;

    if-eqz v14, :cond_1

    .line 297
    sget-object v14, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v15

    invoke-virtual {v15}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v15

    iget-object v15, v15, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v14, v15}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v10

    .line 298
    .local v10, isSupportedLocal:Z
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/jrdsettings/DisplaySettings;->mFontStylePref:Landroid/preference/PreferenceScreen;

    invoke-virtual {v14, v10}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    goto/16 :goto_1

    .line 331
    .end local v10           #isSupportedLocal:Z
    .restart local v5       #currentTimeout:J
    :cond_c
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/jrdsettings/DisplaySettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_2

    .line 355
    :cond_d
    :try_start_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/jrdsettings/DisplaySettings;->mNotificationPulse:Landroid/preference/CheckBoxPreference;

    const-string v14, "notification_light_pulse"

    invoke-static {v12, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v14

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v14, v0, :cond_e

    const/4 v14, 0x1

    :goto_5
    invoke-virtual {v15, v14}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 357
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/jrdsettings/DisplaySettings;->mNotificationPulse:Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_3

    .line 358
    :catch_1
    move-exception v13

    .line 359
    .local v13, snfe:Landroid/provider/Settings$SettingNotFoundException;
    const-string v14, "DisplaySettings"

    const-string v15, "notification_light_pulse not found"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 355
    .end local v13           #snfe:Landroid/provider/Settings$SettingNotFoundException;
    :cond_e
    const/4 v14, 0x0

    goto :goto_5

    .line 407
    .restart local v1       #chooseScenceActivities:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v3       #comName:Landroid/content/ComponentName;
    .restart local v9       #intent:Landroid/content/Intent;
    :cond_f
    const/4 v2, 0x0

    goto/16 :goto_4
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .parameter "dialogId"

    .prologue
    .line 857
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 858
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f090901

    new-instance v2, Lcom/android/jrdsettings/DisplaySettings$5;

    invoke-direct {v2, p0}, Lcom/android/jrdsettings/DisplaySettings$5;-><init>(Lcom/android/jrdsettings/DisplaySettings;)V

    invoke-static {v0, v1, v2}, Lcom/android/jrdsettings/Utils;->buildGlobalChangeWarningDialog(Landroid/content/Context;ILjava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v0

    .line 866
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 833
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 835
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/jrdsettings/DisplaySettings;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    invoke-static {v0, v1}, Lcom/android/internal/view/RotationPolicy;->unregisterRotationPolicyListener(Landroid/content/Context;Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;)V

    .line 837
    invoke-virtual {p0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/jrdsettings/DisplaySettings;->mScreenTimeoutObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 838
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/jrdsettings/DisplaySettings;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 840
    iget-object v0, p0, Lcom/android/jrdsettings/DisplaySettings;->mWifiDisplayPreference:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    .line 841
    iget-object v0, p0, Lcom/android/jrdsettings/DisplaySettings;->mWfdExt:Lcom/mediatek/settings/wfd/WfdSettingsExt;

    if-eqz v0, :cond_1

    .line 842
    iget-object v0, p0, Lcom/android/jrdsettings/DisplaySettings;->mWfdExt:Lcom/mediatek/settings/wfd/WfdSettingsExt;

    invoke-virtual {v0}, Lcom/mediatek/settings/wfd/WfdSettingsExt;->unregisterForWfdSwicth()V

    .line 848
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/jrdsettings/DisplaySettings;->mSmartBookPlugReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 851
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/jrdsettings/DisplaySettings;->mUpdateClearMotionStatusReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 852
    iget-object v0, p0, Lcom/android/jrdsettings/DisplaySettings;->mBrightNess:Lcom/android/jrdsettings/JrdBrightnessPreference;

    invoke-virtual {v0}, Lcom/android/jrdsettings/JrdBrightnessPreference;->unRegisterPSChangeReceiver()V

    .line 853
    return-void

    .line 844
    :cond_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/jrdsettings/DisplaySettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6
    .parameter "preference"
    .parameter "objValue"

    .prologue
    .line 1027
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 1028
    .local v1, key:Ljava/lang/String;
    const-string v3, "screen_timeout"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1029
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 1031
    .local v2, value:I
    :try_start_0
    invoke-virtual {p0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "screen_off_timeout"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1032
    int-to-long v3, v2

    invoke-direct {p0, v3, v4}, Lcom/android/jrdsettings/DisplaySettings;->updateTimeoutPreferenceDescription(J)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1058
    .end local v2           #value:I
    :cond_0
    :goto_0
    const/4 v3, 0x1

    return v3

    .line 1033
    .restart local v2       #value:I
    :catch_0
    move-exception v0

    .line 1034
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v3, "DisplaySettings"

    const-string v4, "could not persist screen timeout setting"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1036
    .end local v0           #e:Ljava/lang/NumberFormatException;
    .end local v2           #value:I
    .restart local p2
    :cond_1
    const-string v3, "font_size"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1037
    invoke-virtual {p0, p2}, Lcom/android/jrdsettings/DisplaySettings;->writeFontSizePreference(Ljava/lang/Object;)V

    goto :goto_0

    .line 1038
    :cond_2
    const-string v3, "landscape_launcher"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1039
    const-string v3, "DisplaySettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "select landscape launcher   "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1040
    iget-object v3, p0, Lcom/android/jrdsettings/DisplaySettings;->mLandscapeLauncher:Landroid/preference/ListPreference;

    if-eqz v3, :cond_3

    .line 1041
    iget-object v4, p0, Lcom/android/jrdsettings/DisplaySettings;->mLandscapeLauncher:Landroid/preference/ListPreference;

    move-object v3, p2

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 1042
    iget-object v3, p0, Lcom/android/jrdsettings/DisplaySettings;->mLandscapeLauncher:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/android/jrdsettings/DisplaySettings;->mLandscapeLauncher:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1044
    :cond_3
    invoke-virtual {p0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "landscape_launcher"

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {v3, v4, p2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 1045
    .restart local p2
    :cond_4
    const-string v3, "screen_off"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1046
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 1048
    .restart local v2       #value:I
    :try_start_1
    invoke-virtual {p0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "screen_off"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1049
    iget-object v3, p0, Lcom/android/jrdsettings/DisplaySettings;->mScreenOffPreference:Landroid/preference/ListPreference;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 1050
    invoke-direct {p0, v2}, Lcom/android/jrdsettings/DisplaySettings;->updateScreenOffPreference(I)V

    .line 1051
    invoke-direct {p0, v2}, Lcom/android/jrdsettings/DisplaySettings;->updateScreenOffPreferenceDescription(I)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 1052
    :catch_1
    move-exception v0

    .line 1053
    .restart local v0       #e:Ljava/lang/NumberFormatException;
    const-string v3, "DisplaySettings"

    const-string v4, "could not persist screen timeout setting"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2
    .parameter "preference"

    .prologue
    const/4 v0, 0x1

    .line 1143
    iget-object v1, p0, Lcom/android/jrdsettings/DisplaySettings;->mFontSizePref:Lcom/android/jrdsettings/WarnedListPreference;

    if-ne p1, v1, :cond_1

    .line 1144
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/jrdsettings/Utils;->hasMultipleUsers(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1145
    invoke-virtual {p0, v0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->showDialog(I)V

    .line 1151
    :goto_0
    return v0

    .line 1148
    :cond_0
    iget-object v0, p0, Lcom/android/jrdsettings/DisplaySettings;->mFontSizePref:Lcom/android/jrdsettings/WarnedListPreference;

    invoke-virtual {v0}, Lcom/android/jrdsettings/WarnedListPreference;->click()V

    .line 1151
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 987
    iget-object v1, p0, Lcom/android/jrdsettings/DisplaySettings;->mAccelerometer:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_3

    .line 988
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iget-object v1, p0, Lcom/android/jrdsettings/DisplaySettings;->mAccelerometer:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v1

    if-nez v1, :cond_1

    move v1, v2

    :goto_0
    invoke-static {v4, v1}, Lcom/android/internal/view/RotationPolicy;->setRotationLockForAccessibility(Landroid/content/Context;Z)V

    .line 990
    iget-object v1, p0, Lcom/android/jrdsettings/DisplaySettings;->mLandscapeLauncher:Landroid/preference/ListPreference;

    if-eqz v1, :cond_0

    .line 991
    iget-object v1, p0, Lcom/android/jrdsettings/DisplaySettings;->mAccelerometer:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 992
    iget-object v1, p0, Lcom/android/jrdsettings/DisplaySettings;->mLandscapeLauncher:Landroid/preference/ListPreference;

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1023
    :cond_0
    :goto_1
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    :goto_2
    return v2

    :cond_1
    move v1, v3

    .line 988
    goto :goto_0

    .line 994
    :cond_2
    iget-object v1, p0, Lcom/android/jrdsettings/DisplaySettings;->mLandscapeLauncher:Landroid/preference/ListPreference;

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_1

    .line 997
    :cond_3
    iget-object v1, p0, Lcom/android/jrdsettings/DisplaySettings;->mNotificationPulse:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_5

    .line 998
    iget-object v1, p0, Lcom/android/jrdsettings/DisplaySettings;->mNotificationPulse:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    .line 999
    .local v0, value:Z
    invoke-virtual {p0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "notification_light_pulse"

    if-eqz v0, :cond_4

    move v3, v2

    :cond_4
    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    .line 1003
    .end local v0           #value:Z
    :cond_5
    iget-object v1, p0, Lcom/android/jrdsettings/DisplaySettings;->mLockScreenNotifications:Lcom/android/jrdsettings/MultiLineCheckBoxPreference;

    if-ne p2, v1, :cond_7

    .line 1004
    iget-object v1, p0, Lcom/android/jrdsettings/DisplaySettings;->mLockScreenNotifications:Lcom/android/jrdsettings/MultiLineCheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    .line 1005
    .restart local v0       #value:Z
    invoke-virtual {p0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "incoming_indicator_on_lockscreen"

    if-eqz v0, :cond_6

    :goto_3
    invoke-static {v1, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_6
    move v2, v3

    goto :goto_3

    .line 1009
    .end local v0           #value:Z
    :cond_7
    iget-object v1, p0, Lcom/android/jrdsettings/DisplaySettings;->mClearMotion:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_9

    .line 1010
    iget-object v1, p0, Lcom/android/jrdsettings/DisplaySettings;->mClearMotion:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    .line 1011
    .restart local v0       #value:Z
    const-string v2, "persist.sys.display.clearMotion"

    if-eqz v0, :cond_8

    const-string v1, "1"

    :goto_4
    invoke-static {v2, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_8
    const-string v1, "0"

    goto :goto_4

    .line 1016
    .end local v0           #value:Z
    :cond_9
    iget-object v1, p0, Lcom/android/jrdsettings/DisplaySettings;->mButtonLED:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_0

    .line 1017
    iget-object v1, p0, Lcom/android/jrdsettings/DisplaySettings;->mButtonLED:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    .line 1018
    .restart local v0       #value:Z
    invoke-virtual {p0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "Button_LED_Turn_On_When_Touch_TP"

    if-eqz v0, :cond_a

    :goto_5
    invoke-static {v1, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_a
    move v2, v3

    goto :goto_5
.end method

.method public onResume()V
    .locals 10

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 770
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 771
    const-string v3, "DisplaySettings"

    const-string v6, "onResume of DisplaySettings"

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    invoke-direct {p0}, Lcom/android/jrdsettings/DisplaySettings;->updateLandscapeList()V

    .line 774
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v6, p0, Lcom/android/jrdsettings/DisplaySettings;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    invoke-static {v3, v6}, Lcom/android/internal/view/RotationPolicy;->registerRotationPolicyListener(Landroid/content/Context;Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;)V

    .line 776
    invoke-virtual {p0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "screen_off_timeout"

    invoke-static {v6}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iget-object v7, p0, Lcom/android/jrdsettings/DisplaySettings;->mScreenTimeoutObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v6, v5, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 778
    invoke-virtual {p0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "screen_off"

    invoke-static {v6}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iget-object v7, p0, Lcom/android/jrdsettings/DisplaySettings;->mScreenOffObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v6, v5, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 780
    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 781
    .local v2, filter:Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 782
    const-string v3, "package"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 783
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v6, p0, Lcom/android/jrdsettings/DisplaySettings;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v6, v2}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 785
    iget-object v3, p0, Lcom/android/jrdsettings/DisplaySettings;->mWifiDisplayPreference:Landroid/preference/Preference;

    if-eqz v3, :cond_0

    .line 786
    iget-object v3, p0, Lcom/android/jrdsettings/DisplaySettings;->mWfdExt:Lcom/mediatek/settings/wfd/WfdSettingsExt;

    if-eqz v3, :cond_1

    .line 787
    iget-object v3, p0, Lcom/android/jrdsettings/DisplaySettings;->mWfdExt:Lcom/mediatek/settings/wfd/WfdSettingsExt;

    iget-object v6, p0, Lcom/android/jrdsettings/DisplaySettings;->mWifiDisplayPreference:Landroid/preference/Preference;

    invoke-virtual {v3, v6}, Lcom/mediatek/settings/wfd/WfdSettingsExt;->registerForWfdSwicth(Landroid/preference/Preference;)V

    .line 795
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/jrdsettings/DisplaySettings;->updateState()V

    .line 798
    invoke-virtual {p0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 799
    .local v0, cr:Landroid/content/ContentResolver;
    iget-object v3, p0, Lcom/android/jrdsettings/DisplaySettings;->mColorPref:Landroid/preference/Preference;

    iget-object v6, p0, Lcom/android/jrdsettings/DisplaySettings;->mColorPref:Landroid/preference/Preference;

    invoke-virtual {v6}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/mediatek/thememanager/ThemeManager;->getThemeSummary(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 800
    iget-object v3, p0, Lcom/android/jrdsettings/DisplaySettings;->mScencePref:Landroid/preference/Preference;

    const-string v6, "current_scene_name"

    invoke-static {v0, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/jrdsettings/DisplaySettings;->parseString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 801
    iget-object v3, p0, Lcom/android/jrdsettings/DisplaySettings;->mWallpaperPref:Landroid/preference/Preference;

    const-string v6, "current_wallpaper_component_name"

    invoke-static {v0, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/jrdsettings/DisplaySettings;->parseString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 805
    invoke-direct {p0}, Lcom/android/jrdsettings/DisplaySettings;->getTimoutValue()I

    move-result v1

    .line 806
    .local v1, currentTimeout:I
    invoke-direct {p0, v1}, Lcom/android/jrdsettings/DisplaySettings;->updateTimeoutPreference(I)V

    .line 810
    iget-object v6, p0, Lcom/android/jrdsettings/DisplaySettings;->mLockScreenNotifications:Lcom/android/jrdsettings/MultiLineCheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v7, "incoming_indicator_on_lockscreen"

    invoke-static {v3, v7, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v4, :cond_2

    move v3, v4

    :goto_1
    invoke-virtual {v6, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 812
    invoke-direct {p0}, Lcom/android/jrdsettings/DisplaySettings;->updateLockScreenStyleSummary()V

    .line 816
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v6, p0, Lcom/android/jrdsettings/DisplaySettings;->mSmartBookPlugReceiver:Landroid/content/BroadcastReceiver;

    new-instance v7, Landroid/content/IntentFilter;

    const-string v8, "android.intent.action.SMARTBOOK_PLUG"

    invoke-direct {v7, v8}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6, v7}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 820
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v6, p0, Lcom/android/jrdsettings/DisplaySettings;->mUpdateClearMotionStatusReceiver:Landroid/content/BroadcastReceiver;

    new-instance v7, Landroid/content/IntentFilter;

    const-string v8, "com.mediatek.clearmotion.DIMMED_UPDATE"

    invoke-direct {v7, v8}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6, v7}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 821
    invoke-direct {p0}, Lcom/android/jrdsettings/DisplaySettings;->updateClearMotionStatus()V

    .line 825
    iget-object v6, p0, Lcom/android/jrdsettings/DisplaySettings;->mButtonLED:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "Button_LED_Turn_On_When_Touch_TP"

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v9, 0x111005e

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_3

    move v3, v4

    :goto_2
    invoke-static {v7, v8, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v4, v3, :cond_4

    :goto_3
    invoke-virtual {v6, v4}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 828
    iget-object v3, p0, Lcom/android/jrdsettings/DisplaySettings;->mBrightNess:Lcom/android/jrdsettings/JrdBrightnessPreference;

    invoke-virtual {v3}, Lcom/android/jrdsettings/JrdBrightnessPreference;->registerPSChangeReceiver()V

    .line 829
    return-void

    .line 789
    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v1           #currentTimeout:I
    :cond_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v6, p0, Lcom/android/jrdsettings/DisplaySettings;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v7, Landroid/content/IntentFilter;

    const-string v8, "android.hardware.display.action.WIFI_DISPLAY_STATUS_CHANGED"

    invoke-direct {v7, v8}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6, v7}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 791
    iget-object v3, p0, Lcom/android/jrdsettings/DisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v3}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v3

    iput-object v3, p0, Lcom/android/jrdsettings/DisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    goto/16 :goto_0

    .restart local v0       #cr:Landroid/content/ContentResolver;
    .restart local v1       #currentTimeout:I
    :cond_2
    move v3, v5

    .line 810
    goto :goto_1

    :cond_3
    move v3, v5

    .line 825
    goto :goto_2

    :cond_4
    move v4, v5

    goto :goto_3
.end method

.method public parseString(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .parameter "decodeStr"

    .prologue
    const/4 v8, 0x2

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 926
    if-nez p1, :cond_0

    .line 927
    const-string v7, "DisplaySettings"

    const-string v8, "parseString error as decodeStr is null"

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    const v7, 0x7f09007c

    invoke-virtual {p0, v7}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 957
    :goto_0
    return-object v4

    .line 930
    :cond_0
    move-object v4, p1

    .line 931
    .local v4, ret:Ljava/lang/String;
    const-string v7, "&"

    invoke-virtual {p1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 932
    .local v6, tokens:[Ljava/lang/String;
    array-length v5, v6

    .line 933
    .local v5, tokenSize:I
    if-le v5, v10, :cond_1

    .line 934
    invoke-virtual {p0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 937
    .local v1, pm:Landroid/content/pm/PackageManager;
    const/4 v7, 0x0

    :try_start_0
    aget-object v7, v6, v7

    invoke-virtual {v1, v7}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 944
    .local v3, resources:Landroid/content/res/Resources;
    const/4 v7, 0x1

    :try_start_1
    aget-object v7, v6, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    .line 949
    .local v2, resId:I
    if-ne v5, v8, :cond_2

    .line 950
    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 956
    .end local v1           #pm:Landroid/content/pm/PackageManager;
    .end local v2           #resId:I
    .end local v3           #resources:Landroid/content/res/Resources;
    :cond_1
    :goto_1
    const-string v7, "DisplaySettings"

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

    .line 938
    .restart local v1       #pm:Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v0

    .line 939
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v7, "DisplaySettings"

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

    .line 945
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v3       #resources:Landroid/content/res/Resources;
    :catch_1
    move-exception v0

    .line 946
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v7, "DisplaySettings"

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

    .line 952
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

.method public readFontSizePreference(Landroid/preference/ListPreference;)V
    .locals 8
    .parameter "pref"

    .prologue
    .line 751
    :try_start_0
    iget-object v4, p0, Lcom/android/jrdsettings/DisplaySettings;->mCurConfig:Landroid/content/res/Configuration;

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 757
    :goto_0
    iget-object v4, p0, Lcom/android/jrdsettings/DisplaySettings;->mCurConfig:Landroid/content/res/Configuration;

    iget v4, v4, Landroid/content/res/Configuration;->fontScale:F

    invoke-virtual {p0, v4}, Lcom/android/jrdsettings/DisplaySettings;->floatToIndex(F)I

    move-result v2

    .line 758
    .local v2, index:I
    const-string v4, "DisplaySettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "readFontSizePreference index = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    invoke-virtual {p1, v2}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 762
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 763
    .local v3, res:Landroid/content/res/Resources;
    const v4, 0x7f0a000a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 764
    .local v1, fontSizeNames:[Ljava/lang/String;
    const v4, 0x7f0904fe

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aget-object v7, v1, v2

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 766
    return-void

    .line 752
    .end local v1           #fontSizeNames:[Ljava/lang/String;
    .end local v2           #index:I
    .end local v3           #res:Landroid/content/res/Resources;
    :catch_0
    move-exception v0

    .line 753
    .local v0, e:Landroid/os/RemoteException;
    const-string v4, "DisplaySettings"

    const-string v5, "Unable to retrieve font size"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public writeFontSizePreference(Ljava/lang/Object;)V
    .locals 4
    .parameter "objValue"

    .prologue
    .line 976
    :try_start_0
    iget-object v1, p0, Lcom/android/jrdsettings/DisplaySettings;->mCurConfig:Landroid/content/res/Configuration;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    iput v2, v1, Landroid/content/res/Configuration;->fontScale:F

    .line 977
    const-string v1, "DisplaySettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "writeFontSizePreference font size =  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 978
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/jrdsettings/DisplaySettings;->mCurConfig:Landroid/content/res/Configuration;

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->updatePersistentConfiguration(Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 982
    :goto_0
    return-void

    .line 979
    :catch_0
    move-exception v0

    .line 980
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "DisplaySettings"

    const-string v2, "Unable to save font size"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
