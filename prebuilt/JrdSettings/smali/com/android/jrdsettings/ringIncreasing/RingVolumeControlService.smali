.class public Lcom/android/jrdsettings/ringIncreasing/RingVolumeControlService;
.super Lcom/android/jrdsettings/ringIncreasing/VolumeControlService;
.source "RingVolumeControlService.java"


# static fields
.field private static TAG:Ljava/lang/String;

.field public static mRestoreVolume:Z

.field public static mStartupVolume:I


# instance fields
.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/jrdsettings/ringIncreasing/RingVolumeControlService;->mRestoreVolume:Z

    .line 45
    const-string v0, "RingVolumeControlService"

    sput-object v0, Lcom/android/jrdsettings/ringIncreasing/RingVolumeControlService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/jrdsettings/ringIncreasing/VolumeControlService;-><init>()V

    return-void
.end method

.method private isRinging()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 49
    iget-object v1, p0, Lcom/android/jrdsettings/ringIncreasing/RingVolumeControlService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 51
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected increaseVolume()V
    .locals 3

    .prologue
    .line 55
    sget-object v0, Lcom/android/jrdsettings/ringIncreasing/RingVolumeControlService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "increaseVolume-----getCurrentVolume="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/jrdsettings/ringIncreasing/VolumeControlService;->getCurrentVolume()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    invoke-super {p0}, Lcom/android/jrdsettings/ringIncreasing/VolumeControlService;->increaseVolume()V

    .line 57
    return-void
.end method

.method protected reloadSettings()V
    .locals 4

    .prologue
    .line 60
    sget-object v2, Lcom/android/jrdsettings/ringIncreasing/RingVolumeControlService;->TAG:Ljava/lang/String;

    const-string v3, "reloadSettings"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/android/jrdsettings/ringIncreasing/VolumeControlService;->setStreamType(I)V

    .line 62
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    iput-object v2, p0, Lcom/android/jrdsettings/ringIncreasing/RingVolumeControlService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 63
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 65
    .local v1, localSharedPreferences:Landroid/content/SharedPreferences;
    invoke-virtual {p0}, Lcom/android/jrdsettings/ringIncreasing/VolumeControlService;->getStreamMaxVolume()I

    move-result v0

    .line 66
    .local v0, i:I
    const-string v2, "prefs_ringer_max_volume"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/jrdsettings/ringIncreasing/VolumeControlService;->setMaxVolume(I)V

    .line 67
    const-string v2, "prefs_ringer_delay_interval"

    const-string v3, "0"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/jrdsettings/ringIncreasing/VolumeControlService;->setDelay(I)V

    .line 69
    return-void
.end method

.method protected shouldStop()Z
    .locals 1

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/jrdsettings/ringIncreasing/RingVolumeControlService;->isRinging()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    const/4 v0, 0x0

    .line 74
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected startVolumeIncrease()V
    .locals 3

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/android/jrdsettings/ringIncreasing/VolumeControlService;->getCurrentVolume()I

    move-result v0

    sput v0, Lcom/android/jrdsettings/ringIncreasing/RingVolumeControlService;->mStartupVolume:I

    .line 79
    sget-object v0, Lcom/android/jrdsettings/ringIncreasing/RingVolumeControlService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current volume: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/jrdsettings/ringIncreasing/RingVolumeControlService;->mStartupVolume:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    sget v0, Lcom/android/jrdsettings/ringIncreasing/RingVolumeControlService;->mStartupVolume:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 81
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    .line 82
    :cond_0
    invoke-super {p0}, Lcom/android/jrdsettings/ringIncreasing/VolumeControlService;->startVolumeIncrease()V

    .line 83
    return-void
.end method

.method protected stop()V
    .locals 3

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/android/jrdsettings/ringIncreasing/VolumeControlService;->mVolumeChangedByOthers:Z

    if-nez v0, :cond_0

    .line 88
    sget-object v0, Lcom/android/jrdsettings/ringIncreasing/RingVolumeControlService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stop: restore volume to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/jrdsettings/ringIncreasing/RingVolumeControlService;->mStartupVolume:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/jrdsettings/ringIncreasing/RingVolumeControlService;->mRestoreVolume:Z

    .line 90
    sget v0, Lcom/android/jrdsettings/ringIncreasing/RingVolumeControlService;->mStartupVolume:I

    invoke-virtual {p0, v0}, Lcom/android/jrdsettings/ringIncreasing/VolumeControlService;->setCurrentVolume(I)V

    .line 96
    :goto_0
    invoke-super {p0}, Lcom/android/jrdsettings/ringIncreasing/VolumeControlService;->stop()V

    .line 97
    return-void

    .line 92
    :cond_0
    sget-object v0, Lcom/android/jrdsettings/ringIncreasing/RingVolumeControlService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stop mStartupVolume="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/jrdsettings/ringIncreasing/RingVolumeControlService;->mStartupVolume:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mVolumeSetByOthers="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/jrdsettings/ringIncreasing/VolumeControlService;->mVolumeSetByOthers:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget v0, p0, Lcom/android/jrdsettings/ringIncreasing/VolumeControlService;->mVolumeSetByOthers:I

    invoke-virtual {p0, v0}, Lcom/android/jrdsettings/ringIncreasing/VolumeControlService;->setCurrentVolume(I)V

    goto :goto_0
.end method
