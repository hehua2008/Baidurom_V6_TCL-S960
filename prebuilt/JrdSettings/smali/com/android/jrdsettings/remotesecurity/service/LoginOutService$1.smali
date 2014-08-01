.class Lcom/android/jrdsettings/remotesecurity/service/LoginOutService$1;
.super Landroid/content/BroadcastReceiver;
.source "LoginOutService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/jrdsettings/remotesecurity/service/LoginOutService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/jrdsettings/remotesecurity/service/LoginOutService;


# direct methods
.method constructor <init>(Lcom/android/jrdsettings/remotesecurity/service/LoginOutService;)V
    .locals 0
    .parameter

    .prologue
    .line 34
    iput-object p1, p0, Lcom/android/jrdsettings/remotesecurity/service/LoginOutService$1;->this$0:Lcom/android/jrdsettings/remotesecurity/service/LoginOutService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 37
    const-string v2, "message_type"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 39
    .local v0, message_type:I
    const-string v2, "LoginOutService"

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

    .line 41
    packed-switch v0, :pswitch_data_0

    .line 55
    :goto_0
    return-void

    .line 44
    :pswitch_0
    const-string v2, "LoginOutService"

    const-string v3, "UNREGISTER_MESSAGE_TYPE"

    invoke-static {v2, v3}, Lcom/android/jrdsettings/remotesecurity/util/LogX;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    new-instance v1, Lcom/android/jrdsettings/remotesecurity/logic/request/UnregisterOnServerRequest;

    iget-object v2, p0, Lcom/android/jrdsettings/remotesecurity/service/LoginOutService$1;->this$0:Lcom/android/jrdsettings/remotesecurity/service/LoginOutService;

    #getter for: Lcom/android/jrdsettings/remotesecurity/service/LoginOutService;->mUnregisterHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/jrdsettings/remotesecurity/service/LoginOutService;->access$000(Lcom/android/jrdsettings/remotesecurity/service/LoginOutService;)Landroid/os/Handler;

    move-result-object v2

    const-string v3, "phone/unregister"

    invoke-direct {v1, p1, v2, v3}, Lcom/android/jrdsettings/remotesecurity/logic/request/UnregisterOnServerRequest;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    .line 47
    .local v1, unregisterRequest:Lcom/android/jrdsettings/remotesecurity/logic/request/UnregisterOnServerRequest;
    invoke-virtual {v1}, Lcom/android/jrdsettings/remotesecurity/logic/request/Request;->sendHttpRequest()V

    .line 48
    iget-object v2, p0, Lcom/android/jrdsettings/remotesecurity/service/LoginOutService$1;->this$0:Lcom/android/jrdsettings/remotesecurity/service/LoginOutService;

    #getter for: Lcom/android/jrdsettings/remotesecurity/service/LoginOutService;->mHandleMessageReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v2}, Lcom/android/jrdsettings/remotesecurity/service/LoginOutService;->access$100(Lcom/android/jrdsettings/remotesecurity/service/LoginOutService;)Landroid/content/BroadcastReceiver;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0

    .line 41
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
    .end packed-switch
.end method
