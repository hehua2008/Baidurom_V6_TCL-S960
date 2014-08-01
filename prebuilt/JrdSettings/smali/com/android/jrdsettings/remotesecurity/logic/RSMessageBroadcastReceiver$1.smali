.class Lcom/android/jrdsettings/remotesecurity/logic/RSMessageBroadcastReceiver$1;
.super Landroid/os/Handler;
.source "RSMessageBroadcastReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/jrdsettings/remotesecurity/logic/RSMessageBroadcastReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/jrdsettings/remotesecurity/logic/RSMessageBroadcastReceiver;


# direct methods
.method constructor <init>(Lcom/android/jrdsettings/remotesecurity/logic/RSMessageBroadcastReceiver;)V
    .locals 0
    .parameter

    .prologue
    .line 183
    iput-object p1, p0, Lcom/android/jrdsettings/remotesecurity/logic/RSMessageBroadcastReceiver$1;->this$0:Lcom/android/jrdsettings/remotesecurity/logic/RSMessageBroadcastReceiver;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    .line 189
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 190
    iget v4, p1, Landroid/os/Message;->what:I

    .line 191
    .local v4, what:I
    packed-switch v4, :pswitch_data_0

    .line 211
    :cond_0
    :goto_0
    return-void

    .line 195
    :pswitch_0
    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 196
    .local v3, simId:I
    iget-object v5, p0, Lcom/android/jrdsettings/remotesecurity/logic/RSMessageBroadcastReceiver$1;->this$0:Lcom/android/jrdsettings/remotesecurity/logic/RSMessageBroadcastReceiver;

    #getter for: Lcom/android/jrdsettings/remotesecurity/logic/RSMessageBroadcastReceiver;->mHanlder:Landroid/os/Handler;
    invoke-static {v5}, Lcom/android/jrdsettings/remotesecurity/logic/RSMessageBroadcastReceiver;->access$000(Lcom/android/jrdsettings/remotesecurity/logic/RSMessageBroadcastReceiver;)Landroid/os/Handler;

    move-result-object v5

    const v6, 0x10001

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 197
    new-instance v0, Lcom/android/jrdsettings/remotesecurity/logic/RSDBHelper;

    iget-object v5, p0, Lcom/android/jrdsettings/remotesecurity/logic/RSMessageBroadcastReceiver$1;->this$0:Lcom/android/jrdsettings/remotesecurity/logic/RSMessageBroadcastReceiver;

    #getter for: Lcom/android/jrdsettings/remotesecurity/logic/RSMessageBroadcastReceiver;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/jrdsettings/remotesecurity/logic/RSMessageBroadcastReceiver;->access$100(Lcom/android/jrdsettings/remotesecurity/logic/RSMessageBroadcastReceiver;)Landroid/content/Context;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/android/jrdsettings/remotesecurity/logic/RSDBHelper;-><init>(Landroid/content/Context;)V

    .line 198
    .local v0, dbRsdbHelper:Lcom/android/jrdsettings/remotesecurity/logic/RSDBHelper;
    const-string v5, "rs_state"

    invoke-virtual {v0, v5}, Lcom/android/jrdsettings/remotesecurity/logic/RSDBHelper;->getIntValue(Ljava/lang/String;)I

    move-result v1

    .line 199
    .local v1, rs_state:I
    const-string v5, "sec_number"

    invoke-virtual {v0, v5}, Lcom/android/jrdsettings/remotesecurity/logic/RSDBHelper;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 200
    .local v2, sec_number:Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-static {v2}, Lcom/android/jrdsettings/remotesecurity/util/CommonUtilities;->isValidString(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 204
    iget-object v5, p0, Lcom/android/jrdsettings/remotesecurity/logic/RSMessageBroadcastReceiver$1;->this$0:Lcom/android/jrdsettings/remotesecurity/logic/RSMessageBroadcastReceiver;

    iget-object v6, p0, Lcom/android/jrdsettings/remotesecurity/logic/RSMessageBroadcastReceiver$1;->this$0:Lcom/android/jrdsettings/remotesecurity/logic/RSMessageBroadcastReceiver;

    #getter for: Lcom/android/jrdsettings/remotesecurity/logic/RSMessageBroadcastReceiver;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/jrdsettings/remotesecurity/logic/RSMessageBroadcastReceiver;->access$100(Lcom/android/jrdsettings/remotesecurity/logic/RSMessageBroadcastReceiver;)Landroid/content/Context;

    move-result-object v6

    #calls: Lcom/android/jrdsettings/remotesecurity/logic/RSMessageBroadcastReceiver;->isNewSIM(Landroid/content/Context;I)Z
    invoke-static {v5, v6, v3}, Lcom/android/jrdsettings/remotesecurity/logic/RSMessageBroadcastReceiver;->access$200(Lcom/android/jrdsettings/remotesecurity/logic/RSMessageBroadcastReceiver;Landroid/content/Context;I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 206
    iget-object v5, p0, Lcom/android/jrdsettings/remotesecurity/logic/RSMessageBroadcastReceiver$1;->this$0:Lcom/android/jrdsettings/remotesecurity/logic/RSMessageBroadcastReceiver;

    iget-object v6, p0, Lcom/android/jrdsettings/remotesecurity/logic/RSMessageBroadcastReceiver$1;->this$0:Lcom/android/jrdsettings/remotesecurity/logic/RSMessageBroadcastReceiver;

    #getter for: Lcom/android/jrdsettings/remotesecurity/logic/RSMessageBroadcastReceiver;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/jrdsettings/remotesecurity/logic/RSMessageBroadcastReceiver;->access$100(Lcom/android/jrdsettings/remotesecurity/logic/RSMessageBroadcastReceiver;)Landroid/content/Context;

    move-result-object v6

    #calls: Lcom/android/jrdsettings/remotesecurity/logic/RSMessageBroadcastReceiver;->doSendSIMInfo(Landroid/content/Context;I)V
    invoke-static {v5, v6, v3}, Lcom/android/jrdsettings/remotesecurity/logic/RSMessageBroadcastReceiver;->access$300(Lcom/android/jrdsettings/remotesecurity/logic/RSMessageBroadcastReceiver;Landroid/content/Context;I)V

    goto :goto_0

    .line 191
    :pswitch_data_0
    .packed-switch 0x10001
        :pswitch_0
    .end packed-switch
.end method
