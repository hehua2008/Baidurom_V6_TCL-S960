.class Lcom/android/server/JrdHIFIService$3;
.super Landroid/content/BroadcastReceiver;
.source "JrdHIFIService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/JrdHIFIService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/JrdHIFIService;


# direct methods
.method constructor <init>(Lcom/android/server/JrdHIFIService;)V
    .locals 0
    .parameter

    .prologue
    .line 176
    iput-object p1, p0, Lcom/android/server/JrdHIFIService$3;->this$0:Lcom/android/server/JrdHIFIService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 181
    const-string v5, "JrdHIFIService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ACTION is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    const-string v5, "persist.sys.HIFI"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 183
    const-string v5, "HIFIStatus"

    invoke-virtual {p2, v5, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 184
    .local v0, HIFIStatus:I
    iget-object v5, p0, Lcom/android/server/JrdHIFIService$3;->this$0:Lcom/android/server/JrdHIFIService;

    #getter for: Lcom/android/server/JrdHIFIService;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/server/JrdHIFIService;->access$300(Lcom/android/server/JrdHIFIService;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "hifi_current_status"

    invoke-static {v5, v6, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 185
    const-string v5, "JrdHIFIService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " BroadcastReceiver HIFIStatus="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    const-string v5, "JrdHIFIService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " BroadcastReceiver mHIFIStatus="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/JrdHIFIService$3;->this$0:Lcom/android/server/JrdHIFIService;

    #getter for: Lcom/android/server/JrdHIFIService;->mHIFIStatus:I
    invoke-static {v7}, Lcom/android/server/JrdHIFIService;->access$100(Lcom/android/server/JrdHIFIService;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    iget-object v5, p0, Lcom/android/server/JrdHIFIService$3;->this$0:Lcom/android/server/JrdHIFIService;

    #getter for: Lcom/android/server/JrdHIFIService;->mAudioMan:Landroid/media/AudioManager;
    invoke-static {v5}, Lcom/android/server/JrdHIFIService;->access$000(Lcom/android/server/JrdHIFIService;)Landroid/media/AudioManager;

    move-result-object v5

    const-string v6, "GetHiFiDACStatus"

    invoke-virtual {v5, v6}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 188
    .local v2, hifi:Ljava/lang/String;
    packed-switch v0, :pswitch_data_0

    .line 191
    const-string v5, "GetHiFiDACStatus=1"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 192
    const-string v5, "JrdHIFIService"

    const-string v6, "HIFI disable"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    iget-object v5, p0, Lcom/android/server/JrdHIFIService$3;->this$0:Lcom/android/server/JrdHIFIService;

    #getter for: Lcom/android/server/JrdHIFIService;->mAudioMan:Landroid/media/AudioManager;
    invoke-static {v5}, Lcom/android/server/JrdHIFIService;->access$000(Lcom/android/server/JrdHIFIService;)Landroid/media/AudioManager;

    move-result-object v5

    const-string v6, "SetHiFiDACStatus=0"

    invoke-virtual {v5, v6}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 194
    iget-object v5, p0, Lcom/android/server/JrdHIFIService$3;->this$0:Lcom/android/server/JrdHIFIService;

    iget-object v6, p0, Lcom/android/server/JrdHIFIService$3;->this$0:Lcom/android/server/JrdHIFIService;

    #getter for: Lcom/android/server/JrdHIFIService;->mAudioMan:Landroid/media/AudioManager;
    invoke-static {v6}, Lcom/android/server/JrdHIFIService;->access$000(Lcom/android/server/JrdHIFIService;)Landroid/media/AudioManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v6

    iget-object v7, p0, Lcom/android/server/JrdHIFIService$3;->this$0:Lcom/android/server/JrdHIFIService;

    #getter for: Lcom/android/server/JrdHIFIService;->mHIFIStatus:I
    invoke-static {v7}, Lcom/android/server/JrdHIFIService;->access$100(Lcom/android/server/JrdHIFIService;)I

    move-result v7

    if-ne v7, v3, :cond_1

    :goto_0
    #calls: Lcom/android/server/JrdHIFIService;->sendMusicStatusBroadcast(ZZ)V
    invoke-static {v5, v6, v3}, Lcom/android/server/JrdHIFIService;->access$200(Lcom/android/server/JrdHIFIService;ZZ)V

    .line 222
    .end local v0           #HIFIStatus:I
    .end local v2           #hifi:Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .restart local v0       #HIFIStatus:I
    .restart local v2       #hifi:Ljava/lang/String;
    :cond_1
    move v3, v4

    .line 194
    goto :goto_0

    .line 198
    :pswitch_0
    iget-object v5, p0, Lcom/android/server/JrdHIFIService$3;->this$0:Lcom/android/server/JrdHIFIService;

    #getter for: Lcom/android/server/JrdHIFIService;->mHIFIStatus:I
    invoke-static {v5}, Lcom/android/server/JrdHIFIService;->access$100(Lcom/android/server/JrdHIFIService;)I

    move-result v5

    if-ne v5, v3, :cond_0

    const-string v5, "GetHiFiDACStatus=0"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/server/JrdHIFIService$3;->this$0:Lcom/android/server/JrdHIFIService;

    #getter for: Lcom/android/server/JrdHIFIService;->mAudioMan:Landroid/media/AudioManager;
    invoke-static {v5}, Lcom/android/server/JrdHIFIService;->access$000(Lcom/android/server/JrdHIFIService;)Landroid/media/AudioManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 199
    const-string v5, "JrdHIFIService"

    const-string v6, "HIFI enable"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    iget-object v5, p0, Lcom/android/server/JrdHIFIService$3;->this$0:Lcom/android/server/JrdHIFIService;

    #getter for: Lcom/android/server/JrdHIFIService;->mAudioMan:Landroid/media/AudioManager;
    invoke-static {v5}, Lcom/android/server/JrdHIFIService;->access$000(Lcom/android/server/JrdHIFIService;)Landroid/media/AudioManager;

    move-result-object v5

    const-string v6, "SetHiFiDACStatus=1"

    invoke-virtual {v5, v6}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 201
    iget-object v5, p0, Lcom/android/server/JrdHIFIService$3;->this$0:Lcom/android/server/JrdHIFIService;

    iget-object v6, p0, Lcom/android/server/JrdHIFIService$3;->this$0:Lcom/android/server/JrdHIFIService;

    #getter for: Lcom/android/server/JrdHIFIService;->mHIFIStatus:I
    invoke-static {v6}, Lcom/android/server/JrdHIFIService;->access$100(Lcom/android/server/JrdHIFIService;)I

    move-result v6

    if-ne v6, v3, :cond_2

    move v4, v3

    :cond_2
    #calls: Lcom/android/server/JrdHIFIService;->sendMusicStatusBroadcast(ZZ)V
    invoke-static {v5, v3, v4}, Lcom/android/server/JrdHIFIService;->access$200(Lcom/android/server/JrdHIFIService;ZZ)V

    goto :goto_1

    .line 205
    .end local v0           #HIFIStatus:I
    .end local v2           #hifi:Ljava/lang/String;
    :cond_3
    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 206
    iget-object v3, p0, Lcom/android/server/JrdHIFIService$3;->this$0:Lcom/android/server/JrdHIFIService;

    #getter for: Lcom/android/server/JrdHIFIService;->mAudioMan:Landroid/media/AudioManager;
    invoke-static {v3}, Lcom/android/server/JrdHIFIService;->access$000(Lcom/android/server/JrdHIFIService;)Landroid/media/AudioManager;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 207
    const-string v3, "JrdHIFIService"

    const-string v5, "Boot start to disable HIFI."

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    iget-object v3, p0, Lcom/android/server/JrdHIFIService$3;->this$0:Lcom/android/server/JrdHIFIService;

    #getter for: Lcom/android/server/JrdHIFIService;->mAudioMan:Landroid/media/AudioManager;
    invoke-static {v3}, Lcom/android/server/JrdHIFIService;->access$000(Lcom/android/server/JrdHIFIService;)Landroid/media/AudioManager;

    move-result-object v3

    const-string v5, "SetHiFiDACStatus=0"

    invoke-virtual {v3, v5}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 214
    :goto_2
    :try_start_0
    iget-object v3, p0, Lcom/android/server/JrdHIFIService$3;->this$0:Lcom/android/server/JrdHIFIService;

    #getter for: Lcom/android/server/JrdHIFIService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/JrdHIFIService;->access$300(Lcom/android/server/JrdHIFIService;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "hifi_current_status"

    invoke-static {v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 215
    :catch_0
    move-exception v1

    .line 217
    .local v1, e:Landroid/provider/Settings$SettingNotFoundException;
    const-string v3, "JrdHIFIService"

    const-string v5, "hifi_current_status do not init yet"

    invoke-static {v3, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    iget-object v3, p0, Lcom/android/server/JrdHIFIService$3;->this$0:Lcom/android/server/JrdHIFIService;

    #getter for: Lcom/android/server/JrdHIFIService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/JrdHIFIService;->access$300(Lcom/android/server/JrdHIFIService;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "hifi_current_status"

    invoke-static {v3, v5, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 210
    .end local v1           #e:Landroid/provider/Settings$SettingNotFoundException;
    :cond_4
    const-string v3, "JrdHIFIService"

    const-string v5, "AudioManager is not ready."

    invoke-static {v3, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 188
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
