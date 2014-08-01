.class public Lcom/mediatek/audioprofile/Editprofile;
.super Lcom/android/jrdsettings/SettingsPreferenceFragment;
.source "Editprofile.java"


# static fields
.field public static final CONFIRM_FOR_SIM_SLOT_ID_REQUEST:I = 0x7c

.field public static final KEY_CATEGORY_NOTIFICATION:Ljava/lang/String; = "notifications"

.field public static final KEY_CATEGORY_RINGTONE:Ljava/lang/String; = "ringtone"

.field public static final KEY_DTMF_TONE:Ljava/lang/String; = "audible_touch_tones"

.field public static final KEY_HAPTIC_FEEDBACK:Ljava/lang/String; = "haptic_feedback"

.field public static final KEY_LOCK_SOUNDS:Ljava/lang/String; = "screen_lock_sounds"

.field public static final KEY_NOTIFY:Ljava/lang/String; = "notifications_ringtone"

.field public static final KEY_RINGTONE:Ljava/lang/String; = "phone_ringtone"

.field public static final KEY_SIP_RINGTONE:Ljava/lang/String; = "sip_call_ringtone"

.field public static final KEY_SOUND_EFFECTS:Ljava/lang/String; = "audible_selection"

.field private static final KEY_SWITCH_OFF_RINGTONE:Ljava/lang/String; = "switch_off_ringtone"

.field private static final KEY_SWITCH_ON_RINGTONE:Ljava/lang/String; = "switch_on_ringtone"

.field public static final KEY_VIBRATE:Ljava/lang/String; = "phone_vibrate"

.field public static final KEY_VIDEO_RINGTONE:Ljava/lang/String; = "video_call_ringtone"

.field public static final KEY_VOLUME:Ljava/lang/String; = "ring_volume"

.field public static final RINGTONE_INDEX:I = 0x1

.field private static final SINGLE_SIMCARD:I = 0x1

.field public static final SIP_RINGTONE_INDEX:I = 0x3

.field private static final TAG:Ljava/lang/String; = "Settings/EditProfile"

.field public static final VIDEO_RINGTONE_INDEX:I = 0x2


# instance fields
.field private mContentQueryMap:Landroid/content/ContentQueryMap;

.field private mCurOrientation:I

.field private mDtmfTone:Landroid/preference/CheckBoxPreference;

.field private mHapticFeedback:Landroid/preference/CheckBoxPreference;

.field private mIsMeetingMode:Z

.field private mIsSilentMode:Z

.field private mKey:Ljava/lang/String;

.field private mLockSounds:Landroid/preference/CheckBoxPreference;

.field private mPowerOff:Lcom/mediatek/audioprofile/SwitchOffRingtonePreference;

.field private mPowerOn:Lcom/mediatek/audioprofile/SwitchOnRingtonePreference;

.field private mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

.field private mSIMSelectorTitle:Ljava/lang/String;

.field private mSelectRingtongType:I

.field private mSettingsCursor:Landroid/database/Cursor;

.field private mSettingsObserver:Ljava/util/Observer;

.field private mSimId:J

.field private mSipRingtone:Lcom/mediatek/audioprofile/DefaultRingtonePreference;

.field private mSoundEffects:Landroid/preference/CheckBoxPreference;

.field private mTeleManager:Landroid/telephony/TelephonyManager;

.field private mVibrat:Landroid/preference/CheckBoxPreference;

.field private mVideoRingtone:Lcom/mediatek/audioprofile/DefaultRingtonePreference;

.field private mVoiceRingtone:Lcom/mediatek/audioprofile/DefaultRingtonePreference;

