.class Lcom/android/jrdsettings/audioshare/service/AudioShareService$4;
.super Ljava/lang/Thread;
.source "AudioShareService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/jrdsettings/audioshare/service/AudioShareService;
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
    .line 1486
    iput-object p1, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$4;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1491
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 1492
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$4;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    #getter for: Lcom/android/jrdsettings/audioshare/service/AudioShareService;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->access$000(Lcom/android/jrdsettings/audioshare/service/AudioShareService;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Stop Thread running start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1493
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$4;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    #calls: Lcom/android/jrdsettings/audioshare/service/AudioShareService;->doServiceStopping()V
    invoke-static {v0}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->access$3800(Lcom/android/jrdsettings/audioshare/service/AudioShareService;)V

    .line 1494
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$4;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    #getter for: Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mStopHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->access$3900(Lcom/android/jrdsettings/audioshare/service/AudioShareService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$4;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    #getter for: Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mStopHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->access$3900(Lcom/android/jrdsettings/audioshare/service/AudioShareService;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1495
    iget-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$4;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    #getter for: Lcom/android/jrdsettings/audioshare/service/AudioShareService;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->access$000(Lcom/android/jrdsettings/audioshare/service/AudioShareService;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Stop Thread running end"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1496
    return-void
.end method
