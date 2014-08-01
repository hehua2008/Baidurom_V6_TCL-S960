.class Lcom/android/jrdsettings/ringIncreasing/IncomingCallListener$1;
.super Landroid/os/Handler;
.source "IncomingCallListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/jrdsettings/ringIncreasing/IncomingCallListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/jrdsettings/ringIncreasing/IncomingCallListener;


# direct methods
.method constructor <init>(Lcom/android/jrdsettings/ringIncreasing/IncomingCallListener;)V
    .locals 0
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/jrdsettings/ringIncreasing/IncomingCallListener$1;->this$0:Lcom/android/jrdsettings/ringIncreasing/IncomingCallListener;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 68
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 82
    :goto_0
    return-void

    .line 70
    :pswitch_0
    iget-object v1, p0, Lcom/android/jrdsettings/ringIncreasing/IncomingCallListener$1;->this$0:Lcom/android/jrdsettings/ringIncreasing/IncomingCallListener;

    #getter for: Lcom/android/jrdsettings/ringIncreasing/IncomingCallListener;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/android/jrdsettings/ringIncreasing/IncomingCallListener;->access$000(Lcom/android/jrdsettings/ringIncreasing/IncomingCallListener;)Landroid/media/AudioManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioManager;->getMode()I

    move-result v0

    .line 71
    .local v0, mode:I
    invoke-static {}, Lcom/android/jrdsettings/ringIncreasing/IncomingCallListener;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMessage mode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    if-nez v0, :cond_0

    .line 73
    iget-object v1, p0, Lcom/android/jrdsettings/ringIncreasing/IncomingCallListener$1;->this$0:Lcom/android/jrdsettings/ringIncreasing/IncomingCallListener;

    #getter for: Lcom/android/jrdsettings/ringIncreasing/IncomingCallListener;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/android/jrdsettings/ringIncreasing/IncomingCallListener;->access$000(Lcom/android/jrdsettings/ringIncreasing/IncomingCallListener;)Landroid/media/AudioManager;

    move-result-object v1

    const/4 v2, 0x2

    sget v3, Lcom/android/jrdsettings/ringIncreasing/RingVolumeControlService;->mStartupVolume:I

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_0

    .line 76
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x12c

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 68
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