.field private mVolumePref:Lcom/mediatek/audioprofile/RingerVolumePreference;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;-><init>()V

    .line 110
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mSimId:J

    .line 118
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mSelectRingtongType:I

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/audioprofile/Editprofile;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mVibrat:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mediatek/audioprofile/Editprofile;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mediatek/audioprofile/Editprofile;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method private initPreference(Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;)V
    .locals 11
    .parameter "scenario"

    .prologue
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v8, 0x1

    .line 227
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    .line 229
    .local v4, parent:Landroid/preference/PreferenceScreen;
    const-string v7, "phone_vibrate"

    invoke-virtual {p0, v7}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/CheckBoxPreference;

    iput-object v7, p0, Lcom/mediatek/audioprofile/Editprofile;->mVibrat:Landroid/preference/CheckBoxPreference;

    .line 230
    const-string v7, "audible_touch_tones"

    invoke-virtual {p0, v7}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/CheckBoxPreference;

    iput-object v7, p0, Lcom/mediatek/audioprofile/Editprofile;->mDtmfTone:Landroid/preference/CheckBoxPreference;

    .line 231
    const-string v7, "audible_selection"

    invoke-virtual {p0, v7}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/CheckBoxPreference;

    iput-object v7, p0, Lcom/mediatek/audioprofile/Editprofile;->mSoundEffects:Landroid/preference/CheckBoxPreference;

    .line 232
    const-string v7, "screen_lock_sounds"

    invoke-virtual {p0, v7}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/CheckBoxPreference;

    iput-object v7, p0, Lcom/mediatek/audioprofile/Editprofile;->mLockSounds:Landroid/preference/CheckBoxPreference;

    .line 233
    const-string v7, "haptic_feedback"

    invoke-virtual {p0, v7}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/CheckBoxPreference;

    iput-object v7, p0, Lcom/mediatek/audioprofile/Editprofile;->mHapticFeedback:Landroid/preference/CheckBoxPreference;

    .line 234
    const-string v7, "ring_volume"

    invoke-virtual {p0, v7}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Lcom/mediatek/audioprofile/RingerVolumePreference;

    iput-object v7, p0, Lcom/mediatek/audioprofile/Editprofile;->mVolumePref:Lcom/mediatek/audioprofile/RingerVolumePreference;

    .line 235
    const-string v7, "switch_on_ringtone"

    invoke-virtual {p0, v7}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Lcom/mediatek/audioprofile/SwitchOnRingtonePreference;

    iput-object v7, p0, Lcom/mediatek/audioprofile/Editprofile;->mPowerOn:Lcom/mediatek/audioprofile/SwitchOnRingtonePreference;

    .line 236
    const-string v7, "switch_off_ringtone"

    invoke-virtual {p0, v7}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Lcom/mediatek/audioprofile/SwitchOffRingtonePreference;

    iput-object v7, p0, Lcom/mediatek/audioprofile/Editprofile;->mPowerOff:Lcom/mediatek/audioprofile/SwitchOffRingtonePreference;

    .line 238
    const-string v7, "ringtone"

    invoke-virtual {p0, v7}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceGroup;

    .line 239
    .local v6, parentRingtone:Landroid/preference/PreferenceGroup;
    const-string v7, "notifications"

    invoke-virtual {p0, v7}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceGroup;

    .line 240
    .local v5, parentNotify:Landroid/preference/PreferenceGroup;
    const-string v7, "notifications_ringtone"

    invoke-virtual {v5, v7}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/mediatek/audioprofile/DefaultRingtonePreference;

    .line 244
    .local v3, notify:Lcom/mediatek/audioprofile/DefaultRingtonePreference;
    iget-boolean v7, p0, Lcom/mediatek/audioprofile/Editprofile;->mIsSilentMode:Z

    if-nez v7, :cond_0

    iget-boolean v7, p0, Lcom/mediatek/audioprofile/Editprofile;->mIsMeetingMode:Z

    if-eqz v7, :cond_3

    .line 245
    :cond_0
    iget-object v7, p0, Lcom/mediatek/audioprofile/Editprofile;->mDtmfTone:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v7}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 246
    iget-object v7, p0, Lcom/mediatek/audioprofile/Editprofile;->mSoundEffects:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v7}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 247
    iget-object v7, p0, Lcom/mediatek/audioprofile/Editprofile;->mLockSounds:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v7}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 248
    iget-object v7, p0, Lcom/mediatek/audioprofile/Editprofile;->mVolumePref:Lcom/mediatek/audioprofile/RingerVolumePreference;

    invoke-virtual {v4, v7}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 249
    invoke-virtual {v4, v6}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 250
    invoke-virtual {v4, v5}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 251
    iget-object v7, p0, Lcom/mediatek/audioprofile/Editprofile;->mVibrat:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7, v9}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 252
    iget-object v7, p0, Lcom/mediatek/audioprofile/Editprofile;->mPowerOn:Lcom/mediatek/audioprofile/SwitchOnRingtonePreference;

    if-eqz v7, :cond_1

    .line 253
    iget-object v7, p0, Lcom/mediatek/audioprofile/Editprofile;->mPowerOn:Lcom/mediatek/audioprofile/SwitchOnRingtonePreference;

    invoke-virtual {v4, v7}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 254
    iput-object v10, p0, Lcom/mediatek/audioprofile/Editprofile;->mPowerOn:Lcom/mediatek/audioprofile/SwitchOnRingtonePreference;

    .line 255
    const-string v7, "persist.sys.switch_on"

    const-string v8, "silent"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    :cond_1
    iget-object v7, p0, Lcom/mediatek/audioprofile/Editprofile;->mPowerOff:Lcom/mediatek/audioprofile/SwitchOffRingtonePreference;

    if-eqz v7, :cond_2

    .line 258
    iget-object v7, p0, Lcom/mediatek/audioprofile/Editprofile;->mPowerOff:Lcom/mediatek/audioprofile/SwitchOffRingtonePreference;

    invoke-virtual {v4, v7}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 259
    iput-object v10, p0, Lcom/mediatek/audioprofile/Editprofile;->mPowerOff:Lcom/mediatek/audioprofile/SwitchOffRingtonePreference;

    .line 260
    const-string v7, "persist.sys.switch_off"

    const-string v8, "silent"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    :cond_2
    :goto_0
    return-void

    .line 266
    :cond_3
    const-string v7, "ro.config.key_switch_on_off"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v8, :cond_b

    move v2, v8

    .line 267
    .local v2, isSupportOnOff:Z
    :goto_1
    sget-object v7, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->SILENT:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {p1, v7}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    sget-object v7, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->MEETING:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {p1, v7}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    :cond_4
    move v1, v8

    .line 269
    .local v1, isMeetingorSilent:Z
    :goto_2
    if-eqz v2, :cond_5

    if-eqz v1, :cond_d

    .line 270
    :cond_5
    iget-object v7, p0, Lcom/mediatek/audioprofile/Editprofile;->mPowerOn:Lcom/mediatek/audioprofile/SwitchOnRingtonePreference;

    if-eqz v7, :cond_6

    .line 271
    iget-object v7, p0, Lcom/mediatek/audioprofile/Editprofile;->mPowerOn:Lcom/mediatek/audioprofile/SwitchOnRingtonePreference;

    invoke-virtual {v4, v7}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 272
    iput-object v10, p0, Lcom/mediatek/audioprofile/Editprofile;->mPowerOn:Lcom/mediatek/audioprofile/SwitchOnRingtonePreference;

    .line 273
    const-string v7, "persist.sys.switch_on"

    const-string v9, "silent"

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    :cond_6
    iget-object v7, p0, Lcom/mediatek/audioprofile/Editprofile;->mPowerOff:Lcom/mediatek/audioprofile/SwitchOffRingtonePreference;

    if-eqz v7, :cond_7

    .line 276
    iget-object v7, p0, Lcom/mediatek/audioprofile/Editprofile;->mPowerOff:Lcom/mediatek/audioprofile/SwitchOffRingtonePreference;

    invoke-virtual {v4, v7}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 277
    iput-object v10, p0, Lcom/mediatek/audioprofile/Editprofile;->mPowerOff:Lcom/mediatek/audioprofile/SwitchOffRingtonePreference;

    .line 278
    const-string v7, "persist.sys.switch_off"

    const-string v9, "silent"

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    :cond_7
    :goto_3
    iget-object v7, p0, Lcom/mediatek/audioprofile/Editprofile;->mVolumePref:Lcom/mediatek/audioprofile/RingerVolumePreference;

    if-eqz v7, :cond_8

    .line 293
    iget-object v7, p0, Lcom/mediatek/audioprofile/Editprofile;->mVolumePref:Lcom/mediatek/audioprofile/RingerVolumePreference;

    iget-object v9, p0, Lcom/mediatek/audioprofile/Editprofile;->mKey:Ljava/lang/String;

    invoke-virtual {v7, v9}, Lcom/mediatek/audioprofile/RingerVolumePreference;->setProfile(Ljava/lang/String;)V

    .line 296
    :cond_8
    if-eqz v3, :cond_9

    .line 297
    const-string v7, "NOTIFICATION"

    invoke-virtual {v3, v7}, Lcom/mediatek/audioprofile/DefaultRingtonePreference;->setStreamType(Ljava/lang/String;)V

    .line 298
    iget-object v7, p0, Lcom/mediatek/audioprofile/Editprofile;->mKey:Ljava/lang/String;

    invoke-virtual {v3, v7}, Lcom/mediatek/audioprofile/DefaultRingtonePreference;->setProfile(Ljava/lang/String;)V

    .line 299
    const/4 v7, 0x2

    invoke-virtual {v3, v7}, Landroid/preference/RingtonePreference;->setRingtoneType(I)V

    .line 300
    invoke-virtual {v3, v8}, Lcom/mediatek/audioprofile/DefaultRingtonePreference;->setmNoNeedSIMSelector(Z)V

    .line 303
    :cond_9
    invoke-direct {p0}, Lcom/mediatek/audioprofile/Editprofile;->isVoiceCapable()Z

    move-result v7

    if-eqz v7, :cond_f

    .line 304
    const-string v7, "phone_ringtone"

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Lcom/mediatek/audioprofile/DefaultRingtonePreference;

    iput-object v7, p0, Lcom/mediatek/audioprofile/Editprofile;->mVoiceRingtone:Lcom/mediatek/audioprofile/DefaultRingtonePreference;

    .line 306
    const-string v7, "video_call_ringtone"

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Lcom/mediatek/audioprofile/DefaultRingtonePreference;

    iput-object v7, p0, Lcom/mediatek/audioprofile/Editprofile;->mVideoRingtone:Lcom/mediatek/audioprofile/DefaultRingtonePreference;

    .line 308
    const-string v7, "sip_call_ringtone"

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Lcom/mediatek/audioprofile/DefaultRingtonePreference;

    iput-object v7, p0, Lcom/mediatek/audioprofile/Editprofile;->mSipRingtone:Lcom/mediatek/audioprofile/DefaultRingtonePreference;

    .line 319
    iget-object v7, p0, Lcom/mediatek/audioprofile/Editprofile;->mSipRingtone:Lcom/mediatek/audioprofile/DefaultRingtonePreference;

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 331
    iget-object v7, p0, Lcom/mediatek/audioprofile/Editprofile;->mVoiceRingtone:Lcom/mediatek/audioprofile/DefaultRingtonePreference;

    if-eqz v7, :cond_a

    .line 332
    iget-object v7, p0, Lcom/mediatek/audioprofile/Editprofile;->mVoiceRingtone:Lcom/mediatek/audioprofile/DefaultRingtonePreference;

    const-string v9, "RING"

    invoke-virtual {v7, v9}, Lcom/mediatek/audioprofile/DefaultRingtonePreference;->setStreamType(Ljava/lang/String;)V

    .line 334
    iget-object v7, p0, Lcom/mediatek/audioprofile/Editprofile;->mVoiceRingtone:Lcom/mediatek/audioprofile/DefaultRingtonePreference;

    iget-object v9, p0, Lcom/mediatek/audioprofile/Editprofile;->mKey:Ljava/lang/String;

    invoke-virtual {v7, v9}, Lcom/mediatek/audioprofile/DefaultRingtonePreference;->setProfile(Ljava/lang/String;)V

    .line 335
    iget-object v7, p0, Lcom/mediatek/audioprofile/Editprofile;->mVoiceRingtone:Lcom/mediatek/audioprofile/DefaultRingtonePreference;

    invoke-virtual {v7, v8}, Landroid/preference/RingtonePreference;->setRingtoneType(I)V

    .line 338
    iget-object v7, p0, Lcom/mediatek/audioprofile/Editprofile;->mVoiceRingtone:Lcom/mediatek/audioprofile/DefaultRingtonePreference;

    invoke-virtual {v7, v8}, Lcom/mediatek/audioprofile/DefaultRingtonePreference;->setmNoNeedSIMSelector(Z)V

    .line 342
    :cond_a
    iget-object v7, p0, Lcom/mediatek/audioprofile/Editprofile;->mVideoRingtone:Lcom/mediatek/audioprofile/DefaultRingtonePreference;

    if-eqz v7, :cond_2

    .line 343
    iget-object v7, p0, Lcom/mediatek/audioprofile/Editprofile;->mVideoRingtone:Lcom/mediatek/audioprofile/DefaultRingtonePreference;

    const-string v9, "RING"

    invoke-virtual {v7, v9}, Lcom/mediatek/audioprofile/DefaultRingtonePreference;->setStreamType(Ljava/lang/String;)V

    .line 345
    iget-object v7, p0, Lcom/mediatek/audioprofile/Editprofile;->mVideoRingtone:Lcom/mediatek/audioprofile/DefaultRingtonePreference;

    iget-object v9, p0, Lcom/mediatek/audioprofile/Editprofile;->mKey:Ljava/lang/String;

    invoke-virtual {v7, v9}, Lcom/mediatek/audioprofile/DefaultRingtonePreference;->setProfile(Ljava/lang/String;)V

    .line 346
    iget-object v7, p0, Lcom/mediatek/audioprofile/Editprofile;->mVideoRingtone:Lcom/mediatek/audioprofile/DefaultRingtonePreference;

    const/16 v9, 0x8

    invoke-virtual {v7, v9}, Landroid/preference/RingtonePreference;->setRingtoneType(I)V

    .line 349
    iget-object v7, p0, Lcom/mediatek/audioprofile/Editprofile;->mVideoRingtone:Lcom/mediatek/audioprofile/DefaultRingtonePreference;

    invoke-virtual {v7, v8}, Lcom/mediatek/audioprofile/DefaultRingtonePreference;->setmNoNeedSIMSelector(Z)V

    goto/16 :goto_0

    .end local v1           #isMeetingorSilent:Z
    .end local v2           #isSupportOnOff:Z
    :cond_b
    move v2, v9

    .line 266
    goto/16 :goto_1

    .restart local v2       #isSupportOnOff:Z
    :cond_c
    move v1, v9

    .line 267
    goto/16 :goto_2

    .line 281
    .restart local v1       #isMeetingorSilent:Z
    :cond_d
    iget-object v7, p0, Lcom/mediatek/audioprofile/Editprofile;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    iget-object v9, p0, Lcom/mediatek/audioprofile/Editprofile;->mKey:Ljava/lang/String;

    invoke-virtual {v7, v9}, Lcom/mediatek/audioprofile/AudioProfileManager;->isActive(Ljava/lang/String;)Z

    move-result v0

    .line 282
    .local v0, isActiveCurrentProfile:Z
    iget-object v7, p0, Lcom/mediatek/audioprofile/Editprofile;->mPowerOn:Lcom/mediatek/audioprofile/SwitchOnRingtonePreference;

    if-eqz v7, :cond_e

    .line 283
    iget-object v7, p0, Lcom/mediatek/audioprofile/Editprofile;->mPowerOn:Lcom/mediatek/audioprofile/SwitchOnRingtonePreference;

    iget-object v9, p0, Lcom/mediatek/audioprofile/Editprofile;->mKey:Ljava/lang/String;

    invoke-virtual {v7, v9}, Lcom/mediatek/audioprofile/SwitchOnRingtonePreference;->setProfile(Ljava/lang/String;)V

    .line 284
    iget-object v7, p0, Lcom/mediatek/audioprofile/Editprofile;->mPowerOn:Lcom/mediatek/audioprofile/SwitchOnRingtonePreference;

    invoke-virtual {v7, v0}, Lcom/mediatek/audioprofile/SwitchOnRingtonePreference;->setNeedSync(Z)V

    .line 286
    :cond_e
    iget-object v7, p0, Lcom/mediatek/audioprofile/Editprofile;->mPowerOff:Lcom/mediatek/audioprofile/SwitchOffRingtonePreference;

    if-eqz v7, :cond_7

    .line 287
    iget-object v7, p0, Lcom/mediatek/audioprofile/Editprofile;->mPowerOff:Lcom/mediatek/audioprofile/SwitchOffRingtonePreference;

    iget-object v9, p0, Lcom/mediatek/audioprofile/Editprofile;->mKey:Ljava/lang/String;

    invoke-virtual {v7, v9}, Lcom/mediatek/audioprofile/SwitchOffRingtonePreference;->setProfile(Ljava/lang/String;)V

    .line 288
    iget-object v7, p0, Lcom/mediatek/audioprofile/Editprofile;->mPowerOff:Lcom/mediatek/audioprofile/SwitchOffRingtonePreference;

    invoke-virtual {v7, v0}, Lcom/mediatek/audioprofile/SwitchOffRingtonePreference;->setNeedSync(Z)V

    goto/16 :goto_3

    .line 353
    .end local v0           #isActiveCurrentProfile:Z
    :cond_f
    iget-object v7, p0, Lcom/mediatek/audioprofile/Editprofile;->mVibrat:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v7}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 354
    iget-object v7, p0, Lcom/mediatek/audioprofile/Editprofile;->mDtmfTone:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v7}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 355
    invoke-virtual {v4, v6}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_0
