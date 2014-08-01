.class Lcom/android/jrdsettings/audioshare/service/AudioShareService$2;
.super Ljava/lang/Object;
.source "AudioShareService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/jrdsettings/audioshare/service/AudioShareService;->doServiceStartting()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;


# direct methods
.method constructor <init>(Lcom/android/jrdsettings/audioshare/service/AudioShareService;)V
    .locals 0
    .parameter

    .prologue
    .line 438
    iput-object p1, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$2;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 442
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$2;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "audio_share_state"

    const-string v2, "audio_share_starting"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 443
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$2;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "audio_share_service_Startting"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 444
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$2;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    #calls: Lcom/android/jrdsettings/audioshare/service/AudioShareService;->initController()V
    invoke-static {v0}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->access$500(Lcom/android/jrdsettings/audioshare/service/AudioShareService;)V

    .line 445
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$2;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    #getter for: Lcom/android/jrdsettings/audioshare/service/AudioShareService;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->access$000(Lcom/android/jrdsettings/audioshare/service/AudioShareService;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "initAudioBeaming"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$2;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    #calls: Lcom/android/jrdsettings/audioshare/service/AudioShareService;->initAudioBeaming()V
    invoke-static {v0}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->access$600(Lcom/android/jrdsettings/audioshare/service/AudioShareService;)V

    .line 447
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$2;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    #getter for: Lcom/android/jrdsettings/audioshare/service/AudioShareService;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->access$000(Lcom/android/jrdsettings/audioshare/service/AudioShareService;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "initHandler"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$2;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    #calls: Lcom/android/jrdsettings/audioshare/service/AudioShareService;->initHandler()V
    invoke-static {v0}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->access$700(Lcom/android/jrdsettings/audioshare/service/AudioShareService;)V

    .line 449
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$2;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    #getter for: Lcom/android/jrdsettings/audioshare/service/AudioShareService;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->access$000(Lcom/android/jrdsettings/audioshare/service/AudioShareService;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "doServiceStartted"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$2;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    #calls: Lcom/android/jrdsettings/audioshare/service/AudioShareService;->doServiceStartted()V
    invoke-static {v0}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->access$800(Lcom/android/jrdsettings/audioshare/service/AudioShareService;)V

    .line 451
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$2;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    #getter for: Lcom/android/jrdsettings/audioshare/service/AudioShareService;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->access$000(Lcom/android/jrdsettings/audioshare/service/AudioShareService;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "start completed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$2;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    #getter for: Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mWatchDogHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->access$900(Lcom/android/jrdsettings/audioshare/service/AudioShareService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/jrdsettings/audioshare/service/AudioShareService$PlayingWatchDogThread;

    iget-object v2, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$2;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    invoke-direct {v1, v2}, Lcom/android/jrdsettings/audioshare/service/AudioShareService$PlayingWatchDogThread;-><init>(Lcom/android/jrdsettings/audioshare/service/AudioShareService;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 453
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$2;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    #getter for: Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mAutoRefreshDevicesHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->access$1000(Lcom/android/jrdsettings/audioshare/service/AudioShareService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/jrdsettings/audioshare/service/AudioShareService$AutoRefreshDevicesThread;

    iget-object v2, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$2;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    invoke-direct {v1, v2}, Lcom/android/jrdsettings/audioshare/service/AudioShareService$AutoRefreshDevicesThread;-><init>(Lcom/android/jrdsettings/audioshare/service/AudioShareService;)V

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 454
    return-void
.end method
