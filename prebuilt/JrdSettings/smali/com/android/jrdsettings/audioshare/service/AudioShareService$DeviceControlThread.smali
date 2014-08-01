.class Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;
.super Landroid/os/HandlerThread;
.source "AudioShareService.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/jrdsettings/audioshare/service/AudioShareService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DeviceControlThread"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DeviceControlThread"


# instance fields
.field private mDoDLNAPlayTask:Ljava/util/concurrent/FutureTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/FutureTask",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mExecutor:Ljava/util/concurrent/ExecutorService;

.field mIsOngoing:Z

.field private mMsgArg:I

.field private mName:Ljava/lang/String;

.field private mPlayTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mUdn:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;


# direct methods
.method public constructor <init>(Lcom/android/jrdsettings/audioshare/service/AudioShareService;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "name"

    .prologue
    .line 598
    iput-object p1, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    .line 599
    invoke-direct {p0, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 593
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;->mIsOngoing:Z

    .line 600
    return-void
.end method

.method static synthetic access$1600(Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;)Ljava/util/concurrent/ExecutorService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 586
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;->mExecutor:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/ExecutorService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 586
    iput-object p1, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;->mExecutor:Ljava/util/concurrent/ExecutorService;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;)Ljava/util/concurrent/FutureTask;
    .locals 1
    .parameter "x0"

    .prologue
    .line 586
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;->mDoDLNAPlayTask:Ljava/util/concurrent/FutureTask;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;Ljava/util/concurrent/FutureTask;)Ljava/util/concurrent/FutureTask;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 586
    iput-object p1, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;->mDoDLNAPlayTask:Ljava/util/concurrent/FutureTask;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 586
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;->mUdn:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 586
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;->mName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 586
    iget v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;->mMsgArg:I

    return v0
.end method

