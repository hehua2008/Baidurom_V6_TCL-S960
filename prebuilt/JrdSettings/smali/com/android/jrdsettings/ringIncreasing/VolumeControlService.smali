.class public abstract Lcom/android/jrdsettings/ringIncreasing/VolumeControlService;
.super Landroid/app/Service;
.source "VolumeControlService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/jrdsettings/ringIncreasing/VolumeControlService$1;,
        Lcom/android/jrdsettings/ringIncreasing/VolumeControlService$VolumeReceiver;,
        Lcom/android/jrdsettings/ringIncreasing/VolumeControlService$MyHandler;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private actualCurrentVolume:I

.field private mAudioManager:Landroid/media/AudioManager;

.field private mHandler:Lcom/android/jrdsettings/ringIncreasing/VolumeControlService$MyHandler;

.field private mIncreaseVolumeDelay:I

.field private mMaxVolume:I

.field private mStreamType:I

.field protected mVolumeChangedByOthers:Z

.field private mVolumeReceiver:Lcom/android/jrdsettings/ringIncreasing/VolumeControlService$VolumeReceiver;

.field protected mVolumeSetByOthers:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const-string v0, "VolumeControlService"

    sput-object v0, Lcom/android/jrdsettings/ringIncreasing/VolumeControlService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 47
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 52
    iput v1, p0, Lcom/android/jrdsettings/ringIncreasing/VolumeControlService;->mStreamType:I

    .line 53
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/jrdsettings/ringIncreasing/VolumeControlService;->actualCurrentVolume:I

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/jrdsettings/ringIncreasing/VolumeControlService;->mVolumeChangedByOthers:Z

    .line 58
    iput v1, p0, Lcom/android/jrdsettings/ringIncreasing/VolumeControlService;->mVolumeSetByOthers:I

    .line 176
    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/android/jrdsettings/ringIncreasing/VolumeControlService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/jrdsettings/ringIncreasing/VolumeControlService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget v0, p0, Lcom/android/jrdsettings/ringIncreasing/VolumeControlService;->actualCurrentVolume:I

    return v0
.end method


# virtual methods
.method protected getCurrentVolume()I
    .locals 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/jrdsettings/ringIncreasing/VolumeControlService;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Lcom/android/jrdsettings/ringIncreasing/VolumeControlService;->mStreamType:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    return v0
.end method

.method protected getDelay()J
    .locals 2

    .prologue
    .line 66
    iget v0, p0, Lcom/android/jrdsettings/ringIncreasing/VolumeControlService;->mIncreaseVolumeDelay:I

    int-to-long v0, v0

    return-wide v0
.end method

.method protected getMaxVolume()I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lcom/android/jrdsettings/ringIncreasing/VolumeControlService;->mMaxVolume:I

    return v0
.end method

.method protected getStreamMaxVolume()I
    .locals 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/jrdsettings/ringIncreasing/VolumeControlService;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Lcom/android/jrdsettings/ringIncreasing/VolumeControlService;->mStreamType:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    return v0
.end method

.method protected getStreamType()I
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lcom/android/jrdsettings/ringIncreasing/VolumeControlService;->mStreamType:I

    return v0
.end method

.method protected increaseVolume()V
    .locals 3

    .prologue
    .line 82
    sget-object v0, Lcom/android/jrdsettings/ringIncreasing/VolumeControlService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "actualCurrentVolume: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/jrdsettings/ringIncreasing/VolumeControlService;->actualCurrentVolume:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " MaxVolume: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/jrdsettings/ringIncreasing/VolumeControlService;->getMaxVolume()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iget v0, p0, Lcom/android/jrdsettings/ringIncreasing/VolumeControlService;->actualCurrentVolume:I

    invoke-virtual {p0}, Lcom/android/jrdsettings/ringIncreasing/VolumeControlService;->getMaxVolume()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 89
    :goto_0
    return-void

    .line 86
    :cond_0
    iget v0, p0, Lcom/android/jrdsettings/ringIncreasing/VolumeControlService;->actualCurrentVolume:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/jrdsettings/ringIncreasing/VolumeControlService;->actualCurrentVolume:I

    .line 87
    iget v0, p0, Lcom/android/jrdsettings/ringIncreasing/VolumeControlService;->actualCurrentVolume:I

    invoke-virtual {p0, v0}, Lcom/android/jrdsettings/ringIncreasing/VolumeControlService;->setCurrentVolume(I)V

    .line 88
    sget-object v0, Lcom/android/jrdsettings/ringIncreasing/VolumeControlService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "increase volume to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/jrdsettings/ringIncreasing/VolumeControlService;->actualCurrentVolume:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "paramIntent"

    .prologue
    .line 92
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 5

    .prologue
    .line 96
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 97
    new-instance v1, Lcom/android/jrdsettings/ringIncreasing/VolumeControlService$MyHandler;

    invoke-direct {v1, p0}, Lcom/android/jrdsettings/ringIncreasing/VolumeControlService$MyHandler;-><init>(Lcom/android/jrdsettings/ringIncreasing/VolumeControlService;)V

    iput-object v1, p0, Lcom/android/jrdsettings/ringIncreasing/VolumeControlService;->mHandler:Lcom/android/jrdsettings/ringIncreasing/VolumeControlService$MyHandler;

    .line 98
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/android/jrdsettings/ringIncreasing/VolumeControlService;->mAudioManager:Landroid/media/AudioManager;

    .line 99
    invoke-virtual {p0}, Lcom/android/jrdsettings/ringIncreasing/VolumeControlService;->reloadSettings()V

    .line 100
    sget-object v1, Lcom/android/jrdsettings/ringIncreasing/VolumeControlService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreate: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/jrdsettings/ringIncreasing/VolumeControlService;->getCurrentVolume()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/jrdsettings/ringIncreasing/VolumeControlService;->getMaxVolume()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/jrdsettings/ringIncreasing/VolumeControlService;->getDelay()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    new-instance v1, Lcom/android/jrdsettings/ringIncreasing/VolumeControlService$VolumeReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/jrdsettings/ringIncreasing/VolumeControlService$VolumeReceiver;-><init>(Lcom/android/jrdsettings/ringIncreasing/VolumeControlService;Lcom/android/jrdsettings/ringIncreasing/VolumeControlService$1;)V

    iput-object v1, p0, Lcom/android/jrdsettings/ringIncreasing/VolumeControlService;->mVolumeReceiver:Lcom/android/jrdsettings/ringIncreasing/VolumeControlService$VolumeReceiver;

    .line 104
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.media.VOLUME_CHANGED_ACTION"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 105
    .local v0, volumefilter:Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/jrdsettings/ringIncreasing/VolumeControlService;->mVolumeReceiver:Lcom/android/jrdsettings/ringIncreasing/VolumeControlService$VolumeReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 107
    iget v1, p0, Lcom/android/jrdsettings/ringIncreasing/VolumeControlService;->mStreamType:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 108
    return-void

    .line 109
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Provide valid stream type"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 2
    .parameter "paramIntent"
    .parameter "paramInt"

    .prologue
    .line 113
    sget-object v0, Lcom/android/jrdsettings/ringIncreasing/VolumeControlService;->TAG:Ljava/lang/String;

    const-string v1, "onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/jrdsettings/ringIncreasing/VolumeControlService;->mVolumeChangedByOthers:Z

    .line 115
    invoke-virtual {p0}, Lcom/android/jrdsettings/ringIncreasing/VolumeControlService;->startVolumeIncrease()V

    .line 116
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 117
    return-void
