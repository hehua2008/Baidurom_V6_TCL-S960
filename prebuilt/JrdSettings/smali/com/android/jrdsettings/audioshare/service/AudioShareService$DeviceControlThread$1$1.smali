.class Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread$1$1;
.super Ljava/lang/Object;
.source "AudioShareService.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread$1;


# direct methods
.method constructor <init>(Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread$1;)V
    .locals 0
    .parameter

    .prologue
    .line 762
    iput-object p1, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread$1$1;->this$2:Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 767
    const/4 v11, 0x1

    .line 769
    .local v11, result:Z
    const-string v0, "DeviceControlThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doDlnaPlay Data UDN = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread$1$1;->this$2:Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread$1;

    iget-object v2, v2, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread$1;->this$1:Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;

    #getter for: Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;->mUdn:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;->access$1800(Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 773
    .local v5, msgInfo:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v8, Lcom/android/jrdsettings/audioshare/utils/DeviceInfo;

    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread$1$1;->this$2:Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread$1;

    iget-object v0, v0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread$1;->this$1:Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;

    #getter for: Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;->mUdn:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;->access$1800(Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread$1$1;->this$2:Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread$1;

    iget-object v1, v1, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread$1;->this$1:Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;

    #getter for: Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;->mName:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;->access$1900(Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v8, v0, v1}, Lcom/android/jrdsettings/audioshare/utils/DeviceInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 774
    .local v8, deviceInfo:Lcom/android/jrdsettings/audioshare/utils/DeviceInfo;
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread$1$1;->this$2:Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread$1;

    iget-object v0, v0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread$1;->this$1:Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;

    iget-object v0, v0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    #getter for: Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mDeviceCacheHanlder:Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceCacheHanlder;
    invoke-static {v0}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->access$2000(Lcom/android/jrdsettings/audioshare/service/AudioShareService;)Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceCacheHanlder;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    .line 775
    .local v9, message:Landroid/os/Message;
    iput-object v8, v9, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 776
    const/4 v0, 0x1

    invoke-virtual {v8, v0}, Lcom/android/jrdsettings/audioshare/utils/DeviceInfo;->setState(I)V

    .line 777
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread$1$1;->this$2:Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread$1;

    iget-object v0, v0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread$1;->this$1:Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;

    iget-object v0, v0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    #getter for: Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mDeviceCacheHanlder:Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceCacheHanlder;
    invoke-static {v0}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->access$2000(Lcom/android/jrdsettings/audioshare/service/AudioShareService;)Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceCacheHanlder;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 779
    const-string v0, "deviceName"

    iget-object v1, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread$1$1;->this$2:Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread$1;

    iget-object v1, v1, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread$1;->this$1:Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;

    #getter for: Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;->mName:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;->access$1900(Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 780
    const-string v0, "deviceUDN"

    iget-object v1, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread$1$1;->this$2:Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread$1;

    iget-object v1, v1, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread$1;->this$1:Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;

    #getter for: Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;->mUdn:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;->access$1800(Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 781
    const-string v0, "playingState"

    const-string v1, "TRANSFERING"

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 782
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread$1$1;->this$2:Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread$1;

    iget-object v0, v0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread$1;->this$1:Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;

    iget-object v0, v0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    iget-object v1, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread$1$1;->this$2:Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread$1;

    iget-object v1, v1, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread$1;->this$1:Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;

    #getter for: Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;->mMsgArg:I
    invoke-static {v1}, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;->access$2100(Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;)I

    move-result v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread$1$1;->this$2:Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread$1;

    iget-object v3, v3, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread$1;->this$1:Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;

    iget-object v3, v3, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    iget-object v3, v3, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mMessenger:Landroid/os/Messenger;

    const/16 v4, 0x2f

    const/4 v6, 0x0

    #calls: Lcom/android/jrdsettings/audioshare/service/AudioShareService;->sendMessage(IZLandroid/os/Messenger;ILjava/util/Map;Landroid/os/Bundle;)V
    invoke-static/range {v0 .. v6}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->access$1200(Lcom/android/jrdsettings/audioshare/service/AudioShareService;IZLandroid/os/Messenger;ILjava/util/Map;Landroid/os/Bundle;)V

    .line 785
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread$1$1;->this$2:Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread$1;

    iget-object v0, v0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread$1;->this$1:Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;

    iget-object v1, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread$1$1;->this$2:Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread$1;

    iget-object v1, v1, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread$1;->this$1:Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;

    #getter for: Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;->mUdn:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;->access$1800(Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;)Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;->stopOtherDevice(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;->access$2200(Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;Ljava/lang/String;)V

    .line 787
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread$1$1;->this$2:Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread$1;

    iget-object v0, v0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread$1;->this$1:Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;

    iget-object v1, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread$1$1;->this$2:Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread$1;

    iget-object v1, v1, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread$1;->this$1:Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;

    #getter for: Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;->mUdn:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;->access$1800(Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;)Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;->isDevicePlaying(Ljava/lang/String;)Z
    invoke-static {v0, v1}, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;->access$2300(Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 788
    const-string v0, "DeviceControlThread"

    const-string v1, "doDlnaPlay Device is Playing"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread$1$1;->this$2:Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread$1;

    iget-object v0, v0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread$1;->this$1:Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;

    iget-object v0, v0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    #getter for: Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mDeviceController:Lcom/android/jrdsettings/audioshare/service/DlnaDeviceController;
    invoke-static {v0}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->access$2400(Lcom/android/jrdsettings/audioshare/service/AudioShareService;)Lcom/android/jrdsettings/audioshare/service/DlnaDeviceController;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 791
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread$1$1;->this$2:Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread$1;

    iget-object v0, v0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread$1;->this$1:Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;

    iget-object v0, v0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    #getter for: Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mDeviceController:Lcom/android/jrdsettings/audioshare/service/DlnaDeviceController;
    invoke-static {v0}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->access$2400(Lcom/android/jrdsettings/audioshare/service/AudioShareService;)Lcom/android/jrdsettings/audioshare/service/DlnaDeviceController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread$1$1;->this$2:Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread$1;

    iget-object v1, v1, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread$1;->this$1:Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;

    #getter for: Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;->mUdn:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;->access$1800(Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/jrdsettings/audioshare/service/DlnaDeviceController;->getCurrentPlayingURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 792
    .local v7, currentURL:Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread$1$1;->this$2:Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread$1;

    iget-object v0, v0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread$1;->this$1:Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;

    iget-object v0, v0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    #getter for: Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mAudioBeamingUrl:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->access$2500(Lcom/android/jrdsettings/audioshare/service/AudioShareService;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 793
    const-string v0, "DeviceControlThread"

    const-string v1, "MSG_DEVICE_STATE_PLAYING"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    const-string v0, "playingState"

    const-string v1, "PLAYING"

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 795
    const/4 v0, 0x3

    invoke-virtual {v8, v0}, Lcom/android/jrdsettings/audioshare/utils/DeviceInfo;->setState(I)V

    .line 796
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread$1$1;->this$2:Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread$1;

    iget-object v0, v0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread$1;->this$1:Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;

    iget-object v0, v0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    iget-object v1, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread$1$1;->this$2:Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread$1;

    iget-object v1, v1, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread$1;->this$1:Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;

    #getter for: Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;->mUdn:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;->access$1800(Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mLastDeviceUDN:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->access$2602(Lcom/android/jrdsettings/audioshare/service/AudioShareService;Ljava/lang/String;)Ljava/lang/String;

    .line 797
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread$1$1;->this$2:Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread$1;

    iget-object v0, v0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread$1;->this$1:Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;

    iget-object v0, v0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    const/4 v1, 0x1

    #setter for: Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mPlayingFlag:Z
    invoke-static {v0, v1}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->access$1502(Lcom/android/jrdsettings/audioshare/service/AudioShareService;Z)Z

    .line 798
    const/4 v11, 0x1

    .line 810
    .end local v7           #currentURL:Ljava/lang/String;
    :goto_0
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread$1$1;->this$2:Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread$1;

    iget-object v0, v0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread$1;->this$1:Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;

    iget-object v0, v0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    #getter for: Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mDeviceCacheHanlder:Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceCacheHanlder;
    invoke-static {v0}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->access$2000(Lcom/android/jrdsettings/audioshare/service/AudioShareService;)Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceCacheHanlder;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    .line 811
    iput-object v8, v9, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 812
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread$1$1;->this$2:Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread$1;

    iget-object v0, v0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread$1;->this$1:Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;

    iget-object v0, v0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    #getter for: Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mDeviceCacheHanlder:Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceCacheHanlder;
    invoke-static {v0}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->access$2000(Lcom/android/jrdsettings/audioshare/service/AudioShareService;)Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceCacheHanlder;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 814
    const-string v0, "deviceName"

    iget-object v1, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread$1$1;->this$2:Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread$1;

    iget-object v1, v1, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread$1;->this$1:Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;

    #getter for: Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;->mName:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;->access$1900(Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 815
    const-string v0, "deviceUDN"

    iget-object v1, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread$1$1;->this$2:Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread$1;

    iget-object v1, v1, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread$1;->this$1:Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;

    #getter for: Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;->mUdn:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;->access$1800(Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 816
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread$1$1;->this$2:Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread$1;

    iget-object v0, v0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread$1;->this$1:Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;

    iget-object v0, v0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    iget-object v1, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread$1$1;->this$2:Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread$1;

    iget-object v1, v1, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread$1;->this$1:Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;

    #getter for: Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;->mMsgArg:I
    invoke-static {v1}, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;->access$2100(Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;)I

    move-result v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread$1$1;->this$2:Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread$1;

    iget-object v3, v3, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread$1;->this$1:Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;

    iget-object v3, v3, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    iget-object v3, v3, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mMessenger:Landroid/os/Messenger;

    const/16 v4, 0x2f

    const/4 v6, 0x0

    #calls: Lcom/android/jrdsettings/audioshare/service/AudioShareService;->sendMessage(IZLandroid/os/Messenger;ILjava/util/Map;Landroid/os/Bundle;)V
    invoke-static/range {v0 .. v6}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->access$1200(Lcom/android/jrdsettings/audioshare/service/AudioShareService;IZLandroid/os/Messenger;ILjava/util/Map;Landroid/os/Bundle;)V

    .line 819
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 868
    :goto_1
    return-object v0

    .line 800
    .restart local v7       #currentURL:Ljava/lang/String;
    :cond_0
    const-string v0, "DeviceControlThread"

    const-string v1, "MSG_DEVICE_STATE_BUSYING"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    const-string v0, "playingState"

    const-string v1, "ERROR"

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 802
    const/4 v0, 0x2

    invoke-virtual {v8, v0}, Lcom/android/jrdsettings/audioshare/utils/DeviceInfo;->setState(I)V

    .line 803
    const/4 v11, 0x0

    goto :goto_0

    .line 806
    .end local v7           #currentURL:Ljava/lang/String;
    :cond_1
    const-string v0, "playingState"

    const-string v1, "ERROR"

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 807
    const/4 v0, 0x2

    invoke-virtual {v8, v0}, Lcom/android/jrdsettings/audioshare/utils/DeviceInfo;->setState(I)V

    .line 808
    const/4 v11, 0x0

    goto :goto_0

    .line 822
    :cond_2
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread$1$1;->this$2:Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread$1;

    iget-object v0, v0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread$1;->this$1:Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;

    iget-object v0, v0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    #calls: Lcom/android/jrdsettings/audioshare/service/AudioShareService;->stopAudioBeaming()V
    invoke-static {v0}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->access$2700(Lcom/android/jrdsettings/audioshare/service/AudioShareService;)V

    .line 824
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread$1$1;->this$2:Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread$1;

    iget-object v0, v0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread$1;->this$1:Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;

    iget-object v0, v0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    #calls: Lcom/android/jrdsettings/audioshare/service/AudioShareService;->startAudioBeaming()V
    invoke-static {v0}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->access$2800(Lcom/android/jrdsettings/audioshare/service/AudioShareService;)V

    .line 826
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread$1$1;->this$2:Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread$1;

    iget-object v0, v0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread$1;->this$1:Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;

    #calls: Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;->matchCodecToDeviceProtocolInfo()V
    invoke-static {v0}, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;->access$2900(Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;)V

    .line 827
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread$1$1;->this$2:Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread$1;

    iget-object v0, v0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread$1;->this$1:Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;

    iget-object v0, v0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    iget-object v1, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread$1$1;->this$2:Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread$1;

    iget-object v1, v1, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread$1;->this$1:Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;

    iget-object v1, v1, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    #calls: Lcom/android/jrdsettings/audioshare/service/AudioShareService;->getAudioBeamingURL()Ljava/lang/String;
    invoke-static {v1}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->access$3000(Lcom/android/jrdsettings/audioshare/service/AudioShareService;)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mAudioBeamingUrl:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->access$2502(Lcom/android/jrdsettings/audioshare/service/AudioShareService;Ljava/lang/String;)Ljava/lang/String;

    .line 828
    const-string v0, "DeviceControlThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doDlnaPlay  Data url = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread$1$1;->this$2:Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread$1;

    iget-object v2, v2, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread$1;->this$1:Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;

    iget-object v2, v2, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    #getter for: Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mAudioBeamingUrl:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->access$2500(Lcom/android/jrdsettings/audioshare/service/AudioShareService;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread$1$1;->this$2:Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread$1;

    iget-object v0, v0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread$1;->this$1:Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;

    iget-object v0, v0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    #getter for: Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mDeviceController:Lcom/android/jrdsettings/audioshare/service/DlnaDeviceController;
    invoke-static {v0}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->access$2400(Lcom/android/jrdsettings/audioshare/service/AudioShareService;)Lcom/android/jrdsettings/audioshare/service/DlnaDeviceController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread$1$1;->this$2:Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread$1;

    iget-object v1, v1, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread$1;->this$1:Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;

    #getter for: Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;->mUdn:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;->access$1800(Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread$1$1;->this$2:Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread$1;

    iget-object v2, v2, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread$1;->this$1:Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;

    iget-object v2, v2, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    #getter for: Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mAudioBeamingUrl:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->access$2500(Lcom/android/jrdsettings/audioshare/service/AudioShareService;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "object.item.audioItem"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/jrdsettings/audioshare/service/DlnaDeviceController;->play(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v12

    .line 831
    .local v12, ret:Z
    if-eqz v12, :cond_4

    .line 832
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread$1$1;->this$2:Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread$1;

    iget-object v0, v0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread$1;->this$1:Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;

    iget-object v0, v0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    iget-object v1, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread$1$1;->this$2:Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread$1;

    iget-object v1, v1, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread$1;->this$1:Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;

    #getter for: Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;->mUdn:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;->access$1800(Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;)Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/jrdsettings/audioshare/service/AudioShareService;->updateNotification(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->access$3100(Lcom/android/jrdsettings/audioshare/service/AudioShareService;Ljava/lang/String;)V

    .line 834
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread$1$1;->this$2:Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread$1;

    iget-object v0, v0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread$1;->this$1:Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;

    #getter for: Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;->mUdn:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;->access$1800(Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread$1$1;->this$2:Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread$1;

    iget-object v1, v1, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread$1;->this$1:Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;

    iget-object v1, v1, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    #getter for: Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mLastDeviceUDN:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->access$2600(Lcom/android/jrdsettings/audioshare/service/AudioShareService;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 836
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread$1$1;->this$2:Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread$1;

    iget-object v0, v0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread$1;->this$1:Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;

    iget-object v0, v0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    #getter for: Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mLastDeviceUDN:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->access$2600(Lcom/android/jrdsettings/audioshare/service/AudioShareService;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 837
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread$1$1;->this$2:Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread$1;

    iget-object v0, v0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread$1;->this$1:Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;

    iget-object v0, v0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    #getter for: Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mToastHandler:Lcom/android/jrdsettings/audioshare/service/AudioShareService$ToastHandler;
    invoke-static {v0}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->access$3200(Lcom/android/jrdsettings/audioshare/service/AudioShareService;)Lcom/android/jrdsettings/audioshare/service/AudioShareService$ToastHandler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v13

    .line 838
    .local v13, toastMessage:Landroid/os/Message;
    const v0, 0x7f0901e0

    iput v0, v13, Landroid/os/Message;->arg1:I

    .line 839
    const/4 v0, 0x0

    iput v0, v13, Landroid/os/Message;->arg2:I

    .line 840
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread$1$1;->this$2:Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread$1;

    iget-object v0, v0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread$1;->this$1:Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;

    iget-object v0, v0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    #getter for: Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mToastHandler:Lcom/android/jrdsettings/audioshare/service/AudioShareService$ToastHandler;
    invoke-static {v0}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->access$3200(Lcom/android/jrdsettings/audioshare/service/AudioShareService;)Lcom/android/jrdsettings/audioshare/service/AudioShareService$ToastHandler;

    move-result-object v0

    invoke-virtual {v0, v13}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 845
    .end local v13           #toastMessage:Landroid/os/Message;
    :cond_3
    const-string v0, "DeviceControlThread"

    const-string v1, "doDlnaPlay  PLaying"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread$1$1;->this$2:Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread$1;

    iget-object v0, v0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread$1;->this$1:Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;

    iget-object v0, v0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    iget-object v1, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread$1$1;->this$2:Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread$1;

    iget-object v1, v1, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread$1;->this$1:Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;

    #getter for: Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;->mUdn:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;->access$1800(Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mLastDeviceUDN:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->access$2602(Lcom/android/jrdsettings/audioshare/service/AudioShareService;Ljava/lang/String;)Ljava/lang/String;

    .line 847
    const/4 v11, 0x1

    .line 868
    :goto_2
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_1

    .line 849
    :cond_4
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread$1$1;->this$2:Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread$1;

    iget-object v0, v0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread$1;->this$1:Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;

    iget-object v0, v0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    #calls: Lcom/android/jrdsettings/audioshare/service/AudioShareService;->stopAudioBeaming()V
    invoke-static {v0}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->access$2700(Lcom/android/jrdsettings/audioshare/service/AudioShareService;)V

    .line 850
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread$1$1;->this$2:Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread$1;

    iget-object v0, v0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread$1;->this$1:Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;

    iget-object v0, v0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    const/4 v1, 0x0

    #setter for: Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mLastDeviceUDN:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->access$2602(Lcom/android/jrdsettings/audioshare/service/AudioShareService;Ljava/lang/String;)Ljava/lang/String;

    .line 851
    const-string v0, "DeviceControlThread"

    const-string v1, "doDlnaPlay  PLay failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread$1$1;->this$2:Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread$1;

    iget-object v0, v0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread$1;->this$1:Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;

    iget-object v0, v0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    #getter for: Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mDeviceCacheHanlder:Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceCacheHanlder;
    invoke-static {v0}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->access$2000(Lcom/android/jrdsettings/audioshare/service/AudioShareService;)Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceCacheHanlder;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    .line 854
    .local v10, msg:Landroid/os/Message;
    const/4 v0, 0x2

    invoke-virtual {v8, v0}, Lcom/android/jrdsettings/audioshare/utils/DeviceInfo;->setState(I)V

    .line 855
    iput-object v8, v10, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 856
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread$1$1;->this$2:Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread$1;

    iget-object v0, v0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread$1;->this$1:Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;

    iget-object v0, v0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    #getter for: Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mDeviceCacheHanlder:Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceCacheHanlder;
    invoke-static {v0}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->access$2000(Lcom/android/jrdsettings/audioshare/service/AudioShareService;)Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceCacheHanlder;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 858
    new-instance v5, Ljava/util/HashMap;

    .end local v5           #msgInfo:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 859
    .restart local v5       #msgInfo:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "deviceName"

    iget-object v1, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread$1$1;->this$2:Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread$1;

    iget-object v1, v1, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread$1;->this$1:Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;

    #getter for: Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;->mName:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;->access$1900(Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 860
    const-string v0, "deviceUDN"

    iget-object v1, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread$1$1;->this$2:Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread$1;

    iget-object v1, v1, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread$1;->this$1:Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;

    #getter for: Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;->mUdn:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;->access$1800(Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 861
    const-string v0, "playingState"

    const-string v1, "ERROR"

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 862
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread$1$1;->this$2:Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread$1;

    iget-object v0, v0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread$1;->this$1:Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;

    iget-object v0, v0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    iget-object v1, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread$1$1;->this$2:Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread$1;

    iget-object v1, v1, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread$1;->this$1:Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;

    #getter for: Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;->mMsgArg:I
    invoke-static {v1}, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;->access$2100(Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;)I

    move-result v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread$1$1;->this$2:Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread$1;

    iget-object v3, v3, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread$1;->this$1:Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;

    iget-object v3, v3, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    iget-object v3, v3, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mMessenger:Landroid/os/Messenger;

    const/16 v4, 0x2f

    const/4 v6, 0x0

    #calls: Lcom/android/jrdsettings/audioshare/service/AudioShareService;->sendMessage(IZLandroid/os/Messenger;ILjava/util/Map;Landroid/os/Bundle;)V
    invoke-static/range {v0 .. v6}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->access$1200(Lcom/android/jrdsettings/audioshare/service/AudioShareService;IZLandroid/os/Messenger;ILjava/util/Map;Landroid/os/Bundle;)V

    .line 865
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread$1$1;->this$2:Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread$1;

    iget-object v0, v0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread$1;->this$1:Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;

    iget-object v0, v0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    const/4 v1, 0x0

    #setter for: Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mPlayingFlag:Z
    invoke-static {v0, v1}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->access$1502(Lcom/android/jrdsettings/audioshare/service/AudioShareService;Z)Z

    .line 866
    const/4 v11, 0x0

    goto/16 :goto_2
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 762
    invoke-virtual {p0}, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceControlThread$1$1;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
