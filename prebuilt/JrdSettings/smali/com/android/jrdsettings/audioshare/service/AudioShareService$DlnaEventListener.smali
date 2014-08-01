.class Lcom/android/jrdsettings/audioshare/service/AudioShareService$DlnaEventListener;
.super Ljava/lang/Object;
.source "AudioShareService.java"

# interfaces
.implements Lcom/android/jrdsettings/audioshare/service/OnDlnaEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/jrdsettings/audioshare/service/AudioShareService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DlnaEventListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;


# direct methods
.method private constructor <init>(Lcom/android/jrdsettings/audioshare/service/AudioShareService;)V
    .locals 0
    .parameter

    .prologue
    .line 1295
    iput-object p1, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DlnaEventListener;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/jrdsettings/audioshare/service/AudioShareService;Lcom/android/jrdsettings/audioshare/service/AudioShareService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1295
    invoke-direct {p0, p1}, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DlnaEventListener;-><init>(Lcom/android/jrdsettings/audioshare/service/AudioShareService;)V

    return-void
.end method


# virtual methods
.method public onDlnaDeviceAdded(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 12
    .parameter "deviceName"
    .parameter "deviceUDN"
    .parameter "state"

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1300
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DlnaEventListener;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    #getter for: Lcom/android/jrdsettings/audioshare/service/AudioShareService;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->access$000(Lcom/android/jrdsettings/audioshare/service/AudioShareService;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "onDlnaDeviceAdded()  Start"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1303
    new-instance v8, Lcom/android/jrdsettings/audioshare/utils/DeviceInfo;

    invoke-direct {v8, p2, p1}, Lcom/android/jrdsettings/audioshare/utils/DeviceInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1304
    .local v8, deviceInfo:Lcom/android/jrdsettings/audioshare/utils/DeviceInfo;
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DlnaEventListener;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    #getter for: Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mDeviceCacheHanlder:Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceCacheHanlder;
    invoke-static {v0}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->access$2000(Lcom/android/jrdsettings/audioshare/service/AudioShareService;)Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceCacheHanlder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    .line 1305
    .local v10, message:Landroid/os/Message;
    iput-object v8, v10, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1306
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DlnaEventListener;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    #getter for: Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mDeviceCacheHanlder:Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceCacheHanlder;
    invoke-static {v0}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->access$2000(Lcom/android/jrdsettings/audioshare/service/AudioShareService;)Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceCacheHanlder;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1309
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 1310
    .local v5, msgInfo:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "deviceName"

    invoke-virtual {v5, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1311
    const-string v0, "deviceUDN"

    invoke-virtual {v5, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1312
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DlnaEventListener;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    iget-object v3, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DlnaEventListener;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    iget-object v3, v3, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mMessenger:Landroid/os/Messenger;

    const/16 v4, 0x23

    #calls: Lcom/android/jrdsettings/audioshare/service/AudioShareService;->sendMessage(IZLandroid/os/Messenger;ILjava/util/Map;Landroid/os/Bundle;)V
    invoke-static/range {v0 .. v6}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->access$1200(Lcom/android/jrdsettings/audioshare/service/AudioShareService;IZLandroid/os/Messenger;ILjava/util/Map;Landroid/os/Bundle;)V

    .line 1315
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DlnaEventListener;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    #getter for: Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mDeviceController:Lcom/android/jrdsettings/audioshare/service/DlnaDeviceController;
    invoke-static {v0}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->access$2400(Lcom/android/jrdsettings/audioshare/service/AudioShareService;)Lcom/android/jrdsettings/audioshare/service/DlnaDeviceController;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DlnaEventListener;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    #getter for: Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mDeviceController:Lcom/android/jrdsettings/audioshare/service/DlnaDeviceController;
    invoke-static {v0}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->access$2400(Lcom/android/jrdsettings/audioshare/service/AudioShareService;)Lcom/android/jrdsettings/audioshare/service/DlnaDeviceController;

    invoke-static {p2}, Lcom/android/jrdsettings/audioshare/service/DlnaDeviceController;->isSpeaker(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1317
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DlnaEventListener;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    #getter for: Lcom/android/jrdsettings/audioshare/service/AudioShareService;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->access$000(Lcom/android/jrdsettings/audioshare/service/AudioShareService;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isSpeaker  true mPlayingFlag = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DlnaEventListener;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    #getter for: Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mPlayingFlag:Z
    invoke-static {v4}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->access$1500(Lcom/android/jrdsettings/audioshare/service/AudioShareService;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1319
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DlnaEventListener;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    #getter for: Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mDeviceController:Lcom/android/jrdsettings/audioshare/service/DlnaDeviceController;
    invoke-static {v0}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->access$2400(Lcom/android/jrdsettings/audioshare/service/AudioShareService;)Lcom/android/jrdsettings/audioshare/service/DlnaDeviceController;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1324
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DlnaEventListener;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    #getter for: Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mDeviceController:Lcom/android/jrdsettings/audioshare/service/DlnaDeviceController;
    invoke-static {v0}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->access$2400(Lcom/android/jrdsettings/audioshare/service/AudioShareService;)Lcom/android/jrdsettings/audioshare/service/DlnaDeviceController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/jrdsettings/audioshare/service/DlnaDeviceController;->getSpeakerList()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-gt v0, v2, :cond_1

    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DlnaEventListener;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    #getter for: Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mPlayingFlag:Z
    invoke-static {v0}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->access$1500(Lcom/android/jrdsettings/audioshare/service/AudioShareService;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1326
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DlnaEventListener;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    #getter for: Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mDeviceController:Lcom/android/jrdsettings/audioshare/service/DlnaDeviceController;
    invoke-static {v0}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->access$2400(Lcom/android/jrdsettings/audioshare/service/AudioShareService;)Lcom/android/jrdsettings/audioshare/service/DlnaDeviceController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/jrdsettings/audioshare/service/DlnaDeviceController;->getSpeakerList()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DlnaEventListener;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    #getter for: Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mAutoPlayHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->access$3500(Lcom/android/jrdsettings/audioshare/service/AudioShareService;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1327
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DlnaEventListener;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    #getter for: Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mAutoPlayHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->access$3500(Lcom/android/jrdsettings/audioshare/service/AudioShareService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/jrdsettings/audioshare/service/AudioShareService$AutoPlay;

    iget-object v2, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DlnaEventListener;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    invoke-direct {v1, v2, p2}, Lcom/android/jrdsettings/audioshare/service/AudioShareService$AutoPlay;-><init>(Lcom/android/jrdsettings/audioshare/service/AudioShareService;Ljava/lang/String;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1361
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DlnaEventListener;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    #getter for: Lcom/android/jrdsettings/audioshare/service/AudioShareService;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->access$000(Lcom/android/jrdsettings/audioshare/service/AudioShareService;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onDlnaDeviceAdded()  End"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1362
    return-void

    .line 1331
    :cond_1
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DlnaEventListener;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    #getter for: Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mAutoPlayHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->access$3500(Lcom/android/jrdsettings/audioshare/service/AudioShareService;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1332
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DlnaEventListener;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    #getter for: Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mAutoPlayHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->access$3500(Lcom/android/jrdsettings/audioshare/service/AudioShareService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1334
    :cond_2
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DlnaEventListener;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    #getter for: Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mIsNeedToShowActivity:Z
    invoke-static {v0}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->access$3600(Lcom/android/jrdsettings/audioshare/service/AudioShareService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1335
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DlnaEventListener;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    #setter for: Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mIsNeedToShowActivity:Z
    invoke-static {v0, v1}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->access$3602(Lcom/android/jrdsettings/audioshare/service/AudioShareService;Z)Z

    .line 1336
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DlnaEventListener;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    const-string v3, "activity"

    invoke-virtual {v0, v3}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ActivityManager;

    .line 1338
    .local v7, activityManager:Landroid/app/ActivityManager;
    invoke-virtual {v7, v2}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v11

    .line 1339
    .local v11, tasksInfo:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const-class v0, Lcom/android/jrdsettings/Settings$AudioShareSettingsActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DlnaEventListener;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v2, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1344
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    .line 1345
    .local v9, intent:Landroid/content/Intent;
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DlnaEventListener;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/android/jrdsettings/Settings$AudioShareSettingsActivity;

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1346
    const/high16 v0, 0x1400

    invoke-virtual {v9, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1347
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DlnaEventListener;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    invoke-virtual {v0, v9}, Landroid/content/ContextWrapper;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1354
    .end local v7           #activityManager:Landroid/app/ActivityManager;
    .end local v9           #intent:Landroid/content/Intent;
    .end local v11           #tasksInfo:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :cond_3
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DlnaEventListener;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    #getter for: Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mAutoPlayHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->access$3500(Lcom/android/jrdsettings/audioshare/service/AudioShareService;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1355
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DlnaEventListener;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    #getter for: Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mAutoPlayHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->access$3500(Lcom/android/jrdsettings/audioshare/service/AudioShareService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1359
    :cond_4
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DlnaEventListener;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    #getter for: Lcom/android/jrdsettings/audioshare/service/AudioShareService;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->access$000(Lcom/android/jrdsettings/audioshare/service/AudioShareService;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "isSpeaker  false"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public onDlnaDeviceOperationCompleteEvent(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7
    .parameter "deviceName"
    .parameter "deviceUDN"
    .parameter "eventId"

    .prologue
    .line 1415
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DlnaEventListener;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    #getter for: Lcom/android/jrdsettings/audioshare/service/AudioShareService;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->access$000(Lcom/android/jrdsettings/audioshare/service/AudioShareService;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onDlnaDeviceOperationCompleteEvent()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1417
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 1418
    .local v5, msgInfo:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "deviceName"

    invoke-virtual {v5, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1419
    const-string v0, "deviceUDN"

    invoke-virtual {v5, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1420
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DlnaEventListener;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DlnaEventListener;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    iget-object v3, v3, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mMessenger:Landroid/os/Messenger;

    const/16 v4, 0x2f

    const/4 v6, 0x0

    #calls: Lcom/android/jrdsettings/audioshare/service/AudioShareService;->sendMessage(IZLandroid/os/Messenger;ILjava/util/Map;Landroid/os/Bundle;)V
    invoke-static/range {v0 .. v6}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->access$1200(Lcom/android/jrdsettings/audioshare/service/AudioShareService;IZLandroid/os/Messenger;ILjava/util/Map;Landroid/os/Bundle;)V

    .line 1422
    return-void
.end method

.method public onDlnaDeviceRemoved(Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .parameter "deviceName"
    .parameter "deviceUDN"

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1366
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DlnaEventListener;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    #getter for: Lcom/android/jrdsettings/audioshare/service/AudioShareService;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->access$000(Lcom/android/jrdsettings/audioshare/service/AudioShareService;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "onDlnaDeviceRemoved()"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1369
    new-instance v7, Lcom/android/jrdsettings/audioshare/utils/DeviceInfo;

    invoke-direct {v7, p2, p1}, Lcom/android/jrdsettings/audioshare/utils/DeviceInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1370
    .local v7, deviceInfo:Lcom/android/jrdsettings/audioshare/utils/DeviceInfo;
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DlnaEventListener;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    #getter for: Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mDeviceCacheHanlder:Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceCacheHanlder;
    invoke-static {v0}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->access$2000(Lcom/android/jrdsettings/audioshare/service/AudioShareService;)Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceCacheHanlder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    .line 1371
    .local v9, message:Landroid/os/Message;
    iput-object v7, v9, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1372
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DlnaEventListener;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    #getter for: Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mDeviceCacheHanlder:Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceCacheHanlder;
    invoke-static {v0}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->access$2000(Lcom/android/jrdsettings/audioshare/service/AudioShareService;)Lcom/android/jrdsettings/audioshare/service/AudioShareService$DeviceCacheHanlder;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1375
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 1376
    .local v5, msgInfo:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "deviceName"

    invoke-virtual {v5, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1377
    const-string v0, "deviceUDN"

    invoke-virtual {v5, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1378
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DlnaEventListener;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    iget-object v3, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DlnaEventListener;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    iget-object v3, v3, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mMessenger:Landroid/os/Messenger;

    const/16 v4, 0x24

    #calls: Lcom/android/jrdsettings/audioshare/service/AudioShareService;->sendMessage(IZLandroid/os/Messenger;ILjava/util/Map;Landroid/os/Bundle;)V
    invoke-static/range {v0 .. v6}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->access$1200(Lcom/android/jrdsettings/audioshare/service/AudioShareService;IZLandroid/os/Messenger;ILjava/util/Map;Landroid/os/Bundle;)V

    .line 1382
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DlnaEventListener;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    #getter for: Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mDisplayUDN:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->access$3700(Lcom/android/jrdsettings/audioshare/service/AudioShareService;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1383
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DlnaEventListener;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    #calls: Lcom/android/jrdsettings/audioshare/service/AudioShareService;->updateNotification(Ljava/lang/String;)V
    invoke-static {v0, v6}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->access$3100(Lcom/android/jrdsettings/audioshare/service/AudioShareService;Ljava/lang/String;)V

    .line 1388
    :cond_0
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DlnaEventListener;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    #getter for: Lcom/android/jrdsettings/audioshare/service/AudioShareService;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->access$000(Lcom/android/jrdsettings/audioshare/service/AudioShareService;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mLastDeviceUDN = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DlnaEventListener;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    #getter for: Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mLastDeviceUDN:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->access$2600(Lcom/android/jrdsettings/audioshare/service/AudioShareService;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1389
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DlnaEventListener;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    #getter for: Lcom/android/jrdsettings/audioshare/service/AudioShareService;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->access$000(Lcom/android/jrdsettings/audioshare/service/AudioShareService;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Removed deviceUDN = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1390
    invoke-virtual {p2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1391
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DlnaEventListener;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    #setter for: Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mPlayingFlag:Z
    invoke-static {v0, v1}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->access$1502(Lcom/android/jrdsettings/audioshare/service/AudioShareService;Z)Z

    .line 1393
    :cond_1
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DlnaEventListener;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    #getter for: Lcom/android/jrdsettings/audioshare/service/AudioShareService;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->access$000(Lcom/android/jrdsettings/audioshare/service/AudioShareService;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mDeviceController.getSpeakerList().size() = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DlnaEventListener;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    #getter for: Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mDeviceController:Lcom/android/jrdsettings/audioshare/service/DlnaDeviceController;
    invoke-static {v3}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->access$2400(Lcom/android/jrdsettings/audioshare/service/AudioShareService;)Lcom/android/jrdsettings/audioshare/service/DlnaDeviceController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/jrdsettings/audioshare/service/DlnaDeviceController;->getSpeakerList()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1394
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DlnaEventListener;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    #getter for: Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mDeviceController:Lcom/android/jrdsettings/audioshare/service/DlnaDeviceController;
    invoke-static {v0}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->access$2400(Lcom/android/jrdsettings/audioshare/service/AudioShareService;)Lcom/android/jrdsettings/audioshare/service/DlnaDeviceController;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DlnaEventListener;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    #getter for: Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mDeviceController:Lcom/android/jrdsettings/audioshare/service/DlnaDeviceController;
    invoke-static {v0}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->access$2400(Lcom/android/jrdsettings/audioshare/service/AudioShareService;)Lcom/android/jrdsettings/audioshare/service/DlnaDeviceController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/jrdsettings/audioshare/service/DlnaDeviceController;->getSpeakerList()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-ne v0, v2, :cond_3

    .line 1396
    const-string v11, ""

    .line 1397
    .local v11, udn:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DlnaEventListener;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    #getter for: Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mDeviceController:Lcom/android/jrdsettings/audioshare/service/DlnaDeviceController;
    invoke-static {v0}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->access$2400(Lcom/android/jrdsettings/audioshare/service/AudioShareService;)Lcom/android/jrdsettings/audioshare/service/DlnaDeviceController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/jrdsettings/audioshare/service/DlnaDeviceController;->getSpeakerList()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 1398
    .local v10, speakerUdn:Ljava/lang/String;
    move-object v11, v10

    .line 1401
    .end local v10           #speakerUdn:Ljava/lang/String;
    :cond_2
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DlnaEventListener;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    #getter for: Lcom/android/jrdsettings/audioshare/service/AudioShareService;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->access$000(Lcom/android/jrdsettings/audioshare/service/AudioShareService;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mDeviceController.isDevicePlaying(udn) = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DlnaEventListener;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    #getter for: Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mDeviceController:Lcom/android/jrdsettings/audioshare/service/DlnaDeviceController;
    invoke-static {v2}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->access$2400(Lcom/android/jrdsettings/audioshare/service/AudioShareService;)Lcom/android/jrdsettings/audioshare/service/DlnaDeviceController;

    move-result-object v2

    invoke-virtual {v2, v11}, Lcom/android/jrdsettings/audioshare/service/DlnaDeviceController;->isDevicePlaying(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1402
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DlnaEventListener;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    #getter for: Lcom/android/jrdsettings/audioshare/service/AudioShareService;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->access$000(Lcom/android/jrdsettings/audioshare/service/AudioShareService;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mPlayingFlag = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DlnaEventListener;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    #getter for: Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mPlayingFlag:Z
    invoke-static {v2}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->access$1500(Lcom/android/jrdsettings/audioshare/service/AudioShareService;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1403
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DlnaEventListener;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    #getter for: Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mDeviceController:Lcom/android/jrdsettings/audioshare/service/DlnaDeviceController;
    invoke-static {v0}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->access$2400(Lcom/android/jrdsettings/audioshare/service/AudioShareService;)Lcom/android/jrdsettings/audioshare/service/DlnaDeviceController;

    move-result-object v0

    invoke-virtual {v0, v11}, Lcom/android/jrdsettings/audioshare/service/DlnaDeviceController;->isDevicePlaying(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DlnaEventListener;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    #getter for: Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mPlayingFlag:Z
    invoke-static {v0}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->access$1500(Lcom/android/jrdsettings/audioshare/service/AudioShareService;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DlnaEventListener;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    #getter for: Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mAutoPlayHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->access$3500(Lcom/android/jrdsettings/audioshare/service/AudioShareService;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1405
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DlnaEventListener;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    #getter for: Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mAutoPlayHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->access$3500(Lcom/android/jrdsettings/audioshare/service/AudioShareService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/jrdsettings/audioshare/service/AudioShareService$AutoPlay;

    iget-object v2, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DlnaEventListener;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    invoke-direct {v1, v2, v11}, Lcom/android/jrdsettings/audioshare/service/AudioShareService$AutoPlay;-><init>(Lcom/android/jrdsettings/audioshare/service/AudioShareService;Ljava/lang/String;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1409
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v11           #udn:Ljava/lang/String;
    :cond_3
    return-void
.end method

.method public onDlnaDeviceRequestListCompleteEvent(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/jrdsettings/audioshare/utils/DeviceInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1449
    .local p1, deviceInfos:Ljava/util/List;,"Ljava/util/List<Lcom/android/jrdsettings/audioshare/utils/DeviceInfo;>;"
    return-void
.end method

.method public onDlnaDeviceStateChangedEvent(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .parameter "deviceName"
    .parameter "deviceUDN"
    .parameter "eventId"

    .prologue
    .line 1428
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DlnaEventListener;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    #getter for: Lcom/android/jrdsettings/audioshare/service/AudioShareService;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->access$000(Lcom/android/jrdsettings/audioshare/service/AudioShareService;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onDlnaDeviceStateChangedEvent()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1429
    return-void
.end method

.method public onDlnaEvent(II)V
    .locals 2
    .parameter "targetId"
    .parameter "eventId"

    .prologue
    .line 1434
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$DlnaEventListener;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    #getter for: Lcom/android/jrdsettings/audioshare/service/AudioShareService;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->access$000(Lcom/android/jrdsettings/audioshare/service/AudioShareService;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onDlnaEvent()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1435
    return-void
.end method

.method public onLocalMuteChanged(Z)V
    .locals 0
    .parameter "isLocalMute"

    .prologue
    .line 1440
    return-void
.end method