.end method

.method protected abstract reloadSettings()V
.end method

.method protected setCurrentVolume(I)V
    .locals 4
    .parameter "paramInt"

    .prologue
    .line 122
    sget-object v1, Lcom/android/jrdsettings/ringIncreasing/VolumeControlService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "this.mStreamType"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/jrdsettings/ringIncreasing/VolumeControlService;->mStreamType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iget-object v1, p0, Lcom/android/jrdsettings/ringIncreasing/VolumeControlService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    .line 125
    .local v0, mRingerMode:I
    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    if-nez v0, :cond_1

    .line 126
    :cond_0
    sget-object v1, Lcom/android/jrdsettings/ringIncreasing/VolumeControlService;->TAG:Ljava/lang/String;

    const-string v2, "This is silent or vibrate modle"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :goto_0
    return-void

    .line 128
    :cond_1
    iget-object v1, p0, Lcom/android/jrdsettings/ringIncreasing/VolumeControlService;->mAudioManager:Landroid/media/AudioManager;

    iget v2, p0, Lcom/android/jrdsettings/ringIncreasing/VolumeControlService;->mStreamType:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_0
.end method

.method protected setDelay(I)V
    .locals 0
    .parameter "paramInt"

    .prologue
    .line 135
    if-nez p1, :cond_0

    .line 136
    const/4 p1, 0x3

    .line 137
    :cond_0
    iput p1, p0, Lcom/android/jrdsettings/ringIncreasing/VolumeControlService;->mIncreaseVolumeDelay:I

    .line 138
    return-void
.end method

.method protected setMaxVolume(I)V
    .locals 0
    .parameter "paramInt"

    .prologue
    .line 141
    iput p1, p0, Lcom/android/jrdsettings/ringIncreasing/VolumeControlService;->mMaxVolume:I

    .line 142
    return-void
.end method

.method protected setStreamType(I)V
    .locals 0
    .parameter "paramInt"

    .prologue
    .line 145
    iput p1, p0, Lcom/android/jrdsettings/ringIncreasing/VolumeControlService;->mStreamType:I

    .line 146
    return-void
.end method

.method protected abstract shouldStop()Z
.end method

.method protected startVolumeIncrease()V
    .locals 4

    .prologue
    .line 151
    sget-object v0, Lcom/android/jrdsettings/ringIncreasing/VolumeControlService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "actualCurrentVolume: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/jrdsettings/ringIncreasing/VolumeControlService;->actualCurrentVolume:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " MaxVolume: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/jrdsettings/ringIncreasing/VolumeControlService;->getMaxVolume()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " delay: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/jrdsettings/ringIncreasing/VolumeControlService;->getDelay()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    iget-object v0, p0, Lcom/android/jrdsettings/ringIncreasing/VolumeControlService;->mHandler:Lcom/android/jrdsettings/ringIncreasing/VolumeControlService$MyHandler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 154
    return-void
.end method

.method protected stop()V
    .locals 2

    .prologue
    .line 157
    sget-object v0, Lcom/android/jrdsettings/ringIncreasing/VolumeControlService;->TAG:Ljava/lang/String;

    const-string v1, "---stop---"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    iget-object v0, p0, Lcom/android/jrdsettings/ringIncreasing/VolumeControlService;->mVolumeReceiver:Lcom/android/jrdsettings/ringIncreasing/VolumeControlService$VolumeReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 159
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/jrdsettings/ringIncreasing/VolumeControlService;->actualCurrentVolume:I

    .line 160
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    .line 161
    return-void
.end method