.end method

.method private isSmsCapable()Z
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mTeleManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mTeleManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isSmsCapable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isVoiceCapable()Z
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mTeleManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mTeleManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setRingtoneSIMId(J)V
    .locals 1
    .parameter "simId"

    .prologue
    .line 507
    iget v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mSelectRingtongType:I

    packed-switch v0, :pswitch_data_0

    .line 519
    :goto_0
    return-void

    .line 509
    :pswitch_0
    iget-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mVoiceRingtone:Lcom/mediatek/audioprofile/DefaultRingtonePreference;

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/audioprofile/DefaultRingtonePreference;->setSimId(J)V

    .line 510
    iget-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mVoiceRingtone:Lcom/mediatek/audioprofile/DefaultRingtonePreference;

    invoke-virtual {v0}, Lcom/mediatek/audioprofile/DefaultRingtonePreference;->simSelectorOnClick()V

    goto :goto_0

    .line 513
    :pswitch_1
    iget-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mVideoRingtone:Lcom/mediatek/audioprofile/DefaultRingtonePreference;

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/audioprofile/DefaultRingtonePreference;->setSimId(J)V

    .line 514
    iget-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mVideoRingtone:Lcom/mediatek/audioprofile/DefaultRingtonePreference;

    invoke-virtual {v0}, Lcom/mediatek/audioprofile/DefaultRingtonePreference;->simSelectorOnClick()V

    goto :goto_0

    .line 507
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setRingtoneType(I)V
    .locals 2
    .parameter "keyIndex"

    .prologue
    .line 458
    packed-switch p1, :pswitch_data_0

    .line 468
    :goto_0
    return-void

    .line 460
    :pswitch_0
    iget-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mVoiceRingtone:Lcom/mediatek/audioprofile/DefaultRingtonePreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/RingtonePreference;->setRingtoneType(I)V

    goto :goto_0

    .line 463
    :pswitch_1
    iget-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mVideoRingtone:Lcom/mediatek/audioprofile/DefaultRingtonePreference;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/preference/RingtonePreference;->setRingtoneType(I)V

    goto :goto_0

    .line 458
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setRingtongTypeAndStartSIMSelector(I)V
    .locals 3
    .parameter "keyIndex"

    .prologue
    .line 442
    const-string v0, "Settings/EditProfile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Selected ringtone type index = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    return-void
