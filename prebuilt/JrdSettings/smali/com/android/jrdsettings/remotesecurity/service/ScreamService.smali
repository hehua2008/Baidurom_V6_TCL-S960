.class public Lcom/android/jrdsettings/remotesecurity/service/ScreamService;
.super Landroid/app/Service;
.source "ScreamService.java"


# static fields
.field protected static final TAG:Ljava/lang/String; = "ScreamService"


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mHandler:Landroid/os/Handler;

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mPlaying:Z

.field private mSavedVolume:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 45
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/jrdsettings/remotesecurity/service/ScreamService;->mSavedVolume:I

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/jrdsettings/remotesecurity/service/ScreamService;->mPlaying:Z

    .line 48
    new-instance v0, Lcom/android/jrdsettings/remotesecurity/service/ScreamService$1;

    invoke-direct {v0, p0}, Lcom/android/jrdsettings/remotesecurity/service/ScreamService$1;-><init>(Lcom/android/jrdsettings/remotesecurity/service/ScreamService;)V

    iput-object v0, p0, Lcom/android/jrdsettings/remotesecurity/service/ScreamService;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/jrdsettings/remotesecurity/service/ScreamService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/jrdsettings/remotesecurity/service/ScreamService;->sendKillBroadcast()V

    return-void
.end method

.method static synthetic access$102(Lcom/android/jrdsettings/remotesecurity/service/ScreamService;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput-object p1, p0, Lcom/android/jrdsettings/remotesecurity/service/ScreamService;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object p1
.end method

.method private acquireCpuWakeLock(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 248
    const-string v1, "ScreamService"

    const-string v2, "acquireCpuWakeLock"

    invoke-static {v1, v2}, Lcom/android/jrdsettings/remotesecurity/util/LogX;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    iget-object v1, p0, Lcom/android/jrdsettings/remotesecurity/service/ScreamService;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_0

    .line 259
    :goto_0
    return-void

    .line 253
    :cond_0
    const-string v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 254
    .local v0, pm:Landroid/os/PowerManager;
    const v1, 0x30000001

    const-string v2, "ScreamService"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/jrdsettings/remotesecurity/service/ScreamService;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 258
    iget-object v1, p0, Lcom/android/jrdsettings/remotesecurity/service/ScreamService;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    goto :goto_0
.end method

.method private disableKiller()V
    .locals 2

    .prologue
    .line 244
    iget-object v0, p0, Lcom/android/jrdsettings/remotesecurity/service/ScreamService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 245
    return-void
.end method

.method private enableKiller()V
    .locals 4

    .prologue
    .line 233
    iget-object v0, p0, Lcom/android/jrdsettings/remotesecurity/service/ScreamService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/jrdsettings/remotesecurity/service/ScreamService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/32 v2, 0x927c0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 235
    const-string v0, "ScreamService"

    const-string v1, "enableKiller ======== "

    invoke-static {v0, v1}, Lcom/android/jrdsettings/remotesecurity/util/LogX;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    return-void
.end method

.method private play()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 112
    const-string v4, "ScreamService"

    const-string v5, "play ======== "

    invoke-static {v4, v5}, Lcom/android/jrdsettings/remotesecurity/util/LogX;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    invoke-virtual {p0}, Lcom/android/jrdsettings/remotesecurity/service/ScreamService;->stop()V

    .line 117
    invoke-static {v7}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v0

    .line 121
    .local v0, alert:Landroid/net/Uri;
    new-instance v4, Landroid/media/MediaPlayer;

    invoke-direct {v4}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v4, p0, Lcom/android/jrdsettings/remotesecurity/service/ScreamService;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 122
    iget-object v4, p0, Lcom/android/jrdsettings/remotesecurity/service/ScreamService;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v5, Lcom/android/jrdsettings/remotesecurity/service/ScreamService$2;

    invoke-direct {v5, p0}, Lcom/android/jrdsettings/remotesecurity/service/ScreamService$2;-><init>(Lcom/android/jrdsettings/remotesecurity/service/ScreamService;)V

    invoke-virtual {v4, v5}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 132
    :try_start_0
    iget-object v4, p0, Lcom/android/jrdsettings/remotesecurity/service/ScreamService;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v4, p0, v0}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 133
    const-string v4, "audio"

    invoke-virtual {p0, v4}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/AudioManager;

    iput-object v4, p0, Lcom/android/jrdsettings/remotesecurity/service/ScreamService;->mAudioManager:Landroid/media/AudioManager;

    .line 134
    iget-object v4, p0, Lcom/android/jrdsettings/remotesecurity/service/ScreamService;->mAudioManager:Landroid/media/AudioManager;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v3

    .line 135
    .local v3, maxRingVolume:I
    iget-object v4, p0, Lcom/android/jrdsettings/remotesecurity/service/ScreamService;->mAudioManager:Landroid/media/AudioManager;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    .line 136
    .local v1, currentRingVolume:I
    const-string v4, "ScreamService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "RING--max : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " current : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/jrdsettings/remotesecurity/util/LogX;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    iput v1, p0, Lcom/android/jrdsettings/remotesecurity/service/ScreamService;->mSavedVolume:I

    .line 139
    const-string v4, "ScreamService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "savedVolume ======== "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/jrdsettings/remotesecurity/service/ScreamService;->mSavedVolume:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/jrdsettings/remotesecurity/util/LogX;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    iget-object v4, p0, Lcom/android/jrdsettings/remotesecurity/service/ScreamService;->mAudioManager:Landroid/media/AudioManager;

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v3, v6}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 144
    iget-object v4, p0, Lcom/android/jrdsettings/remotesecurity/service/ScreamService;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-direct {p0, v4}, Lcom/android/jrdsettings/remotesecurity/service/ScreamService;->startRing(Landroid/media/MediaPlayer;)V

    .line 145
    const-string v4, "ScreamService"

    const-string v5, "mAudioManager startRing"

    invoke-static {v4, v5}, Lcom/android/jrdsettings/remotesecurity/util/LogX;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    .end local v1           #currentRingVolume:I
    .end local v3           #maxRingVolume:I
    :goto_0
    iput-boolean v7, p0, Lcom/android/jrdsettings/remotesecurity/service/ScreamService;->mPlaying:Z

    .line 165
    const-string v4, "ScreamService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mPlaying.play = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/jrdsettings/remotesecurity/service/ScreamService;->mPlaying:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/jrdsettings/remotesecurity/util/LogX;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    return-void

    .line 147
    :catch_0
    move-exception v2

    .line 148
    .local v2, ex:Ljava/lang/Exception;
    const-string v4, "ScreamService"

    const-string v5, "Using the fallback ringtone"

    invoke-static {v4, v5}, Lcom/android/jrdsettings/remotesecurity/util/LogX;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private releaseCpuLock()V
    .locals 2

    .prologue
    .line 262
    const-string v0, "ScreamService"

    const-string v1, "releaseCpuLock"

    invoke-static {v0, v1}, Lcom/android/jrdsettings/remotesecurity/util/LogX;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    iget-object v0, p0, Lcom/android/jrdsettings/remotesecurity/service/ScreamService;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/android/jrdsettings/remotesecurity/service/ScreamService;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 265
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/jrdsettings/remotesecurity/service/ScreamService;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 267
    :cond_0
    return-void