.method static synthetic access$2200(Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 586
    invoke-direct {p0, p1}, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;->stopOtherDevice(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 586
    invoke-direct {p0, p1}, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;->isDevicePlaying(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2900(Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 586
    invoke-direct {p0}, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;->matchCodecToDeviceProtocolInfo()V

    return-void
.end method

.method private declared-synchronized doAudiobeamingSetLocalMute(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 664
    monitor-enter p0

    :try_start_0
    const-string v2, "DeviceControlThread"

    const-string v3, "doAudiobeamingSetLocalMute"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 666
    .local v0, bundle:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 667
    const-string v2, "muteValue"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 669
    .local v1, mute:Ljava/lang/String;
    if-eqz v1, :cond_1

    const-string v2, "True"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 670
    iget-object v2, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    const/4 v3, 0x1

    #setter for: Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mCurrentLocalMute:Z
    invoke-static {v2, v3}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->access$302(Lcom/android/jrdsettings/audioshare/service/AudioShareService;Z)Z

    .line 671
    iget-object v2, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    const/4 v3, 0x1

    #calls: Lcom/android/jrdsettings/audioshare/service/AudioShareService;->muteLocalAudioBeaming(Z)Z
    invoke-static {v2, v3}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->access$100(Lcom/android/jrdsettings/audioshare/service/AudioShareService;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 677
    .end local v1           #mute:Ljava/lang/String;
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 673
    .restart local v1       #mute:Ljava/lang/String;
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    const/4 v3, 0x0

    #setter for: Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mCurrentLocalMute:Z
    invoke-static {v2, v3}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->access$302(Lcom/android/jrdsettings/audioshare/service/AudioShareService;Z)Z

    .line 674
    iget-object v2, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    const/4 v3, 0x0

    #calls: Lcom/android/jrdsettings/audioshare/service/AudioShareService;->muteLocalAudioBeaming(Z)Z
    invoke-static {v2, v3}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->access$100(Lcom/android/jrdsettings/audioshare/service/AudioShareService;Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 664
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v1           #mute:Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private declared-synchronized doAudiobeamingSetSpeakerMute(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 680
    monitor-enter p0

    :try_start_0
    const-string v2, "DeviceControlThread"

    const-string v3, "doAudiobeamingSetSpeakerMute"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 682
    .local v0, bundle:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 683
    const-string v2, "muteValue"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 685
    .local v1, mute:Ljava/lang/String;
    if-eqz v1, :cond_1

    const-string v2, "True"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 686
    iget-object v2, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    const/4 v3, 0x1

    #calls: Lcom/android/jrdsettings/audioshare/service/AudioShareService;->muteLocalAudioBeaming(Z)Z
    invoke-static {v2, v3}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->access$100(Lcom/android/jrdsettings/audioshare/service/AudioShareService;Z)Z

    .line 687
    iget-object v2, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    const/4 v3, 0x1

    #calls: Lcom/android/jrdsettings/audioshare/service/AudioShareService;->muteRemoteAudioBeaming(Z)Z
    invoke-static {v2, v3}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->access$1300(Lcom/android/jrdsettings/audioshare/service/AudioShareService;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 693
    .end local v1           #mute:Ljava/lang/String;
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 689
    .restart local v1       #mute:Ljava/lang/String;
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    const/4 v3, 0x0

    #calls: Lcom/android/jrdsettings/audioshare/service/AudioShareService;->muteRemoteAudioBeaming(Z)Z
    invoke-static {v2, v3}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->access$1300(Lcom/android/jrdsettings/audioshare/service/AudioShareService;Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 680
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v1           #mute:Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private declared-synchronized doDlnaPlay(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    .line 709
    monitor-enter p0

    :try_start_0
    const-string v3, "DeviceControlThread"

    const-string v4, "doDlnaPlay start"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    iget-object v3, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    const/4 v4, 0x1

    #setter for: Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mPlayingFlag:Z
    invoke-static {v3, v4}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->access$1502(Lcom/android/jrdsettings/audioshare/service/AudioShareService;Z)Z

    .line 711
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 712
    .local v0, imBundle:Landroid/os/Bundle;
    if-nez v0, :cond_1

    .line 944
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 715
    :cond_1
    :try_start_1
    const-string v3, "DeviceControlThread"

    const-string v4, "doDlnaPlay get Bundle Data"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    const-string v3, "deviceUDN"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 718
    .local v2, udn:Ljava/lang/String;
    const-string v3, "deviceName"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 720
    .local v1, name:Ljava/lang/String;
    const-string v3, "DeviceControlThread"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "udn = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    if-eqz v2, :cond_0

    .line 725
    const-string v3, "DeviceControlThread"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Is Ongoing 1 = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;->mIsOngoing:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    iget-boolean v3, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;->mIsOngoing:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;->mUdn:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 732
    :cond_2
    iget-boolean v3, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;->mIsOngoing:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;->mUdn:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;->mPlayTask:Landroid/os/AsyncTask;

    if-eqz v3, :cond_3

    .line 733
    iget-object v3, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;->mPlayTask:Landroid/os/AsyncTask;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/AsyncTask;->cancel(Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 735
    const-wide/16 v3, 0x3e8

    :try_start_2
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 741
    :cond_3
    :goto_1
    :try_start_3
    const-string v3, "DeviceControlThread"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Is Ongoing 2 = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;->mIsOngoing:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    iget-boolean v3, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;->mIsOngoing:Z

    if-nez v3, :cond_0

    .line 747
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;->mIsOngoing:Z

    .line 749
    iput-object v2, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;->mUdn:Ljava/lang/String;

    .line 750
    iput-object v1, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;->mName:Ljava/lang/String;

    .line 751
    iget v3, p1, Landroid/os/Message;->arg1:I

    iput v3, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;->mMsgArg:I

    .line 753
    new-instance v3, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread$1;

    invoke-direct {v3, p0}, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread$1;-><init>(Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;)V

    iput-object v3, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;->mPlayTask:Landroid/os/AsyncTask;

    .line 942
    iget-object v3, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;->mPlayTask:Landroid/os/AsyncTask;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Void;

    invoke-virtual {v3, v4}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 709
    .end local v0           #imBundle:Landroid/os/Bundle;
    .end local v1           #name:Ljava/lang/String;
    .end local v2           #udn:Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 736
    .restart local v0       #imBundle:Landroid/os/Bundle;
    .restart local v1       #name:Ljava/lang/String;
    .restart local v2       #udn:Ljava/lang/String;
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method private declared-synchronized doDlnaRequestSpeakerList(Landroid/os/Message;)V
    .locals 11
    .parameter "msg"

    .prologue
    .line 696
    monitor-enter p0

    :try_start_0
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 697
    .local v8, deviceInfos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/jrdsettings/audioshare/utils/DeviceInfo;>;"
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    #getter for: Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mDevicesCache:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->access$1400(Lcom/android/jrdsettings/audioshare/service/AudioShareService;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/HashMap;

    .line 698
    .local v10, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/jrdsettings/audioshare/utils/DeviceInfo;>;"
    invoke-virtual {v10}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/jrdsettings/audioshare/utils/DeviceInfo;

    .line 699
    .local v7, deviceInfo:Lcom/android/jrdsettings/audioshare/utils/DeviceInfo;
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 696
    .end local v7           #deviceInfo:Lcom/android/jrdsettings/audioshare/utils/DeviceInfo;
    .end local v8           #deviceInfos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/jrdsettings/audioshare/utils/DeviceInfo;>;"
    .end local v9           #i$:Ljava/util/Iterator;
    .end local v10           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/jrdsettings/audioshare/utils/DeviceInfo;>;"
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 702
    .restart local v8       #deviceInfos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/jrdsettings/audioshare/utils/DeviceInfo;>;"
    .restart local v9       #i$:Ljava/util/Iterator;
    .restart local v10       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/jrdsettings/audioshare/utils/DeviceInfo;>;"
    :cond_0
    :try_start_1
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 703
    .local v6, dataBundle:Landroid/os/Bundle;
    const-string v0, "deviceInfos"

    invoke-virtual {v6, v0, v8}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 704
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    iget-object v3, v3, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mMessenger:Landroid/os/Messenger;

    const/16 v4, 0x25

    const/4 v5, 0x0

    #calls: Lcom/android/jrdsettings/audioshare/service/AudioShareService;->sendMessage(IZLandroid/os/Messenger;ILjava/util/Map;Landroid/os/Bundle;)V
    invoke-static/range {v0 .. v6}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->access$1200(Lcom/android/jrdsettings/audioshare/service/AudioShareService;IZLandroid/os/Messenger;ILjava/util/Map;Landroid/os/Bundle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 706
    monitor-exit p0

    return-void
.end method

.method private declared-synchronized doDlnaStop(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    .line 947
    monitor-enter p0

    :try_start_0
    const-string v5, "DeviceControlThread"

    const-string v6, "doDlnaStop"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 948
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 949
    .local v1, imBundle:Landroid/os/Bundle;
    iget-object v5, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    const/4 v6, 0x0

    #setter for: Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mPlayingFlag:Z
    invoke-static {v5, v6}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->access$1502(Lcom/android/jrdsettings/audioshare/service/AudioShareService;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 951
    if-nez v1, :cond_1

    .line 973
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 955
    :cond_1
    :try_start_1
    const-string v5, "DeviceControlThread"

    const-string v6, "doDlnaPlay  2"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 956
    const-string v5, "deviceUDN"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 958
    .local v4, udn:Ljava/lang/String;
    const-string v5, "deviceName"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 960
    .local v3, name:Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 961
    iget-object v5, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    #calls: Lcom/android/jrdsettings/audioshare/service/AudioShareService;->stopAudioBeaming()V
    invoke-static {v5}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->access$2700(Lcom/android/jrdsettings/audioshare/service/AudioShareService;)V

    .line 962
    iget-object v5, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    const/4 v6, 0x0

    #setter for: Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mLastDeviceUDN:Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->access$2602(Lcom/android/jrdsettings/audioshare/service/AudioShareService;Ljava/lang/String;)Ljava/lang/String;

    .line 963
    iget-object v5, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    #getter for: Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mDeviceController:Lcom/android/jrdsettings/audioshare/service/DlnaDeviceController;
    invoke-static {v5}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->access$2400(Lcom/android/jrdsettings/audioshare/service/AudioShareService;)Lcom/android/jrdsettings/audioshare/service/DlnaDeviceController;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/jrdsettings/audioshare/service/DlnaDeviceController;->stop(Ljava/lang/String;)Z

    .line 964
    iget-object v5, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    const/4 v6, 0x0

    #calls: Lcom/android/jrdsettings/audioshare/service/AudioShareService;->updateNotification(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->access$3100(Lcom/android/jrdsettings/audioshare/service/AudioShareService;Ljava/lang/String;)V

    .line 967
    new-instance v0, Lcom/android/jrdsettings/audioshare/utils/DeviceInfo;

    const/4 v5, 0x0

    invoke-direct {v0, v4, v3, v5}, Lcom/android/jrdsettings/audioshare/utils/DeviceInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 968
    .local v0, deviceInfo:Lcom/android/jrdsettings/audioshare/utils/DeviceInfo;
    iget-object v5, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    #getter for: Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mDeviceCacheHanlder:Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceCacheHanlder;
    invoke-static {v5}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->access$2000(Lcom/android/jrdsettings/audioshare/service/AudioShareService;)Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceCacheHanlder;

    move-result-object v5

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 969
    .local v2, message:Landroid/os/Message;
    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 970
    iget-object v5, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    #getter for: Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mDeviceCacheHanlder:Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceCacheHanlder;
    invoke-static {v5}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->access$2000(Lcom/android/jrdsettings/audioshare/service/AudioShareService;)Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceCacheHanlder;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 947
    .end local v0           #deviceInfo:Lcom/android/jrdsettings/audioshare/utils/DeviceInfo;
    .end local v1           #imBundle:Landroid/os/Bundle;
    .end local v2           #message:Landroid/os/Message;
    .end local v3           #name:Ljava/lang/String;
    .end local v4           #udn:Ljava/lang/String;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method private isDevicePlaying(Ljava/lang/String;)Z
    .locals 1
    .parameter "udn"

    .prologue
    .line 976
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    #getter for: Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mDeviceController:Lcom/android/jrdsettings/audioshare/service/DlnaDeviceController;
    invoke-static {v0}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->access$2400(Lcom/android/jrdsettings/audioshare/service/AudioShareService;)Lcom/android/jrdsettings/audioshare/service/DlnaDeviceController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 977
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    #getter for: Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mDeviceController:Lcom/android/jrdsettings/audioshare/service/DlnaDeviceController;
    invoke-static {v0}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->access$2400(Lcom/android/jrdsettings/audioshare/service/AudioShareService;)Lcom/android/jrdsettings/audioshare/service/DlnaDeviceController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/jrdsettings/audioshare/service/DlnaDeviceController;->isDevicePlaying(Ljava/lang/String;)Z

    move-result v0

    .line 979
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private matchCodecToDeviceProtocolInfo()V
    .locals 2

    .prologue
    .line 1006
    const-string v0, "DeviceControlThread"

    const-string v1, "matchCodecToDeviceProtocolInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1007
    return-void
.end method

.method private stopOtherDevice(Ljava/lang/String;)V
    .locals 6
    .parameter "udn"

    .prologue
    .line 983
    const-string v3, "DeviceControlThread"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "stopOtherDevice  mLastDeviceUDN = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    #getter for: Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mLastDeviceUDN:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->access$2600(Lcom/android/jrdsettings/audioshare/service/AudioShareService;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 985
    iget-object v3, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    #getter for: Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mLastDeviceUDN:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->access$2600(Lcom/android/jrdsettings/audioshare/service/AudioShareService;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    #getter for: Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mLastDeviceUDN:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->access$2600(Lcom/android/jrdsettings/audioshare/service/AudioShareService;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_0

    iget-object v3, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    #getter for: Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mLastDeviceUDN:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->access$2600(Lcom/android/jrdsettings/audioshare/service/AudioShareService;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 988
    iget-object v3, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    #getter for: Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mDeviceController:Lcom/android/jrdsettings/audioshare/service/DlnaDeviceController;
    invoke-static {v3}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->access$2400(Lcom/android/jrdsettings/audioshare/service/AudioShareService;)Lcom/android/jrdsettings/audioshare/service/DlnaDeviceController;

    move-result-object v3

    iget-object v4, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    #getter for: Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mLastDeviceUDN:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->access$2600(Lcom/android/jrdsettings/audioshare/service/AudioShareService;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/jrdsettings/audioshare/service/DlnaDeviceController;->isDevicePlaying(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 989
    iget-object v3, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    #getter for: Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mDeviceController:Lcom/android/jrdsettings/audioshare/service/DlnaDeviceController;
    invoke-static {v3}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->access$2400(Lcom/android/jrdsettings/audioshare/service/AudioShareService;)Lcom/android/jrdsettings/audioshare/service/DlnaDeviceController;

    move-result-object v3

    iget-object v4, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    #getter for: Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mLastDeviceUDN:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->access$2600(Lcom/android/jrdsettings/audioshare/service/AudioShareService;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/jrdsettings/audioshare/service/DlnaDeviceController;->getCurrentPlayingURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 990
    .local v0, currentURL:Ljava/lang/String;
    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    #getter for: Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mAudioBeamingUrl:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->access$2500(Lcom/android/jrdsettings/audioshare/service/AudioShareService;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 991
    iget-object v3, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    #getter for: Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mAudioBeamingUrl:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->access$2500(Lcom/android/jrdsettings/audioshare/service/AudioShareService;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 992
    iget-object v3, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    #getter for: Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mDeviceController:Lcom/android/jrdsettings/audioshare/service/DlnaDeviceController;
    invoke-static {v3}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->access$2400(Lcom/android/jrdsettings/audioshare/service/AudioShareService;)Lcom/android/jrdsettings/audioshare/service/DlnaDeviceController;

    move-result-object v3

    iget-object v4, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    #getter for: Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mLastDeviceUDN:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->access$2600(Lcom/android/jrdsettings/audioshare/service/AudioShareService;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/jrdsettings/audioshare/service/DlnaDeviceController;->stop(Ljava/lang/String;)Z

    .line 994
    new-instance v1, Lcom/android/jrdsettings/audioshare/utils/DeviceInfo;

    iget-object v3, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    #getter for: Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mLastDeviceUDN:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->access$2600(Lcom/android/jrdsettings/audioshare/service/AudioShareService;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v1, v3, v4, v5}, Lcom/android/jrdsettings/audioshare/utils/DeviceInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 995
    .local v1, deviceInfo:Lcom/android/jrdsettings/audioshare/utils/DeviceInfo;
    iget-object v3, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    #getter for: Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mDeviceCacheHanlder:Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceCacheHanlder;
    invoke-static {v3}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->access$2000(Lcom/android/jrdsettings/audioshare/service/AudioShareService;)Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceCacheHanlder;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 996
    .local v2, message:Landroid/os/Message;
    iput-object v1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 997
    iget-object v3, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    #getter for: Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mDeviceCacheHanlder:Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceCacheHanlder;
    invoke-static {v3}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->access$2000(Lcom/android/jrdsettings/audioshare/service/AudioShareService;)Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceCacheHanlder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1003
    .end local v0           #currentURL:Ljava/lang/String;
    .end local v1           #deviceInfo:Lcom/android/jrdsettings/audioshare/utils/DeviceInfo;
    .end local v2           #message:Landroid/os/Message;
    :cond_0
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 7
    .parameter "msg"

    .prologue
    const/16 v4, 0x2f

    const/4 v2, 0x0

    .line 604
    const-string v0, "DeviceControlThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMessage  msg.what = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 660
    :goto_0
    return v2

    .line 609
    :sswitch_0
    const-string v0, "DeviceControlThread"

    const-string v1, "handleMessage  MSG_SERVICE_REGISTER"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    iget-object v0, v0, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mClients:Ljava/util/HashMap;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v3, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 611
    invoke-direct {p0, p1}, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;->doDlnaRequestSpeakerList(Landroid/os/Message;)V

    goto :goto_0

    .line 615
    :sswitch_1
    const-string v0, "DeviceControlThread"

    const-string v1, "handleMessage  MSG_SERVICE_UNREGISTER"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    iget-object v0, v0, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mClients:Ljava/util/HashMap;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 621
    :sswitch_2
    const-string v0, "DeviceControlThread"

    const-string v1, "handleMessage  MSG_DLNA_DEVICE_REQUEST_LIST"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    invoke-direct {p0, p1}, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;->doDlnaRequestSpeakerList(Landroid/os/Message;)V

    goto :goto_0

    .line 626
    :sswitch_3
    const-string v0, "DeviceControlThread"

    const-string v1, "handleMessage  MSG_DLNA_MEDIACONTROL_PLAY"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    #getter for: Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mDeviceControlHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->access$1100(Lcom/android/jrdsettings/audioshare/service/AudioShareService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    .line 629
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    #getter for: Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mDeviceControlHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->access$1100(Lcom/android/jrdsettings/audioshare/service/AudioShareService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 631
    invoke-direct {p0, p1}, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;->doDlnaPlay(Landroid/os/Message;)V

    goto :goto_0

    .line 635
    :sswitch_4
    const-string v0, "DeviceControlThread"

    const-string v1, "handleMessage  MSG_DLNA_MEDIACONTROL_STOP"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    invoke-direct {p0, p1}, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;->doDlnaStop(Landroid/os/Message;)V

    goto :goto_0

    .line 641
    :sswitch_5
    const-string v0, "DeviceControlThread"

    const-string v1, "handleMessage  MSG_AUDIOBEAMING_LOCAL_MUTE"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    invoke-direct {p0, p1}, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;->doAudiobeamingSetLocalMute(Landroid/os/Message;)V

    goto :goto_0

    .line 646
    :sswitch_6
    const-string v0, "DeviceControlThread"

    const-string v1, "handleMessage  MSG_AUDIOBEAMING_SPEAKER_MUTE"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    invoke-direct {p0, p1}, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;->doAudiobeamingSetSpeakerMute(Landroid/os/Message;)V

    goto :goto_0

    .line 651
    :sswitch_7
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 652
    .local v5, msgInfo:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "muteValue"

    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    #getter for: Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mCurrentLocalMute:Z
    invoke-static {v0}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->access$300(Lcom/android/jrdsettings/audioshare/service/AudioShareService;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "True"

    :goto_1
    invoke-virtual {v5, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 653
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v3, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    iget-object v3, v3, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mMessenger:Landroid/os/Messenger;

    const/16 v4, 0x27

    const/4 v6, 0x0

    #calls: Lcom/android/jrdsettings/audioshare/service/AudioShareService;->sendMessage(IZLandroid/os/Messenger;ILjava/util/Map;Landroid/os/Bundle;)V
    invoke-static/range {v0 .. v6}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->access$1200(Lcom/android/jrdsettings/audioshare/service/AudioShareService;IZLandroid/os/Messenger;ILjava/util/Map;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 652
    :cond_0
    const-string v0, "False"

    goto :goto_1

    .line 606
    :sswitch_data_0
    .sparse-switch
        0xb -> :sswitch_0
        0xc -> :sswitch_1
        0x25 -> :sswitch_2
        0x26 -> :sswitch_7
        0x2f -> :sswitch_3
        0x30 -> :sswitch_4
        0x1a6 -> :sswitch_5
        0x1a7 -> :sswitch_6
    .end sparse-switch
.end method
