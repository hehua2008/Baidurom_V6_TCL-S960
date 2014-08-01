.class public Lcom/android/jrdsettings/SoundSettings;
.super Lcom/android/jrdsettings/SettingsPreferenceFragment;
.source "SoundSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/jrdsettings/SoundSettings$VolumeReceiver;,
        Lcom/android/jrdsettings/SoundSettings$SlientAndVibrateStateReceiver;
    }
.end annotation


# static fields
.field private static final DIALOG_NOT_DOCKED:I = 0x1

.field private static final FALLBACK_EMERGENCY_TONE_VALUE:I = 0x0

.field private static final GENERAL_PREF_KEY:Ljava/lang/String; = "mtk_audioprofile_general"

.field private static final KEY_CATEGORY_CALLS:Ljava/lang/String; = "category_calls_and_notification"

.field private static final KEY_DOCK_AUDIO_MEDIA_ENABLED:Ljava/lang/String; = "dock_audio_media_enabled"

.field private static final KEY_DOCK_AUDIO_SETTINGS:Ljava/lang/String; = "dock_audio"

.field private static final KEY_DOCK_CATEGORY:Ljava/lang/String; = "dock_category"

.field private static final KEY_DOCK_SOUNDS:Ljava/lang/String; = "dock_sounds"

.field private static final KEY_DTMF_TONE:Ljava/lang/String; = "dtmf_tone"

.field private static final KEY_EMERGENCY_TONE:Ljava/lang/String; = "emergency_tone"

.field private static final KEY_HAPTIC_FEEDBACK:Ljava/lang/String; = "haptic_feedback"

.field private static final KEY_HIFI_SWITCH:Ljava/lang/String; = "hifi_open_settings"

.field private static final KEY_JRD_ASCENDING_RINGING:Ljava/lang/String; = "ascending_ringing"

.field private static final KEY_JRD_RINGTONE_NOTIFA_SYST:Ljava/lang/String; = "jrd_ring_and_notifaction"

.field private static final KEY_JRD__NOTIFA_SYST:Ljava/lang/String; = "jrd_notifaction"

.field private static final KEY_JRD__SYSTEM:Ljava/lang/String; = "jrd_system"

.field private static final KEY_LOCK_SOUNDS:Ljava/lang/String; = "lock_sounds"

.field private static final KEY_MUSICFX:Ljava/lang/String; = "musicfx"

.field private static final KEY_NOTIFICATION_SOUND:Ljava/lang/String; = "notification_sound"

.field private static final KEY_POWER_OFF_RINGTONE:Ljava/lang/String; = "off"

.field private static final KEY_POWER_ON_RINGTONE:Ljava/lang/String; = "on"

.field private static final KEY_RINGTONE:Ljava/lang/String; = "ringtone"

.field private static final KEY_RING_VOLUME:Ljava/lang/String; = "ring_volume"

.field private static final KEY_SILENT:Ljava/lang/String; = "phone_silent"

.field private static final KEY_SOUND_EFFECTS:Ljava/lang/String; = "sound_effects"

.field private static final KEY_SOUND_SETTINGS:Ljava/lang/String; = "sound_settings"

.field private static final KEY_SUPPORT_HIFI:Ljava/lang/String; = "GetHiFiDACStatus"

.field private static final KEY_SWITCH_OFF_RINGTONE:Ljava/lang/String; = "sound_switch_off_ringtone"

.field private static final KEY_SWITCH_ON_RINGTONE:Ljava/lang/String; = "sound_switch_on_ringtone"

.field private static final KEY_VIBRATE:Ljava/lang/String; = "vibrate_when_ringing"

.field private static final MEETING_PREF_KEY:Ljava/lang/String; = "mtk_audioprofile_meeting"

.field private static final MSG_UPDATE_NOTIFICATION_SUMMARY:I = 0x2

.field private static final MSG_UPDATE_POWER_ON_OFF_CHECKBOX:I = 0x3

.field private static final MSG_UPDATE_RINGTONE_SUMMARY:I = 0x1

.field private static final MSG_UPDATE_SOUNDUI:I = 0x4