.end method

.method private startSIMCardSelectorActivity()V
    .locals 2

    .prologue
    .line 471
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 472
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.mediatek.gemini.action.SELECT_SIM"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 473
    const/16 v1, 0x64

    invoke-virtual {p0, v0, v1}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 474
    return-void
.end method

.method private updatePreference()V
    .locals 3

    .prologue
    .line 363
    iget-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mVibrat:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/mediatek/audioprofile/Editprofile;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    iget-object v2, p0, Lcom/mediatek/audioprofile/Editprofile;->mKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/mediatek/audioprofile/AudioProfileManager;->getVibrationEnabled(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 364
    iget-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mDtmfTone:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/mediatek/audioprofile/Editprofile;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    iget-object v2, p0, Lcom/mediatek/audioprofile/Editprofile;->mKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/mediatek/audioprofile/AudioProfileManager;->getDtmfToneEnabled(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 365
    iget-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mSoundEffects:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/mediatek/audioprofile/Editprofile;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    iget-object v2, p0, Lcom/mediatek/audioprofile/Editprofile;->mKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/mediatek/audioprofile/AudioProfileManager;->getSoundEffectEnabled(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 366
    iget-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mLockSounds:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/mediatek/audioprofile/Editprofile;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    iget-object v2, p0, Lcom/mediatek/audioprofile/Editprofile;->mKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/mediatek/audioprofile/AudioProfileManager;->getLockScreenEnabled(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 367
    iget-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mHapticFeedback:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/mediatek/audioprofile/Editprofile;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    iget-object v2, p0, Lcom/mediatek/audioprofile/Editprofile;->mKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/mediatek/audioprofile/AudioProfileManager;->getHapticFeedbackEnabled(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 369
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 495
    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 496
    const-string v0, "Settings/EditProfile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult requestCode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "resultCode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    const/16 v0, 0x64

    if-ne p1, v0, :cond_1

    .line 498
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 499
    const-string v0, "simid"

    const-wide/16 v1, -0x1

    invoke-virtual {p3, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mSimId:J

    .line 500
    iget-wide v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mSimId:J

    invoke-direct {p0, v0, v1}, Lcom/mediatek/audioprofile/Editprofile;->setRingtoneSIMId(J)V

    .line 502
    :cond_0
    const-string v0, "Settings/EditProfile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Select SIM id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/mediatek/audioprofile/Editprofile;->mSimId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    :cond_1
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConfig"

    .prologue
    .line 484
    const-string v0, "Settings/EditProfile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConfigurationChanged: newConfig = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",mCurOrientation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/audioprofile/Editprofile;->mCurOrientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",this = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 487
    if-eqz p1, :cond_0

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iget v1, p0, Lcom/mediatek/audioprofile/Editprofile;->mCurOrientation:I

    if-eq v0, v1, :cond_0

    .line 488
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mCurOrientation:I

    .line 490
    :cond_0
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->clearScrapViewsIfNeeded()V

    .line 491
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "icicle"

    .prologue
    .line 134
    invoke-super {p0, p1}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 136
    const v4, 0x7f06001a

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 137
    const-string v4, "phone"

    invoke-virtual {p0, v4}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    iput-object v4, p0, Lcom/mediatek/audioprofile/Editprofile;->mTeleManager:Landroid/telephony/TelephonyManager;

    .line 139
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceActivity;

    .line 140
    .local v1, parentActivity:Landroid/preference/PreferenceActivity;
    invoke-virtual {v1}, Landroid/preference/PreferenceActivity;->onIsHidingHeaders()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v1}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    const/4 v3, 0x1

    .line 143
    .local v3, singlePane:Z
    :goto_0
    if-eqz v3, :cond_2

    .line 144
    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, ":android:show_fragment_args"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 149
    .local v0, bundle:Landroid/os/Bundle;
    :goto_1
    const-string v4, "Settings/EditProfile"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onCreate activity = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",singlePane = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",bundle = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",this = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    const-string v4, "profileKey"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/mediatek/audioprofile/Editprofile;->mKey:Ljava/lang/String;

    .line 154
    const-string v4, "audioprofile"

    invoke-virtual {p0, v4}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mediatek/audioprofile/AudioProfileManager;

    iput-object v4, p0, Lcom/mediatek/audioprofile/Editprofile;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    .line 155
    iget-object v4, p0, Lcom/mediatek/audioprofile/Editprofile;->mKey:Ljava/lang/String;

    invoke-static {v4}, Lcom/mediatek/audioprofile/AudioProfileManager;->getScenario(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    move-result-object v2

    .line 157
    .local v2, scenario:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;
    sget-object v4, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->SILENT:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v2, v4}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/mediatek/audioprofile/Editprofile;->mIsSilentMode:Z

    .line 158
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    iput v4, p0, Lcom/mediatek/audioprofile/Editprofile;->mCurOrientation:I

    .line 159
    sget-object v4, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->MEETING:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v2, v4}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/mediatek/audioprofile/Editprofile;->mIsMeetingMode:Z

    .line 160
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f090319

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/mediatek/audioprofile/Editprofile;->mSIMSelectorTitle:Ljava/lang/String;

    .line 162
    invoke-direct {p0, v2}, Lcom/mediatek/audioprofile/Editprofile;->initPreference(Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;)V

    .line 163
    return-void

    .line 140
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v2           #scenario:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;
    .end local v3           #singlePane:Z
    :cond_1
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 147
    .restart local v3       #singlePane:Z
    :cond_2
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .restart local v0       #bundle:Landroid/os/Bundle;
    goto/16 :goto_1
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 207
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 208
    const-string v0, "Settings/EditProfile"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    iget-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mVolumePref:Lcom/mediatek/audioprofile/RingerVolumePreference;

    if-eqz v0, :cond_0

    .line 210
    const-string v0, "Settings/EditProfile"

    const-string v1, "pref is not null"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    iget-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mVolumePref:Lcom/mediatek/audioprofile/RingerVolumePreference;

    invoke-virtual {v0}, Lcom/mediatek/audioprofile/RingerVolumePreference;->stopPlaying()V

    .line 212
    iget-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mVolumePref:Lcom/mediatek/audioprofile/RingerVolumePreference;

    invoke-virtual {v0}, Lcom/mediatek/audioprofile/RingerVolumePreference;->revertVolume()V

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mSettingsObserver:Ljava/util/Observer;

    if-eqz v0, :cond_1

    .line 215
    iget-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mContentQueryMap:Landroid/content/ContentQueryMap;

    iget-object v1, p0, Lcom/mediatek/audioprofile/Editprofile;->mSettingsObserver:Ljava/util/Observer;

    invoke-virtual {v0, v1}, Ljava/util/Observable;->deleteObserver(Ljava/util/Observer;)V

    .line 217
    :cond_1
    iget-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mSettingsCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_2

    .line 218
    iget-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mSettingsCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 219
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mSettingsCursor:Landroid/database/Cursor;

    .line 221
    :cond_2
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 417
    const-string v1, "Settings/EditProfile"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Key :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "phone_vibrate"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 419
    iget-object v1, p0, Lcom/mediatek/audioprofile/Editprofile;->mVibrat:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    .line 420
    .local v0, isVibrate:Z
    const-string v1, "Settings/EditProfile"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set vibrate"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    iget-object v1, p0, Lcom/mediatek/audioprofile/Editprofile;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    iget-object v2, p0, Lcom/mediatek/audioprofile/Editprofile;->mKey:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/mediatek/audioprofile/AudioProfileManager;->setVibrationEnabled(Ljava/lang/String;Z)V

    .line 438
    .end local v0           #isVibrate:Z
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    return v1

    .line 422
    :cond_1
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "audible_touch_tones"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 423
    iget-object v1, p0, Lcom/mediatek/audioprofile/Editprofile;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    iget-object v2, p0, Lcom/mediatek/audioprofile/Editprofile;->mKey:Ljava/lang/String;

    iget-object v3, p0, Lcom/mediatek/audioprofile/Editprofile;->mDtmfTone:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/mediatek/audioprofile/AudioProfileManager;->setDtmfToneEnabled(Ljava/lang/String;Z)V

    goto :goto_0

    .line 424
    :cond_2
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "audible_selection"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 425
    iget-object v1, p0, Lcom/mediatek/audioprofile/Editprofile;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    iget-object v2, p0, Lcom/mediatek/audioprofile/Editprofile;->mKey:Ljava/lang/String;

    iget-object v3, p0, Lcom/mediatek/audioprofile/Editprofile;->mSoundEffects:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/mediatek/audioprofile/AudioProfileManager;->setSoundEffectEnabled(Ljava/lang/String;Z)V

    goto :goto_0

    .line 427
    :cond_3
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "screen_lock_sounds"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 428
    iget-object v1, p0, Lcom/mediatek/audioprofile/Editprofile;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    iget-object v2, p0, Lcom/mediatek/audioprofile/Editprofile;->mKey:Ljava/lang/String;

    iget-object v3, p0, Lcom/mediatek/audioprofile/Editprofile;->mLockSounds:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/mediatek/audioprofile/AudioProfileManager;->setLockScreenEnabled(Ljava/lang/String;Z)V

    goto :goto_0

    .line 429
    :cond_4
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "haptic_feedback"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 430
    iget-object v1, p0, Lcom/mediatek/audioprofile/Editprofile;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    iget-object v2, p0, Lcom/mediatek/audioprofile/Editprofile;->mKey:Ljava/lang/String;

    iget-object v3, p0, Lcom/mediatek/audioprofile/Editprofile;->mHapticFeedback:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/mediatek/audioprofile/AudioProfileManager;->setHapticFeedbackEnabled(Ljava/lang/String;Z)V

    goto :goto_0

    .line 432
    :cond_5
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "phone_ringtone"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 433
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/mediatek/audioprofile/Editprofile;->setRingtongTypeAndStartSIMSelector(I)V

    goto :goto_0

    .line 434
    :cond_6
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "video_call_ringtone"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 435
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/mediatek/audioprofile/Editprofile;->setRingtongTypeAndStartSIMSelector(I)V

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 376
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 378
    invoke-direct {p0}, Lcom/mediatek/audioprofile/Editprofile;->updatePreference()V

    .line 380
    iget-boolean v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mIsSilentMode:Z

    if-eqz v0, :cond_0

    .line 381
    iget-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mSettingsObserver:Ljava/util/Observer;

    if-nez v0, :cond_0

    .line 382
    new-instance v0, Lcom/mediatek/audioprofile/Editprofile$1;

    invoke-direct {v0, p0}, Lcom/mediatek/audioprofile/Editprofile$1;-><init>(Lcom/mediatek/audioprofile/Editprofile;)V

    iput-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mSettingsObserver:Ljava/util/Observer;

    .line 401
    iget-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mContentQueryMap:Landroid/content/ContentQueryMap;

    iget-object v1, p0, Lcom/mediatek/audioprofile/Editprofile;->mSettingsObserver:Ljava/util/Observer;

    invoke-virtual {v0, v1}, Ljava/util/Observable;->addObserver(Ljava/util/Observer;)V

    .line 404
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 190
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onStart()V

    .line 192
    invoke-virtual {p0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "(name=?)"

    new-array v4, v7, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/mediatek/audioprofile/Editprofile;->mKey:Ljava/lang/String;

    invoke-static {v6}, Lcom/mediatek/audioprofile/AudioProfileManager;->getVibrationKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mSettingsCursor:Landroid/database/Cursor;

    .line 196
    new-instance v0, Landroid/content/ContentQueryMap;

    iget-object v1, p0, Lcom/mediatek/audioprofile/Editprofile;->mSettingsCursor:Landroid/database/Cursor;

    const-string v3, "name"

    invoke-direct {v0, v1, v3, v7, v2}, Landroid/content/ContentQueryMap;-><init>(Landroid/database/Cursor;Ljava/lang/String;ZLandroid/os/Handler;)V

    iput-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mContentQueryMap:Landroid/content/ContentQueryMap;

    .line 198
    return-void
.end method
