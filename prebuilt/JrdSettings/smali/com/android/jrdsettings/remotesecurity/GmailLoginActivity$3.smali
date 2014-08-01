.class Lcom/android/jrdsettings/remotesecurity/GmailLoginActivity$3;
.super Landroid/content/BroadcastReceiver;
.source "GmailLoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/jrdsettings/remotesecurity/GmailLoginActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/jrdsettings/remotesecurity/GmailLoginActivity;


# direct methods
.method constructor <init>(Lcom/android/jrdsettings/remotesecurity/GmailLoginActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 290
    iput-object p1, p0, Lcom/android/jrdsettings/remotesecurity/GmailLoginActivity$3;->this$0:Lcom/android/jrdsettings/remotesecurity/GmailLoginActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 293
    const-string v2, "message_type"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 295
    .local v0, message_type:I
    const-string v2, "GmailLoginActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "intent.getAction()="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";message_type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/jrdsettings/remotesecurity/util/LogX;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    packed-switch v0, :pswitch_data_0

    .line 310
    :goto_0
    return-void

    .line 300
    :pswitch_0
    const-string v2, "GmailLoginActivity"

    const-string v3, "UNREGISTER_MESSAGE_TYPE"

    invoke-static {v2, v3}, Lcom/android/jrdsettings/remotesecurity/util/LogX;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    new-instance v1, Lcom/android/jrdsettings/remotesecurity/logic/request/UnregisterOnServerRequest;

    iget-object v2, p0, Lcom/android/jrdsettings/remotesecurity/GmailLoginActivity$3;->this$0:Lcom/android/jrdsettings/remotesecurity/GmailLoginActivity;

    iget-object v3, p0, Lcom/android/jrdsettings/remotesecurity/GmailLoginActivity$3;->this$0:Lcom/android/jrdsettings/remotesecurity/GmailLoginActivity;

    #getter for: Lcom/android/jrdsettings/remotesecurity/GmailLoginActivity;->mUnregisterHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/jrdsettings/remotesecurity/GmailLoginActivity;->access$300(Lcom/android/jrdsettings/remotesecurity/GmailLoginActivity;)Landroid/os/Handler;

    move-result-object v3

    const-string v4, "phone/unregister"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/jrdsettings/remotesecurity/logic/request/UnregisterOnServerRequest;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    .line 304
    .local v1, unregisterRequest:Lcom/android/jrdsettings/remotesecurity/logic/request/UnregisterOnServerRequest;
    invoke-virtual {v1}, Lcom/android/jrdsettings/remotesecurity/logic/request/Request;->sendHttpRequest()V

    goto :goto_0

    .line 297
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
    .end packed-switch
.end method
