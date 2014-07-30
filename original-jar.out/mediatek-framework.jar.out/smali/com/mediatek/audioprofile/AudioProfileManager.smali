.class public Lcom/mediatek/audioprofile/AudioProfileManager;
.super Ljava/lang/Object;
.source "AudioProfileManager.java"

# interfaces
.implements Lcom/mediatek/common/audioprofile/IAudioProfileManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;,
        Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;
    }
.end annotation


# static fields
.field public static final ACTION_PROFILE_CHANGED:Ljava/lang/String; = "com.mediatek.audioprofile.ACTION_PROFILE_CHANGED"

.field public static final DEFAULT_MAX_VOLUME_OUTDOOR:I = 0xf

.field public static final DEFAULT_NOTIFICATION_STREAM_URI:Landroid/net/Uri; = null

.field public static final DEFAULT_RINGER_STREAM_URI:Landroid/net/Uri; = null

.field public static final DEFAULT_SIP_STREAM_URI:Landroid/net/Uri; = null

.field public static final DEFAULT_VIDEO_STREAM_URI:Landroid/net/Uri; = null

.field public static final EXTRA_PROFILE_SCENARIO:Ljava/lang/String; = "com.mediatek.audioprofile.EXTRA_PROFILE_SCENARIO"

.field public static final KEY_ACTIVE_PROFILE:Ljava/lang/String; = "mtk_audioprofile_active"

.field public static final KEY_DEFAULT_NOTIFICATION:Ljava/lang/String; = "mtk_audioprofile_default_notification"

.field public static final KEY_DEFAULT_RINGTONE:Ljava/lang/String; = "mtk_audioprofile_default_ringtone"

.field public static final KEY_DEFAULT_SIP_CALL:Ljava/lang/String; = "mtk_audioprofile_default_sip_call"

.field public static final KEY_DEFAULT_VIDEO_CALL:Ljava/lang/String; = "mtk_audioprofile_default_video_call"

.field public static final LAST_ACTIVE_CUSTOM_DELETED:Ljava/lang/String; = "mtk_audioprofile_custom_deleted"

.field public static final LAST_ACTIVE_PROFILE:Ljava/lang/String; = "mtk_audioprofile_last_active"

.field public static final MAX_PROFILES_COUNT:I = 0xa

.field public static final PREDEFINED_PROFILES_COUNT:I = 0x4

.field public static final PROFILE_PREFIX:Ljava/lang/String; = "mtk_audioprofile_"

.field public static final STREAM_ALARM:I = 0x4

.field public static final STREAM_MEDIA:I = 0x3

.field public static final STREAM_NOTIFICATION:I = 0x5

.field public static final STREAM_RING:I = 0x2

.field private static final SUFFIX_ALARM_VOLUME:Ljava/lang/String; = "_volume_alarm"

.field protected static final SUFFIX_DATA:Ljava/lang/String; = "_data"

.field private static final SUFFIX_DTMFTONE:Ljava/lang/String; = "_dtmf_tone_enabled"

.field private static final SUFFIX_HAPTICFEEDBACK:Ljava/lang/String; = "_haptic_feedback_enabled"

.field protected static final SUFFIX_KEY:Ljava/lang/String; = "_key"

.field private static final SUFFIX_LOCK_SCRREN:Ljava/lang/String; = "_lockscreen_sounds_enabled"

.field private static final SUFFIX_MEDIA_VOLUME:Ljava/lang/String; = "_volume_media"

.field protected static final SUFFIX_NAME:Ljava/lang/String; = "_name"

.field private static final SUFFIX_NOTIFICATION_URI:Ljava/lang/String; = "_notification_sound"

.field private static final SUFFIX_NOTIFICATION_USE_RING:Ljava/lang/String; = "_notifications_use_ring_volume"

.field private static final SUFFIX_NOTIFICATION_VOLUME:Ljava/lang/String; = "_volume_notification"

.field private static final SUFFIX_RINGER_URI:Ljava/lang/String; = "_ringtone"

.field private static final SUFFIX_RINGER_VOLUME:Ljava/lang/String; = "_volume_ring"

.field protected static final SUFFIX_SIM_ID:Ljava/lang/String; = "_sim_id"

.field private static final SUFFIX_SIP_CALL_URI:Ljava/lang/String; = "_sip_call"

.field private static final SUFFIX_SOUNDEFFECT:Ljava/lang/String; = "_sound_effects_enabled"

.field private static final SUFFIX_VIBRATION:Ljava/lang/String; = "_vibrate_on"

.field private static final SUFFIX_VIDEO_CALL_URI:Ljava/lang/String; = "_video_call"

.field private static final TAG:Ljava/lang/String; = "AudioProfileManager"

.field public static final TYPE_NOTIFICATION:I = 0x2

.field public static final TYPE_RINGTONE:I = 0x1

.field public static final TYPE_SIP_CALL:I = 0x10

.field public static final TYPE_VIDEO_CALL:I = 0x8

.field public static final UNSUPPORT_STREAM_VOLUME:I

.field private static sDEFAULTSTATES:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/mediatek/audioprofile/AudioProfileState;",
            ">;"
        }
    .end annotation
.end field

.field private static sService:Lcom/mediatek/common/audioprofile/IAudioProfileService;


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 171
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    sput-object v0, Lcom/mediatek/audioprofile/AudioProfileManager;->DEFAULT_RINGER_STREAM_URI:Landroid/net/Uri;

    .line 174
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    sput-object v0, Lcom/mediatek/audioprofile/AudioProfileManager;->DEFAULT_NOTIFICATION_STREAM_URI:Landroid/net/Uri;

    .line 177
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_VIDEO_CALL_URI:Landroid/net/Uri;

    sput-object v0, Lcom/mediatek/audioprofile/AudioProfileManager;->DEFAULT_VIDEO_STREAM_URI:Landroid/net/Uri;

    .line 180
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_SIP_CALL_URI:Landroid/net/Uri;

    sput-object v0, Lcom/mediatek/audioprofile/AudioProfileManager;->DEFAULT_SIP_STREAM_URI:Landroid/net/Uri;

    .line 183
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/audioprofile/AudioProfileManager;->sDEFAULTSTATES:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 219
    iput-object p1, p0, Lcom/mediatek/audioprofile/AudioProfileManager;->mContext:Landroid/content/Context;

    .line 220
    return-void
.end method

