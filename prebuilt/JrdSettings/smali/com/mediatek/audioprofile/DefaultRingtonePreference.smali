.class public Lcom/mediatek/audioprofile/DefaultRingtonePreference;
.super Landroid/preference/RingtonePreference;
.source "DefaultRingtonePreference.java"


# static fields
.field public static final NOTIFICATION_TYPE:Ljava/lang/String; = "NOTIFICATION"

.field public static final RING_TYPE:Ljava/lang/String; = "RING"

.field private static final SINGLE_SIMCARD:I = 0x1

.field private static final TAG:Ljava/lang/String; = "Settings/Rt_Pref"


# instance fields
.field private mExt:Lcom/mediatek/settings/ext/IAudioProfileExt;

.field private mKey:Ljava/lang/String;

.field private mNoNeedSIMSelector:Z

.field private final mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

.field private mSimId:J

.field private mStreamType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 104
    invoke-direct {p0, p1, p2}, Landroid/preference/RingtonePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 81
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/mediatek/audioprofile/DefaultRingtonePreference;->mSimId:J

    .line 82
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/audioprofile/DefaultRingtonePreference;->mNoNeedSIMSelector:Z

    .line 105
    const-string v0, "audioprofile"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/audioprofile/AudioProfileManager;

    iput-object v0, p0, Lcom/mediatek/audioprofile/DefaultRingtonePreference;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    .line 107
    invoke-static {p1}, Lcom/android/jrdsettings/Utils;->getAudioProfilePlgin(Landroid/content/Context;)Lcom/mediatek/settings/ext/IAudioProfileExt;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/audioprofile/DefaultRingtonePreference;->mExt:Lcom/mediatek/settings/ext/IAudioProfileExt;

    .line 108
    return-void
.end method


# virtual methods
.method public ismNoNeedSIMSelector()Z
    .locals 1

    .prologue
    .line 201
    iget-boolean v0, p0, Lcom/mediatek/audioprofile/DefaultRingtonePreference;->mNoNeedSIMSelector:Z

    return v0
.end method

.method protected onClick()V
    .locals 3

    .prologue
    .line 189
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/provider/Telephony$SIMInfo;->getInsertedSIMList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 190
    .local v0, simList:Ljava/util/List;,"Ljava/util/List<Landroid/provider/Telephony$SIMInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 191
    .local v1, simNum:I
    invoke-virtual {p0}, Lcom/mediatek/audioprofile/DefaultRingtonePreference;->ismNoNeedSIMSelector()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    if-gt v1, v2, :cond_1

    .line 192
    :cond_0
    invoke-super {p0}, Landroid/preference/RingtonePreference;->onClick()V

    .line 194
    :cond_1
    return-void
.end method

.method protected onPrepareRingtonePickerIntent(Landroid/content/Intent;)V
    .locals 3
    .parameter "ringtonePickerIntent"

    .prologue
    const/4 v2, 0x0

    .line 138
    invoke-super {p0, p1}, Landroid/preference/RingtonePreference;->onPrepareRingtonePickerIntent(Landroid/content/Intent;)V

    .line 143
    const-string v0, "android.intent.extra.ringtone.SHOW_DEFAULT"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 146
    iget-object v0, p0, Lcom/mediatek/audioprofile/DefaultRingtonePreference;->mStreamType:Ljava/lang/String;

    const-string v1, "RING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    const-string v0, "android.intent.extra.ringtone.SHOW_SILENT"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/mediatek/audioprofile/DefaultRingtonePreference;->mExt:Lcom/mediatek/settings/ext/IAudioProfileExt;

    invoke-interface {v0, p1}, Lcom/mediatek/settings/ext/IAudioProfileExt;->setRingtonePickerParams(Landroid/content/Intent;)V

    .line 152
    return-void
.end method

.method protected onRestoreRingtone()Landroid/net/Uri;
    .locals 6

    .prologue
    .line 174
    invoke-virtual {p0}, Landroid/preference/RingtonePreference;->getRingtoneType()I

    move-result v0

    .line 175
    .local v0, type:I
    const-string v2, "Settings/Rt_Pref"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onRestoreRingtone: type = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    iget-object v2, p0, Lcom/mediatek/audioprofile/DefaultRingtonePreference;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    iget-object v3, p0, Lcom/mediatek/audioprofile/DefaultRingtonePreference;->mKey:Ljava/lang/String;

    iget-wide v4, p0, Lcom/mediatek/audioprofile/DefaultRingtonePreference;->mSimId:J

    invoke-virtual {v2, v3, v0, v4, v5}, Lcom/mediatek/audioprofile/AudioProfileManager;->getRingtoneUri(Ljava/lang/String;IJ)Landroid/net/Uri;

    move-result-object v1

    .line 178
    .local v1, uri:Landroid/net/Uri;
    const-string v3, "Settings/Rt_Pref"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onRestoreRingtone: uri = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez v1, :cond_0

    const-string v2, "null"

    :goto_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    return-object v1

    .line 178
    :cond_0
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method protected onSaveRingtone(Landroid/net/Uri;)V
    .locals 6
    .parameter "ringtoneUri"

    .prologue
    .line 163
    iget-object v0, p0, Lcom/mediatek/audioprofile/DefaultRingtonePreference;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    iget-object v1, p0, Lcom/mediatek/audioprofile/DefaultRingtonePreference;->mKey:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/preference/RingtonePreference;->getRingtoneType()I

    move-result v2

    iget-wide v3, p0, Lcom/mediatek/audioprofile/DefaultRingtonePreference;->mSimId:J

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/mediatek/audioprofile/AudioProfileManager;->setRingtoneUri(Ljava/lang/String;IJLandroid/net/Uri;)V

    .line 164
    return-void
.end method

.method public setProfile(Ljava/lang/String;)V
    .locals 0
    .parameter "key"

    .prologue
    .line 117
    iput-object p1, p0, Lcom/mediatek/audioprofile/DefaultRingtonePreference;->mKey:Ljava/lang/String;

    .line 118
    return-void
.end method

.method public setSimId(J)V
    .locals 0
    .parameter "simId"

    .prologue
    .line 91
    iput-wide p1, p0, Lcom/mediatek/audioprofile/DefaultRingtonePreference;->mSimId:J

    .line 92
    return-void
.end method

.method public setStreamType(Ljava/lang/String;)V
    .locals 0
    .parameter "streamType"

    .prologue
    .line 127
    iput-object p1, p0, Lcom/mediatek/audioprofile/DefaultRingtonePreference;->mStreamType:Ljava/lang/String;

    .line 128
    return-void
.end method

.method public setmNoNeedSIMSelector(Z)V
    .locals 0
    .parameter "mNoNeedSIMSelector"

    .prologue
    .line 205
    iput-boolean p1, p0, Lcom/mediatek/audioprofile/DefaultRingtonePreference;->mNoNeedSIMSelector:Z

    .line 206
    return-void
.end method

.method simSelectorOnClick()V
    .locals 0

    .prologue
    .line 197
    invoke-super {p0}, Landroid/preference/RingtonePreference;->onClick()V

    .line 198
    return-void
.end method
