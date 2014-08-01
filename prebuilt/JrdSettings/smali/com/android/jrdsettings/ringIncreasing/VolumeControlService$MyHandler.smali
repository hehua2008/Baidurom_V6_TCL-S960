.class Lcom/android/jrdsettings/ringIncreasing/VolumeControlService$MyHandler;
.super Landroid/os/Handler;
.source "VolumeControlService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/jrdsettings/ringIncreasing/VolumeControlService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/jrdsettings/ringIncreasing/VolumeControlService;


# direct methods
.method constructor <init>(Lcom/android/jrdsettings/ringIncreasing/VolumeControlService;)V
    .locals 0
    .parameter

    .prologue
    .line 163
    iput-object p1, p0, Lcom/android/jrdsettings/ringIncreasing/VolumeControlService$MyHandler;->this$0:Lcom/android/jrdsettings/ringIncreasing/VolumeControlService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "paramMessage"

    .prologue
    .line 166
    invoke-static {}, Lcom/android/jrdsettings/ringIncreasing/VolumeControlService;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "handleMessage"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    iget-object v0, p0, Lcom/android/jrdsettings/ringIncreasing/VolumeControlService$MyHandler;->this$0:Lcom/android/jrdsettings/ringIncreasing/VolumeControlService;

    invoke-virtual {v0}, Lcom/android/jrdsettings/ringIncreasing/VolumeControlService;->shouldStop()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/android/jrdsettings/ringIncreasing/VolumeControlService$MyHandler;->this$0:Lcom/android/jrdsettings/ringIncreasing/VolumeControlService;

    invoke-virtual {v0}, Lcom/android/jrdsettings/ringIncreasing/VolumeControlService;->stop()V

    .line 173
    :goto_0
    return-void

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/android/jrdsettings/ringIncreasing/VolumeControlService$MyHandler;->this$0:Lcom/android/jrdsettings/ringIncreasing/VolumeControlService;

    invoke-virtual {v0}, Lcom/android/jrdsettings/ringIncreasing/VolumeControlService;->increaseVolume()V

    .line 172
    const/4 v0, 0x0

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method
