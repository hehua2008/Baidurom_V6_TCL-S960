.class Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread$1;
.super Landroid/os/AsyncTask;
.source "AudioShareService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;->doDlnaPlay(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

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


# instance fields
.field final synthetic this$1:Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;


# direct methods
.method constructor <init>(Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;)V
    .locals 0
    .parameter

    .prologue
    .line 753
    iput-object p1, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread$1;->this$1:Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 12
    .parameter "arg0"

    .prologue
    const/4 v2, 0x0

    .line 758
    const/4 v11, 0x0

    .line 759
    .local v11, result:Z
    const/4 v9, 0x0

    .line 761
    .local v9, isAudioBeamingHasStarted:Z
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread$1;->this$1:Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    #setter for: Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;->mExecutor:Ljava/util/concurrent/ExecutorService;
    invoke-static {v0, v1}, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;->access$1602(Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/ExecutorService;

    .line 762
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread$1;->this$1:Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;

    new-instance v1, Ljava/util/concurrent/FutureTask;

    new-instance v3, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread$1$1;

    invoke-direct {v3, p0}, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread$1$1;-><init>(Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread$1;)V

    invoke-direct {v1, v3}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    #setter for: Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;->mDoDLNAPlayTask:Ljava/util/concurrent/FutureTask;
    invoke-static {v0, v1}, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;->access$1702(Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;Ljava/util/concurrent/FutureTask;)Ljava/util/concurrent/FutureTask;

    .line 872
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread$1;->this$1:Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;

    #getter for: Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;->mExecutor:Ljava/util/concurrent/ExecutorService;
    invoke-static {v0}, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;->access$1600(Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iget-object v1, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread$1;->this$1:Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;

    #getter for: Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;->mDoDLNAPlayTask:Ljava/util/concurrent/FutureTask;
    invoke-static {v1}, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;->access$1700(Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;)Ljava/util/concurrent/FutureTask;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 875
    :try_start_0
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread$1;->this$1:Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;

    #getter for: Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;->mDoDLNAPlayTask:Ljava/util/concurrent/FutureTask;
    invoke-static {v0}, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;->access$1700(Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;)Ljava/util/concurrent/FutureTask;

    move-result-object v0

    const-wide/16 v3, 0xa

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v3, v4, v1}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    move-result v11

    .line 895
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread$1;->this$1:Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;

    #getter for: Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;->mExecutor:Ljava/util/concurrent/ExecutorService;
    invoke-static {v0}, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;->access$1600(Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 897
    :goto_0
    const-string v0, "DeviceControlThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "result = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 899
    if-nez v11, :cond_0

    .line 900
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread$1;->this$1:Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;

    iget-object v0, v0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    #calls: Lcom/android/jrdsettings/audioshare/service/AudioShareService;->stopAudioBeaming()V
    invoke-static {v0}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->access$2700(Lcom/android/jrdsettings/audioshare/service/AudioShareService;)V

    .line 901
    new-instance v7, Lcom/android/jrdsettings/audioshare/utils/DeviceInfo;

    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread$1;->this$1:Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;

    #getter for: Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;->mUdn:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;->access$1800(Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread$1;->this$1:Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;

    #getter for: Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;->mName:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;->access$1900(Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x2

    invoke-direct {v7, v0, v1, v3}, Lcom/android/jrdsettings/audioshare/utils/DeviceInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 902
    .local v7, deviceInfo:Lcom/android/jrdsettings/audioshare/utils/DeviceInfo;
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread$1;->this$1:Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;

    iget-object v0, v0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    #getter for: Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mDeviceCacheHanlder:Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceCacheHanlder;
    invoke-static {v0}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->access$2000(Lcom/android/jrdsettings/audioshare/service/AudioShareService;)Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceCacheHanlder;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    .line 903
    .local v10, message:Landroid/os/Message;
    iput-object v7, v10, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 904
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread$1;->this$1:Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;

    iget-object v0, v0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    #getter for: Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mDeviceCacheHanlder:Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceCacheHanlder;
    invoke-static {v0}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->access$2000(Lcom/android/jrdsettings/audioshare/service/AudioShareService;)Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceCacheHanlder;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 906
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 907
    .local v5, msgInfo:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "deviceName"

    iget-object v1, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread$1;->this$1:Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;

    #getter for: Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;->mName:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;->access$1900(Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 908
    const-string v0, "deviceUDN"

    iget-object v1, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread$1;->this$1:Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;

    #getter for: Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;->mUdn:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;->access$1800(Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 909
    const-string v0, "playingState"

    const-string v1, "ERROR"

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 910
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread$1;->this$1:Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;

    iget-object v0, v0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    iget-object v1, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread$1;->this$1:Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;

    #getter for: Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;->mMsgArg:I
    invoke-static {v1}, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;->access$2100(Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;)I

    move-result v1

    iget-object v3, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread$1;->this$1:Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;

    iget-object v3, v3, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    iget-object v3, v3, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mMessenger:Landroid/os/Messenger;

    const/16 v4, 0x2f

    const/4 v6, 0x0

    #calls: Lcom/android/jrdsettings/audioshare/service/AudioShareService;->sendMessage(IZLandroid/os/Messenger;ILjava/util/Map;Landroid/os/Bundle;)V
    invoke-static/range {v0 .. v6}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->access$1200(Lcom/android/jrdsettings/audioshare/service/AudioShareService;IZLandroid/os/Messenger;ILjava/util/Map;Landroid/os/Bundle;)V

    .line 913
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread$1;->this$1:Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;

    iget-object v0, v0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    #setter for: Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mPlayingFlag:Z
    invoke-static {v0, v2}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->access$1502(Lcom/android/jrdsettings/audioshare/service/AudioShareService;Z)Z

    .line 916
    .end local v5           #msgInfo:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v7           #deviceInfo:Lcom/android/jrdsettings/audioshare/utils/DeviceInfo;
    .end local v10           #message:Landroid/os/Message;
    :cond_0
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread$1;->this$1:Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;

    iput-boolean v2, v0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;->mIsOngoing:Z

    .line 917
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 876
    :catch_0
    move-exception v8

    .line 877
    .local v8, e:Ljava/lang/InterruptedException;
    :try_start_1
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread$1;->this$1:Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;

    #getter for: Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;->mDoDLNAPlayTask:Ljava/util/concurrent/FutureTask;
    invoke-static {v0}, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;->access$1700(Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;)Ljava/util/concurrent/FutureTask;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    .line 878
    const/4 v11, 0x0

    .line 879
    const-string v0, "DeviceControlThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "InterruptedException = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 895
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread$1;->this$1:Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;

    #getter for: Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;->mExecutor:Ljava/util/concurrent/ExecutorService;
    invoke-static {v0}, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;->access$1600(Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    goto/16 :goto_0

    .line 880
    .end local v8           #e:Ljava/lang/InterruptedException;
    :catch_1
    move-exception v8

    .line 881
    .local v8, e:Ljava/util/concurrent/ExecutionException;
    :try_start_2
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread$1;->this$1:Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;

    #getter for: Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;->mDoDLNAPlayTask:Ljava/util/concurrent/FutureTask;
    invoke-static {v0}, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;->access$1700(Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;)Ljava/util/concurrent/FutureTask;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    .line 882
    const/4 v11, 0x0

    .line 883
    const-string v0, "DeviceControlThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ExecutionException = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 895
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread$1;->this$1:Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;

    #getter for: Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;->mExecutor:Ljava/util/concurrent/ExecutorService;
    invoke-static {v0}, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;->access$1600(Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    goto/16 :goto_0

    .line 884
    .end local v8           #e:Ljava/util/concurrent/ExecutionException;
    :catch_2
    move-exception v8

    .line 885
    .local v8, e:Ljava/util/concurrent/TimeoutException;
    :try_start_3
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread$1;->this$1:Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;

    #getter for: Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;->mDoDLNAPlayTask:Ljava/util/concurrent/FutureTask;
    invoke-static {v0}, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;->access$1700(Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;)Ljava/util/concurrent/FutureTask;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    .line 886
    const/4 v11, 0x0

    .line 887
    const-string v0, "DeviceControlThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TimeoutException = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 895
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread$1;->this$1:Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;

    #getter for: Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;->mExecutor:Ljava/util/concurrent/ExecutorService;
    invoke-static {v0}, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;->access$1600(Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    goto/16 :goto_0

    .line 888
    .end local v8           #e:Ljava/util/concurrent/TimeoutException;
    :catch_3
    move-exception v8

    .line 889
    .local v8, e:Ljava/util/concurrent/CancellationException;
    :try_start_4
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread$1;->this$1:Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;

    #getter for: Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;->mDoDLNAPlayTask:Ljava/util/concurrent/FutureTask;
    invoke-static {v0}, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;->access$1700(Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;)Ljava/util/concurrent/FutureTask;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    .line 890
    const/4 v11, 0x0

    .line 891
    const-string v0, "DeviceControlThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CancellationException = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 895
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread$1;->this$1:Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;

    #getter for: Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;->mExecutor:Ljava/util/concurrent/ExecutorService;
    invoke-static {v0}, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;->access$1600(Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    goto/16 :goto_0

    .line 892
    .end local v8           #e:Ljava/util/concurrent/CancellationException;
    :catch_4
    move-exception v8

    .line 893
    .local v8, e:Ljava/lang/Exception;
    :try_start_5
    const-string v0, "DeviceControlThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 895
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread$1;->this$1:Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;

    #getter for: Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;->mExecutor:Ljava/util/concurrent/ExecutorService;
    invoke-static {v0}, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;->access$1600(Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    goto/16 :goto_0

    .end local v8           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread$1;->this$1:Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;

    #getter for: Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;->mExecutor:Ljava/util/concurrent/ExecutorService;
    invoke-static {v1}, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;->access$1600(Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    throw v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 753
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 923
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 924
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread$1;->this$1:Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;

    iget-object v0, v0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    #calls: Lcom/android/jrdsettings/audioshare/service/AudioShareService;->stopAudioBeaming()V
    invoke-static {v0}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->access$2700(Lcom/android/jrdsettings/audioshare/service/AudioShareService;)V

    .line 925
    new-instance v7, Lcom/android/jrdsettings/audioshare/utils/DeviceInfo;

    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread$1;->this$1:Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;

    #getter for: Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;->mUdn:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;->access$1800(Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread$1;->this$1:Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;

    #getter for: Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;->mName:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;->access$1900(Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x2

    invoke-direct {v7, v0, v1, v3}, Lcom/android/jrdsettings/audioshare/utils/DeviceInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 926
    .local v7, deviceInfo:Lcom/android/jrdsettings/audioshare/utils/DeviceInfo;
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread$1;->this$1:Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;

    iget-object v0, v0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    #getter for: Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mDeviceCacheHanlder:Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceCacheHanlder;
    invoke-static {v0}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->access$2000(Lcom/android/jrdsettings/audioshare/service/AudioShareService;)Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceCacheHanlder;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    .line 927
    .local v8, message:Landroid/os/Message;
    iput-object v7, v8, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 928
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread$1;->this$1:Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;

    iget-object v0, v0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    #getter for: Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mDeviceCacheHanlder:Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceCacheHanlder;
    invoke-static {v0}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->access$2000(Lcom/android/jrdsettings/audioshare/service/AudioShareService;)Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceCacheHanlder;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 930
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 931
    .local v5, msgInfo:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "deviceName"

    iget-object v1, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread$1;->this$1:Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;

    #getter for: Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;->mName:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;->access$1900(Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 932
    const-string v0, "deviceUDN"

    iget-object v1, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread$1;->this$1:Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;

    #getter for: Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;->mUdn:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;->access$1800(Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 933
    const-string v0, "playingState"

    const-string v1, "ERROR"

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 934
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread$1;->this$1:Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;

    iget-object v0, v0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    iget-object v1, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread$1;->this$1:Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;

    #getter for: Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;->mMsgArg:I
    invoke-static {v1}, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;->access$2100(Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;)I

    move-result v1

    iget-object v3, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread$1;->this$1:Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;

    iget-object v3, v3, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    iget-object v3, v3, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mMessenger:Landroid/os/Messenger;

    const/16 v4, 0x2f

    const/4 v6, 0x0

    #calls: Lcom/android/jrdsettings/audioshare/service/AudioShareService;->sendMessage(IZLandroid/os/Messenger;ILjava/util/Map;Landroid/os/Bundle;)V
    invoke-static/range {v0 .. v6}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->access$1200(Lcom/android/jrdsettings/audioshare/service/AudioShareService;IZLandroid/os/Messenger;ILjava/util/Map;Landroid/os/Bundle;)V

    .line 937
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread$1;->this$1:Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;

    iget-object v0, v0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    #setter for: Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mPlayingFlag:Z
    invoke-static {v0, v2}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->access$1502(Lcom/android/jrdsettings/audioshare/service/AudioShareService;Z)Z

    .line 938
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread$1;->this$1:Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;

    iput-boolean v2, v0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;->mIsOngoing:Z

    .line 939
    return-void
.end method