.end method

.method private sendKillBroadcast()V
    .locals 2

    .prologue
    .line 102
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.jrdsettings.remotesecurity.SCREAM_KILL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 103
    .local v0, ringKilled:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 104
    return-void
.end method

.method private setDataSourceFromResource(Landroid/content/res/Resources;Landroid/media/MediaPlayer;I)V
    .locals 7
    .parameter "resources"
    .parameter "player"
    .parameter "res"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 196
    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v6

    .line 197
    .local v6, afd:Landroid/content/res/AssetFileDescriptor;
    if-eqz v6, :cond_0

    .line 198
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 201
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 203
    :cond_0
    return-void
.end method

.method private startRing(Landroid/media/MediaPlayer;)V
    .locals 1
    .parameter "player"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 179
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 180
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 181
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->prepare()V

    .line 182
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    .line 183
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 93
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 64
    invoke-direct {p0, p0}, Lcom/android/jrdsettings/remotesecurity/service/ScreamService;->acquireCpuWakeLock(Landroid/content/Context;)V

    .line 65
    invoke-direct {p0}, Lcom/android/jrdsettings/remotesecurity/service/ScreamService;->play()V

    .line 66
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/jrdsettings/remotesecurity/ScreamActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 67
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 68
    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->startActivity(Landroid/content/Intent;)V

    .line 69
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/android/jrdsettings/remotesecurity/service/ScreamService;->stop()V

    .line 87
    invoke-direct {p0}, Lcom/android/jrdsettings/remotesecurity/service/ScreamService;->releaseCpuLock()V

    .line 88
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 74
    if-nez p1, :cond_0

    .line 75
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    .line 76
    const/4 v0, 0x2

    .line 81
    :goto_0
    return v0

    .line 78
    :cond_0
    invoke-direct {p0}, Lcom/android/jrdsettings/remotesecurity/service/ScreamService;->disableKiller()V

    .line 79
    invoke-direct {p0}, Lcom/android/jrdsettings/remotesecurity/service/ScreamService;->enableKiller()V

    .line 81
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public stop()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 211
    iget-boolean v0, p0, Lcom/android/jrdsettings/remotesecurity/service/ScreamService;->mPlaying:Z

    if-eqz v0, :cond_1

    .line 212
    iput-boolean v4, p0, Lcom/android/jrdsettings/remotesecurity/service/ScreamService;->mPlaying:Z

    .line 213
    const-string v0, "ScreamService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mPlaying.stop = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/jrdsettings/remotesecurity/service/ScreamService;->mPlaying:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/jrdsettings/remotesecurity/util/LogX;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    iget-object v0, p0, Lcom/android/jrdsettings/remotesecurity/service/ScreamService;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 215
    iget-object v0, p0, Lcom/android/jrdsettings/remotesecurity/service/ScreamService;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 216
    iget-object v0, p0, Lcom/android/jrdsettings/remotesecurity/service/ScreamService;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 217
    iget v0, p0, Lcom/android/jrdsettings/remotesecurity/service/ScreamService;->mSavedVolume:I

    if-eq v0, v3, :cond_0

    .line 218
    iget-object v0, p0, Lcom/android/jrdsettings/remotesecurity/service/ScreamService;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x4

    iget v2, p0, Lcom/android/jrdsettings/remotesecurity/service/ScreamService;->mSavedVolume:I

    invoke-virtual {v0, v1, v2, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 219
    iput v3, p0, Lcom/android/jrdsettings/remotesecurity/service/ScreamService;->mSavedVolume:I

    .line 221
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/jrdsettings/remotesecurity/service/ScreamService;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 225
    :cond_1
    return-void
.end method
