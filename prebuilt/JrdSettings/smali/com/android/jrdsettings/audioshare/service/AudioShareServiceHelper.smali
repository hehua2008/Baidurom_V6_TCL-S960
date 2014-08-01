.class public Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper;
.super Ljava/lang/Object;
.source "AudioShareServiceHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper$IncomingHandler;
    }
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field private mConnection:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private mIsBound:Z

.field private mLock:Ljava/lang/Object;

.field final mMessenger:Landroid/os/Messenger;

.field private mOnDlnaEventListener:Lcom/android/jrdsettings/audioshare/service/OnDlnaEventListener;

.field private mRecentLocalMute:Z

.field private mService:Landroid/os/Messenger;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/jrdsettings/audioshare/service/OnDlnaEventListener;)V
    .locals 2
    .parameter "context"
    .parameter "dlnaEventListener"

    .prologue
    const/4 v1, 0x0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const-string v0, "AudioShareServiceHelper"

    iput-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper;->TAG:Ljava/lang/String;

    .line 58
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper;->mLock:Ljava/lang/Object;

    .line 59
    iput-object v1, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper;->mService:Landroid/os/Messenger;

    .line 62
    iput-object v1, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper;->mContext:Landroid/content/Context;

    .line 64
    iput-object v1, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper;->mOnDlnaEventListener:Lcom/android/jrdsettings/audioshare/service/OnDlnaEventListener;

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper;->mRecentLocalMute:Z

    .line 150
    new-instance v0, Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper$1;

    invoke-direct {v0, p0}, Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper$1;-><init>(Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper;)V

    iput-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper;->mConnection:Landroid/content/ServiceConnection;

    .line 322
    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper$IncomingHandler;

    invoke-direct {v1, p0}, Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper$IncomingHandler;-><init>(Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper;->mMessenger:Landroid/os/Messenger;

    .line 70
    iput-object p1, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper;->mContext:Landroid/content/Context;

    .line 71
    iput-object p2, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper;->mOnDlnaEventListener:Lcom/android/jrdsettings/audioshare/service/OnDlnaEventListener;

    .line 72
    return-void
.end method

.method static synthetic access$000(Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper;)Landroid/os/Messenger;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper;->mService:Landroid/os/Messenger;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper;Landroid/os/Messenger;)Landroid/os/Messenger;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper;->mService:Landroid/os/Messenger;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper;->mIsBound:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper;)Lcom/android/jrdsettings/audioshare/service/OnDlnaEventListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper;->mOnDlnaEventListener:Lcom/android/jrdsettings/audioshare/service/OnDlnaEventListener;

    return-object v0
.end method

