.class Lcom/android/jrdsettings/audioshare/service/AudioShareService$1;
.super Landroid/content/BroadcastReceiver;
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
    .line 233
    iput-object p1, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$1;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, 0x1

    .line 236
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 237
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 238
    iget-object v2, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$1;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    #getter for: Lcom/android/jrdsettings/audioshare/service/AudioShareService;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->access$000(Lcom/android/jrdsettings/audioshare/service/AudioShareService;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "WIFI_STATE_CHANGED_ACTION"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    :goto_0
    return-void

    .line 245
    :cond_0
    const-string v2, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 246
    iget-object v2, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$1;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    #getter for: Lcom/android/jrdsettings/audioshare/service/AudioShareService;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->access$000(Lcom/android/jrdsettings/audioshare/service/AudioShareService;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "CONNECTIVITY_ACTION"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 255
    :cond_1
    const-string v2, "android.intent.action.NEW_OUTGOING_CALL"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 256
    iget-object v2, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$1;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    #getter for: Lcom/android/jrdsettings/audioshare/service/AudioShareService;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->access$000(Lcom/android/jrdsettings/audioshare/service/AudioShareService;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ACTION_NEW_OUTGOING_CALL"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    iget-object v2, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$1;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    #calls: Lcom/android/jrdsettings/audioshare/service/AudioShareService;->muteLocalAudioBeaming(Z)Z
    invoke-static {v2, v4}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->access$100(Lcom/android/jrdsettings/audioshare/service/AudioShareService;Z)Z

    goto :goto_0

    .line 259
    :cond_2
    const-string v2, "intent_audio_share_stop_Service"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 260
    iget-object v2, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$1;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    #getter for: Lcom/android/jrdsettings/audioshare/service/AudioShareService;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->access$000(Lcom/android/jrdsettings/audioshare/service/AudioShareService;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "INTENT_STOP_SERVICE"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    iget-object v2, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$1;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    #calls: Lcom/android/jrdsettings/audioshare/service/AudioShareService;->stopService()V
    invoke-static {v2}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->access$200(Lcom/android/jrdsettings/audioshare/service/AudioShareService;)V

    goto :goto_0

    .line 267
    :cond_3
    const-string v2, "phone"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 269
    .local v1, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 280
    :pswitch_0
    iget-object v2, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$1;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    #getter for: Lcom/android/jrdsettings/audioshare/service/AudioShareService;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->access$000(Lcom/android/jrdsettings/audioshare/service/AudioShareService;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "CALL_STATE_IDLE"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    iget-object v2, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$1;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    iget-object v3, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$1;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    #getter for: Lcom/android/jrdsettings/audioshare/service/AudioShareService;->mCurrentLocalMute:Z
    invoke-static {v3}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->access$300(Lcom/android/jrdsettings/audioshare/service/AudioShareService;)Z

    move-result v3

    #calls: Lcom/android/jrdsettings/audioshare/service/AudioShareService;->muteLocalAudioBeaming(Z)Z
    invoke-static {v2, v3}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->access$100(Lcom/android/jrdsettings/audioshare/service/AudioShareService;Z)Z

    goto :goto_0

    .line 271
    :pswitch_1
    iget-object v2, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$1;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    #getter for: Lcom/android/jrdsettings/audioshare/service/AudioShareService;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->access$000(Lcom/android/jrdsettings/audioshare/service/AudioShareService;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "CALL_STATE_RINGING"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    iget-object v2, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$1;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    #calls: Lcom/android/jrdsettings/audioshare/service/AudioShareService;->muteLocalAudioBeaming(Z)Z
    invoke-static {v2, v4}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->access$100(Lcom/android/jrdsettings/audioshare/service/AudioShareService;Z)Z

    goto :goto_0

    .line 275
    :pswitch_2
    iget-object v2, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$1;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    #getter for: Lcom/android/jrdsettings/audioshare/service/AudioShareService;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->access$000(Lcom/android/jrdsettings/audioshare/service/AudioShareService;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "CALL_STATE_OFFHOOK"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    iget-object v2, p0, Lcom/android/jrdsettings/audioshare/service/AudioShareService$1;->this$0:Lcom/android/jrdsettings/audioshare/service/AudioShareService;

    #calls: Lcom/android/jrdsettings/audioshare/service/AudioShareService;->muteLocalAudioBeaming(Z)Z
    invoke-static {v2, v4}, Lcom/android/jrdsettings/audioshare/service/AudioShareService;->access$100(Lcom/android/jrdsettings/audioshare/service/AudioShareService;Z)Z

    goto/16 :goto_0

    .line 269
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
