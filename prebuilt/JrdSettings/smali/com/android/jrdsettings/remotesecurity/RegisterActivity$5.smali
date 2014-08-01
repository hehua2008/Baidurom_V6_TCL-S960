.class Lcom/android/jrdsettings/remotesecurity/RegisterActivity$5;
.super Landroid/content/BroadcastReceiver;
.source "RegisterActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/jrdsettings/remotesecurity/RegisterActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/jrdsettings/remotesecurity/RegisterActivity;


# direct methods
.method constructor <init>(Lcom/android/jrdsettings/remotesecurity/RegisterActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 277
    iput-object p1, p0, Lcom/android/jrdsettings/remotesecurity/RegisterActivity$5;->this$0:Lcom/android/jrdsettings/remotesecurity/RegisterActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 280
    const-string v3, "message_type"

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 282
    .local v0, message_type:I
    const-string v3, "Register"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "intent.getAction()="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";message_type="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/jrdsettings/remotesecurity/util/LogX;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    packed-switch v0, :pswitch_data_0

    .line 306
    :goto_0
    return-void

    .line 288
    :pswitch_0
    const-string v3, "Register"

    const-string v4, "case CommonUtilities.REGISTER_MESSAGE_TYPE"

    invoke-static {v3, v4}, Lcom/android/jrdsettings/remotesecurity/util/LogX;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "regid"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 291
    .local v1, regId:Ljava/lang/String;
    new-instance v2, Lcom/android/jrdsettings/remotesecurity/logic/request/RegisteredOnServerRequest;

    iget-object v3, p0, Lcom/android/jrdsettings/remotesecurity/RegisterActivity$5;->this$0:Lcom/android/jrdsettings/remotesecurity/RegisterActivity;

    iget-object v4, p0, Lcom/android/jrdsettings/remotesecurity/RegisterActivity$5;->this$0:Lcom/android/jrdsettings/remotesecurity/RegisterActivity;

    #getter for: Lcom/android/jrdsettings/remotesecurity/RegisterActivity;->mRegisterHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/jrdsettings/remotesecurity/RegisterActivity;->access$500(Lcom/android/jrdsettings/remotesecurity/RegisterActivity;)Landroid/os/Handler;

    move-result-object v4

    const-string v5, "phone/register"

    invoke-direct {v2, v3, v4, v5}, Lcom/android/jrdsettings/remotesecurity/logic/request/RegisteredOnServerRequest;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    .line 294
    .local v2, registerRequest:Lcom/android/jrdsettings/remotesecurity/logic/request/RegisteredOnServerRequest;
    iget-object v3, p0, Lcom/android/jrdsettings/remotesecurity/RegisterActivity$5;->this$0:Lcom/android/jrdsettings/remotesecurity/RegisterActivity;

    #getter for: Lcom/android/jrdsettings/remotesecurity/RegisterActivity;->mSecurity_num:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/jrdsettings/remotesecurity/RegisterActivity;->access$000(Lcom/android/jrdsettings/remotesecurity/RegisterActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/jrdsettings/remotesecurity/logic/request/RegisteredOnServerRequest;->setSecurity_num(Ljava/lang/String;)V

    .line 295
    iget-object v3, p0, Lcom/android/jrdsettings/remotesecurity/RegisterActivity$5;->this$0:Lcom/android/jrdsettings/remotesecurity/RegisterActivity;

    #getter for: Lcom/android/jrdsettings/remotesecurity/RegisterActivity;->mCountry:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/jrdsettings/remotesecurity/RegisterActivity;->access$600(Lcom/android/jrdsettings/remotesecurity/RegisterActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/jrdsettings/remotesecurity/logic/request/RegisteredOnServerRequest;->setmCountry(Ljava/lang/String;)V

    .line 296
    iget-object v3, p0, Lcom/android/jrdsettings/remotesecurity/RegisterActivity$5;->this$0:Lcom/android/jrdsettings/remotesecurity/RegisterActivity;

    #getter for: Lcom/android/jrdsettings/remotesecurity/RegisterActivity;->mPhoneName:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/jrdsettings/remotesecurity/RegisterActivity;->access$200(Lcom/android/jrdsettings/remotesecurity/RegisterActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/jrdsettings/remotesecurity/logic/request/RegisteredOnServerRequest;->setmPhone_name(Ljava/lang/String;)V

    .line 297
    iget-object v3, p0, Lcom/android/jrdsettings/remotesecurity/RegisterActivity$5;->this$0:Lcom/android/jrdsettings/remotesecurity/RegisterActivity;

    #getter for: Lcom/android/jrdsettings/remotesecurity/RegisterActivity;->mUsername:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/jrdsettings/remotesecurity/RegisterActivity;->access$700(Lcom/android/jrdsettings/remotesecurity/RegisterActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/jrdsettings/remotesecurity/logic/request/RegisteredOnServerRequest;->setmUsername(Ljava/lang/String;)V

    .line 298
    invoke-virtual {v2, v1}, Lcom/android/jrdsettings/remotesecurity/logic/request/RegisteredOnServerRequest;->setmRegid(Ljava/lang/String;)V

    .line 299
    iget-object v3, p0, Lcom/android/jrdsettings/remotesecurity/RegisterActivity$5;->this$0:Lcom/android/jrdsettings/remotesecurity/RegisterActivity;

    #getter for: Lcom/android/jrdsettings/remotesecurity/RegisterActivity;->mEmail:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/jrdsettings/remotesecurity/RegisterActivity;->access$800(Lcom/android/jrdsettings/remotesecurity/RegisterActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/jrdsettings/remotesecurity/logic/request/RegisteredOnServerRequest;->setmEmail(Ljava/lang/String;)V

    .line 300
    invoke-virtual {v2}, Lcom/android/jrdsettings/remotesecurity/logic/request/Request;->sendHttpRequest()V

    .line 301
    const-string v3, "Register"

    const-string v4, "After sendHttpRequest"

    invoke-static {v3, v4}, Lcom/android/jrdsettings/remotesecurity/util/LogX;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 285
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
