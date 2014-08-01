.class Lcom/android/jrdsettings/SoundSettings$3;
.super Ljava/lang/Object;
.source "SoundSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/jrdsettings/SoundSettings;->UpdateSoundUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/jrdsettings/SoundSettings;


# direct methods
.method constructor <init>(Lcom/android/jrdsettings/SoundSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 256
    iput-object p1, p0, Lcom/android/jrdsettings/SoundSettings$3;->this$0:Lcom/android/jrdsettings/SoundSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 259
    iget-object v0, p0, Lcom/android/jrdsettings/SoundSettings$3;->this$0:Lcom/android/jrdsettings/SoundSettings;

    #getter for: Lcom/android/jrdsettings/SoundSettings;->isSupportOnOff:Z
    invoke-static {v0}, Lcom/android/jrdsettings/SoundSettings;->access$1000(Lcom/android/jrdsettings/SoundSettings;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/android/jrdsettings/SoundSettings$3;->this$0:Lcom/android/jrdsettings/SoundSettings;

    iget-object v1, p0, Lcom/android/jrdsettings/SoundSettings$3;->this$0:Lcom/android/jrdsettings/SoundSettings;

    iget-object v2, p0, Lcom/android/jrdsettings/SoundSettings$3;->this$0:Lcom/android/jrdsettings/SoundSettings;

    #getter for: Lcom/android/jrdsettings/SoundSettings;->mProfileKey:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/jrdsettings/SoundSettings;->access$1100(Lcom/android/jrdsettings/SoundSettings;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/jrdsettings/SoundSettings$3;->this$0:Lcom/android/jrdsettings/SoundSettings;

    #getter for: Lcom/android/jrdsettings/SoundSettings;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/jrdsettings/SoundSettings;->access$000(Lcom/android/jrdsettings/SoundSettings;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "on"

    #calls: Lcom/android/jrdsettings/SoundSettings;->getPowerOnOffActiveEnable(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Z
    invoke-static {v1, v2, v3, v4}, Lcom/android/jrdsettings/SoundSettings;->access$1200(Lcom/android/jrdsettings/SoundSettings;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    #setter for: Lcom/android/jrdsettings/SoundSettings;->mEnablePowerOnRingtone:Z
    invoke-static {v0, v1}, Lcom/android/jrdsettings/SoundSettings;->access$602(Lcom/android/jrdsettings/SoundSettings;Z)Z

    .line 262
    iget-object v0, p0, Lcom/android/jrdsettings/SoundSettings$3;->this$0:Lcom/android/jrdsettings/SoundSettings;

    iget-object v1, p0, Lcom/android/jrdsettings/SoundSettings$3;->this$0:Lcom/android/jrdsettings/SoundSettings;

    iget-object v2, p0, Lcom/android/jrdsettings/SoundSettings$3;->this$0:Lcom/android/jrdsettings/SoundSettings;

    #getter for: Lcom/android/jrdsettings/SoundSettings;->mProfileKey:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/jrdsettings/SoundSettings;->access$1100(Lcom/android/jrdsettings/SoundSettings;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/jrdsettings/SoundSettings$3;->this$0:Lcom/android/jrdsettings/SoundSettings;

    #getter for: Lcom/android/jrdsettings/SoundSettings;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/jrdsettings/SoundSettings;->access$000(Lcom/android/jrdsettings/SoundSettings;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "off"

    #calls: Lcom/android/jrdsettings/SoundSettings;->getPowerOnOffActiveEnable(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Z
    invoke-static {v1, v2, v3, v4}, Lcom/android/jrdsettings/SoundSettings;->access$1200(Lcom/android/jrdsettings/SoundSettings;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    #setter for: Lcom/android/jrdsettings/SoundSettings;->mEnablePowerOffRingtone:Z
    invoke-static {v0, v1}, Lcom/android/jrdsettings/SoundSettings;->access$802(Lcom/android/jrdsettings/SoundSettings;Z)Z

    .line 264
    iget-object v0, p0, Lcom/android/jrdsettings/SoundSettings$3;->this$0:Lcom/android/jrdsettings/SoundSettings;

    #getter for: Lcom/android/jrdsettings/SoundSettings;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/jrdsettings/SoundSettings;->access$1300(Lcom/android/jrdsettings/SoundSettings;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 268
    :cond_0
    iget-object v0, p0, Lcom/android/jrdsettings/SoundSettings$3;->this$0:Lcom/android/jrdsettings/SoundSettings;

    iget-object v1, p0, Lcom/android/jrdsettings/SoundSettings$3;->this$0:Lcom/android/jrdsettings/SoundSettings;

    #getter for: Lcom/android/jrdsettings/SoundSettings;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/jrdsettings/SoundSettings;->access$000(Lcom/android/jrdsettings/SoundSettings;)Landroid/content/Context;

    move-result-object v1

    #calls: Lcom/android/jrdsettings/SoundSettings;->updateRingtoneName(ILandroid/content/Context;I)V
    invoke-static {v0, v5, v1, v5}, Lcom/android/jrdsettings/SoundSettings;->access$100(Lcom/android/jrdsettings/SoundSettings;ILandroid/content/Context;I)V

    .line 270
    iget-object v0, p0, Lcom/android/jrdsettings/SoundSettings$3;->this$0:Lcom/android/jrdsettings/SoundSettings;

    iget-object v1, p0, Lcom/android/jrdsettings/SoundSettings$3;->this$0:Lcom/android/jrdsettings/SoundSettings;

    #getter for: Lcom/android/jrdsettings/SoundSettings;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/jrdsettings/SoundSettings;->access$000(Lcom/android/jrdsettings/SoundSettings;)Landroid/content/Context;

    move-result-object v1

    #calls: Lcom/android/jrdsettings/SoundSettings;->updateRingtoneName(ILandroid/content/Context;I)V
    invoke-static {v0, v6, v1, v6}, Lcom/android/jrdsettings/SoundSettings;->access$100(Lcom/android/jrdsettings/SoundSettings;ILandroid/content/Context;I)V

    .line 272
    return-void
.end method