.method public static getAllKeys(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .parameter "profileKey"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x2

    .line 728
    if-nez p0, :cond_0

    .line 729
    const-string v2, "AudioProfileManager"

    const-string v3, "getAllKeys: Null profileKey!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    const/4 v1, 0x0

    .line 749
    :goto_0
    return-object v1

    .line 733
    :cond_0
    const/16 v0, 0xe

    .line 734
    .local v0, keySize:I
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xe

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 735
    .local v1, keys:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p0}, Lcom/mediatek/audioprofile/AudioProfileManager;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 736
    invoke-static {p0}, Lcom/mediatek/audioprofile/AudioProfileManager;->getProfileNameKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 737
    invoke-static {p0}, Lcom/mediatek/audioprofile/AudioProfileManager;->getNotificationUseRingKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 738
    invoke-static {p0}, Lcom/mediatek/audioprofile/AudioProfileManager;->getLockScreenKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 739
    invoke-static {p0}, Lcom/mediatek/audioprofile/AudioProfileManager;->getHapticKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 740
    invoke-static {p0}, Lcom/mediatek/audioprofile/AudioProfileManager;->getDtmfToneKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 741
    invoke-static {p0}, Lcom/mediatek/audioprofile/AudioProfileManager;->getSoundEffectKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 742
    invoke-static {p0}, Lcom/mediatek/audioprofile/AudioProfileManager;->getVibrationKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 743
    const/4 v2, 0x4

    invoke-static {p0, v2}, Lcom/mediatek/audioprofile/AudioProfileManager;->getStreamVolumeKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 744
    const/4 v2, 0x5

    invoke-static {p0, v2}, Lcom/mediatek/audioprofile/AudioProfileManager;->getStreamVolumeKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 745
    invoke-static {p0, v3}, Lcom/mediatek/audioprofile/AudioProfileManager;->getStreamVolumeKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 746
    invoke-static {p0, v3}, Lcom/mediatek/audioprofile/AudioProfileManager;->getStreamUriKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 747
    const/4 v2, 0x1

    invoke-static {p0, v2}, Lcom/mediatek/audioprofile/AudioProfileManager;->getStreamUriKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 748
    const/16 v2, 0x8

    invoke-static {p0, v2}, Lcom/mediatek/audioprofile/AudioProfileManager;->getStreamUriKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private static getBool(Ljava/lang/String;Z)Z
    .locals 2
    .parameter "Properties"
    .parameter "DefaultValue"

    .prologue
    .line 399
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x1f

    if-le v0, v1, :cond_0

    .line 402
    .end local p1
    :goto_0
    return p1

    .restart local p1
    :cond_0
    invoke-static {p0, p1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    goto :goto_0
.end method

.method public static getDataKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "uriKey"

    .prologue
    .line 608
    if-eqz p0, :cond_0

    .line 609
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_data"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 611
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getDefaultState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;
    .locals 47
    .parameter "profileKey"

    .prologue
    .line 260
    sget-object v43, Lcom/mediatek/audioprofile/AudioProfileManager;->sDEFAULTSTATES:Ljava/util/HashMap;

    if-nez v43, :cond_1

    .line 261
    const-class v43, Lcom/mediatek/common/audioprofile/IAudioProfileExtension$IDefaultProfileStatesGetter;

    const/16 v44, 0x0

    move/from16 v0, v44

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v44, v0

    invoke-static/range {v43 .. v44}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Lcom/mediatek/common/audioprofile/IAudioProfileExtension$IDefaultProfileStatesGetter;

    .line 263
    .local v36, defaultProfileStatesGetter:Lcom/mediatek/common/audioprofile/IAudioProfileExtension$IDefaultProfileStatesGetter;
    if-eqz v36, :cond_0

    .line 264
    invoke-interface/range {v36 .. v36}, Lcom/mediatek/common/audioprofile/IAudioProfileExtension$IDefaultProfileStatesGetter;->getDefaultProfileStates()Ljava/util/HashMap;

    move-result-object v43

    sput-object v43, Lcom/mediatek/audioprofile/AudioProfileManager;->sDEFAULTSTATES:Ljava/util/HashMap;

    .line 266
    :cond_0
    sget-object v43, Lcom/mediatek/audioprofile/AudioProfileManager;->sDEFAULTSTATES:Ljava/util/HashMap;

    if-nez v43, :cond_1

    .line 267
    new-instance v43, Ljava/util/HashMap;

    const/16 v44, 0x4

    invoke-direct/range {v43 .. v44}, Ljava/util/HashMap;-><init>(I)V

    sput-object v43, Lcom/mediatek/audioprofile/AudioProfileManager;->sDEFAULTSTATES:Ljava/util/HashMap;

    .line 269
    const-string v43, "ro.ringer_volume"

    const/16 v44, 0x4

    invoke-static/range {v43 .. v44}, Lcom/mediatek/audioprofile/AudioProfileManager;->getInt(Ljava/lang/String;I)I

    move-result v24

    .line 270
    .local v24, DEFAULT_RINGER_VOLUME_GENERAL:I
    const/16 v27, 0x0

    .line 271
    .local v27, DEFAULT_RINGER_VOLUME_SILENT:I
    const/16 v25, 0x0

    .line 272
    .local v25, DEFAULT_RINGER_VOLUME_MEETING:I
    const/16 v26, 0xf

    .line 275
    .local v26, DEFAULT_RINGER_VOLUME_OUTDOOR:I
    const/16 v20, 0x8

    .line 276
    .local v20, DEFAULT_NOTIFICATION_VOLUME_GENERAL:I
    const/16 v23, 0x0

    .line 277
    .local v23, DEFAULT_NOTIFICATION_VOLUME_SILENT:I
    const/16 v21, 0x0

    .line 278
    .local v21, DEFAULT_NOTIFICATION_VOLUME_MEETING:I
    const/16 v22, 0xf

    .line 281
    .local v22, DEFAULT_NOTIFICATION_VOLUME_OUTDOOR:I
    const/16 v4, 0x8

    .line 282
    .local v4, DEFAULT_ALARM_VOLUME_GENERAL:I
    const/4 v7, 0x0

    .line 283
    .local v7, DEFAULT_ALARM_VOLUME_SILENT:I
    const/4 v5, 0x0

    .line 284
    .local v5, DEFAULT_ALARM_VOLUME_MEETING:I
    const/16 v6, 0xf

    .line 287
    .local v6, DEFAULT_ALARM_VOLUME_OUTDOOR:I
    const/16 v32, 0x0

    .line 288
    .local v32, DEFAULT_VIBRATION_GENERAL:Z
    const/16 v35, 0x0

    .line 289
    .local v35, DEFAULT_VIBRATION_SILENT:Z
    const/16 v33, 0x1

    .line 290
    .local v33, DEFAULT_VIBRATION_MEETING:Z
    const/16 v34, 0x1

    .line 296
    .local v34, DEFAULT_VIBRATION_OUTDOOR:Z
    const-string v43, "ro.screen_touch_tone"

    const/16 v44, 0x1

    invoke-static/range {v43 .. v44}, Lcom/mediatek/audioprofile/AudioProfileManager;->getBool(Ljava/lang/String;Z)Z

    move-result v8

    .line 297
    .local v8, DEFAULT_DTMFTONE_GENERAL:Z
    const/4 v11, 0x0

    .line 298
    .local v11, DEFAULT_DTMFTONE_SILENT:Z
    const/4 v9, 0x0

    .line 299
    .local v9, DEFAULT_DTMFTONE_MEETING:Z
    const/4 v10, 0x1

    .line 305
    .local v10, DEFAULT_DTMFTONE_OUTDOOR:Z
    const/16 v28, 0x0

    .line 306
    .local v28, DEFAULT_SOUNDEFFECT_GENERAL:Z
    const/16 v31, 0x0

    .line 307
    .local v31, DEFAULT_SOUNDEFFECT_SILENT:Z
    const/16 v29, 0x0

    .line 308
    .local v29, DEFAULT_SOUNDEFFECT_MEETING:Z
    const/16 v30, 0x0

    .line 311
    .local v30, DEFAULT_SOUNDEFFECT_OUTDOOR:Z
    const/16 v16, 0x1

    .line 312
    .local v16, DEFAULT_LOCK_SCREEN_GENERAL:Z
    const/16 v19, 0x0

    .line 313
    .local v19, DEFAULT_LOCK_SCREEN_SILENT:Z
    const/16 v17, 0x0

    .line 314
    .local v17, DEFAULT_LOCK_SCREEN_MEETING:Z
    const/16 v18, 0x1

    .line 317
    .local v18, DEFAULT_LOCK_SCREEN_OUTDOOR:Z
    const/4 v12, 0x1

    .line 318
    .local v12, DEFAULT_HAPTIC_FEEDBACK_GENERAL:Z
    const/4 v15, 0x0

    .line 319
    .local v15, DEFAULT_HAPTIC_FEEDBACK_SILENT:Z
    const/4 v13, 0x0

    .line 320
    .local v13, DEFAULT_HAPTIC_FEEDBACK_MEETING:Z
    const/4 v14, 0x1

    .line 323
    .local v14, DEFAULT_HAPTIC_FEEDBACK_OUTDOOR:Z
    new-instance v43, Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    sget-object v44, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->GENERAL:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-static/range {v44 .. v44}, Lcom/mediatek/audioprofile/AudioProfileManager;->getProfileKey(Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;)Ljava/lang/String;

    move-result-object v44

    invoke-direct/range {v43 .. v44}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;-><init>(Ljava/lang/String;)V

    sget-object v44, Lcom/mediatek/audioprofile/AudioProfileManager;->DEFAULT_RINGER_STREAM_URI:Landroid/net/Uri;

    sget-object v45, Lcom/mediatek/audioprofile/AudioProfileManager;->DEFAULT_NOTIFICATION_STREAM_URI:Landroid/net/Uri;

    sget-object v46, Lcom/mediatek/audioprofile/AudioProfileManager;->DEFAULT_VIDEO_STREAM_URI:Landroid/net/Uri;

    invoke-virtual/range {v43 .. v46}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->ringtone(Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;)Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    move-result-object v43

    const/16 v44, 0x8

    const/16 v45, 0x8

    move-object/from16 v0, v43

    move/from16 v1, v24

    move/from16 v2, v44

    move/from16 v3, v45

    invoke-virtual {v0, v1, v2, v3}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->volume(III)Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    move-result-object v43

    const/16 v44, 0x0

    invoke-virtual/range {v43 .. v44}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->vibration(Z)Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    move-result-object v43

    move-object/from16 v0, v43

    invoke-virtual {v0, v8}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->dtmfTone(Z)Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    move-result-object v43

    const/16 v44, 0x0

    invoke-virtual/range {v43 .. v44}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->soundEffect(Z)Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    move-result-object v43

    const/16 v44, 0x1

    invoke-virtual/range {v43 .. v44}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->lockScreenSound(Z)Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    move-result-object v43

    const/16 v44, 0x1

    invoke-virtual/range {v43 .. v44}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->hapticFeedback(Z)Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->build()Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v37

    .line 333
    .local v37, generalState:Lcom/mediatek/audioprofile/AudioProfileState;
    sget-object v43, Lcom/mediatek/audioprofile/AudioProfileManager;->sDEFAULTSTATES:Ljava/util/HashMap;

    sget-object v44, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->GENERAL:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual/range {v44 .. v44}, Ljava/lang/Enum;->ordinal()I

    move-result v44

    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v44

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    new-instance v43, Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    sget-object v44, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->SILENT:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-static/range {v44 .. v44}, Lcom/mediatek/audioprofile/AudioProfileManager;->getProfileKey(Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;)Ljava/lang/String;

    move-result-object v44

    invoke-direct/range {v43 .. v44}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;-><init>(Ljava/lang/String;)V

    sget-object v44, Lcom/mediatek/audioprofile/AudioProfileManager;->DEFAULT_RINGER_STREAM_URI:Landroid/net/Uri;

    sget-object v45, Lcom/mediatek/audioprofile/AudioProfileManager;->DEFAULT_NOTIFICATION_STREAM_URI:Landroid/net/Uri;

    sget-object v46, Lcom/mediatek/audioprofile/AudioProfileManager;->DEFAULT_VIDEO_STREAM_URI:Landroid/net/Uri;

    invoke-virtual/range {v43 .. v46}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->ringtone(Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;)Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    move-result-object v43

    const/16 v44, 0x0

    const/16 v45, 0x0

    const/16 v46, 0x0

    invoke-virtual/range {v43 .. v46}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->volume(III)Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    move-result-object v43

    const/16 v44, 0x0

    invoke-virtual/range {v43 .. v44}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->vibration(Z)Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    move-result-object v43

    const/16 v44, 0x0

    invoke-virtual/range {v43 .. v44}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->dtmfTone(Z)Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    move-result-object v43

    const/16 v44, 0x0

    invoke-virtual/range {v43 .. v44}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->soundEffect(Z)Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    move-result-object v43

    const/16 v44, 0x0

    invoke-virtual/range {v43 .. v44}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->lockScreenSound(Z)Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    move-result-object v43

    const/16 v44, 0x0

    invoke-virtual/range {v43 .. v44}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->hapticFeedback(Z)Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->build()Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v42

    .line 346
    .local v42, silentState:Lcom/mediatek/audioprofile/AudioProfileState;
    sget-object v43, Lcom/mediatek/audioprofile/AudioProfileManager;->sDEFAULTSTATES:Ljava/util/HashMap;

    sget-object v44, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->SILENT:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual/range {v44 .. v44}, Ljava/lang/Enum;->ordinal()I

    move-result v44

    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v44

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    new-instance v43, Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    sget-object v44, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->MEETING:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-static/range {v44 .. v44}, Lcom/mediatek/audioprofile/AudioProfileManager;->getProfileKey(Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;)Ljava/lang/String;

    move-result-object v44

    invoke-direct/range {v43 .. v44}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;-><init>(Ljava/lang/String;)V

    sget-object v44, Lcom/mediatek/audioprofile/AudioProfileManager;->DEFAULT_RINGER_STREAM_URI:Landroid/net/Uri;

    sget-object v45, Lcom/mediatek/audioprofile/AudioProfileManager;->DEFAULT_NOTIFICATION_STREAM_URI:Landroid/net/Uri;

    sget-object v46, Lcom/mediatek/audioprofile/AudioProfileManager;->DEFAULT_VIDEO_STREAM_URI:Landroid/net/Uri;

    invoke-virtual/range {v43 .. v46}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->ringtone(Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;)Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    move-result-object v43

    const/16 v44, 0x0

    const/16 v45, 0x0

    const/16 v46, 0x0

    invoke-virtual/range {v43 .. v46}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->volume(III)Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    move-result-object v43

    const/16 v44, 0x1

    invoke-virtual/range {v43 .. v44}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->vibration(Z)Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    move-result-object v43

    const/16 v44, 0x0

    invoke-virtual/range {v43 .. v44}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->dtmfTone(Z)Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    move-result-object v43

    const/16 v44, 0x0

    invoke-virtual/range {v43 .. v44}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->soundEffect(Z)Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    move-result-object v43

    const/16 v44, 0x0

    invoke-virtual/range {v43 .. v44}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->lockScreenSound(Z)Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    move-result-object v43

    const/16 v44, 0x0

    invoke-virtual/range {v43 .. v44}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->hapticFeedback(Z)Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->build()Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v39

    .line 359
    .local v39, meetingState:Lcom/mediatek/audioprofile/AudioProfileState;
    sget-object v43, Lcom/mediatek/audioprofile/AudioProfileManager;->sDEFAULTSTATES:Ljava/util/HashMap;

    sget-object v44, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->MEETING:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual/range {v44 .. v44}, Ljava/lang/Enum;->ordinal()I

    move-result v44

    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v44

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    new-instance v43, Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    sget-object v44, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->OUTDOOR:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-static/range {v44 .. v44}, Lcom/mediatek/audioprofile/AudioProfileManager;->getProfileKey(Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;)Ljava/lang/String;

    move-result-object v44

    invoke-direct/range {v43 .. v44}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;-><init>(Ljava/lang/String;)V

    sget-object v44, Lcom/mediatek/audioprofile/AudioProfileManager;->DEFAULT_RINGER_STREAM_URI:Landroid/net/Uri;

    sget-object v45, Lcom/mediatek/audioprofile/AudioProfileManager;->DEFAULT_NOTIFICATION_STREAM_URI:Landroid/net/Uri;

    sget-object v46, Lcom/mediatek/audioprofile/AudioProfileManager;->DEFAULT_VIDEO_STREAM_URI:Landroid/net/Uri;

    invoke-virtual/range {v43 .. v46}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->ringtone(Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;)Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    move-result-object v43

    const/16 v44, 0xf

    const/16 v45, 0xf

    const/16 v46, 0xf

    invoke-virtual/range {v43 .. v46}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->volume(III)Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    move-result-object v43

    const/16 v44, 0x1

    invoke-virtual/range {v43 .. v44}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->vibration(Z)Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    move-result-object v43

    const/16 v44, 0x1

    invoke-virtual/range {v43 .. v44}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->dtmfTone(Z)Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    move-result-object v43

    const/16 v44, 0x0

    invoke-virtual/range {v43 .. v44}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->soundEffect(Z)Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    move-result-object v43

    const/16 v44, 0x1

    invoke-virtual/range {v43 .. v44}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->lockScreenSound(Z)Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    move-result-object v43

    const/16 v44, 0x1

    invoke-virtual/range {v43 .. v44}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->hapticFeedback(Z)Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->build()Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v40

    .line 372
    .local v40, outdoorState:Lcom/mediatek/audioprofile/AudioProfileState;
    sget-object v43, Lcom/mediatek/audioprofile/AudioProfileManager;->sDEFAULTSTATES:Ljava/util/HashMap;

    sget-object v44, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->OUTDOOR:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual/range {v44 .. v44}, Ljava/lang/Enum;->ordinal()I

    move-result v44

    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v44

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    move-object/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    const-string v43, "AudioProfileManager"

    const-string v44, "getDefaultState from default!"

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    .end local v4           #DEFAULT_ALARM_VOLUME_GENERAL:I
    .end local v5           #DEFAULT_ALARM_VOLUME_MEETING:I
    .end local v6           #DEFAULT_ALARM_VOLUME_OUTDOOR:I
    .end local v7           #DEFAULT_ALARM_VOLUME_SILENT:I
    .end local v8           #DEFAULT_DTMFTONE_GENERAL:Z
    .end local v9           #DEFAULT_DTMFTONE_MEETING:Z
    .end local v10           #DEFAULT_DTMFTONE_OUTDOOR:Z
    .end local v11           #DEFAULT_DTMFTONE_SILENT:Z
    .end local v12           #DEFAULT_HAPTIC_FEEDBACK_GENERAL:Z
    .end local v13           #DEFAULT_HAPTIC_FEEDBACK_MEETING:Z
    .end local v14           #DEFAULT_HAPTIC_FEEDBACK_OUTDOOR:Z
    .end local v15           #DEFAULT_HAPTIC_FEEDBACK_SILENT:Z
    .end local v16           #DEFAULT_LOCK_SCREEN_GENERAL:Z
    .end local v17           #DEFAULT_LOCK_SCREEN_MEETING:Z
    .end local v18           #DEFAULT_LOCK_SCREEN_OUTDOOR:Z
    .end local v19           #DEFAULT_LOCK_SCREEN_SILENT:Z
    .end local v20           #DEFAULT_NOTIFICATION_VOLUME_GENERAL:I
    .end local v21           #DEFAULT_NOTIFICATION_VOLUME_MEETING:I
    .end local v22           #DEFAULT_NOTIFICATION_VOLUME_OUTDOOR:I
    .end local v23           #DEFAULT_NOTIFICATION_VOLUME_SILENT:I
    .end local v24           #DEFAULT_RINGER_VOLUME_GENERAL:I
    .end local v25           #DEFAULT_RINGER_VOLUME_MEETING:I
    .end local v26           #DEFAULT_RINGER_VOLUME_OUTDOOR:I
    .end local v27           #DEFAULT_RINGER_VOLUME_SILENT:I
    .end local v28           #DEFAULT_SOUNDEFFECT_GENERAL:Z
    .end local v29           #DEFAULT_SOUNDEFFECT_MEETING:Z
    .end local v30           #DEFAULT_SOUNDEFFECT_OUTDOOR:Z
    .end local v31           #DEFAULT_SOUNDEFFECT_SILENT:Z
    .end local v32           #DEFAULT_VIBRATION_GENERAL:Z
    .end local v33           #DEFAULT_VIBRATION_MEETING:Z
    .end local v34           #DEFAULT_VIBRATION_OUTDOOR:Z
    .end local v35           #DEFAULT_VIBRATION_SILENT:Z
    .end local v36           #defaultProfileStatesGetter:Lcom/mediatek/common/audioprofile/IAudioProfileExtension$IDefaultProfileStatesGetter;
    .end local v37           #generalState:Lcom/mediatek/audioprofile/AudioProfileState;
    .end local v39           #meetingState:Lcom/mediatek/audioprofile/AudioProfileState;
    .end local v40           #outdoorState:Lcom/mediatek/audioprofile/AudioProfileState;
    .end local v42           #silentState:Lcom/mediatek/audioprofile/AudioProfileState;
    :cond_1
    invoke-static/range {p0 .. p0}, Lcom/mediatek/audioprofile/AudioProfileManager;->getScenario(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    move-result-object v41

    .line 378
    .local v41, scenario:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;
    if-nez v41, :cond_2

    .line 379
    const-string v43, "AudioProfileManager"

    const-string v44, "getDefaultState: get null scenario and use custom scenario default!"

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    sget-object v41, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->CUSTOM:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    .line 382
    :cond_2
    invoke-virtual/range {v41 .. v41}, Ljava/lang/Enum;->ordinal()I

    move-result v38

    .line 383
    .local v38, index:I
    sget-object v43, Lcom/mediatek/audioprofile/AudioProfileManager;->sDEFAULTSTATES:Ljava/util/HashMap;

    invoke-virtual/range {v43 .. v43}, Ljava/util/HashMap;->size()I

    move-result v43

    move/from16 v0, v38

    move/from16 v1, v43

    if-lt v0, v1, :cond_3

    .line 384
    sget-object v43, Lcom/mediatek/audioprofile/AudioProfileManager;->sDEFAULTSTATES:Ljava/util/HashMap;

    const/16 v44, 0x0

    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Lcom/mediatek/audioprofile/AudioProfileState;

    .line 386
    :goto_0
    return-object v43

    :cond_3
    sget-object v43, Lcom/mediatek/audioprofile/AudioProfileManager;->sDEFAULTSTATES:Ljava/util/HashMap;

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Lcom/mediatek/audioprofile/AudioProfileState;

    goto :goto_0
.end method

.method public static getDtmfToneKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "profileKey"

    .prologue
    .line 450
    if-eqz p0, :cond_0

    .line 451
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_dtmf_tone_enabled"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 453
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getHapticKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "profileKey"

    .prologue
    .line 465
    if-eqz p0, :cond_0

    .line 466
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_haptic_feedback_enabled"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 468
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getInt(Ljava/lang/String;I)I
    .locals 2
    .parameter "Properties"
    .parameter "DefaultValue"

    .prologue
    .line 392
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x1f

    if-le v0, v1, :cond_0

    .line 395
    .end local p1
    :goto_0
    return p1

    .restart local p1
    :cond_0
    invoke-static {p0, p1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p1

    goto :goto_0
.end method

.method public static getKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "profileKey"

    .prologue
    .line 665
    if-eqz p0, :cond_0

    .line 666
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_key"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 668
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getLockScreenKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "profileKey"

    .prologue
    .line 623
    if-eqz p0, :cond_0

    .line 624
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_lockscreen_sounds_enabled"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 626
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getNotificationUseRingKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "profileKey"

    .prologue
    .line 637
    if-eqz p0, :cond_0

    .line 638
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_notifications_use_ring_volume"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 640
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getProfileKey(Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;)Ljava/lang/String;
    .locals 2
    .parameter "scenario"

    .prologue
    .line 681
    if-eqz p0, :cond_0

    .line 682
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mtk_audioprofile_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 685
    :goto_0
    return-object v0

    .line 684
    :cond_0
    const-string v0, "AudioProfileManager"

    const-string v1, "getProfileKey with null scenario!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getProfileNameKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "profileKey"

    .prologue
    .line 651
    if-eqz p0, :cond_0

    .line 652
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_name"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 654
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getScenario(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;
    .locals 8
    .parameter "profileKey"

    .prologue
    .line 697
    if-nez p0, :cond_0

    .line 698
    const-string v5, "AudioProfileManager"

    const-string v6, "getScenario: Null key! Return CUSTOM as default!"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    sget-object v5, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->CUSTOM:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    .line 716
    :goto_0
    return-object v5

    .line 702
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 703
    .local v2, keyLen:I
    const-string v5, "mtk_audioprofile_"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v4

    .line 704
    .local v4, startIndex:I
    if-ge v2, v4, :cond_1

    .line 705
    const-string v5, "AudioProfileManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getScenario: Invalid key :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", Return CUSTOM as default!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    sget-object v5, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->CUSTOM:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    goto :goto_0

    .line 709
    :cond_1
    const/16 v5, 0x5f

    invoke-virtual {p0, v5, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 711
    .local v1, endIndex:I
    const/4 v5, -0x1

    if-ne v1, v5, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .end local v1           #endIndex:I
    :cond_2
    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 713
    .local v3, scenarioStr:Ljava/lang/String;
    :try_start_0
    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v3, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->valueOf(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    goto :goto_0

    .line 714
    :catch_0
    move-exception v0

    .line 715
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v5, "AudioProfileManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Can not convert string "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to Scenario type!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    sget-object v5, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->CUSTOM:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    goto :goto_0
.end method

.method private static getService()Lcom/mediatek/common/audioprofile/IAudioProfileService;
    .locals 4

    .prologue
    .line 228
    sget-object v2, Lcom/mediatek/audioprofile/AudioProfileManager;->sService:Lcom/mediatek/common/audioprofile/IAudioProfileService;

    if-eqz v2, :cond_0

    .line 230
    :try_start_0
    sget-object v2, Lcom/mediatek/audioprofile/AudioProfileManager;->sService:Lcom/mediatek/common/audioprofile/IAudioProfileService;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/mediatek/common/audioprofile/IAudioProfileService;->setUserId(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    .local v1, e:Landroid/os/RemoteException;
    :goto_0
    sget-object v2, Lcom/mediatek/audioprofile/AudioProfileManager;->sService:Lcom/mediatek/common/audioprofile/IAudioProfileService;

    .line 243
    .end local v1           #e:Landroid/os/RemoteException;
    :goto_1
    return-object v2

    .line 231
    :catch_0
    move-exception v1

    .line 232
    .restart local v1       #e:Landroid/os/RemoteException;
    const-string v2, "AudioProfileManager"

    const-string v3, "Set user id exception"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 236
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_0
    const-string v2, "audioprofile"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 237
    .local v0, binder:Landroid/os/IBinder;
    invoke-static {v0}, Lcom/mediatek/common/audioprofile/IAudioProfileService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/audioprofile/IAudioProfileService;

    move-result-object v2

    sput-object v2, Lcom/mediatek/audioprofile/AudioProfileManager;->sService:Lcom/mediatek/common/audioprofile/IAudioProfileService;

    .line 239
    :try_start_1
    sget-object v2, Lcom/mediatek/audioprofile/AudioProfileManager;->sService:Lcom/mediatek/common/audioprofile/IAudioProfileService;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/mediatek/common/audioprofile/IAudioProfileService;->setUserId(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 243
    :goto_2
    sget-object v2, Lcom/mediatek/audioprofile/AudioProfileManager;->sService:Lcom/mediatek/common/audioprofile/IAudioProfileService;

    goto :goto_1

    .line 240
    :catch_1
    move-exception v1

    .line 241
    .restart local v1       #e:Landroid/os/RemoteException;
    const-string v2, "AudioProfileManager"

    const-string v3, "Set user id exception"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method public static getSoundEffectKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "profileKey"

    .prologue
    .line 435
    if-eqz p0, :cond_0

    .line 436
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_sound_effects_enabled"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 438
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getStreamUriKey(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .parameter "profileKey"
    .parameter "type"

    .prologue
    .line 520
    const-wide/16 v0, -0x1

    .line 521
    .local v0, simId:J
    invoke-static {p0, p1, v0, v1}, Lcom/mediatek/audioprofile/AudioProfileManager;->getStreamUriKey(Ljava/lang/String;IJ)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getStreamUriKey(Ljava/lang/String;IJ)Ljava/lang/String;
    .locals 5
    .parameter "profileKey"
    .parameter "type"
    .parameter "simId"

    .prologue
    const-wide/16 v3, -0x1

    .line 536
    if-nez p0, :cond_0

    .line 537
    const-string v1, "AudioProfileManager"

    const-string v2, "getStreamUriKey with null profile key!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    const/4 v0, 0x0

    .line 582
    :goto_0
    return-object v0

    .line 541
    :cond_0
    const/4 v0, 0x0

    .line 542
    .local v0, uriKey:Ljava/lang/String;
    sparse-switch p1, :sswitch_data_0

    .line 579
    const-string v1, "AudioProfileManager"

    const-string v2, "getStreamUriKey with unsupport type!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    :cond_1
    :goto_1
    const-string v1, "AudioProfileManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getStreamUriKey: StreamUriKey = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 544
    :sswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_ringtone"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 546
    cmp-long v1, p2, v3

    if-eqz v1, :cond_1

    .line 547
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_sim_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 554
    :sswitch_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_notification_sound"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 555
    goto :goto_1

    .line 558
    :sswitch_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_video_call"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 561
    cmp-long v1, p2, v3

    if-eqz v1, :cond_1

    .line 562
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_sim_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 569
    :sswitch_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_sip_call"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 572
    cmp-long v1, p2, v3

    if-eqz v1, :cond_1

    .line 573
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_sim_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 542
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x8 -> :sswitch_2
        0x10 -> :sswitch_3
    .end sparse-switch
.end method

.method public static getStreamUriKeys(I)Ljava/util/List;
    .locals 9
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 594
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 595
    .local v3, keys:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->values()[Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    move-result-object v0

    .local v0, arr$:[Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;
    array-length v4, v0

    .local v4, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v6, v0, v1

    .line 596
    .local v6, scenario:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;
    sget-object v7, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->SILENT:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v7, v6}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    sget-object v7, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->CUSTOM:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v7, v6}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 597
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mtk_audioprofile_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v6}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 598
    .local v5, prefix:Ljava/lang/String;
    invoke-static {v5, p0}, Lcom/mediatek/audioprofile/AudioProfileManager;->getStreamUriKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 599
    .local v2, key:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 600
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 595
    .end local v2           #key:Ljava/lang/String;
    .end local v5           #prefix:Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 604
    .end local v6           #scenario:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;
    :cond_1
    return-object v3
.end method

.method public static getStreamVolumeKey(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .parameter "profileKey"
    .parameter "type"

    .prologue
    .line 483
    if-nez p0, :cond_0

    .line 484
    const-string v1, "AudioProfileManager"

    const-string v2, "getStreamVolumeKey with null profile key!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    const/4 v0, 0x0

    .line 505
    :goto_0
    return-object v0

    .line 488
    :cond_0
    const/4 v0, 0x0

    .line 489
    .local v0, volumeKey:Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 503
    :pswitch_0
    const-string v1, "AudioProfileManager"

    const-string v2, "getStreamVolumeKey with unsupport type!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 491
    :pswitch_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_volume_ring"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 492
    goto :goto_0

    .line 495
    :pswitch_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_volume_notification"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 496
    goto :goto_0

    .line 499
    :pswitch_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_volume_alarm"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 500
    goto :goto_0

    .line 489
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public static getVibrationKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "profileKey"

    .prologue
    .line 419
    if-eqz p0, :cond_0

    .line 420
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_vibrate_on"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 422
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addProfile()Ljava/lang/String;
    .locals 4

    .prologue
    .line 783
    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileManager;->getService()Lcom/mediatek/common/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 785
    .local v1, service:Lcom/mediatek/common/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1}, Lcom/mediatek/common/audioprofile/IAudioProfileService;->addProfile()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 788
    :goto_0
    return-object v2

    .line 786
    :catch_0
    move-exception v0

    .line 787
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "AudioProfileManager"

    const-string v3, "Dead object in setActiveProfile"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 788
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public deleteProfile(Ljava/lang/String;)Z
    .locals 5
    .parameter "profileKey"

    .prologue
    const/4 v2, 0x0

    .line 800
    if-nez p1, :cond_0

    .line 801
    const-string v3, "AudioProfileManager"

    const-string v4, "deleteProfile with null profile key!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    :goto_0
    return v2

    .line 805
    :cond_0
    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileManager;->getService()Lcom/mediatek/common/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 807
    .local v1, service:Lcom/mediatek/common/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1, p1}, Lcom/mediatek/common/audioprofile/IAudioProfileService;->deleteProfile(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 808
    :catch_0
    move-exception v0

    .line 809
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "AudioProfileManager"

    const-string v4, "Dead object in deleteProfile"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getActiveProfileKey()Ljava/lang/String;
    .locals 4

    .prologue
    .line 916
    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileManager;->getService()Lcom/mediatek/common/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 918
    .local v1, service:Lcom/mediatek/common/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1}, Lcom/mediatek/common/audioprofile/IAudioProfileService;->getActiveProfileKey()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 921
    :goto_0
    return-object v2

    .line 919
    :catch_0
    move-exception v0

    .line 920
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "AudioProfileManager"

    const-string v3, "Dead object in getActiveProfileKey"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 921
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getAllProfileKeys()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 847
    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileManager;->getService()Lcom/mediatek/common/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 849
    .local v1, service:Lcom/mediatek/common/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1}, Lcom/mediatek/common/audioprofile/IAudioProfileService;->getAllProfileKeys()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 852
    :goto_0
    return-object v2

    .line 850
    :catch_0
    move-exception v0

    .line 851
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "AudioProfileManager"

    const-string v3, "Dead object in getAllProfileKeys"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 852
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getCustomizedProfileKeys()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 877
    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileManager;->getService()Lcom/mediatek/common/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 879
    .local v1, service:Lcom/mediatek/common/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1}, Lcom/mediatek/common/audioprofile/IAudioProfileService;->getCustomizedProfileKeys()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 882
    :goto_0
    return-object v2

    .line 880
    :catch_0
    move-exception v0

    .line 881
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "AudioProfileManager"

    const-string v3, "Dead object in getCustomizedProfileKeys"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 882
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getDefaultRingtone(I)Landroid/net/Uri;
    .locals 4
    .parameter "type"

    .prologue
    .line 1525
    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileManager;->getService()Lcom/mediatek/common/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 1527
    .local v1, service:Lcom/mediatek/common/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1, p1}, Lcom/mediatek/common/audioprofile/IAudioProfileService;->getDefaultRingtone(I)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1530
    :goto_0
    return-object v2

    .line 1528
    :catch_0
    move-exception v0

    .line 1529
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "AudioProfileManager"

    const-string v3, "Dead object in isRingtoneExist"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1530
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getDtmfToneEnabled(Ljava/lang/String;)Z
    .locals 5
    .parameter "profileKey"

    .prologue
    const/4 v2, 0x0

    .line 1080
    if-nez p1, :cond_0

    .line 1081
    const-string v3, "AudioProfileManager"

    const-string v4, "getDtmfToneEnabled with null profile key!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1090
    :goto_0
    return v2

    .line 1085
    :cond_0
    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileManager;->getService()Lcom/mediatek/common/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 1087
    .local v1, service:Lcom/mediatek/common/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1, p1}, Lcom/mediatek/common/audioprofile/IAudioProfileService;->getDtmfToneEnabled(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 1088
    :catch_0
    move-exception v0

    .line 1089
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "AudioProfileManager"

    const-string v4, "Dead object in getDtmfToneEnabled"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getHapticFeedbackEnabled(Ljava/lang/String;)Z
    .locals 5
    .parameter "profileKey"

    .prologue
    const/4 v2, 0x0

    .line 1146
    if-nez p1, :cond_0

    .line 1147
    const-string v3, "AudioProfileManager"

    const-string v4, "getHapticFeedbackEnabled with null profile key!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1156
    :goto_0
    return v2

    .line 1151
    :cond_0
    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileManager;->getService()Lcom/mediatek/common/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 1153
    .local v1, service:Lcom/mediatek/common/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1, p1}, Lcom/mediatek/common/audioprofile/IAudioProfileService;->getHapticFeedbackEnabled(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 1154
    :catch_0
    move-exception v0

    .line 1155
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "AudioProfileManager"

    const-string v4, "Dead object in getHapticFeedbackEnabled"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getLastActiveProfileKey()Ljava/lang/String;
    .locals 4

    .prologue
    .line 931
    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileManager;->getService()Lcom/mediatek/common/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 933
    .local v1, service:Lcom/mediatek/common/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1}, Lcom/mediatek/common/audioprofile/IAudioProfileService;->getLastActiveProfileKey()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 936
    :goto_0
    return-object v2

    .line 934
    :catch_0
    move-exception v0

    .line 935
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "AudioProfileManager"

    const-string v3, "Dead object in getLastActiveProfileKey"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 936
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getLockScreenEnabled(Ljava/lang/String;)Z
    .locals 5
    .parameter "profileKey"

    .prologue
    const/4 v2, 0x0

    .line 1124
    if-nez p1, :cond_0

    .line 1125
    const-string v3, "AudioProfileManager"

    const-string v4, "getLockScreenEnabled with null profile key!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1134
    :goto_0
    return v2

    .line 1129
    :cond_0
    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileManager;->getService()Lcom/mediatek/common/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 1131
    .local v1, service:Lcom/mediatek/common/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1, p1}, Lcom/mediatek/common/audioprofile/IAudioProfileService;->getLockScreenEnabled(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 1132
    :catch_0
    move-exception v0

    .line 1133
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "AudioProfileManager"

    const-string v4, "Dead object in getLockScreenEnabled"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getPredefinedProfileKeys()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 862
    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileManager;->getService()Lcom/mediatek/common/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 864
    .local v1, service:Lcom/mediatek/common/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1}, Lcom/mediatek/common/audioprofile/IAudioProfileService;->getPredefinedProfileKeys()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 867
    :goto_0
    return-object v2

    .line 865
    :catch_0
    move-exception v0

    .line 866
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "AudioProfileManager"

    const-string v3, "Dead object in getPredefinedProfileKeys"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 867
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getProfileCount()I
    .locals 4

    .prologue
    .line 832
    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileManager;->getService()Lcom/mediatek/common/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 834
    .local v1, service:Lcom/mediatek/common/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1}, Lcom/mediatek/common/audioprofile/IAudioProfileService;->getProfileCount()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 837
    :goto_0
    return v2

    .line 835
    :catch_0
    move-exception v0

    .line 836
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "AudioProfileManager"

    const-string v3, "Dead object in deleteProfile"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 837
    const/16 v2, 0xa

    goto :goto_0
.end method

.method public getProfileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "profileKey"

    .prologue
    const/4 v2, 0x0

    .line 1231
    if-nez p1, :cond_0

    .line 1232
    const-string v3, "AudioProfileManager"

    const-string v4, "getProfileName with null profile key!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1241
    :goto_0
    return-object v2

    .line 1236
    :cond_0
    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileManager;->getService()Lcom/mediatek/common/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 1238
    .local v1, service:Lcom/mediatek/common/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1, p1}, Lcom/mediatek/common/audioprofile/IAudioProfileService;->getProfileName(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 1239
    :catch_0
    move-exception v0

    .line 1240
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "AudioProfileManager"

    const-string v4, "Dead object in getProfileName"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getProfileState(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileState;
    .locals 23
    .parameter "profileKey"

    .prologue
    .line 1168
    if-nez p1, :cond_0

    .line 1169
    const-string v20, "AudioProfileManager"

    const-string v21, "getProfileState with null profile key!"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1170
    const/4 v10, 0x0

    .line 1220
    :goto_0
    return-object v10

    .line 1174
    :cond_0
    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileManager;->getService()Lcom/mediatek/common/audioprofile/IAudioProfileService;

    move-result-object v12

    .line 1176
    .local v12, service:Lcom/mediatek/common/audioprofile/IAudioProfileService;
    :try_start_0
    move-object/from16 v0, p1

    invoke-interface {v12, v0}, Lcom/mediatek/common/audioprofile/IAudioProfileService;->getProfileStateString(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v15

    .line 1182
    .local v15, state:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    sget-object v20, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ringer_stream:Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Enum;->ordinal()I

    move-result v20

    move/from16 v0, v20

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 1183
    .local v16, value:Ljava/lang/String;
    if-nez v16, :cond_1

    const/16 v19, 0x0

    .line 1184
    .local v19, voiceCallUri:Landroid/net/Uri;
    :goto_1
    sget-object v20, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->notification_stream:Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Enum;->ordinal()I

    move-result v20

    move/from16 v0, v20

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    .end local v16           #value:Ljava/lang/String;
    check-cast v16, Ljava/lang/String;

    .line 1185
    .restart local v16       #value:Ljava/lang/String;
    if-nez v16, :cond_2

    const/4 v8, 0x0

    .line 1186
    .local v8, notificationUri:Landroid/net/Uri;
    :goto_2
    sget-object v20, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->videocall_Stream:Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Enum;->ordinal()I

    move-result v20

    move/from16 v0, v20

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    .end local v16           #value:Ljava/lang/String;
    check-cast v16, Ljava/lang/String;

    .line 1187
    .restart local v16       #value:Ljava/lang/String;
    if-nez v16, :cond_3

    const/16 v18, 0x0

    .line 1188
    .local v18, videoCallUri:Landroid/net/Uri;
    :goto_3
    sget-object v20, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->sipcall_Stream:Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Enum;->ordinal()I

    move-result v20

    move/from16 v0, v20

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    .end local v16           #value:Ljava/lang/String;
    check-cast v16, Ljava/lang/String;

    .line 1189
    .restart local v16       #value:Ljava/lang/String;
    if-nez v16, :cond_4

    const/4 v13, 0x0

    .line 1191
    .local v13, sipCallUri:Landroid/net/Uri;
    :goto_4
    sget-object v20, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->ringer_volume:Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Enum;->ordinal()I

    move-result v20

    move/from16 v0, v20

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    .end local v16           #value:Ljava/lang/String;
    check-cast v16, Ljava/lang/String;

    .line 1192
    .restart local v16       #value:Ljava/lang/String;
    if-nez v16, :cond_5

    const/4 v11, 0x0

    .line 1193
    .local v11, ringerVolume:I
    :goto_5
    sget-object v20, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->notification_volume:Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Enum;->ordinal()I

    move-result v20

    move/from16 v0, v20

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    .end local v16           #value:Ljava/lang/String;
    check-cast v16, Ljava/lang/String;

    .line 1194
    .restart local v16       #value:Ljava/lang/String;
    if-nez v16, :cond_6

    const/4 v9, 0x0

    .line 1195
    .local v9, notificationVolume:I
    :goto_6
    sget-object v20, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->alarm_volume:Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Enum;->ordinal()I

    move-result v20

    move/from16 v0, v20

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    .end local v16           #value:Ljava/lang/String;
    check-cast v16, Ljava/lang/String;

    .line 1196
    .restart local v16       #value:Ljava/lang/String;
    if-nez v16, :cond_7

    const/4 v3, 0x0

    .line 1198
    .local v3, alarmVolume:I
    :goto_7
    sget-object v20, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->vibration_enabled:Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Enum;->ordinal()I

    move-result v20

    move/from16 v0, v20

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    .end local v16           #value:Ljava/lang/String;
    check-cast v16, Ljava/lang/String;

    .line 1199
    .restart local v16       #value:Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    .line 1200
    .local v17, vibration:Z
    sget-object v20, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->dtmftone_enabled:Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Enum;->ordinal()I

    move-result v20

    move/from16 v0, v20

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    .end local v16           #value:Ljava/lang/String;
    check-cast v16, Ljava/lang/String;

    .line 1201
    .restart local v16       #value:Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 1202
    .local v4, dtmfTone:Z
    sget-object v20, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->soundeffect_enbled:Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Enum;->ordinal()I

    move-result v20

    move/from16 v0, v20

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    .end local v16           #value:Ljava/lang/String;
    check-cast v16, Ljava/lang/String;

    .line 1203
    .restart local v16       #value:Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    .line 1204
    .local v14, soundEffect:Z
    sget-object v20, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->lockscreensound_enabled:Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Enum;->ordinal()I

    move-result v20

    move/from16 v0, v20

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    .end local v16           #value:Ljava/lang/String;
    check-cast v16, Ljava/lang/String;

    .line 1205
    .restart local v16       #value:Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    .line 1206
    .local v7, lockScreensound:Z
    sget-object v20, Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;->hapticfeedback_enabled:Lcom/mediatek/audioprofile/AudioProfileManager$ProfileSettings;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Enum;->ordinal()I

    move-result v20

    move/from16 v0, v20

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    .end local v16           #value:Ljava/lang/String;
    check-cast v16, Ljava/lang/String;

    .line 1207
    .restart local v16       #value:Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    .line 1209
    .local v6, hapticFeedback:Z
    new-instance v20, Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v8, v2, v13}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->ringtone(Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;)Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v11, v9, v3}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->volume(III)Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->vibration(Z)Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->dtmfTone(Z)Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->soundEffect(Z)Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->lockScreenSound(Z)Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->hapticFeedback(Z)Lcom/mediatek/audioprofile/AudioProfileState$Builder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/mediatek/audioprofile/AudioProfileState$Builder;->build()Lcom/mediatek/audioprofile/AudioProfileState;

    move-result-object v10

    .line 1218
    .local v10, profileState:Lcom/mediatek/audioprofile/AudioProfileState;
    const-string v20, "AudioProfileManager"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "getProfileState for profileKey = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ": "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v10}, Lcom/mediatek/audioprofile/AudioProfileState;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1177
    .end local v3           #alarmVolume:I
    .end local v4           #dtmfTone:Z
    .end local v6           #hapticFeedback:Z
    .end local v7           #lockScreensound:Z
    .end local v8           #notificationUri:Landroid/net/Uri;
    .end local v9           #notificationVolume:I
    .end local v10           #profileState:Lcom/mediatek/audioprofile/AudioProfileState;
    .end local v11           #ringerVolume:I
    .end local v13           #sipCallUri:Landroid/net/Uri;
    .end local v14           #soundEffect:Z
    .end local v15           #state:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v16           #value:Ljava/lang/String;
    .end local v17           #vibration:Z
    .end local v18           #videoCallUri:Landroid/net/Uri;
    .end local v19           #voiceCallUri:Landroid/net/Uri;
    :catch_0
    move-exception v5

    .line 1178
    .local v5, e:Landroid/os/RemoteException;
    const-string v20, "AudioProfileManager"

    const-string v21, "Dead object in getProfileState"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1179
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 1183
    .end local v5           #e:Landroid/os/RemoteException;
    .restart local v15       #state:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v16       #value:Ljava/lang/String;
    :cond_1
    invoke-static/range {v16 .. v16}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v19

    goto/16 :goto_1

    .line 1185
    .restart local v19       #voiceCallUri:Landroid/net/Uri;
    :cond_2
    invoke-static/range {v16 .. v16}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    goto/16 :goto_2

    .line 1187
    .restart local v8       #notificationUri:Landroid/net/Uri;
    :cond_3
    invoke-static/range {v16 .. v16}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v18

    goto/16 :goto_3

    .line 1189
    .restart local v18       #videoCallUri:Landroid/net/Uri;
    :cond_4
    invoke-static/range {v16 .. v16}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    goto/16 :goto_4

    .line 1192
    .restart local v13       #sipCallUri:Landroid/net/Uri;
    :cond_5
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v11

    goto/16 :goto_5

    .line 1194
    .restart local v11       #ringerVolume:I
    :cond_6
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v9

    goto/16 :goto_6

    .line 1196
    .restart local v9       #notificationVolume:I
    :cond_7
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto/16 :goto_7
.end method

.method public getRingtoneUri(I)Landroid/net/Uri;
    .locals 4
    .parameter "simId"

    .prologue
    .line 1000
    invoke-virtual {p0}, Lcom/mediatek/audioprofile/AudioProfileManager;->getActiveProfileKey()Ljava/lang/String;

    move-result-object v0

    .line 1001
    .local v0, profileKey:Ljava/lang/String;
    const/4 v1, 0x1

    .line 1002
    .local v1, type:I
    int-to-long v2, p1

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/mediatek/audioprofile/AudioProfileManager;->getRingtoneUri(Ljava/lang/String;IJ)Landroid/net/Uri;

    move-result-object v2

    return-object v2
.end method

.method public getRingtoneUri(IJ)Landroid/net/Uri;
    .locals 2
    .parameter "callType"
    .parameter "simId"

    .prologue
    .line 1014
    invoke-virtual {p0}, Lcom/mediatek/audioprofile/AudioProfileManager;->getActiveProfileKey()Ljava/lang/String;

    move-result-object v0

    .line 1015
    .local v0, profileKey:Ljava/lang/String;
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/mediatek/audioprofile/AudioProfileManager;->getRingtoneUri(Ljava/lang/String;IJ)Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method public getRingtoneUri(Ljava/lang/String;I)Landroid/net/Uri;
    .locals 3
    .parameter "profileKey"
    .parameter "type"

    .prologue
    .line 985
    const-wide/16 v0, -0x1

    .line 986
    .local v0, simId:J
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/mediatek/audioprofile/AudioProfileManager;->getRingtoneUri(Ljava/lang/String;IJ)Landroid/net/Uri;

    move-result-object v2

    return-object v2
.end method

.method public getRingtoneUri(Ljava/lang/String;IJ)Landroid/net/Uri;
    .locals 5
    .parameter "profileKey"
    .parameter "type"
    .parameter "simId"

    .prologue
    const/4 v2, 0x0

    .line 955
    if-nez p1, :cond_0

    .line 956
    const-string v3, "AudioProfileManager"

    const-string v4, "getRingtoneUri with null profile key!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 970
    :goto_0
    return-object v2

    .line 960
    :cond_0
    const/4 v3, 0x1

    if-eq p2, v3, :cond_1

    const/4 v3, 0x2

    if-eq p2, v3, :cond_1

    const/16 v3, 0x8

    if-eq p2, v3, :cond_1

    const/16 v3, 0x10

    if-ne p2, v3, :cond_2

    .line 961
    :cond_1
    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileManager;->getService()Lcom/mediatek/common/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 963
    .local v1, service:Lcom/mediatek/common/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1, p1, p2, p3, p4}, Lcom/mediatek/common/audioprofile/IAudioProfileService;->getRingtoneUriWithSIM(Ljava/lang/String;IJ)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 964
    :catch_0
    move-exception v0

    .line 965
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "AudioProfileManager"

    const-string v4, "Dead object in getRingtoneUri"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 969
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v1           #service:Lcom/mediatek/common/audioprofile/IAudioProfileService;
    :cond_2
    const-string v3, "AudioProfileManager"

    const-string v4, "getRingtoneUri with unsupport stream type!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getSoundEffectEnabled(Ljava/lang/String;)Z
    .locals 5
    .parameter "profileKey"

    .prologue
    const/4 v2, 0x0

    .line 1102
    if-nez p1, :cond_0

    .line 1103
    const-string v3, "AudioProfileManager"

    const-string v4, "getSoundEffectEnabled with null profile key!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1112
    :goto_0
    return v2

    .line 1107
    :cond_0
    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileManager;->getService()Lcom/mediatek/common/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 1109
    .local v1, service:Lcom/mediatek/common/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1, p1}, Lcom/mediatek/common/audioprofile/IAudioProfileService;->getSoundEffectEnabled(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 1110
    :catch_0
    move-exception v0

    .line 1111
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "AudioProfileManager"

    const-string v4, "Dead object in getSoundEffectEnabled"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getStreamMaxVolume(I)I
    .locals 4
    .parameter "streamType"

    .prologue
    .line 1506
    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileManager;->getService()Lcom/mediatek/common/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 1508
    .local v1, service:Lcom/mediatek/common/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1, p1}, Lcom/mediatek/common/audioprofile/IAudioProfileService;->getStreamMaxVolume(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1511
    :goto_0
    return v2

    .line 1509
    :catch_0
    move-exception v0

    .line 1510
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "AudioProfileManager"

    const-string v3, "Dead object in isRingtoneExist"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1511
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getStreamVolume(Ljava/lang/String;I)I
    .locals 5
    .parameter "profileKey"
    .parameter "streamType"

    .prologue
    const/4 v2, 0x0

    .line 1030
    if-nez p1, :cond_0

    .line 1031
    const-string v3, "AudioProfileManager"

    const-string v4, "getStreamVolume with null profile key!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1046
    :goto_0
    return v2

    .line 1035
    :cond_0
    const/4 v3, 0x2

    if-eq p2, v3, :cond_1

    const/4 v3, 0x5

    if-eq p2, v3, :cond_1

    const/4 v3, 0x4

    if-ne p2, v3, :cond_2

    .line 1037
    :cond_1
    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileManager;->getService()Lcom/mediatek/common/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 1039
    .local v1, service:Lcom/mediatek/common/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1, p1, p2}, Lcom/mediatek/common/audioprofile/IAudioProfileService;->getStreamVolume(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 1040
    :catch_0
    move-exception v0

    .line 1041
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "AudioProfileManager"

    const-string v4, "Dead object in getStreamVolume"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1045
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v1           #service:Lcom/mediatek/common/audioprofile/IAudioProfileService;
    :cond_2
    const-string v3, "AudioProfileManager"

    const-string v4, "getStreamVolume with unsupport stream type!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getVibrationEnabled(Ljava/lang/String;)Z
    .locals 5
    .parameter "profileKey"

    .prologue
    const/4 v2, 0x0

    .line 1058
    if-nez p1, :cond_0

    .line 1059
    const-string v3, "AudioProfileManager"

    const-string v4, "getVibrationEnabled with null profile key!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1068
    :goto_0
    return v2

    .line 1063
    :cond_0
    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileManager;->getService()Lcom/mediatek/common/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 1065
    .local v1, service:Lcom/mediatek/common/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1, p1}, Lcom/mediatek/common/audioprofile/IAudioProfileService;->getVibrationEnabled(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 1066
    :catch_0
    move-exception v0

    .line 1067
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "AudioProfileManager"

    const-string v4, "Dead object in getVibrationEnabled"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public isActive(Ljava/lang/String;)Z
    .locals 5
    .parameter "profileKey"

    .prologue
    const/4 v2, 0x0

    .line 1461
    if-nez p1, :cond_0

    .line 1462
    const-string v3, "AudioProfileManager"

    const-string v4, "isActive with null profile key!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1471
    :goto_0
    return v2

    .line 1466
    :cond_0
    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileManager;->getService()Lcom/mediatek/common/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 1468
    .local v1, service:Lcom/mediatek/common/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1, p1}, Lcom/mediatek/common/audioprofile/IAudioProfileService;->isActive(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 1469
    :catch_0
    move-exception v0

    .line 1470
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "AudioProfileManager"

    const-string v4, "Dead object in isActive"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public isNameExist(Ljava/lang/String;)Z
    .locals 5
    .parameter "name"

    .prologue
    const/4 v2, 0x1

    .line 895
    if-eqz p1, :cond_0

    const-string v3, ""

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 896
    :cond_0
    const-string v3, "AudioProfileManager"

    const-string v4, "isNameExist: Null or empty name!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 905
    :goto_0
    return v2

    .line 900
    :cond_1
    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileManager;->getService()Lcom/mediatek/common/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 902
    .local v1, service:Lcom/mediatek/common/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1, p1}, Lcom/mediatek/common/audioprofile/IAudioProfileService;->isNameExist(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 903
    :catch_0
    move-exception v0

    .line 904
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "AudioProfileManager"

    const-string v4, "Dead object in setActiveProfile"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public isRingtoneExist(Landroid/net/Uri;)Z
    .locals 5
    .parameter "uri"

    .prologue
    const/4 v2, 0x0

    .line 1482
    if-nez p1, :cond_0

    .line 1483
    const-string v3, "AudioProfileManager"

    const-string v4, "isRingtoneExist with null uri!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1492
    :goto_0
    return v2

    .line 1487
    :cond_0
    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileManager;->getService()Lcom/mediatek/common/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 1489
    .local v1, service:Lcom/mediatek/common/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1, p1}, Lcom/mediatek/common/audioprofile/IAudioProfileService;->isRingtoneExist(Landroid/net/Uri;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 1490
    :catch_0
    move-exception v0

    .line 1491
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "AudioProfileManager"

    const-string v4, "Dead object in isRingtoneExist"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public listenAudioProfie(Lcom/mediatek/common/audioprofile/AudioProfileListener;I)V
    .locals 4
    .parameter "listener"
    .parameter "event"

    .prologue
    .line 1547
    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileManager;->getService()Lcom/mediatek/common/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 1549
    .local v1, service:Lcom/mediatek/common/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-virtual {p1}, Lcom/mediatek/common/audioprofile/AudioProfileListener;->getCallback()Lcom/mediatek/common/audioprofile/IAudioProfileListener;

    move-result-object v2

    invoke-interface {v1, v2, p2}, Lcom/mediatek/common/audioprofile/IAudioProfileService;->listenAudioProfie(Lcom/mediatek/common/audioprofile/IAudioProfileListener;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1553
    :goto_0
    return-void

    .line 1550
    :catch_0
    move-exception v0

    .line 1551
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "AudioProfileManager"

    const-string v3, "Dead object in listenAudioProfie"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public reset()V
    .locals 4

    .prologue
    .line 818
    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileManager;->getService()Lcom/mediatek/common/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 820
    .local v1, service:Lcom/mediatek/common/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1}, Lcom/mediatek/common/audioprofile/IAudioProfileService;->reset()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 824
    :goto_0
    return-void

    .line 821
    :catch_0
    move-exception v0

    .line 822
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "AudioProfileManager"

    const-string v3, "Dead object in reset"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setActiveProfile(Ljava/lang/String;)V
    .locals 5
    .parameter "profileKey"

    .prologue
    .line 763
    if-nez p1, :cond_0

    .line 764
    const-string v2, "AudioProfileManager"

    const-string v3, "setActiveProfile with null profile key!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    :goto_0
    return-void

    .line 768
    :cond_0
    const-string v2, "AudioProfileManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setActiveProfile: profileKey = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileManager;->getService()Lcom/mediatek/common/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 771
    .local v1, service:Lcom/mediatek/common/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1, p1}, Lcom/mediatek/common/audioprofile/IAudioProfileService;->setActiveProfile(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 772
    :catch_0
    move-exception v0

    .line 773
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "AudioProfileManager"

    const-string v3, "Dead object in setActiveProfile"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setDtmfToneEnabled(Ljava/lang/String;Z)V
    .locals 4
    .parameter "profileKey"
    .parameter "enabled"

    .prologue
    .line 1353
    if-nez p1, :cond_0

    .line 1354
    const-string v2, "AudioProfileManager"

    const-string v3, "setDtmfToneEnabled with null profile key!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1364
    :goto_0
    return-void

    .line 1358
    :cond_0
    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileManager;->getService()Lcom/mediatek/common/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 1360
    .local v1, service:Lcom/mediatek/common/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1, p1, p2}, Lcom/mediatek/common/audioprofile/IAudioProfileService;->setDtmfToneEnabled(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1361
    :catch_0
    move-exception v0

    .line 1362
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "AudioProfileManager"

    const-string v3, "Dead object in setDtmfToneEnabled"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setHapticFeedbackEnabled(Ljava/lang/String;Z)V
    .locals 4
    .parameter "profileKey"
    .parameter "enabled"

    .prologue
    .line 1416
    if-nez p1, :cond_0

    .line 1417
    const-string v2, "AudioProfileManager"

    const-string v3, "setHapticFeedbackEnabled with null profile key!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1427
    :goto_0
    return-void

    .line 1421
    :cond_0
    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileManager;->getService()Lcom/mediatek/common/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 1423
    .local v1, service:Lcom/mediatek/common/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1, p1, p2}, Lcom/mediatek/common/audioprofile/IAudioProfileService;->setHapticFeedbackEnabled(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1424
    :catch_0
    move-exception v0

    .line 1425
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "AudioProfileManager"

    const-string v3, "Dead object in setHapticFeedbackEnabled"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setLockScreenEnabled(Ljava/lang/String;Z)V
    .locals 4
    .parameter "profileKey"
    .parameter "enabled"

    .prologue
    .line 1395
    if-nez p1, :cond_0

    .line 1396
    const-string v2, "AudioProfileManager"

    const-string v3, "setLockScreenEnabled with null profile key!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1406
    :goto_0
    return-void

    .line 1400
    :cond_0
    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileManager;->getService()Lcom/mediatek/common/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 1402
    .local v1, service:Lcom/mediatek/common/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1, p1, p2}, Lcom/mediatek/common/audioprofile/IAudioProfileService;->setLockScreenEnabled(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1403
    :catch_0
    move-exception v0

    .line 1404
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "AudioProfileManager"

    const-string v3, "Dead object in setLockScreenEnabled"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setProfileName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "profileKey"
    .parameter "newName"

    .prologue
    .line 1437
    if-nez p1, :cond_0

    .line 1438
    const-string v2, "AudioProfileManager"

    const-string v3, "setProfileName with null profile key!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1448
    :goto_0
    return-void

    .line 1442
    :cond_0
    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileManager;->getService()Lcom/mediatek/common/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 1444
    .local v1, service:Lcom/mediatek/common/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1, p1, p2}, Lcom/mediatek/common/audioprofile/IAudioProfileService;->setProfileName(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1445
    :catch_0
    move-exception v0

    .line 1446
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "AudioProfileManager"

    const-string v3, "Dead object in setProfileName"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setRingtoneUri(Ljava/lang/String;IJLandroid/net/Uri;)V
    .locals 7
    .parameter "profileKey"
    .parameter "type"
    .parameter "simId"
    .parameter "ringtoneUri"

    .prologue
    .line 1275
    if-nez p1, :cond_0

    .line 1276
    const-string v1, "AudioProfileManager"

    const-string v2, "setStreamVolume with null profile key!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1291
    :goto_0
    return-void

    .line 1280
    :cond_0
    const/4 v1, 0x1

    if-eq p2, v1, :cond_1

    const/4 v1, 0x2

    if-eq p2, v1, :cond_1

    const/16 v1, 0x8

    if-eq p2, v1, :cond_1

    const/16 v1, 0x10

    if-eq p2, v1, :cond_1

    .line 1281
    const-string v1, "AudioProfileManager"

    const-string v2, "setStreamVolume with unsupport stream type!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1285
    :cond_1
    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileManager;->getService()Lcom/mediatek/common/audioprofile/IAudioProfileService;

    move-result-object v0

    .local v0, service:Lcom/mediatek/common/audioprofile/IAudioProfileService;
    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    move-object v5, p5

    .line 1287
    :try_start_0
    invoke-interface/range {v0 .. v5}, Lcom/mediatek/common/audioprofile/IAudioProfileService;->setRingtoneUri(Ljava/lang/String;IJLandroid/net/Uri;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1288
    :catch_0
    move-exception v6

    .line 1289
    .local v6, e:Landroid/os/RemoteException;
    const-string v1, "AudioProfileManager"

    const-string v2, "Dead object in setRingtoneUri"

    invoke-static {v1, v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setRingtoneUri(Ljava/lang/String;ILandroid/net/Uri;)V
    .locals 7
    .parameter "profileKey"
    .parameter "type"
    .parameter "ringtoneUri"

    .prologue
    .line 1260
    const/4 v6, -0x1

    .line 1261
    .local v6, simId:I
    int-to-long v3, v6

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/mediatek/audioprofile/AudioProfileManager;->setRingtoneUri(Ljava/lang/String;IJLandroid/net/Uri;)V

    .line 1262
    return-void
.end method

.method public setSoundEffectEnabled(Ljava/lang/String;Z)V
    .locals 4
    .parameter "profileKey"
    .parameter "enabled"

    .prologue
    .line 1374
    if-nez p1, :cond_0

    .line 1375
    const-string v2, "AudioProfileManager"

    const-string v3, "setSoundEffectEnabled with null profile key!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1385
    :goto_0
    return-void

    .line 1379
    :cond_0
    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileManager;->getService()Lcom/mediatek/common/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 1381
    .local v1, service:Lcom/mediatek/common/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1, p1, p2}, Lcom/mediatek/common/audioprofile/IAudioProfileService;->setSoundEffectEnabled(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1382
    :catch_0
    move-exception v0

    .line 1383
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "AudioProfileManager"

    const-string v3, "Dead object in setSoundEffectEnabled"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setStreamVolume(Ljava/lang/String;II)V
    .locals 4
    .parameter "profileKey"
    .parameter "streamType"
    .parameter "index"

    .prologue
    .line 1305
    if-nez p1, :cond_0

    .line 1306
    const-string v2, "AudioProfileManager"

    const-string v3, "setStreamVolume with null profile key!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1322
    :goto_0
    return-void

    .line 1310
    :cond_0
    const/4 v2, 0x2

    if-eq p2, v2, :cond_1

    const/4 v2, 0x5

    if-eq p2, v2, :cond_1

    const/4 v2, 0x4

    if-eq p2, v2, :cond_1

    .line 1312
    const-string v2, "AudioProfileManager"

    const-string v3, "setStreamVolume with unsupport stream type!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1316
    :cond_1
    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileManager;->getService()Lcom/mediatek/common/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 1318
    .local v1, service:Lcom/mediatek/common/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1, p1, p2, p3}, Lcom/mediatek/common/audioprofile/IAudioProfileService;->setStreamVolume(Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1319
    :catch_0
    move-exception v0

    .line 1320
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "AudioProfileManager"

    const-string v3, "Dead object in setStreamVolume"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setVibrationEnabled(Ljava/lang/String;Z)V
    .locals 4
    .parameter "profileKey"
    .parameter "enabled"

    .prologue
    .line 1332
    if-nez p1, :cond_0

    .line 1333
    const-string v2, "AudioProfileManager"

    const-string v3, "setVibrationEnabled with null profile key!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1343
    :goto_0
    return-void

    .line 1337
    :cond_0
    invoke-static {}, Lcom/mediatek/audioprofile/AudioProfileManager;->getService()Lcom/mediatek/common/audioprofile/IAudioProfileService;

    move-result-object v1

    .line 1339
    .local v1, service:Lcom/mediatek/common/audioprofile/IAudioProfileService;
    :try_start_0
    invoke-interface {v1, p1, p2}, Lcom/mediatek/common/audioprofile/IAudioProfileService;->setVibrationEnabled(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1340
    :catch_0
    move-exception v0

    .line 1341
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "AudioProfileManager"

    const-string v3, "Dead object in setVibrationEnabled"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