.field private static final NEED_VOICE_CAPABILITY:[Ljava/lang/String; = null

.field private static final POST_DELAY_MS:I = 0x64

.field private static final RINGER_MODE_NORMA:I = 0x2

.field private static final RINGER_MODE_NORMAL_VIBRATE:I = 0x3

.field private static final RINGER_MODE_SILENT:I = 0x0

.field private static final RINGER_MODE_VIBRATE:I = 0x1

.field private static final SILENT_PREF_KEY:Ljava/lang/String; = "mtk_audioprofile_silent"

.field private static final TAG:Ljava/lang/String; = "SoundSettings"


# instance fields
.field private isJrdVolumeSeekBarDraging:Z

.field private isSupportOnOff:Z

.field private mAscendingRinging:Landroid/preference/CheckBoxPreference;

.field private mAudioManager:Landroid/media/AudioManager;

.field private final mAudioProfileListenr:Lcom/mediatek/common/audioprofile/AudioProfileListener;

.field private mContext:Landroid/content/Context;

.field private mDockAudioMediaEnabled:Landroid/preference/CheckBoxPreference;

.field private mDockAudioSettings:Landroid/preference/Preference;

.field private mDockIntent:Landroid/content/Intent;

.field private mDockSounds:Landroid/preference/CheckBoxPreference;

.field private mDtmfTone:Landroid/preference/CheckBoxPreference;

.field private mEnablePowerOffRingtone:Z

.field private mEnablePowerOnRingtone:Z

.field private mHandler:Landroid/os/Handler;

.field private mHapticFeedback:Landroid/preference/CheckBoxPreference;

.field private mHifiEnabler:Lcom/android/jrdsettings/hifi/HifiEnabler;

.field private mHifiSwitch:Lcom/android/jrdsettings/hifi/HifiSwitchPreference;

.field private mLockSounds:Landroid/preference/CheckBoxPreference;

.field private mMusicFx:Landroid/preference/Preference;

.field private mNotifSysVol:Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;

.field private mNotificationPreference:Landroid/preference/Preference;

.field private mPhoneSilent:Landroid/preference/CheckBoxPreference;

.field private mPowerOff:Landroid/preference/CheckBoxPreference;

.field private mPowerOn:Landroid/preference/CheckBoxPreference;

.field private mProfileKey:Ljava/lang/String;

.field private mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRingNotifSysVol:Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;

.field private mRingtoneLookupRunnable:Ljava/lang/Runnable;

.field private mRingtonePreference:Landroid/preference/Preference;

.field private mScanListener:Landroid/content/BroadcastReceiver;

.field private mSilentRingtone:Z

.field private mSlientAndVibrateStateReceiver:Lcom/android/jrdsettings/SoundSettings$SlientAndVibrateStateReceiver;

.field private mSoundEffects:Landroid/preference/CheckBoxPreference;

.field private mSoundSettings:Landroid/preference/PreferenceGroup;

.field private mSystemVol:Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;

.field private mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;

.field private mVolumeReceiver:Lcom/android/jrdsettings/SoundSettings$VolumeReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 133
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "ringtone"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "dtmf_tone"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "category_calls_and_notification"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "emergency_tone"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/jrdsettings/SoundSettings;->NEED_VOICE_CAPABILITY:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 96
    invoke-direct {p0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;-><init>()V

    .line 155
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/jrdsettings/SoundSettings;->isSupportOnOff:Z

    .line 182
    new-instance v0, Lcom/android/jrdsettings/SoundSettings$1;

    invoke-direct {v0, p0}, Lcom/android/jrdsettings/SoundSettings$1;-><init>(Lcom/android/jrdsettings/SoundSettings;)V

    iput-object v0, p0, Lcom/android/jrdsettings/SoundSettings;->mHandler:Landroid/os/Handler;

    .line 215
    new-instance v0, Lcom/android/jrdsettings/SoundSettings$2;

    invoke-direct {v0, p0}, Lcom/android/jrdsettings/SoundSettings$2;-><init>(Lcom/android/jrdsettings/SoundSettings;)V

    iput-object v0, p0, Lcom/android/jrdsettings/SoundSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 225
    iput-boolean v1, p0, Lcom/android/jrdsettings/SoundSettings;->mSilentRingtone:Z

    .line 226
    iput-boolean v1, p0, Lcom/android/jrdsettings/SoundSettings;->mEnablePowerOnRingtone:Z

    .line 227
    iput-boolean v1, p0, Lcom/android/jrdsettings/SoundSettings;->mEnablePowerOffRingtone:Z

    .line 228
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/jrdsettings/SoundSettings;->mProfileKey:Ljava/lang/String;

    .line 275
    new-instance v0, Lcom/android/jrdsettings/SoundSettings$4;

    invoke-direct {v0, p0}, Lcom/android/jrdsettings/SoundSettings$4;-><init>(Lcom/android/jrdsettings/SoundSettings;)V

    iput-object v0, p0, Lcom/android/jrdsettings/SoundSettings;->mAudioProfileListenr:Lcom/mediatek/common/audioprofile/AudioProfileListener;

    .line 484
    new-instance v0, Lcom/android/jrdsettings/SoundSettings$6;

    invoke-direct {v0, p0}, Lcom/android/jrdsettings/SoundSettings$6;-><init>(Lcom/android/jrdsettings/SoundSettings;)V

    iput-object v0, p0, Lcom/android/jrdsettings/SoundSettings;->mScanListener:Landroid/content/BroadcastReceiver;

    .line 1030
    iput-boolean v1, p0, Lcom/android/jrdsettings/SoundSettings;->isJrdVolumeSeekBarDraging:Z

    .line 1031
    return-void
.end method

.method private UpdateSoundUI()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 235
    iget-object v0, p0, Lcom/android/jrdsettings/SoundSettings;->mDtmfTone:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/android/jrdsettings/SoundSettings;->mDtmfTone:Landroid/preference/CheckBoxPreference;

    iget-object v3, p0, Lcom/android/jrdsettings/SoundSettings;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    iget-object v4, p0, Lcom/android/jrdsettings/SoundSettings;->mProfileKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/mediatek/audioprofile/AudioProfileManager;->getDtmfToneEnabled(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 237
    iget-object v3, p0, Lcom/android/jrdsettings/SoundSettings;->mDtmfTone:Landroid/preference/CheckBoxPreference;

    iget-boolean v0, p0, Lcom/android/jrdsettings/SoundSettings;->mSilentRingtone:Z

    if-nez v0, :cond_5

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 239
    :cond_0
    iget-object v0, p0, Lcom/android/jrdsettings/SoundSettings;->mSoundEffects:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_1

    .line 240
    iget-object v0, p0, Lcom/android/jrdsettings/SoundSettings;->mSoundEffects:Landroid/preference/CheckBoxPreference;

    iget-object v3, p0, Lcom/android/jrdsettings/SoundSettings;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    iget-object v4, p0, Lcom/android/jrdsettings/SoundSettings;->mProfileKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/mediatek/audioprofile/AudioProfileManager;->getSoundEffectEnabled(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 241
    iget-object v3, p0, Lcom/android/jrdsettings/SoundSettings;->mSoundEffects:Landroid/preference/CheckBoxPreference;

    iget-boolean v0, p0, Lcom/android/jrdsettings/SoundSettings;->mSilentRingtone:Z

    if-nez v0, :cond_6

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 243
    :cond_1
    iget-object v0, p0, Lcom/android/jrdsettings/SoundSettings;->mLockSounds:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_2

    .line 244
    iget-object v0, p0, Lcom/android/jrdsettings/SoundSettings;->mLockSounds:Landroid/preference/CheckBoxPreference;

    iget-object v3, p0, Lcom/android/jrdsettings/SoundSettings;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    iget-object v4, p0, Lcom/android/jrdsettings/SoundSettings;->mProfileKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/mediatek/audioprofile/AudioProfileManager;->getLockScreenEnabled(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 245
    iget-object v3, p0, Lcom/android/jrdsettings/SoundSettings;->mLockSounds:Landroid/preference/CheckBoxPreference;

    iget-boolean v0, p0, Lcom/android/jrdsettings/SoundSettings;->mSilentRingtone:Z

    if-nez v0, :cond_7

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 247
    :cond_2
    iget-object v0, p0, Lcom/android/jrdsettings/SoundSettings;->mHapticFeedback:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_3

    .line 248
    iget-object v0, p0, Lcom/android/jrdsettings/SoundSettings;->mHapticFeedback:Landroid/preference/CheckBoxPreference;

    iget-object v3, p0, Lcom/android/jrdsettings/SoundSettings;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    iget-object v4, p0, Lcom/android/jrdsettings/SoundSettings;->mProfileKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/mediatek/audioprofile/AudioProfileManager;->getHapticFeedbackEnabled(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 249
    iget-object v3, p0, Lcom/android/jrdsettings/SoundSettings;->mHapticFeedback:Landroid/preference/CheckBoxPreference;

    iget-boolean v0, p0, Lcom/android/jrdsettings/SoundSettings;->mSilentRingtone:Z

    if-nez v0, :cond_8

    move v0, v1

    :goto_3
    invoke-virtual {v3, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 251
    :cond_3
    iget-object v0, p0, Lcom/android/jrdsettings/SoundSettings;->mAscendingRinging:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_4

    .line 252
    iget-object v0, p0, Lcom/android/jrdsettings/SoundSettings;->mAscendingRinging:Landroid/preference/CheckBoxPreference;

    iget-boolean v3, p0, Lcom/android/jrdsettings/SoundSettings;->mSilentRingtone:Z

    if-nez v3, :cond_9

    :goto_4
    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 255
    :cond_4
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/jrdsettings/SoundSettings$3;

    invoke-direct {v1, p0}, Lcom/android/jrdsettings/SoundSettings$3;-><init>(Lcom/android/jrdsettings/SoundSettings;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 273
    return-void

    :cond_5
    move v0, v2

    .line 237
    goto :goto_0

    :cond_6
    move v0, v2

    .line 241
    goto :goto_1

    :cond_7
    move v0, v2

    .line 245
    goto :goto_2

    :cond_8
    move v0, v2

    .line 249
    goto :goto_3

    :cond_9
    move v1, v2

    .line 252
    goto :goto_4
.end method

.method static synthetic access$000(Lcom/android/jrdsettings/SoundSettings;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/jrdsettings/SoundSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/jrdsettings/SoundSettings;ILandroid/content/Context;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 96
    invoke-direct {p0, p1, p2, p3}, Lcom/android/jrdsettings/SoundSettings;->updateRingtoneName(ILandroid/content/Context;I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/jrdsettings/SoundSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/android/jrdsettings/SoundSettings;->isSupportOnOff:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/android/jrdsettings/SoundSettings;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/jrdsettings/SoundSettings;->mProfileKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/jrdsettings/SoundSettings;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 96
    iput-object p1, p0, Lcom/android/jrdsettings/SoundSettings;->mProfileKey:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/jrdsettings/SoundSettings;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 96
    invoke-direct {p0, p1, p2, p3}, Lcom/android/jrdsettings/SoundSettings;->getPowerOnOffActiveEnable(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/android/jrdsettings/SoundSettings;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/jrdsettings/SoundSettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/jrdsettings/SoundSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/android/jrdsettings/SoundSettings;->UpdateSoundUI()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/jrdsettings/SoundSettings;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcom/android/jrdsettings/SoundSettings;->updatVibrateAndSilentCheckBox(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/jrdsettings/SoundSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/jrdsettings/SoundSettings;->mPhoneSilent:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/jrdsettings/SoundSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/jrdsettings/SoundSettings;->mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/jrdsettings/SoundSettings;)Landroid/preference/Preference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/jrdsettings/SoundSettings;->mRingtonePreference:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/jrdsettings/SoundSettings;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/android/jrdsettings/SoundSettings;->getCurrentRingerMode()I

    move-result v0

    return v0
.end method

.method static synthetic access$2100(Lcom/android/jrdsettings/SoundSettings;)Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/jrdsettings/SoundSettings;->mRingNotifSysVol:Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/jrdsettings/SoundSettings;)Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/jrdsettings/SoundSettings;->mSystemVol:Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/jrdsettings/SoundSettings;)Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/jrdsettings/SoundSettings;->mNotifSysVol:Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/jrdsettings/SoundSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/android/jrdsettings/SoundSettings;->isJrdVolumeSeekBarDraging:Z

    return v0
.end method

.method static synthetic access$2402(Lcom/android/jrdsettings/SoundSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 96
    iput-boolean p1, p0, Lcom/android/jrdsettings/SoundSettings;->isJrdVolumeSeekBarDraging:Z

    return p1
.end method

.method static synthetic access$2500(Lcom/android/jrdsettings/SoundSettings;)Landroid/media/AudioManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/jrdsettings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/jrdsettings/SoundSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/android/jrdsettings/SoundSettings;->mSilentRingtone:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/jrdsettings/SoundSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 96
    iput-boolean p1, p0, Lcom/android/jrdsettings/SoundSettings;->mSilentRingtone:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/jrdsettings/SoundSettings;)Landroid/preference/Preference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/jrdsettings/SoundSettings;->mNotificationPreference:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/jrdsettings/SoundSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/jrdsettings/SoundSettings;->mPowerOn:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/jrdsettings/SoundSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/android/jrdsettings/SoundSettings;->mEnablePowerOnRingtone:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/jrdsettings/SoundSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 96
    iput-boolean p1, p0, Lcom/android/jrdsettings/SoundSettings;->mEnablePowerOnRingtone:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/jrdsettings/SoundSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/jrdsettings/SoundSettings;->mPowerOff:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/jrdsettings/SoundSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/android/jrdsettings/SoundSettings;->mEnablePowerOffRingtone:Z

    return v0
.end method

.method static synthetic access$802(Lcom/android/jrdsettings/SoundSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 96
    iput-boolean p1, p0, Lcom/android/jrdsettings/SoundSettings;->mEnablePowerOffRingtone:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/jrdsettings/SoundSettings;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcom/android/jrdsettings/SoundSettings;->handleDockChange(Landroid/content/Intent;)V

    return-void
.end method

.method private createUndockedMessage()Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 874
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 875
    .local v0, ab:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0904df

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 876
    const v1, 0x7f0904e0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 877
    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 878
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method

.method private getCurrentRingerMode()I
    .locals 7

    .prologue
    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v4, -0x1

    .line 1090
    iget-object v6, p0, Lcom/android/jrdsettings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    if-nez v6, :cond_1

    move v3, v4

    .line 1107
    :cond_0
    :goto_0
    return v3

    .line 1094
    :cond_1
    iget-object v6, p0, Lcom/android/jrdsettings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v6}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v2

    .line 1095
    .local v2, ringMode:I
    const-string v6, "vibrate_when_ringing"

    invoke-virtual {p0, v6}, Lcom/android/jrdsettings/SoundSettings;->getSharedPreferencesEnabled(Ljava/lang/String;)Z

    move-result v1

    .line 1096
    .local v1, isVibrateChecked:Z
    const-string v6, "phone_silent"

    invoke-virtual {p0, v6}, Lcom/android/jrdsettings/SoundSettings;->getSharedPreferencesEnabled(Ljava/lang/String;)Z

    move-result v0

    .line 1098
    .local v0, isSlientChecked:Z
    if-ne v2, v3, :cond_2

    .line 1100
    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    const/4 v3, 0x3

    goto :goto_0

    .line 1102
    :cond_2
    if-ne v2, v5, :cond_3

    move v3, v5

    .line 1103
    goto :goto_0

    .line 1104
    :cond_3
    if-nez v2, :cond_4

    .line 1105
    const/4 v3, 0x0

    goto :goto_0

    :cond_4
    move v3, v4

    .line 1107
    goto :goto_0
.end method

.method private getPowerOnOffActiveEnable(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Z
    .locals 7
    .parameter "profileKey"
    .parameter "context"
    .parameter "suffix"

    .prologue
    const/4 v3, 0x0

    .line 913
    const-string v4, "on"

    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "off"

    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 923
    :cond_0
    :goto_0
    return v3

    .line 917
    :cond_1
    if-eqz p2, :cond_0

    .line 918
    const-string v4, "_"

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 919
    .local v2, values:[Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 920
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "persist.sys."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    aget-object v5, v2, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 921
    .local v0, key:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 922
    .local v1, value:Ljava/lang/String;
    const-string v4, "SoundSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "get key: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " value = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 923
    const-string v4, "silent"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0
.end method

.method private handleDockChange(Landroid/content/Intent;)V
    .locals 7
    .parameter "intent"

    .prologue
    const/4 v6, -0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 822
    iget-object v3, p0, Lcom/android/jrdsettings/SoundSettings;->mDockAudioSettings:Landroid/preference/Preference;

    if-eqz v3, :cond_0

    .line 823
    const-string v3, "android.intent.extra.DOCK_STATE"

    invoke-virtual {p1, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 825
    .local v0, dockState:I
    const-string v3, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    if-eqz v3, :cond_1

    move v1, v4

    .line 828
    .local v1, isBluetooth:Z
    :goto_0
    iput-object p1, p0, Lcom/android/jrdsettings/SoundSettings;->mDockIntent:Landroid/content/Intent;

    .line 830
    if-eqz v0, :cond_6

    .line 833
    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {p0, v3}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->removeDialog(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 838
    :goto_1
    if-eqz v1, :cond_2

    .line 839
    iget-object v3, p0, Lcom/android/jrdsettings/SoundSettings;->mDockAudioSettings:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 863
    .end local v0           #dockState:I
    .end local v1           #isBluetooth:Z
    :cond_0
    :goto_2
    return-void

    .restart local v0       #dockState:I
    :cond_1
    move v1, v5

    .line 825
    goto :goto_0

    .line 841
    .restart local v1       #isBluetooth:Z
    :cond_2
    const/4 v3, 0x3

    if-ne v0, v3, :cond_5

    .line 842
    invoke-virtual {p0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 843
    .local v2, resolver:Landroid/content/ContentResolver;
    iget-object v3, p0, Lcom/android/jrdsettings/SoundSettings;->mDockAudioSettings:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 844
    const-string v3, "dock_audio_media_enabled"

    invoke-static {v2, v3, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v6, :cond_3

    .line 846
    const-string v3, "dock_audio_media_enabled"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 849
    :cond_3
    const-string v3, "dock_audio_media_enabled"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/jrdsettings/SoundSettings;->mDockAudioMediaEnabled:Landroid/preference/CheckBoxPreference;

    .line 851
    iget-object v3, p0, Lcom/android/jrdsettings/SoundSettings;->mDockAudioMediaEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v5}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 852
    iget-object v3, p0, Lcom/android/jrdsettings/SoundSettings;->mDockAudioMediaEnabled:Landroid/preference/CheckBoxPreference;

    const-string v6, "dock_audio_media_enabled"

    invoke-static {v2, v6, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_4

    :goto_3
    invoke-virtual {v3, v4}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_2

    :cond_4
    move v4, v5

    goto :goto_3

    .line 856
    .end local v2           #resolver:Landroid/content/ContentResolver;
    :cond_5
    iget-object v3, p0, Lcom/android/jrdsettings/SoundSettings;->mDockAudioSettings:Landroid/preference/Preference;

    invoke-virtual {v3, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_2

    .line 860
    :cond_6
    iget-object v3, p0, Lcom/android/jrdsettings/SoundSettings;->mDockAudioSettings:Landroid/preference/Preference;

    invoke-virtual {v3, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_2

    .line 834
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method private initDockSettings()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 804
    invoke-virtual {p0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 806
    .local v0, resolver:Landroid/content/ContentResolver;
    invoke-direct {p0}, Lcom/android/jrdsettings/SoundSettings;->needsDockSettings()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 807
    const-string v1, "dock_sounds"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/jrdsettings/SoundSettings;->mDockSounds:Landroid/preference/CheckBoxPreference;

    .line 808
    iget-object v1, p0, Lcom/android/jrdsettings/SoundSettings;->mDockSounds:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 809
    iget-object v4, p0, Lcom/android/jrdsettings/SoundSettings;->mDockSounds:Landroid/preference/CheckBoxPreference;

    const-string v1, "dock_sounds_enabled"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 811
    const-string v1, "dock_audio"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/jrdsettings/SoundSettings;->mDockAudioSettings:Landroid/preference/Preference;

    .line 812
    iget-object v1, p0, Lcom/android/jrdsettings/SoundSettings;->mDockAudioSettings:Landroid/preference/Preference;

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 819
    :goto_1
    return-void

    :cond_0
    move v1, v3

    .line 809
    goto :goto_0

    .line 814
    :cond_1
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string v3, "dock_category"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 815
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string v3, "dock_audio"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 816
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string v3, "dock_sounds"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 817
    const-string v1, "dock_audio_media_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1
.end method

.method private lookupRingtoneNames()V
    .locals 2

    .prologue
    .line 592
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/android/jrdsettings/SoundSettings;->mRingtoneLookupRunnable:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 593
    return-void
.end method

.method private needsDockSettings()Z
    .locals 2

    .prologue
    .line 800
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f0c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method private setPowerOnOffActive(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "profileKey"
    .parameter "delimeiter"
    .parameter "suffix"

    .prologue
    .line 929
    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 930
    .local v3, values:[Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "persist.sys."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, v3

    add-int/lit8 v5, v5, -0x1

    aget-object v5, v3, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 931
    .local v1, key:Ljava/lang/String;
    const-string v4, "SoundSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setPowerOnOffActive key is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 932
    const-string v4, "meeting"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "silent"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 933
    :cond_0
    const-string v4, "SoundSettings"

    const-string v5, "Don\'t playback power on/off ringtone when meeting or silent mode"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 934
    invoke-virtual {p0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "silent"

    invoke-static {v4, v1, v5}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 935
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "persist.sys.switch"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "silent"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 951
    :goto_0
    return-void

    .line 938
    :cond_1
    invoke-virtual {p0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 939
    .local v2, value:Ljava/lang/String;
    const-string v4, "SoundSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "value is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 940
    const-string v4, ""

    if-ne v2, v4, :cond_2

    .line 941
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ro.config.power"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 942
    .local v0, defaultValue:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, v1, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 943
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "persist.sys.switch"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/custpack/JRD_custres/audio/switch_on_off/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 945
    .end local v0           #defaultValue:Ljava/lang/String;
    :cond_2
    const-string v4, "silent"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 946
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "persist.sys.switch"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 948
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "persist.sys.switch"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/custpack/JRD_custres/audio/switch_on_off/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private setPowerOnOffActiveEnable(Ljava/lang/String;ZLandroid/content/Context;Ljava/lang/String;)V
    .locals 6
    .parameter "profileKey"
    .parameter "enable"
    .parameter "context"
    .parameter "suffix"

    .prologue
    .line 883
    const-string v3, "on"

    invoke-virtual {v3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "off"

    invoke-virtual {v3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 910
    :cond_0
    :goto_0
    return-void

    .line 887
    :cond_1
    if-eqz p3, :cond_0

    .line 888
    const-string v3, "_"

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 889
    .local v2, values:[Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 890
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "persist.sys."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, v2

    add-int/lit8 v4, v4, -0x1

    aget-object v4, v2, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 891
    .local v1, key:Ljava/lang/String;
    const-string v3, "SoundSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "set PowerOnOffActive key is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 892
    const-string v3, "meeting"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "silent"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 893
    :cond_2
    const-string v3, "SoundSettings"

    const-string v4, "Don\'t playback power on/off ringtone when meeting or silent mode"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "silent"

    invoke-static {v3, v1, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 895
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "persist.sys.switch"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "silent"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 899
    :cond_3
    if-eqz p2, :cond_4

    .line 900
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ro.config.power"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 901
    .local v0, defaultValue:Ljava/lang/String;
    const-string v3, "SoundSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Power on/off ringtone is enable: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 902
    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v1, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 903
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "persist.sys.switch"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/custpack/JRD_custres/audio/switch_on_off/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 906
    .end local v0           #defaultValue:Ljava/lang/String;
    :cond_4
    const-string v3, "SoundSettings"

    const-string v4, "Power on/off ringtone is off on general modern"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "silent"

    invoke-static {v3, v1, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 908
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "persist.sys.switch"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "silent"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private updatVibrateAndSilentCheckBox(Ljava/lang/String;)V
    .locals 6
    .parameter "profileKey"

    .prologue
    const/4 v5, 0x1

    const v4, 0x7f02008a

    const v3, 0x7f020087

    .line 1197
    iget-object v2, p0, Lcom/android/jrdsettings/SoundSettings;->mPhoneSilent:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/jrdsettings/SoundSettings;->mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/jrdsettings/SoundSettings;->mRingNotifSysVol:Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/jrdsettings/SoundSettings;->mSystemVol:Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;

    if-nez v2, :cond_1

    .line 1245
    :cond_0
    :goto_0
    return-void

    .line 1200
    :cond_1
    iget-object v2, p0, Lcom/android/jrdsettings/SoundSettings;->mNotifSysVol:Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;

    if-eqz v2, :cond_0

    .line 1205
    invoke-direct {p0}, Lcom/android/jrdsettings/SoundSettings;->getCurrentRingerMode()I

    move-result v1

    .line 1206
    .local v1, state:I
    const-string v2, "mtk_audioprofile_silent"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1207
    iget-object v2, p0, Lcom/android/jrdsettings/SoundSettings;->mPhoneSilent:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v5}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 1208
    iget-object v2, p0, Lcom/android/jrdsettings/SoundSettings;->mRingNotifSysVol:Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;

    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setIcon(I)V

    .line 1209
    iget-object v2, p0, Lcom/android/jrdsettings/SoundSettings;->mSystemVol:Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;

    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setIcon(I)V

    .line 1210
    iget-object v2, p0, Lcom/android/jrdsettings/SoundSettings;->mSystemVol:Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;

    invoke-virtual {v2}, Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;->setDisableSeekBar()V

    .line 1213
    iget-object v2, p0, Lcom/android/jrdsettings/SoundSettings;->mNotifSysVol:Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;

    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setIcon(I)V

    .line 1214
    iget-object v2, p0, Lcom/android/jrdsettings/SoundSettings;->mNotifSysVol:Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;

    invoke-virtual {v2}, Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;->setDisableSeekBar()V

    .line 1241
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/android/jrdsettings/SoundSettings;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    if-eqz v2, :cond_0

    .line 1242
    iget-object v2, p0, Lcom/android/jrdsettings/SoundSettings;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    invoke-virtual {v2, p1}, Lcom/mediatek/audioprofile/AudioProfileManager;->getVibrationEnabled(Ljava/lang/String;)Z

    move-result v0

    .line 1243
    .local v0, isVibrate:Z
    iget-object v2, p0, Lcom/android/jrdsettings/SoundSettings;->mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v0}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0

    .line 1217
    .end local v0           #isVibrate:Z
    :cond_3
    const-string v2, "mtk_audioprofile_meeting"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1218
    iget-object v2, p0, Lcom/android/jrdsettings/SoundSettings;->mPhoneSilent:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v5}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 1219
    iget-object v2, p0, Lcom/android/jrdsettings/SoundSettings;->mRingNotifSysVol:Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setIcon(I)V

    .line 1220
    iget-object v2, p0, Lcom/android/jrdsettings/SoundSettings;->mSystemVol:Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setIcon(I)V

    .line 1221
    iget-object v2, p0, Lcom/android/jrdsettings/SoundSettings;->mSystemVol:Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;

    invoke-virtual {v2}, Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;->setDisableSeekBar()V

    .line 1224
    iget-object v2, p0, Lcom/android/jrdsettings/SoundSettings;->mNotifSysVol:Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setIcon(I)V

    .line 1225
    iget-object v2, p0, Lcom/android/jrdsettings/SoundSettings;->mNotifSysVol:Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;

    invoke-virtual {v2}, Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;->setDisableSeekBar()V

    goto :goto_1

    .line 1228
    :cond_4
    const-string v2, "mtk_audioprofile_general"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1229
    iget-object v2, p0, Lcom/android/jrdsettings/SoundSettings;->mPhoneSilent:Landroid/preference/CheckBoxPreference;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 1230
    iget-object v2, p0, Lcom/android/jrdsettings/SoundSettings;->mRingNotifSysVol:Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;

    const v3, 0x7f020086

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setIcon(I)V

    .line 1231
    iget-object v2, p0, Lcom/android/jrdsettings/SoundSettings;->mSystemVol:Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;

    const v3, 0x7f020088

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setIcon(I)V

    .line 1232
    iget-object v2, p0, Lcom/android/jrdsettings/SoundSettings;->mSystemVol:Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;

    invoke-virtual {v2}, Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;->setEnableSeekBar()V

    .line 1235
    iget-object v2, p0, Lcom/android/jrdsettings/SoundSettings;->mNotifSysVol:Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;

    const v3, 0x7f020085

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setIcon(I)V

    .line 1236
    iget-object v2, p0, Lcom/android/jrdsettings/SoundSettings;->mNotifSysVol:Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;

    invoke-virtual {v2}, Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;->setEnableSeekBar()V

    goto :goto_1
.end method

.method private updateRingerModeCheckBox()V
    .locals 8

    .prologue
    const v7, 0x7f02008a

    const v6, 0x7f020087

    const/4 v5, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1111
    iget-object v4, p0, Lcom/android/jrdsettings/SoundSettings;->mPhoneSilent:Landroid/preference/CheckBoxPreference;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/jrdsettings/SoundSettings;->mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;

    if-nez v4, :cond_1

    .line 1192
    :cond_0
    :goto_0
    return-void

    .line 1112
    :cond_1
    invoke-direct {p0}, Lcom/android/jrdsettings/SoundSettings;->getCurrentRingerMode()I

    move-result v0

    .line 1113
    .local v0, state:I
    if-nez v0, :cond_4

    .line 1114
    iget-object v4, p0, Lcom/android/jrdsettings/SoundSettings;->mPhoneSilent:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 1115
    iget-object v4, p0, Lcom/android/jrdsettings/SoundSettings;->mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 1127
    :cond_2
    :goto_1
    iget-object v4, p0, Lcom/android/jrdsettings/SoundSettings;->mRingNotifSysVol:Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/jrdsettings/SoundSettings;->mSystemVol:Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/jrdsettings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v4, :cond_0

    .line 1135
    iget-object v4, p0, Lcom/android/jrdsettings/SoundSettings;->mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/android/jrdsettings/SoundSettings;->mPhoneSilent:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1136
    iget-object v4, p0, Lcom/android/jrdsettings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4, v2}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 1137
    iget-object v4, p0, Lcom/android/jrdsettings/SoundSettings;->mRingNotifSysVol:Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;

    invoke-virtual {v4, v6}, Landroid/preference/Preference;->setIcon(I)V

    .line 1138
    iget-object v4, p0, Lcom/android/jrdsettings/SoundSettings;->mSystemVol:Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;

    invoke-virtual {v4, v6}, Landroid/preference/Preference;->setIcon(I)V

    .line 1139
    iget-object v4, p0, Lcom/android/jrdsettings/SoundSettings;->mSystemVol:Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;

    invoke-virtual {v4}, Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;->setDisableSeekBar()V

    .line 1141
    iget-object v4, p0, Lcom/android/jrdsettings/SoundSettings;->mNotifSysVol:Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;

    if-eqz v4, :cond_3

    .line 1142
    iget-object v4, p0, Lcom/android/jrdsettings/SoundSettings;->mNotifSysVol:Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;

    invoke-virtual {v4, v6}, Landroid/preference/Preference;->setIcon(I)V

    .line 1143
    iget-object v4, p0, Lcom/android/jrdsettings/SoundSettings;->mNotifSysVol:Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;

    invoke-virtual {v4}, Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;->setDisableSeekBar()V

    .line 1185
    :cond_3
    :goto_2
    iget-object v4, p0, Lcom/android/jrdsettings/SoundSettings;->mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/android/jrdsettings/SoundSettings;->mPhoneSilent:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v4

    if-nez v4, :cond_a

    move v1, v2

    .line 1187
    .local v1, vibrationStatus:I
    :goto_3
    iget-object v4, p0, Lcom/android/jrdsettings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4, v3, v1}, Landroid/media/AudioManager;->setVibrateSetting(II)V

    .line 1188
    iget-object v3, p0, Lcom/android/jrdsettings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3, v2, v1}, Landroid/media/AudioManager;->setVibrateSetting(II)V

    goto :goto_0

    .line 1116
    .end local v1           #vibrationStatus:I
    :cond_4
    if-ne v0, v2, :cond_5

    .line 1117
    iget-object v4, p0, Lcom/android/jrdsettings/SoundSettings;->mPhoneSilent:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 1118
    iget-object v4, p0, Lcom/android/jrdsettings/SoundSettings;->mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_1

    .line 1119
    :cond_5
    const/4 v4, 0x3

    if-ne v0, v4, :cond_6

    .line 1120
    iget-object v4, p0, Lcom/android/jrdsettings/SoundSettings;->mPhoneSilent:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 1121
    iget-object v4, p0, Lcom/android/jrdsettings/SoundSettings;->mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_1

    .line 1122
    :cond_6
    if-ne v0, v5, :cond_2

    .line 1123
    iget-object v4, p0, Lcom/android/jrdsettings/SoundSettings;->mPhoneSilent:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 1124
    iget-object v4, p0, Lcom/android/jrdsettings/SoundSettings;->mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto/16 :goto_1

    .line 1146
    :cond_7
    iget-object v4, p0, Lcom/android/jrdsettings/SoundSettings;->mPhoneSilent:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1147
    iget-object v4, p0, Lcom/android/jrdsettings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4, v3}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 1148
    iget-object v4, p0, Lcom/android/jrdsettings/SoundSettings;->mRingNotifSysVol:Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;

    invoke-virtual {v4, v7}, Landroid/preference/Preference;->setIcon(I)V

    .line 1149
    iget-object v4, p0, Lcom/android/jrdsettings/SoundSettings;->mSystemVol:Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;

    invoke-virtual {v4, v7}, Landroid/preference/Preference;->setIcon(I)V

    .line 1150
    iget-object v4, p0, Lcom/android/jrdsettings/SoundSettings;->mSystemVol:Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;

    invoke-virtual {v4}, Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;->setDisableSeekBar()V

    .line 1152
    iget-object v4, p0, Lcom/android/jrdsettings/SoundSettings;->mNotifSysVol:Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;

    if-eqz v4, :cond_3

    .line 1153
    iget-object v4, p0, Lcom/android/jrdsettings/SoundSettings;->mNotifSysVol:Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;

    invoke-virtual {v4, v7}, Landroid/preference/Preference;->setIcon(I)V

    .line 1154
    iget-object v4, p0, Lcom/android/jrdsettings/SoundSettings;->mNotifSysVol:Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;

    invoke-virtual {v4}, Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;->setDisableSeekBar()V

    goto :goto_2

    .line 1157
    :cond_8
    iget-object v4, p0, Lcom/android/jrdsettings/SoundSettings;->mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1159
    iget-object v4, p0, Lcom/android/jrdsettings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 1160
    iget-object v4, p0, Lcom/android/jrdsettings/SoundSettings;->mRingNotifSysVol:Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;

    const v5, 0x7f020086

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setIcon(I)V

    .line 1161
    iget-object v4, p0, Lcom/android/jrdsettings/SoundSettings;->mSystemVol:Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;

    const v5, 0x7f020088

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setIcon(I)V

    .line 1162
    iget-object v4, p0, Lcom/android/jrdsettings/SoundSettings;->mSystemVol:Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;

    invoke-virtual {v4}, Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;->setEnableSeekBar()V

    .line 1164
    iget-object v4, p0, Lcom/android/jrdsettings/SoundSettings;->mNotifSysVol:Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;

    if-eqz v4, :cond_3

    .line 1165
    iget-object v4, p0, Lcom/android/jrdsettings/SoundSettings;->mNotifSysVol:Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;

    const v5, 0x7f020085

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setIcon(I)V

    .line 1166
    iget-object v4, p0, Lcom/android/jrdsettings/SoundSettings;->mNotifSysVol:Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;

    invoke-virtual {v4}, Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;->setEnableSeekBar()V

    goto/16 :goto_2

    .line 1170
    :cond_9
    iget-object v4, p0, Lcom/android/jrdsettings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 1171
    iget-object v4, p0, Lcom/android/jrdsettings/SoundSettings;->mRingNotifSysVol:Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;

    const v5, 0x7f020086

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setIcon(I)V

    .line 1172
    iget-object v4, p0, Lcom/android/jrdsettings/SoundSettings;->mSystemVol:Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;

    const v5, 0x7f020088

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setIcon(I)V

    .line 1173
    iget-object v4, p0, Lcom/android/jrdsettings/SoundSettings;->mSystemVol:Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;

    invoke-virtual {v4}, Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;->setEnableSeekBar()V

    .line 1175
    iget-object v4, p0, Lcom/android/jrdsettings/SoundSettings;->mNotifSysVol:Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;

    if-eqz v4, :cond_3

    .line 1176
    iget-object v4, p0, Lcom/android/jrdsettings/SoundSettings;->mNotifSysVol:Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;

    const v5, 0x7f020085

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setIcon(I)V

    .line 1177
    iget-object v4, p0, Lcom/android/jrdsettings/SoundSettings;->mNotifSysVol:Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;

    invoke-virtual {v4}, Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;->setEnableSeekBar()V

    goto/16 :goto_2

    :cond_a
    move v1, v3

    .line 1185
    goto/16 :goto_3
.end method

.method private updateRingtoneName(ILandroid/content/Context;I)V
    .locals 8
    .parameter "type"
    .parameter "context"
    .parameter "msg"

    .prologue
    .line 557
    if-nez p2, :cond_0

    .line 589
    :goto_0
    return-void

    .line 558
    :cond_0
    invoke-static {p2, p1}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v1

    .line 559
    .local v1, ringtoneUri:Landroid/net/Uri;
    const-string v0, "SoundSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getActualDefaultRingtoneUri: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    const v0, 0x104043b

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 563
    .local v7, summary:Ljava/lang/CharSequence;
    if-eqz v1, :cond_1

    invoke-static {p2, v1}, Landroid/media/RingtoneManager;->isRingtoneExist(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 564
    invoke-static {p2, p1}, Landroid/media/RingtoneManager;->getDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v1

    .line 565
    const-string v0, "SoundSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDefaultRingtoneUri: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    :cond_1
    const-string v0, "SoundSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Is it a silent ringtone: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/jrdsettings/SoundSettings;->mSilentRingtone:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    if-eqz v1, :cond_2

    iget-boolean v0, p0, Lcom/android/jrdsettings/SoundSettings;->mSilentRingtone:Z

    if-eqz v0, :cond_4

    .line 572
    :cond_2
    const v0, 0x104058f

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 588
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/jrdsettings/SoundSettings;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/jrdsettings/SoundSettings;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, p3, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 576
    :cond_4
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "title"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 578
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_3

    .line 579
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 580
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 582
    :cond_5
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 584
    .end local v6           #cursor:Landroid/database/Cursor;
    :catch_0
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 796
    const v0, 0x7f090909

    return v0
.end method

.method protected getSharedPreferencesEnabled(Ljava/lang/String;)Z
    .locals 2
    .parameter "paramString"

    .prologue
    .line 1020
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 500
    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 501
    const-string v0, "SoundSettings"

    const-string v1, "-->onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->clearScrapViewsIfNeeded()V

    .line 503
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 23
    .parameter "savedInstanceState"

    .prologue
    .line 298
    invoke-super/range {p0 .. p1}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 299
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/jrdsettings/SoundSettings;->mContext:Landroid/content/Context;

    .line 300
    invoke-virtual/range {p0 .. p0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    .line 301
    .local v17, resolver:Landroid/content/ContentResolver;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v3

    .line 303
    .local v3, activePhoneType:I
    const-string v20, "audio"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/media/AudioManager;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/jrdsettings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    .line 305
    const-string v20, "audioprofile"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/mediatek/audioprofile/AudioProfileManager;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/jrdsettings/SoundSettings;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    .line 307
    const v20, 0x7f060041

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 309
    new-instance v20, Lcom/android/jrdsettings/SoundSettings$SlientAndVibrateStateReceiver;

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/jrdsettings/SoundSettings$SlientAndVibrateStateReceiver;-><init>(Lcom/android/jrdsettings/SoundSettings;Lcom/android/jrdsettings/SoundSettings$1;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/jrdsettings/SoundSettings;->mSlientAndVibrateStateReceiver:Lcom/android/jrdsettings/SoundSettings$SlientAndVibrateStateReceiver;

    .line 310
    new-instance v9, Landroid/content/IntentFilter;

    invoke-direct {v9}, Landroid/content/IntentFilter;-><init>()V

    .line 311
    .local v9, filter:Landroid/content/IntentFilter;
    const-string v20, "com.android.jrd.setSilentAndVibrateUncheck"

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 312
    const-string v20, "com.android.jrd.startDragJrdVolumeSeekBar"

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 313
    const-string v20, "com.android.jrd.endDragJrdVolumeSeekBar"

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 314
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/SoundSettings;->mSlientAndVibrateStateReceiver:Lcom/android/jrdsettings/SoundSettings$SlientAndVibrateStateReceiver;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v9}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 317
    const/16 v20, 0x2

    move/from16 v0, v20

    if-eq v0, v3, :cond_0

    .line 322
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0c0001

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v20

    if-nez v20, :cond_1

    .line 323
    const-string v20, "ring_volume"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    .line 326
    :cond_1
    const-string v20, "hifi_open_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    check-cast v20, Lcom/android/jrdsettings/hifi/HifiSwitchPreference;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/jrdsettings/SoundSettings;->mHifiSwitch:Lcom/android/jrdsettings/hifi/HifiSwitchPreference;

    .line 327
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/SoundSettings;->mHifiSwitch:Lcom/android/jrdsettings/hifi/HifiSwitchPreference;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 329
    const-string v20, "phone_silent"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    check-cast v20, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/jrdsettings/SoundSettings;->mPhoneSilent:Landroid/preference/CheckBoxPreference;

    .line 330
    const-string v20, "vibrate_when_ringing"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    check-cast v20, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/jrdsettings/SoundSettings;->mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;

    .line 331
    const-string v20, "dtmf_tone"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    check-cast v20, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/jrdsettings/SoundSettings;->mDtmfTone:Landroid/preference/CheckBoxPreference;

    .line 335
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/SoundSettings;->mDtmfTone:Landroid/preference/CheckBoxPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/SoundSettings;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/SoundSettings;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/mediatek/audioprofile/AudioProfileManager;->getActiveProfileKey()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lcom/mediatek/audioprofile/AudioProfileManager;->getDtmfToneEnabled(Ljava/lang/String;)Z

    move-result v21

    invoke-virtual/range {v20 .. v21}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 337
    const-string v20, "sound_effects"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    check-cast v20, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/jrdsettings/SoundSettings;->mSoundEffects:Landroid/preference/CheckBoxPreference;

    .line 341
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/SoundSettings;->mSoundEffects:Landroid/preference/CheckBoxPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/SoundSettings;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/SoundSettings;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/mediatek/audioprofile/AudioProfileManager;->getActiveProfileKey()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lcom/mediatek/audioprofile/AudioProfileManager;->getSoundEffectEnabled(Ljava/lang/String;)Z

    move-result v21

    invoke-virtual/range {v20 .. v21}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 343
    const-string v20, "haptic_feedback"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    check-cast v20, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/jrdsettings/SoundSettings;->mHapticFeedback:Landroid/preference/CheckBoxPreference;

    .line 347
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/SoundSettings;->mHapticFeedback:Landroid/preference/CheckBoxPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/SoundSettings;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/SoundSettings;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/mediatek/audioprofile/AudioProfileManager;->getActiveProfileKey()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lcom/mediatek/audioprofile/AudioProfileManager;->getHapticFeedbackEnabled(Ljava/lang/String;)Z

    move-result v21

    invoke-virtual/range {v20 .. v21}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 350
    const-string v20, "lock_sounds"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    check-cast v20, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/jrdsettings/SoundSettings;->mLockSounds:Landroid/preference/CheckBoxPreference;

    .line 354
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/SoundSettings;->mLockSounds:Landroid/preference/CheckBoxPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/SoundSettings;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/SoundSettings;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/mediatek/audioprofile/AudioProfileManager;->getActiveProfileKey()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lcom/mediatek/audioprofile/AudioProfileManager;->getLockScreenEnabled(Ljava/lang/String;)Z

    move-result v21

    invoke-virtual/range {v20 .. v21}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 357
    const-string v20, "ringtone"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/jrdsettings/SoundSettings;->mRingtonePreference:Landroid/preference/Preference;

    .line 358
    const-string v20, "notification_sound"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/jrdsettings/SoundSettings;->mNotificationPreference:Landroid/preference/Preference;

    .line 360
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    .line 361
    .local v4, activity:Landroid/app/Activity;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/SoundSettings;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const-string v21, "audio"

    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/AudioManager;

    .line 362
    .local v5, am:Landroid/media/AudioManager;
    const-string v20, "GetHiFiDACStatus"

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 364
    .local v10, hifiCode:Ljava/lang/String;
    if-eqz v10, :cond_2

    const-string v20, ""

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_2

    const-string v20, "GetHiFiDACStatus=-1"

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_b

    .line 365
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/SoundSettings;->mHifiSwitch:Lcom/android/jrdsettings/hifi/HifiSwitchPreference;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 369
    :goto_0
    const-string v20, "vibrator"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/os/Vibrator;

    .line 370
    .local v19, vibrator:Landroid/os/Vibrator;
    if-eqz v19, :cond_3

    invoke-virtual/range {v19 .. v19}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v20

    if-nez v20, :cond_4

    .line 371
    :cond_3
    const-string v20, "vibrate_when_ringing"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)V

    .line 372
    const-string v20, "haptic_feedback"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)V

    .line 374
    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/jrdsettings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v20

    if-nez v20, :cond_5

    .line 375
    const-string v20, "vibrate_when_ringing"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)V

    .line 378
    :cond_5
    const/16 v20, 0x2

    move/from16 v0, v20

    if-ne v0, v3, :cond_6

    .line 379
    const-string v20, "emergency_tone"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/ListPreference;

    .line 381
    .local v7, emergencyTonePreference:Landroid/preference/ListPreference;
    const-string v20, "emergency_tone"

    const/16 v21, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 383
    move-object/from16 v0, p0

    invoke-virtual {v7, v0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 386
    .end local v7           #emergencyTonePreference:Landroid/preference/ListPreference;
    :cond_6
    const-string v20, "sound_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    check-cast v20, Landroid/preference/PreferenceGroup;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/jrdsettings/SoundSettings;->mSoundSettings:Landroid/preference/PreferenceGroup;

    .line 388
    const-string v20, "jrd_ring_and_notifaction"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    check-cast v20, Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/jrdsettings/SoundSettings;->mRingNotifSysVol:Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;

    .line 391
    const-string v20, "jrd_notifaction"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    check-cast v20, Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/jrdsettings/SoundSettings;->mNotifSysVol:Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;

    .line 392
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/SoundSettings;->mRingNotifSysVol:Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;

    move-object/from16 v20, v0

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f09092f

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 401
    const-string v20, "jrd_system"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    check-cast v20, Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/jrdsettings/SoundSettings;->mSystemVol:Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;

    .line 403
    const-string v20, "ascending_ringing"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    check-cast v20, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/jrdsettings/SoundSettings;->mAscendingRinging:Landroid/preference/CheckBoxPreference;

    .line 404
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/SoundSettings;->mAscendingRinging:Landroid/preference/CheckBoxPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/SoundSettings;->mAscendingRinging:Landroid/preference/CheckBoxPreference;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/jrdsettings/SoundSettings;->getSharedPreferencesEnabled(Ljava/lang/String;)Z

    move-result v21

    invoke-virtual/range {v20 .. v21}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 405
    const-string v20, "sound_switch_on_ringtone"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    check-cast v20, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/jrdsettings/SoundSettings;->mPowerOn:Landroid/preference/CheckBoxPreference;

    .line 406
    const-string v20, "sound_switch_off_ringtone"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    check-cast v20, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/jrdsettings/SoundSettings;->mPowerOff:Landroid/preference/CheckBoxPreference;

    .line 413
    const-string v20, "ro.config.key_switch_on_off"

    const/16 v21, 0x1

    invoke-static/range {v20 .. v21}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_c

    const/16 v20, 0x1

    :goto_1
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/jrdsettings/SoundSettings;->isSupportOnOff:Z

    .line 414
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/jrdsettings/SoundSettings;->isSupportOnOff:Z

    move/from16 v20, v0

    if-nez v20, :cond_8

    .line 415
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/SoundSettings;->mPowerOn:Landroid/preference/CheckBoxPreference;

    move-object/from16 v20, v0

    if-eqz v20, :cond_7

    .line 416
    const-string v20, "sound_switch_on_ringtone"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)V

    .line 417
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/jrdsettings/SoundSettings;->mPowerOn:Landroid/preference/CheckBoxPreference;

    .line 419
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/SoundSettings;->mPowerOff:Landroid/preference/CheckBoxPreference;

    move-object/from16 v20, v0

    if-eqz v20, :cond_8

    .line 420
    const-string v20, "sound_switch_off_ringtone"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)V

    .line 421
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/jrdsettings/SoundSettings;->mPowerOff:Landroid/preference/CheckBoxPreference;

    .line 439
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/SoundSettings;->mSoundSettings:Landroid/preference/PreferenceGroup;

    move-object/from16 v20, v0

    const-string v21, "musicfx"

    invoke-virtual/range {v20 .. v21}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/jrdsettings/SoundSettings;->mMusicFx:Landroid/preference/Preference;

    .line 440
    new-instance v11, Landroid/content/Intent;

    const-string v20, "android.media.action.DISPLAY_AUDIO_EFFECT_CONTROL_PANEL"

    move-object/from16 v0, v20

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 441
    .local v11, i:Landroid/content/Intent;
    invoke-virtual/range {p0 .. p0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    .line 442
    .local v14, p:Landroid/content/pm/PackageManager;
    const/16 v20, 0x200

    move/from16 v0, v20

    invoke-virtual {v14, v11, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v18

    .line 443
    .local v18, ris:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v20

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-gt v0, v1, :cond_9

    .line 449
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/SoundSettings;->mSoundSettings:Landroid/preference/PreferenceGroup;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/SoundSettings;->mMusicFx:Landroid/preference/Preference;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 452
    :cond_9
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/jrdsettings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v20

    if-nez v20, :cond_d

    .line 453
    sget-object v6, Lcom/android/jrdsettings/SoundSettings;->NEED_VOICE_CAPABILITY:[Ljava/lang/String;

    .local v6, arr$:[Ljava/lang/String;
    array-length v13, v6

    .local v13, len$:I
    const/4 v12, 0x0

    .local v12, i$:I
    :goto_2
    if-ge v12, v13, :cond_d

    aget-object v16, v6, v12

    .line 454
    .local v16, prefKey:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v15

    .line 455
    .local v15, pref:Landroid/preference/Preference;
    if-eqz v15, :cond_a

    .line 456
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 453
    :cond_a
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 367
    .end local v6           #arr$:[Ljava/lang/String;
    .end local v11           #i:Landroid/content/Intent;
    .end local v12           #i$:I
    .end local v13           #len$:I
    .end local v14           #p:Landroid/content/pm/PackageManager;
    .end local v15           #pref:Landroid/preference/Preference;
    .end local v16           #prefKey:Ljava/lang/String;
    .end local v18           #ris:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v19           #vibrator:Landroid/os/Vibrator;
    :cond_b
    new-instance v20, Lcom/android/jrdsettings/hifi/HifiEnabler;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/SoundSettings;->mHifiSwitch:Lcom/android/jrdsettings/hifi/HifiSwitchPreference;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v0, v4, v1}, Lcom/android/jrdsettings/hifi/HifiEnabler;-><init>(Landroid/content/Context;Lcom/android/jrdsettings/hifi/HifiSwitchPreference;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/jrdsettings/SoundSettings;->mHifiEnabler:Lcom/android/jrdsettings/hifi/HifiEnabler;

    goto/16 :goto_0

    .line 413
    .restart local v19       #vibrator:Landroid/os/Vibrator;
    :cond_c
    const/16 v20, 0x0

    goto/16 :goto_1

    .line 461
    .restart local v11       #i:Landroid/content/Intent;
    .restart local v14       #p:Landroid/content/pm/PackageManager;
    .restart local v18       #ris:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_d
    new-instance v20, Lcom/android/jrdsettings/SoundSettings$5;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/jrdsettings/SoundSettings$5;-><init>(Lcom/android/jrdsettings/SoundSettings;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/jrdsettings/SoundSettings;->mRingtoneLookupRunnable:Ljava/lang/Runnable;

    .line 474
    invoke-direct/range {p0 .. p0}, Lcom/android/jrdsettings/SoundSettings;->initDockSettings()V

    .line 476
    new-instance v8, Landroid/content/IntentFilter;

    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    .line 477
    .local v8, f:Landroid/content/IntentFilter;
    const-string v20, "android.intent.action.MEDIA_EJECT"

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 478
    const-string v20, "android.intent.action.MEDIA_UNMOUNTED"

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 479
    const-string v20, "file"

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 480
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/jrdsettings/SoundSettings;->mScanListener:Landroid/content/BroadcastReceiver;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v8}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 482
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 1
    .parameter "id"

    .prologue
    .line 867
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 868
    invoke-direct {p0}, Lcom/android/jrdsettings/SoundSettings;->createUndockedMessage()Landroid/app/Dialog;

    move-result-object v0

    .line 870
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 534
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroy()V

    .line 535
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/jrdsettings/SoundSettings;->mSlientAndVibrateStateReceiver:Lcom/android/jrdsettings/SoundSettings$SlientAndVibrateStateReceiver;

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 536
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/jrdsettings/SoundSettings;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 537
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 541
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 542
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/jrdsettings/SoundSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 544
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/jrdsettings/SoundSettings;->mVolumeReceiver:Lcom/android/jrdsettings/SoundSettings$VolumeReceiver;

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 547
    iget-object v0, p0, Lcom/android/jrdsettings/SoundSettings;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    iget-object v1, p0, Lcom/android/jrdsettings/SoundSettings;->mAudioProfileListenr:Lcom/mediatek/common/audioprofile/AudioProfileListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/audioprofile/AudioProfileManager;->listenAudioProfie(Lcom/mediatek/common/audioprofile/AudioProfileListener;I)V

    .line 551
    iget-object v0, p0, Lcom/android/jrdsettings/SoundSettings;->mHifiEnabler:Lcom/android/jrdsettings/hifi/HifiEnabler;

    if-eqz v0, :cond_0

    .line 552
    iget-object v0, p0, Lcom/android/jrdsettings/SoundSettings;->mHifiEnabler:Lcom/android/jrdsettings/hifi/HifiEnabler;

    invoke-virtual {v0}, Lcom/android/jrdsettings/hifi/HifiEnabler;->pause()V

    .line 554
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .parameter "preference"
    .parameter "objValue"

    .prologue
    .line 780
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 781
    .local v1, key:Ljava/lang/String;
    const-string v3, "emergency_tone"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 783
    :try_start_0
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 784
    .local v2, value:I
    invoke-virtual {p0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "emergency_tone"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 791
    .end local v2           #value:I
    :cond_0
    :goto_0
    const/4 v3, 0x1

    return v3

    .line 786
    :catch_0
    move-exception v0

    .line 787
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v3, "SoundSettings"

    const-string v4, "could not persist emergency tone setting"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 10
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const v9, 0x7f02008a

    const v8, 0x7f020087

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 597
    iget-object v7, p0, Lcom/android/jrdsettings/SoundSettings;->mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;

    if-eq p2, v7, :cond_0

    iget-object v7, p0, Lcom/android/jrdsettings/SoundSettings;->mPhoneSilent:Landroid/preference/CheckBoxPreference;

    if-ne p2, v7, :cond_7

    .line 634
    :cond_0
    iget-object v5, p0, Lcom/android/jrdsettings/SoundSettings;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    if-eqz v5, :cond_3

    .line 636
    iget-object v5, p0, Lcom/android/jrdsettings/SoundSettings;->mNotifSysVol:Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;

    if-nez v5, :cond_1

    .line 637
    const-string v5, "jrd_notifaction"

    invoke-virtual {p0, v5}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;

    iput-object v5, p0, Lcom/android/jrdsettings/SoundSettings;->mNotifSysVol:Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;

    .line 641
    :cond_1
    iget-object v5, p0, Lcom/android/jrdsettings/SoundSettings;->mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/jrdsettings/SoundSettings;->mPhoneSilent:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 642
    iget-object v5, p0, Lcom/android/jrdsettings/SoundSettings;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    const-string v7, "mtk_audioprofile_meeting"

    invoke-virtual {v5, v7}, Lcom/mediatek/audioprofile/AudioProfileManager;->setActiveProfile(Ljava/lang/String;)V

    .line 643
    iget-object v5, p0, Lcom/android/jrdsettings/SoundSettings;->mRingNotifSysVol:Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;

    invoke-virtual {v5, v8}, Landroid/preference/Preference;->setIcon(I)V

    .line 644
    iget-object v5, p0, Lcom/android/jrdsettings/SoundSettings;->mSystemVol:Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;

    invoke-virtual {v5, v8}, Landroid/preference/Preference;->setIcon(I)V

    .line 645
    iget-object v5, p0, Lcom/android/jrdsettings/SoundSettings;->mSystemVol:Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;

    invoke-virtual {v5}, Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;->setDisableSeekBar()V

    .line 648
    iget-object v5, p0, Lcom/android/jrdsettings/SoundSettings;->mNotifSysVol:Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;

    invoke-virtual {v5, v8}, Landroid/preference/Preference;->setIcon(I)V

    .line 649
    iget-object v5, p0, Lcom/android/jrdsettings/SoundSettings;->mNotifSysVol:Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;

    invoke-virtual {v5}, Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;->setDisableSeekBar()V

    .line 676
    :cond_2
    :goto_0
    iget-object v5, p0, Lcom/android/jrdsettings/SoundSettings;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    iget-object v7, p0, Lcom/android/jrdsettings/SoundSettings;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    invoke-virtual {v7}, Lcom/mediatek/audioprofile/AudioProfileManager;->getActiveProfileKey()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/android/jrdsettings/SoundSettings;->mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v8

    invoke-virtual {v5, v7, v8}, Lcom/mediatek/audioprofile/AudioProfileManager;->setVibrationEnabled(Ljava/lang/String;Z)V

    :cond_3
    :goto_1
    move v5, v6

    .line 776
    :cond_4
    :goto_2
    return v5

    .line 652
    :cond_5
    iget-object v5, p0, Lcom/android/jrdsettings/SoundSettings;->mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v5

    if-nez v5, :cond_6

    iget-object v5, p0, Lcom/android/jrdsettings/SoundSettings;->mPhoneSilent:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 653
    iget-object v5, p0, Lcom/android/jrdsettings/SoundSettings;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    const-string v7, "mtk_audioprofile_silent"

    invoke-virtual {v5, v7}, Lcom/mediatek/audioprofile/AudioProfileManager;->setActiveProfile(Ljava/lang/String;)V

    .line 654
    iget-object v5, p0, Lcom/android/jrdsettings/SoundSettings;->mRingNotifSysVol:Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;

    invoke-virtual {v5, v9}, Landroid/preference/Preference;->setIcon(I)V

    .line 655
    iget-object v5, p0, Lcom/android/jrdsettings/SoundSettings;->mSystemVol:Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;

    invoke-virtual {v5, v9}, Landroid/preference/Preference;->setIcon(I)V

    .line 656
    iget-object v5, p0, Lcom/android/jrdsettings/SoundSettings;->mSystemVol:Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;

    invoke-virtual {v5}, Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;->setDisableSeekBar()V

    .line 659
    iget-object v5, p0, Lcom/android/jrdsettings/SoundSettings;->mNotifSysVol:Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;

    invoke-virtual {v5, v9}, Landroid/preference/Preference;->setIcon(I)V

    .line 660
    iget-object v5, p0, Lcom/android/jrdsettings/SoundSettings;->mNotifSysVol:Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;

    invoke-virtual {v5}, Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;->setDisableSeekBar()V

    goto :goto_0

    .line 663
    :cond_6
    iget-object v5, p0, Lcom/android/jrdsettings/SoundSettings;->mPhoneSilent:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v5

    if-nez v5, :cond_2

    .line 664
    iget-object v5, p0, Lcom/android/jrdsettings/SoundSettings;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    const-string v7, "mtk_audioprofile_general"

    invoke-virtual {v5, v7}, Lcom/mediatek/audioprofile/AudioProfileManager;->setActiveProfile(Ljava/lang/String;)V

    .line 665
    iget-object v5, p0, Lcom/android/jrdsettings/SoundSettings;->mRingNotifSysVol:Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;

    const v7, 0x7f020086

    invoke-virtual {v5, v7}, Landroid/preference/Preference;->setIcon(I)V

    .line 666
    iget-object v5, p0, Lcom/android/jrdsettings/SoundSettings;->mSystemVol:Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;

    const v7, 0x7f020088

    invoke-virtual {v5, v7}, Landroid/preference/Preference;->setIcon(I)V

    .line 667
    iget-object v5, p0, Lcom/android/jrdsettings/SoundSettings;->mSystemVol:Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;

    invoke-virtual {v5}, Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;->setEnableSeekBar()V

    .line 670
    iget-object v5, p0, Lcom/android/jrdsettings/SoundSettings;->mNotifSysVol:Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;

    const v7, 0x7f020085

    invoke-virtual {v5, v7}, Landroid/preference/Preference;->setIcon(I)V

    .line 671
    iget-object v5, p0, Lcom/android/jrdsettings/SoundSettings;->mNotifSysVol:Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;

    invoke-virtual {v5}, Lcom/mediatek/audioprofile/JrdVolumeSeekBarPreference;->setEnableSeekBar()V

    goto :goto_0

    .line 685
    :cond_7
    iget-object v7, p0, Lcom/android/jrdsettings/SoundSettings;->mDtmfTone:Landroid/preference/CheckBoxPreference;

    if-ne p2, v7, :cond_8

    .line 688
    iget-object v5, p0, Lcom/android/jrdsettings/SoundSettings;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    iget-object v7, p0, Lcom/android/jrdsettings/SoundSettings;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    invoke-virtual {v7}, Lcom/mediatek/audioprofile/AudioProfileManager;->getActiveProfileKey()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/android/jrdsettings/SoundSettings;->mDtmfTone:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v8

    invoke-virtual {v5, v7, v8}, Lcom/mediatek/audioprofile/AudioProfileManager;->setDtmfToneEnabled(Ljava/lang/String;Z)V

    goto :goto_1

    .line 690
    :cond_8
    iget-object v7, p0, Lcom/android/jrdsettings/SoundSettings;->mSoundEffects:Landroid/preference/CheckBoxPreference;

    if-ne p2, v7, :cond_a

    .line 691
    iget-object v5, p0, Lcom/android/jrdsettings/SoundSettings;->mSoundEffects:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 692
    iget-object v5, p0, Lcom/android/jrdsettings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v5}, Landroid/media/AudioManager;->loadSoundEffects()V

    .line 698
    :goto_3
    iget-object v5, p0, Lcom/android/jrdsettings/SoundSettings;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    iget-object v7, p0, Lcom/android/jrdsettings/SoundSettings;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    invoke-virtual {v7}, Lcom/mediatek/audioprofile/AudioProfileManager;->getActiveProfileKey()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/android/jrdsettings/SoundSettings;->mSoundEffects:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v8

    invoke-virtual {v5, v7, v8}, Lcom/mediatek/audioprofile/AudioProfileManager;->setSoundEffectEnabled(Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 694
    :cond_9
    iget-object v5, p0, Lcom/android/jrdsettings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v5}, Landroid/media/AudioManager;->unloadSoundEffects()V

    goto :goto_3

    .line 700
    :cond_a
    iget-object v7, p0, Lcom/android/jrdsettings/SoundSettings;->mHapticFeedback:Landroid/preference/CheckBoxPreference;

    if-ne p2, v7, :cond_b

    .line 703
    iget-object v5, p0, Lcom/android/jrdsettings/SoundSettings;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    iget-object v7, p0, Lcom/android/jrdsettings/SoundSettings;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    invoke-virtual {v7}, Lcom/mediatek/audioprofile/AudioProfileManager;->getActiveProfileKey()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/android/jrdsettings/SoundSettings;->mHapticFeedback:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v8

    invoke-virtual {v5, v7, v8}, Lcom/mediatek/audioprofile/AudioProfileManager;->setHapticFeedbackEnabled(Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 705
    :cond_b
    iget-object v7, p0, Lcom/android/jrdsettings/SoundSettings;->mLockSounds:Landroid/preference/CheckBoxPreference;

    if-ne p2, v7, :cond_c

    .line 708
    iget-object v5, p0, Lcom/android/jrdsettings/SoundSettings;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    iget-object v7, p0, Lcom/android/jrdsettings/SoundSettings;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    invoke-virtual {v7}, Lcom/mediatek/audioprofile/AudioProfileManager;->getActiveProfileKey()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/android/jrdsettings/SoundSettings;->mLockSounds:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v8

    invoke-virtual {v5, v7, v8}, Lcom/mediatek/audioprofile/AudioProfileManager;->setLockScreenEnabled(Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 712
    :cond_c
    iget-object v7, p0, Lcom/android/jrdsettings/SoundSettings;->mAscendingRinging:Landroid/preference/CheckBoxPreference;

    if-ne p2, v7, :cond_e

    .line 714
    invoke-virtual {p0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "ascending_ringing_enabled"

    iget-object v9, p0, Lcom/android/jrdsettings/SoundSettings;->mAscendingRinging:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v9}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v9

    if-eqz v9, :cond_d

    move v5, v6

    :cond_d
    invoke-static {v7, v8, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 717
    :cond_e
    iget-object v7, p0, Lcom/android/jrdsettings/SoundSettings;->mPowerOn:Landroid/preference/CheckBoxPreference;

    if-ne p2, v7, :cond_f

    .line 719
    iget-object v5, p0, Lcom/android/jrdsettings/SoundSettings;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    invoke-virtual {v5}, Lcom/mediatek/audioprofile/AudioProfileManager;->getActiveProfileKey()Ljava/lang/String;

    move-result-object v5

    iget-object v7, p0, Lcom/android/jrdsettings/SoundSettings;->mPowerOn:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v7

    iget-object v8, p0, Lcom/android/jrdsettings/SoundSettings;->mContext:Landroid/content/Context;

    const-string v9, "on"

    invoke-direct {p0, v5, v7, v8, v9}, Lcom/android/jrdsettings/SoundSettings;->setPowerOnOffActiveEnable(Ljava/lang/String;ZLandroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 728
    :cond_f
    iget-object v7, p0, Lcom/android/jrdsettings/SoundSettings;->mPowerOff:Landroid/preference/CheckBoxPreference;

    if-ne p2, v7, :cond_10

    .line 730
    iget-object v5, p0, Lcom/android/jrdsettings/SoundSettings;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    invoke-virtual {v5}, Lcom/mediatek/audioprofile/AudioProfileManager;->getActiveProfileKey()Ljava/lang/String;

    move-result-object v5

    iget-object v7, p0, Lcom/android/jrdsettings/SoundSettings;->mPowerOff:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v7

    iget-object v8, p0, Lcom/android/jrdsettings/SoundSettings;->mContext:Landroid/content/Context;

    const-string v9, "off"

    invoke-direct {p0, v5, v7, v8, v9}, Lcom/android/jrdsettings/SoundSettings;->setPowerOnOffActiveEnable(Ljava/lang/String;ZLandroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 740
    :cond_10
    iget-object v7, p0, Lcom/android/jrdsettings/SoundSettings;->mMusicFx:Landroid/preference/Preference;

    if-eq p2, v7, :cond_4

    .line 743
    iget-object v7, p0, Lcom/android/jrdsettings/SoundSettings;->mDockAudioSettings:Landroid/preference/Preference;

    if-ne p2, v7, :cond_16

    .line 744
    iget-object v7, p0, Lcom/android/jrdsettings/SoundSettings;->mDockIntent:Landroid/content/Intent;

    if-eqz v7, :cond_11

    iget-object v7, p0, Lcom/android/jrdsettings/SoundSettings;->mDockIntent:Landroid/content/Intent;

    const-string v8, "android.intent.extra.DOCK_STATE"

    invoke-virtual {v7, v8, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 748
    .local v0, dockState:I
    :goto_4
    if-nez v0, :cond_12

    .line 749
    invoke-virtual {p0, v6}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->showDialog(I)V

    goto/16 :goto_1

    .end local v0           #dockState:I
    :cond_11
    move v0, v5

    .line 744
    goto :goto_4

    .line 751
    .restart local v0       #dockState:I
    :cond_12
    iget-object v7, p0, Lcom/android/jrdsettings/SoundSettings;->mDockIntent:Landroid/content/Intent;

    const-string v8, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    if-eqz v7, :cond_13

    move v3, v6

    .line 753
    .local v3, isBluetooth:Z
    :goto_5
    if-eqz v3, :cond_14

    .line 754
    new-instance v2, Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/jrdsettings/SoundSettings;->mDockIntent:Landroid/content/Intent;

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 755
    .local v2, i:Landroid/content/Intent;
    const-string v5, "com.android.jrdsettings.bluetooth.action.DOCK_SHOW_UI"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 756
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-class v7, Lcom/android/jrdsettings/bluetooth/DockEventReceiver;

    invoke-virtual {v2, v5, v7}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 757
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1

    .end local v2           #i:Landroid/content/Intent;
    .end local v3           #isBluetooth:Z
    :cond_13
    move v3, v5

    .line 751
    goto :goto_5

    .line 759
    .restart local v3       #isBluetooth:Z
    :cond_14
    iget-object v4, p0, Lcom/android/jrdsettings/SoundSettings;->mDockAudioSettings:Landroid/preference/Preference;

    check-cast v4, Landroid/preference/PreferenceScreen;

    .line 760
    .local v4, ps:Landroid/preference/PreferenceScreen;
    invoke-virtual {v4}, Landroid/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 761
    .local v1, extras:Landroid/os/Bundle;
    const-string v7, "checked"

    invoke-virtual {p0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "dock_audio_media_enabled"

    invoke-static {v8, v9, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-ne v8, v6, :cond_15

    move v5, v6

    :cond_15
    invoke-virtual {v1, v7, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 764
    invoke-super {p0, v4, v4}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    goto/16 :goto_1

    .line 767
    .end local v0           #dockState:I
    .end local v1           #extras:Landroid/os/Bundle;
    .end local v3           #isBluetooth:Z
    .end local v4           #ps:Landroid/preference/PreferenceScreen;
    :cond_16
    iget-object v7, p0, Lcom/android/jrdsettings/SoundSettings;->mDockSounds:Landroid/preference/CheckBoxPreference;

    if-ne p2, v7, :cond_18

    .line 768
    invoke-virtual {p0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "dock_sounds_enabled"

    iget-object v9, p0, Lcom/android/jrdsettings/SoundSettings;->mDockSounds:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v9}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v9

    if-eqz v9, :cond_17

    move v5, v6

    :cond_17
    invoke-static {v7, v8, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 770
    :cond_18
    iget-object v7, p0, Lcom/android/jrdsettings/SoundSettings;->mDockAudioMediaEnabled:Landroid/preference/CheckBoxPreference;

    if-ne p2, v7, :cond_1a

    .line 771
    invoke-virtual {p0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "dock_audio_media_enabled"

    iget-object v9, p0, Lcom/android/jrdsettings/SoundSettings;->mDockAudioMediaEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v9}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v9

    if-eqz v9, :cond_19

    move v5, v6

    :cond_19
    invoke-static {v7, v8, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 774
    :cond_1a
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v5

    goto/16 :goto_2
.end method

.method public onResume()V
    .locals 5

    .prologue
    .line 507
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 513
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.DOCK_EVENT"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 514
    .local v0, filter:Landroid/content/IntentFilter;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/jrdsettings/SoundSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 517
    new-instance v2, Lcom/android/jrdsettings/SoundSettings$VolumeReceiver;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/jrdsettings/SoundSettings$VolumeReceiver;-><init>(Lcom/android/jrdsettings/SoundSettings;Lcom/android/jrdsettings/SoundSettings$1;)V

    iput-object v2, p0, Lcom/android/jrdsettings/SoundSettings;->mVolumeReceiver:Lcom/android/jrdsettings/SoundSettings$VolumeReceiver;

    .line 518
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.media.VOLUME_CHANGED_ACTION"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 519
    .local v1, volumefilter:Landroid/content/IntentFilter;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/jrdsettings/SoundSettings;->mVolumeReceiver:Lcom/android/jrdsettings/SoundSettings$VolumeReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 523
    iget-object v2, p0, Lcom/android/jrdsettings/SoundSettings;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    iget-object v3, p0, Lcom/android/jrdsettings/SoundSettings;->mAudioProfileListenr:Lcom/mediatek/common/audioprofile/AudioProfileListener;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/mediatek/audioprofile/AudioProfileManager;->listenAudioProfie(Lcom/mediatek/common/audioprofile/AudioProfileListener;I)V

    .line 527
    iget-object v2, p0, Lcom/android/jrdsettings/SoundSettings;->mHifiEnabler:Lcom/android/jrdsettings/hifi/HifiEnabler;

    if-eqz v2, :cond_0

    .line 528
    iget-object v2, p0, Lcom/android/jrdsettings/SoundSettings;->mHifiEnabler:Lcom/android/jrdsettings/hifi/HifiEnabler;

    invoke-virtual {v2}, Lcom/android/jrdsettings/hifi/HifiEnabler;->resume()V

    .line 530
    :cond_0
    return-void
.end method