.method private doBindService()Z
    .locals 6

    .prologue
    .line 326
    const/4 v0, 0x0

    .line 328
    .local v0, ret:Z
    iget-object v2, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 330
    :try_start_0
    iget-object v1, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper;->mContext:Landroid/content/Context;

    const-class v5, Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v4, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper;->mConnection:Landroid/content/ServiceConnection;

    const/4 v5, 0x1

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    .line 333
    iget-object v1, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doBindService======================== ret = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    if-eqz v0, :cond_0

    .line 335
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper;->mIsBound:Z

    .line 336
    iget-object v1, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper;->TAG:Ljava/lang/String;

    const-string v3, "doBindService ============== MSG_SERVICE_REGISTER"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    iget-object v1, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper;->mMessenger:Landroid/os/Messenger;

    const/16 v3, 0xb

    const/4 v4, 0x0

    invoke-direct {p0, v1, v3, v4}, Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper;->sendMessage(Landroid/os/Messenger;ILjava/util/Map;)V

    .line 342
    :goto_0
    monitor-exit v2

    .line 344
    return v0

    .line 340
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper;->mIsBound:Z

    goto :goto_0

    .line 342
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private doUnbindService()V
    .locals 4

    .prologue
    .line 348
    iget-object v1, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 349
    :try_start_0
    iget-boolean v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper;->mIsBound:Z

    if-eqz v0, :cond_0

    .line 350
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper;->mMessenger:Landroid/os/Messenger;

    const/16 v2, 0xc

    const/4 v3, 0x0

    invoke-direct {p0, v0, v2, v3}, Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper;->sendMessage(Landroid/os/Messenger;ILjava/util/Map;)V

    .line 352
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 353
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper;->mIsBound:Z

    .line 355
    :cond_0
    monitor-exit v1

    .line 356
    return-void

    .line 355
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private declared-synchronized sendMessage(Landroid/os/Messenger;ILjava/util/Map;)V
    .locals 7
    .parameter "replyToMessenger"
    .parameter "msgType"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Messenger;",
            "I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 361
    .local p3, msgInfo:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    monitor-enter p0

    :try_start_0
    iget-boolean v5, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper;->mIsBound:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_4

    .line 363
    :try_start_1
    iget-object v5, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper;->mService:Landroid/os/Messenger;

    if-eqz v5, :cond_1

    .line 364
    const/4 v5, 0x0

    invoke-static {v5, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v4

    .line 365
    .local v4, msg:Landroid/os/Message;
    if-eqz p1, :cond_0

    .line 366
    iput-object p1, v4, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 368
    :cond_0
    if-eqz p3, :cond_3

    .line 369
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 370
    .local v0, bundle:Landroid/os/Bundle;
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 372
    .local v3, info:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 379
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #info:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4           #msg:Landroid/os/Message;
    :catch_0
    move-exception v1

    .line 381
    .local v1, e:Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 386
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_1
    :goto_1
    monitor-exit p0

    return-void

    .line 374
    .restart local v0       #bundle:Landroid/os/Bundle;
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v4       #msg:Landroid/os/Message;
    :cond_2
    :try_start_3
    invoke-virtual {v4, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 376
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_3
    iget-object v5, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v5

    iput v5, v4, Landroid/os/Message;->arg1:I

    .line 377
    iget-object v5, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper;->mService:Landroid/os/Messenger;

    invoke-virtual {v5, v4}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 361
    .end local v4           #msg:Landroid/os/Message;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 384
    :cond_4
    :try_start_4
    iget-object v5, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper;->TAG:Ljava/lang/String;

    const-string v6, "sendMessage() failed! Service was not bounded"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method


# virtual methods
.method public audiobeamingSetLocalMute(Z)V
    .locals 3
    .parameter "mute"

    .prologue
    .line 138
    iput-boolean p1, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper;->mRecentLocalMute:Z

    .line 139
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 140
    .local v0, info:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "muteValue"

    if-eqz p1, :cond_0

    const-string v1, "True"

    :goto_0
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    iget-object v1, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper;->mMessenger:Landroid/os/Messenger;

    const/16 v2, 0x1a6

    invoke-direct {p0, v1, v2, v0}, Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper;->sendMessage(Landroid/os/Messenger;ILjava/util/Map;)V

    .line 143
    return-void

    .line 140
    :cond_0
    const-string v1, "False"

    goto :goto_0
.end method

.method public audiobeamingSetSpeakerMute(Z)V
    .locals 3
    .parameter "mute"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper;->mMessenger:Landroid/os/Messenger;

    const/16 v1, 0x1a7

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper;->sendMessage(Landroid/os/Messenger;ILjava/util/Map;)V

    .line 148
    return-void
.end method

.method public connectToService()Z
    .locals 1

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper;->doBindService()Z

    move-result v0

    return v0
.end method

.method public destroyHelper()V
    .locals 1

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper;->doUnbindService()V

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper;->mContext:Landroid/content/Context;

    .line 77
    return-void
.end method

.method public disconnectFromService()V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper;->doUnbindService()V

    .line 86
    return-void
.end method

.method public dlnaPlay(Ljava/lang/String;)V
    .locals 3
    .parameter "udn"

    .prologue
    .line 121
    iget-object v1, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper;->TAG:Ljava/lang/String;

    const-string v2, "dlnaPlay"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 123
    .local v0, info:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "deviceUDN"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    iget-object v1, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper;->mMessenger:Landroid/os/Messenger;

    const/16 v2, 0x2f

    invoke-direct {p0, v1, v2, v0}, Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper;->sendMessage(Landroid/os/Messenger;ILjava/util/Map;)V

    .line 126
    return-void
.end method

.method public dlnaStop(Ljava/lang/String;)V
    .locals 3
    .parameter "udn"

    .prologue
    .line 129
    iget-object v1, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper;->TAG:Ljava/lang/String;

    const-string v2, "dlnaStop"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 131
    .local v0, info:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "deviceUDN"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    iget-object v1, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper;->mMessenger:Landroid/os/Messenger;

    const/16 v2, 0x30

    invoke-direct {p0, v1, v2, v0}, Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper;->sendMessage(Landroid/os/Messenger;ILjava/util/Map;)V

    .line 134
    return-void
.end method

.method public requestLocalMute()V
    .locals 3

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper;->TAG:Ljava/lang/String;

    const-string v1, "requestLocalMute========================"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper;->mMessenger:Landroid/os/Messenger;

    const/16 v1, 0x26

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper;->sendMessage(Landroid/os/Messenger;ILjava/util/Map;)V

    .line 117
    return-void
.end method

.method public requestSpeakerList()V
    .locals 3

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper;->TAG:Ljava/lang/String;

    const-string v1, "requestSpeakerList========================"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper;->mMessenger:Landroid/os/Messenger;

    const/16 v1, 0x25

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper;->sendMessage(Landroid/os/Messenger;ILjava/util/Map;)V

    .line 110
    return-void
.end method

.method public startService()V
    .locals 4

    .prologue
    .line 89
    iget-object v1, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper;->TAG:Ljava/lang/String;

    const-string v2, "startService ==================== "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iget-object v2, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 91
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper;->mContext:Landroid/content/Context;

    const-class v3, Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    invoke-direct {v0, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 92
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 93
    monitor-exit v2

    .line 94
    return-void

    .line 93
    .end local v0           #intent:Landroid/content/Intent;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public stopService()V
    .locals 4

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper;->doUnbindService()V

    .line 99
    iget-object v2, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 100
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper;->mContext:Landroid/content/Context;

    const-class v3, Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    invoke-direct {v0, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 101
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 102
    monitor-exit v2

    .line 103
    return-void

    .line 102
    .end local v0           #intent:Landroid/content/Intent;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
