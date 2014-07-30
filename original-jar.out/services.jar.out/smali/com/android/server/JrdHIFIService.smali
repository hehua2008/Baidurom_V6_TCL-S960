.class Lcom/android/server/JrdHIFIService;
.super Landroid/app/IJrdHIFI$Stub;
.source "JrdHIFIService.java"


# instance fields
.field private final HIFI_CLOSE:I

.field private final HIFI_CURRENT_STATUS:Ljava/lang/String;

.field private final HIFI_ERROR:I

.field private final HIFI_OPEN:I

.field private final HIFI_SWITCH_ACTION:Ljava/lang/String;

.field private final MUSIC_CHANGE_ACTION:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private mAudioMan:Landroid/media/AudioManager;

.field private final mCloseHiFiRunnable:Ljava/lang/Runnable;

.field private final mCloseHiFiStatusBarRunnable:Ljava/lang/Runnable;

.field private mContext:Landroid/content/Context;

.field private mHIFIStatus:I

.field private final mHandler:Landroid/os/Handler;

.field private mJrdHIFIReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 84
    invoke-direct {p0}, Landroid/app/IJrdHIFI$Stub;-><init>()V

    .line 37
    const-string v1, "JrdHIFIService"

    iput-object v1, p0, Lcom/android/server/JrdHIFIService;->TAG:Ljava/lang/String;

    .line 39
    iput-object v3, p0, Lcom/android/server/JrdHIFIService;->mContext:Landroid/content/Context;

    .line 41
    iput-object v3, p0, Lcom/android/server/JrdHIFIService;->mAudioMan:Landroid/media/AudioManager;

    .line 43
    const-string v1, "persist.sys.HIFI"

    iput-object v1, p0, Lcom/android/server/JrdHIFIService;->HIFI_SWITCH_ACTION:Ljava/lang/String;

    .line 45
    const-string v1, "hifi_current_status"

    iput-object v1, p0, Lcom/android/server/JrdHIFIService;->HIFI_CURRENT_STATUS:Ljava/lang/String;

    .line 47
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/server/JrdHIFIService;->HIFI_OPEN:I

    .line 49
    iput v2, p0, Lcom/android/server/JrdHIFIService;->HIFI_CLOSE:I

    .line 51
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/JrdHIFIService;->HIFI_ERROR:I

    .line 53
    iput v2, p0, Lcom/android/server/JrdHIFIService;->mHIFIStatus:I

    .line 55
    const-string v1, "android.intent.action.MUSIC_CHANGED"

    iput-object v1, p0, Lcom/android/server/JrdHIFIService;->MUSIC_CHANGE_ACTION:Ljava/lang/String;

    .line 57
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/server/JrdHIFIService;->mHandler:Landroid/os/Handler;

    .line 59
    new-instance v1, Lcom/android/server/JrdHIFIService$1;

    invoke-direct {v1, p0}, Lcom/android/server/JrdHIFIService$1;-><init>(Lcom/android/server/JrdHIFIService;)V

    iput-object v1, p0, Lcom/android/server/JrdHIFIService;->mCloseHiFiRunnable:Ljava/lang/Runnable;

    .line 72
    new-instance v1, Lcom/android/server/JrdHIFIService$2;

    invoke-direct {v1, p0}, Lcom/android/server/JrdHIFIService$2;-><init>(Lcom/android/server/JrdHIFIService;)V

    iput-object v1, p0, Lcom/android/server/JrdHIFIService;->mCloseHiFiStatusBarRunnable:Ljava/lang/Runnable;

    .line 176
    new-instance v1, Lcom/android/server/JrdHIFIService$3;

    invoke-direct {v1, p0}, Lcom/android/server/JrdHIFIService$3;-><init>(Lcom/android/server/JrdHIFIService;)V

    iput-object v1, p0, Lcom/android/server/JrdHIFIService;->mJrdHIFIReceiver:Landroid/content/BroadcastReceiver;

    .line 85
    const-string v1, "JrdHIFIService"

    const-string v2, "JrdHIFIService constructor execute"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iput-object p1, p0, Lcom/android/server/JrdHIFIService;->mContext:Landroid/content/Context;

    .line 87
    iget-object v1, p0, Lcom/android/server/JrdHIFIService;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/android/server/JrdHIFIService;->mAudioMan:Landroid/media/AudioManager;

    .line 88
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 89
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "persist.sys.HIFI"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 90
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 91
    iget-object v1, p0, Lcom/android/server/JrdHIFIService;->mJrdHIFIReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 92
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/JrdHIFIService;)Landroid/media/AudioManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/server/JrdHIFIService;->mAudioMan:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/JrdHIFIService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget v0, p0, Lcom/android/server/JrdHIFIService;->mHIFIStatus:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/JrdHIFIService;ZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/android/server/JrdHIFIService;->sendMusicStatusBroadcast(ZZ)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/JrdHIFIService;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/server/JrdHIFIService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private sendMusicStatusBroadcast(ZZ)V
    .locals 3
    .parameter "isPlay"
    .parameter "isSupportHIFI"

    .prologue
    .line 167
    const-string v1, "JrdHIFIService"

    const-string v2, "sendMusicStatusBroadcast to update hifi icon"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MUSIC_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 170
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.systemui"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 171
    const-string v1, "isPlay"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 172
    const-string v1, "isSupportHIFI"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 173
    iget-object v1, p0, Lcom/android/server/JrdHIFIService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 174
    return-void
