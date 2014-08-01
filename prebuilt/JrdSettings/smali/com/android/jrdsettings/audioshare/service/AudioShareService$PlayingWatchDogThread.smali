.class Lcom/android/jrdsettings/audioshare/service/AudioShareService$PlayingWatchDogThread;
.super Ljava/lang/Object;
.source "AudioShareService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/jrdsettings/audioshare/service/AudioShareService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PlayingWatchDogThread"
.end annotation


# instance fields
.field private mCount:I

.field private mFromId:I

.field final synthetic this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;


# direct methods
.method constructor <init>(Lcom/android/jrdsettings/audioshare/service/AudioShareService;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1214
    iput-object p1, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$PlayingWatchDogThread;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1216
    iput v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$PlayingWatchDogThread;->mFromId:I

    .line 1217
    iput v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$PlayingWatchDogThread;->mCount:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    const/16 v13, 0xa

    const/4 v12, 0x3

    const/4 v2, 0x1

    const/4 v11, 0x0

    const/4 v6, 0x0

    .line 1222
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$PlayingWatchDogThread;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    #getter for: Lcom/android/jrdsettings/audioshare/service/AudioShareService;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->access$000(Lcom/android/jrdsettings/audioshare/service/AudioShareService;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Watching  ING"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1223
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$PlayingWatchDogThread;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    #getter for: Lcom/android/jrdsettings/audioshare/service/AudioShareService;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->access$000(Lcom/android/jrdsettings/audioshare/service/AudioShareService;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Watching  ING  mLastDeviceUDN = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$PlayingWatchDogThread;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    #getter for: Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mLastDeviceUDN:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->access$2600(Lcom/android/jrdsettings/audioshare/service/AudioShareService;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1224
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$PlayingWatchDogThread;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    #getter for: Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mLastDeviceUDN:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->access$2600(Lcom/android/jrdsettings/audioshare/service/AudioShareService;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$PlayingWatchDogThread;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    #getter for: Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mLastDeviceUDN:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->access$2600(Lcom/android/jrdsettings/audioshare/service/AudioShareService;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v13, :cond_1

    .line 1226
    const/4 v10, 0x0

    .line 1227
    .local v10, state:Z
    const-string v7, ""

    .line 1228
    .local v7, currentURL:Ljava/lang/String;
    invoke-static {}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->access$3400()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1229
    :try_start_0
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$PlayingWatchDogThread;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    #getter for: Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mDeviceController:Lcom/android/jrdsettings/audioshare/service/DlnaDeviceController;
    invoke-static {v0}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->access$2400(Lcom/android/jrdsettings/audioshare/service/AudioShareService;)Lcom/android/jrdsettings/audioshare/service/DlnaDeviceController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1230
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$PlayingWatchDogThread;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    #getter for: Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mDeviceController:Lcom/android/jrdsettings/audioshare/service/DlnaDeviceController;
    invoke-static {v0}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->access$2400(Lcom/android/jrdsettings/audioshare/service/AudioShareService;)Lcom/android/jrdsettings/audioshare/service/DlnaDeviceController;

    move-result-object v0

    iget-object v3, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$PlayingWatchDogThread;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    #getter for: Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mLastDeviceUDN:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->access$2600(Lcom/android/jrdsettings/audioshare/service/AudioShareService;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/jrdsettings/audioshare/service/DlnaDeviceController;->isDevicePlaying(Ljava/lang/String;)Z

    move-result v10

    .line 1233
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$PlayingWatchDogThread;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    #getter for: Lcom/android/jrdsettings/audioshare/service/AudioShareService;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->access$000(Lcom/android/jrdsettings/audioshare/service/AudioShareService;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Watching state1 = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1234
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$PlayingWatchDogThread;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    #getter for: Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mDeviceController:Lcom/android/jrdsettings/audioshare/service/DlnaDeviceController;
    invoke-static {v0}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->access$2400(Lcom/android/jrdsettings/audioshare/service/AudioShareService;)Lcom/android/jrdsettings/audioshare/service/DlnaDeviceController;

    move-result-object v0

    iget-object v3, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$PlayingWatchDogThread;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    #getter for: Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mLastDeviceUDN:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->access$2600(Lcom/android/jrdsettings/audioshare/service/AudioShareService;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/jrdsettings/audioshare/service/DlnaDeviceController;->getCurrentPlayingURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1236
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1238
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$PlayingWatchDogThread;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    #getter for: Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mAudioBeamingUrl:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->access$2500(Lcom/android/jrdsettings/audioshare/service/AudioShareService;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1239
    and-int/lit8 v10, v10, 0x1

    .line 1243
    :goto_0
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$PlayingWatchDogThread;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    #getter for: Lcom/android/jrdsettings/audioshare/service/AudioShareService;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->access$000(Lcom/android/jrdsettings/audioshare/service/AudioShareService;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Watching state2 = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1245
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$PlayingWatchDogThread;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    #getter for: Lcom/android/jrdsettings/audioshare/service/AudioShareService;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->access$000(Lcom/android/jrdsettings/audioshare/service/AudioShareService;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Watching  ING check play"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1246
    if-eqz v10, :cond_4

    .line 1247
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$PlayingWatchDogThread;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    #getter for: Lcom/android/jrdsettings/audioshare/service/AudioShareService;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->access$000(Lcom/android/jrdsettings/audioshare/service/AudioShareService;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Watching  ING check playing"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1250
    new-instance v8, Lcom/android/jrdsettings/audioshare/utils/DeviceInfo;

    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$PlayingWatchDogThread;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    #getter for: Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mLastDeviceUDN:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->access$2600(Lcom/android/jrdsettings/audioshare/service/AudioShareService;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v0, v6, v12}, Lcom/android/jrdsettings/audioshare/utils/DeviceInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1251
    .local v8, deviceInfo:Lcom/android/jrdsettings/audioshare/utils/DeviceInfo;
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$PlayingWatchDogThread;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    #getter for: Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mDeviceCacheHanlder:Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceCacheHanlder;
    invoke-static {v0}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->access$2000(Lcom/android/jrdsettings/audioshare/service/AudioShareService;)Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceCacheHanlder;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    .line 1252
    .local v9, message:Landroid/os/Message;
    iput-object v8, v9, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1253
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$PlayingWatchDogThread;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    #getter for: Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mDeviceCacheHanlder:Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceCacheHanlder;
    invoke-static {v0}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->access$2000(Lcom/android/jrdsettings/audioshare/service/AudioShareService;)Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceCacheHanlder;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1256
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 1257
    .local v5, msgInfo:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "deviceUDN"

    iget-object v1, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$PlayingWatchDogThread;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    #getter for: Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mLastDeviceUDN:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->access$2600(Lcom/android/jrdsettings/audioshare/service/AudioShareService;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1258
    const-string v0, "playingState"

    const-string v1, "PLAYING"

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1259
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$PlayingWatchDogThread;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    iget v1, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$PlayingWatchDogThread;->mFromId:I

    iget-object v3, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$PlayingWatchDogThread;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    iget-object v3, v3, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mMessenger:Landroid/os/Messenger;

    const/16 v4, 0x2f

    #calls: Lcom/android/jrdsettings/audioshare/service/AudioShareService;->sendMessage(IZLandroid/os/Messenger;ILjava/util/Map;Landroid/os/Bundle;)V
    invoke-static/range {v0 .. v6}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->access$1200(Lcom/android/jrdsettings/audioshare/service/AudioShareService;IZLandroid/os/Messenger;ILjava/util/Map;Landroid/os/Bundle;)V

    .line 1262
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$PlayingWatchDogThread;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    #setter for: Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mPlayingFlag:Z
    invoke-static {v0, v2}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->access$1502(Lcom/android/jrdsettings/audioshare/service/AudioShareService;Z)Z

    .line 1263
    iput v11, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$PlayingWatchDogThread;->mCount:I

    .line 1269
    .end local v5           #msgInfo:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v8           #deviceInfo:Lcom/android/jrdsettings/audioshare/utils/DeviceInfo;
    .end local v9           #message:Landroid/os/Message;
    :goto_1
    iget v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$PlayingWatchDogThread;->mCount:I

    if-le v0, v13, :cond_1

    .line 1270
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$PlayingWatchDogThread;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    #getter for: Lcom/android/jrdsettings/audioshare/service/AudioShareService;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->access$000(Lcom/android/jrdsettings/audioshare/service/AudioShareService;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Watching  ING check timeout"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1272
    new-instance v8, Lcom/android/jrdsettings/audioshare/utils/DeviceInfo;

    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$PlayingWatchDogThread;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    #getter for: Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mLastDeviceUDN:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->access$2600(Lcom/android/jrdsettings/audioshare/service/AudioShareService;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-direct {v8, v0, v6, v1}, Lcom/android/jrdsettings/audioshare/utils/DeviceInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1273
    .restart local v8       #deviceInfo:Lcom/android/jrdsettings/audioshare/utils/DeviceInfo;
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$PlayingWatchDogThread;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    #getter for: Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mDeviceCacheHanlder:Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceCacheHanlder;
    invoke-static {v0}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->access$2000(Lcom/android/jrdsettings/audioshare/service/AudioShareService;)Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceCacheHanlder;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    .line 1274
    .restart local v9       #message:Landroid/os/Message;
    iput-object v8, v9, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1275
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$PlayingWatchDogThread;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    #getter for: Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mDeviceCacheHanlder:Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceCacheHanlder;
    invoke-static {v0}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->access$2000(Lcom/android/jrdsettings/audioshare/service/AudioShareService;)Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceCacheHanlder;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1278
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 1279
    .restart local v5       #msgInfo:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "deviceUDN"

    iget-object v1, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$PlayingWatchDogThread;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    #getter for: Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mLastDeviceUDN:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->access$2600(Lcom/android/jrdsettings/audioshare/service/AudioShareService;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1280
    const-string v0, "playingState"

    const-string v1, "ERROR"

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1281
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$PlayingWatchDogThread;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    iget v1, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$PlayingWatchDogThread;->mFromId:I

    iget-object v3, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$PlayingWatchDogThread;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    iget-object v3, v3, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mMessenger:Landroid/os/Messenger;

    const/16 v4, 0x2f

    #calls: Lcom/android/jrdsettings/audioshare/service/AudioShareService;->sendMessage(IZLandroid/os/Messenger;ILjava/util/Map;Landroid/os/Bundle;)V
    invoke-static/range {v0 .. v6}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->access$1200(Lcom/android/jrdsettings/audioshare/service/AudioShareService;IZLandroid/os/Messenger;ILjava/util/Map;Landroid/os/Bundle;)V

    .line 1284
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$PlayingWatchDogThread;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    #setter for: Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mLastDeviceUDN:Ljava/lang/String;
    invoke-static {v0, v6}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->access$2602(Lcom/android/jrdsettings/audioshare/service/AudioShareService;Ljava/lang/String;)Ljava/lang/String;

    .line 1285
    iput v11, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$PlayingWatchDogThread;->mCount:I

    .line 1288
    .end local v5           #msgInfo:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v7           #currentURL:Ljava/lang/String;
    .end local v8           #deviceInfo:Lcom/android/jrdsettings/audioshare/utils/DeviceInfo;
    .end local v9           #message:Landroid/os/Message;
    .end local v10           #state:Z
    :cond_1
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$PlayingWatchDogThread;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    #getter for: Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mWatchDogHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->access$900(Lcom/android/jrdsettings/audioshare/service/AudioShareService;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1289
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$PlayingWatchDogThread;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    #getter for: Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mWatchDogHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->access$900(Lcom/android/jrdsettings/audioshare/service/AudioShareService;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1291
    :cond_2
    return-void

    .line 1236
    .restart local v7       #currentURL:Ljava/lang/String;
    .restart local v10       #state:Z
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1241
    :cond_3
    and-int/lit8 v10, v10, 0x0

    goto/16 :goto_0

    .line 1265
    :cond_4
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$PlayingWatchDogThread;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    #getter for: Lcom/android/jrdsettings/audioshare/service/AudioShareService;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->access$000(Lcom/android/jrdsettings/audioshare/service/AudioShareService;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Watching  ING check not play"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1266
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$PlayingWatchDogThread;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    #setter for: Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mPlayingFlag:Z
    invoke-static {v0, v11}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->access$1502(Lcom/android/jrdsettings/audioshare/service/AudioShareService;Z)Z

    .line 1267
    iget v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$PlayingWatchDogThread;->mCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$PlayingWatchDogThread;->mCount:I

    goto/16 :goto_1
.end method
