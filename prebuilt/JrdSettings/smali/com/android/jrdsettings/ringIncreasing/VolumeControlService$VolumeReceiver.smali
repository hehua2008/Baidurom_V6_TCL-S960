.class Lcom/android/jrdsettings/ringIncreasing/VolumeControlService$VolumeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "VolumeControlService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/jrdsettings/ringIncreasing/VolumeControlService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VolumeReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/jrdsettings/ringIncreasing/VolumeControlService;


# direct methods
.method private constructor <init>(Lcom/android/jrdsettings/ringIncreasing/VolumeControlService;)V
    .locals 0
    .parameter

    .prologue
    .line 176
    iput-object p1, p0, Lcom/android/jrdsettings/ringIncreasing/VolumeControlService$VolumeReceiver;->this$0:Lcom/android/jrdsettings/ringIncreasing/VolumeControlService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/jrdsettings/ringIncreasing/VolumeControlService;Lcom/android/jrdsettings/ringIncreasing/VolumeControlService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 176
    invoke-direct {p0, p1}, Lcom/android/jrdsettings/ringIncreasing/VolumeControlService$VolumeReceiver;-><init>(Lcom/android/jrdsettings/ringIncreasing/VolumeControlService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 179
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 180
    .local v0, action:Ljava/lang/String;
    invoke-static {}, Lcom/android/jrdsettings/ringIncreasing/VolumeControlService;->access$100()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "VolumeReceiver.onReceive action="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    const-string v2, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 182
    iget-object v2, p0, Lcom/android/jrdsettings/ringIncreasing/VolumeControlService$VolumeReceiver;->this$0:Lcom/android/jrdsettings/ringIncreasing/VolumeControlService;

    invoke-virtual {v2}, Lcom/android/jrdsettings/ringIncreasing/VolumeControlService;->getCurrentVolume()I

    move-result v1

    .line 183
    .local v1, curVolume:I
    iget-object v2, p0, Lcom/android/jrdsettings/ringIncreasing/VolumeControlService$VolumeReceiver;->this$0:Lcom/android/jrdsettings/ringIncreasing/VolumeControlService;

    #getter for: Lcom/android/jrdsettings/ringIncreasing/VolumeControlService;->actualCurrentVolume:I
    invoke-static {v2}, Lcom/android/jrdsettings/ringIncreasing/VolumeControlService;->access$200(Lcom/android/jrdsettings/ringIncreasing/VolumeControlService;)I

    move-result v2

    if-eq v2, v1, :cond_0

    .line 184
    iget-object v2, p0, Lcom/android/jrdsettings/ringIncreasing/VolumeControlService$VolumeReceiver;->this$0:Lcom/android/jrdsettings/ringIncreasing/VolumeControlService;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/jrdsettings/ringIncreasing/VolumeControlService;->mVolumeChangedByOthers:Z

    .line 185
    iget-object v2, p0, Lcom/android/jrdsettings/ringIncreasing/VolumeControlService$VolumeReceiver;->this$0:Lcom/android/jrdsettings/ringIncreasing/VolumeControlService;

    iput v1, v2, Lcom/android/jrdsettings/ringIncreasing/VolumeControlService;->mVolumeSetByOthers:I

    .line 186
    invoke-static {}, Lcom/android/jrdsettings/ringIncreasing/VolumeControlService;->access$100()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "VolumeReceiver.onReceive actualCurrentVolume="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/jrdsettings/ringIncreasing/VolumeControlService$VolumeReceiver;->this$0:Lcom/android/jrdsettings/ringIncreasing/VolumeControlService;

    #getter for: Lcom/android/jrdsettings/ringIncreasing/VolumeControlService;->actualCurrentVolume:I
    invoke-static {v4}, Lcom/android/jrdsettings/ringIncreasing/VolumeControlService;->access$200(Lcom/android/jrdsettings/ringIncreasing/VolumeControlService;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mVolumeSetByOthers="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/jrdsettings/ringIncreasing/VolumeControlService$VolumeReceiver;->this$0:Lcom/android/jrdsettings/ringIncreasing/VolumeControlService;

    iget v4, v4, Lcom/android/jrdsettings/ringIncreasing/VolumeControlService;->mVolumeSetByOthers:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    .end local v1           #curVolume:I
    :cond_0
    return-void
.end method