.end method


# virtual methods
.method public getHIFIStatus()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 153
    const/4 v0, -0x1

    .line 154
    .local v0, HIFIStatus:I
    iget-object v2, p0, Lcom/android/server/JrdHIFIService;->mAudioMan:Landroid/media/AudioManager;

    const-string v3, "GetHiFiDACStatus"

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 155
    .local v1, hifi:Ljava/lang/String;
    const-string v2, "GetHiFiDACStatus=0"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 156
    const/4 v0, 0x0

    .line 160
    :cond_0
    :goto_0
    return v0

    .line 157
    :cond_1
    const-string v2, "GetHiFiDACStatus=1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 158
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setHIFIStatus(I)V
    .locals 9
    .parameter "status"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-wide/16 v7, 0x258

    const/4 v4, 0x1

    .line 98
    iget-object v3, p0, Lcom/android/server/JrdHIFIService;->mAudioMan:Landroid/media/AudioManager;

    const-string v5, "GetHiFiDACStatus"

    invoke-virtual {v3, v5}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 99
    .local v1, hifi:Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v3, "GetHiFiDACStatus=-1"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 100
    :cond_0
    const-string v3, "JrdHIFIService"

    const-string v4, "There is no HIFI."

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :cond_1
    :goto_0
    return-void

    .line 104
    :cond_2
    if-nez p1, :cond_3

    iget-object v3, p0, Lcom/android/server/JrdHIFIService;->mAudioMan:Landroid/media/AudioManager;

    invoke-virtual {v3}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 105
    const-string v3, "JrdHIFIService"

    const-string v4, " setHIFIStatus return"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 108
    :cond_3
    if-ne p1, v4, :cond_4

    .line 109
    iget-object v3, p0, Lcom/android/server/JrdHIFIService;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/JrdHIFIService;->mCloseHiFiRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 110
    iget-object v3, p0, Lcom/android/server/JrdHIFIService;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/JrdHIFIService;->mCloseHiFiStatusBarRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 113
    :cond_4
    iput p1, p0, Lcom/android/server/JrdHIFIService;->mHIFIStatus:I

    .line 114
    const-string v3, "JrdHIFIService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " setHIFIStatus mHIFIStatus="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/JrdHIFIService;->mHIFIStatus:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    const/4 v2, 0x0

    .line 118
    .local v2, persistSysHIFI:I
    :try_start_0
    iget-object v3, p0, Lcom/android/server/JrdHIFIService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "hifi_current_status"

    invoke-static {v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 123
    :goto_1
    const-string v3, "JrdHIFIService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setHIFIStatus persistSysHIFI="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iget v3, p0, Lcom/android/server/JrdHIFIService;->mHIFIStatus:I

    if-ne v3, v4, :cond_6

    if-ne v2, v4, :cond_6

    .line 125
    const-string v3, "GetHiFiDACStatus=0"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/JrdHIFIService;->mAudioMan:Landroid/media/AudioManager;

    invoke-virtual {v3}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 126
    const-string v3, "JrdHIFIService"

    const-string v5, "HIFI enable"

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iget-object v3, p0, Lcom/android/server/JrdHIFIService;->mAudioMan:Landroid/media/AudioManager;

    const-string v5, "SetHiFiDACStatus=1"

    invoke-virtual {v3, v5}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 128
    iget v3, p0, Lcom/android/server/JrdHIFIService;->mHIFIStatus:I

    if-ne v3, v4, :cond_5

    move v3, v4

    :goto_2
    invoke-direct {p0, v4, v3}, Lcom/android/server/JrdHIFIService;->sendMusicStatusBroadcast(ZZ)V

    goto/16 :goto_0

    .line 119
    :catch_0
    move-exception v0

    .line 121
    .local v0, e:Landroid/provider/Settings$SettingNotFoundException;
    const-string v3, "JrdHIFIService"

    const-string v5, "can not get hifi status"

    invoke-static {v3, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 128
    .end local v0           #e:Landroid/provider/Settings$SettingNotFoundException;
    :cond_5
    const/4 v3, 0x0

    goto :goto_2

    .line 132
    :cond_6
    const-string v3, "GetHiFiDACStatus=1"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 133
    iget-object v3, p0, Lcom/android/server/JrdHIFIService;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/server/JrdHIFIService;->mCloseHiFiRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 134
    iget-object v3, p0, Lcom/android/server/JrdHIFIService;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/server/JrdHIFIService;->mCloseHiFiRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v4, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 137
    :cond_7
    iget-object v3, p0, Lcom/android/server/JrdHIFIService;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/server/JrdHIFIService;->mCloseHiFiStatusBarRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 138
    iget-object v3, p0, Lcom/android/server/JrdHIFIService;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/server/JrdHIFIService;->mCloseHiFiStatusBarRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v4, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0
.end method
