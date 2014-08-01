.class Lcom/android/jrdsettings/audioshare/service/AudioShareService$AutoPlay;
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
    name = "AutoPlay"
.end annotation


# instance fields
.field private mAutoPlayRunningFlag:Z

.field private mUdn:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;


# direct methods
.method public constructor <init>(Lcom/android/jrdsettings/audioshare/service/AudioShareService;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter "udn"

    .prologue
    .line 1087
    iput-object p1, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$AutoPlay;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1083
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$AutoPlay;->mAutoPlayRunningFlag:Z

    .line 1085
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$AutoPlay;->mUdn:Ljava/lang/String;

    .line 1088
    #getter for: Lcom/android/jrdsettings/audioshare/service/AudioShareService;->TAG:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->access$000(Lcom/android/jrdsettings/audioshare/service/AudioShareService;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AutoPlay  UDN = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1089
    iput-object p2, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$AutoPlay;->mUdn:Ljava/lang/String;

    .line 1090
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1095
    iget-object v2, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$AutoPlay;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    #getter for: Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mPlayingFlag:Z
    invoke-static {v2}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->access$1500(Lcom/android/jrdsettings/audioshare/service/AudioShareService;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1108
    :goto_0
    return-void

    .line 1098
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$AutoPlay;->mAutoPlayRunningFlag:Z

    .line 1099
    iget-object v2, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$AutoPlay;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    #getter for: Lcom/android/jrdsettings/audioshare/service/AudioShareService;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->access$000(Lcom/android/jrdsettings/audioshare/service/AudioShareService;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AutoPlay  mUdn = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$AutoPlay;->mUdn:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1100
    const/4 v2, 0x0

    const/16 v3, 0x2f

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 1102
    .local v1, msg:Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1103
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "deviceUDN"

    iget-object v3, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$AutoPlay;->mUdn:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1104
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1105
    iput v5, v1, Landroid/os/Message;->arg1:I

    .line 1106
    iget-object v2, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$AutoPlay;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    #getter for: Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mDeviceControlHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->access$1100(Lcom/android/jrdsettings/audioshare/service/AudioShareService;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1107
    iput-boolean v5, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$AutoPlay;->mAutoPlayRunningFlag:Z

    goto :goto_0
.end method
