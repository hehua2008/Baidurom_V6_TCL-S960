.class Lcom/android/jrdsettings/remotesecurity/RegisterActivity$3;
.super Ljava/lang/Object;
.source "RegisterActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 159
    iput-object p1, p0, Lcom/android/jrdsettings/remotesecurity/RegisterActivity$3;->this$0:Lcom/android/jrdsettings/remotesecurity/RegisterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    .line 161
    iget-object v2, p0, Lcom/android/jrdsettings/remotesecurity/RegisterActivity$3;->this$0:Lcom/android/jrdsettings/remotesecurity/RegisterActivity;

    iget-object v3, p0, Lcom/android/jrdsettings/remotesecurity/RegisterActivity$3;->this$0:Lcom/android/jrdsettings/remotesecurity/RegisterActivity;

    #getter for: Lcom/android/jrdsettings/remotesecurity/RegisterActivity;->mSecurity_numEditText:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/android/jrdsettings/remotesecurity/RegisterActivity;->access$100(Lcom/android/jrdsettings/remotesecurity/RegisterActivity;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    #setter for: Lcom/android/jrdsettings/remotesecurity/RegisterActivity;->mSecurity_num:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/android/jrdsettings/remotesecurity/RegisterActivity;->access$002(Lcom/android/jrdsettings/remotesecurity/RegisterActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 162
    iget-object v2, p0, Lcom/android/jrdsettings/remotesecurity/RegisterActivity$3;->this$0:Lcom/android/jrdsettings/remotesecurity/RegisterActivity;

    iget-object v3, p0, Lcom/android/jrdsettings/remotesecurity/RegisterActivity$3;->this$0:Lcom/android/jrdsettings/remotesecurity/RegisterActivity;

    #getter for: Lcom/android/jrdsettings/remotesecurity/RegisterActivity;->mDeviceNameEditText:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/android/jrdsettings/remotesecurity/RegisterActivity;->access$300(Lcom/android/jrdsettings/remotesecurity/RegisterActivity;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    #setter for: Lcom/android/jrdsettings/remotesecurity/RegisterActivity;->mPhoneName:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/android/jrdsettings/remotesecurity/RegisterActivity;->access$202(Lcom/android/jrdsettings/remotesecurity/RegisterActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 165
    iget-object v2, p0, Lcom/android/jrdsettings/remotesecurity/RegisterActivity$3;->this$0:Lcom/android/jrdsettings/remotesecurity/RegisterActivity;

    invoke-static {v2}, Lcom/android/jrdsettings/remotesecurity/gcm/GCMRegistrar;->checkDevice(Landroid/content/Context;)V

    .line 166
    iget-object v2, p0, Lcom/android/jrdsettings/remotesecurity/RegisterActivity$3;->this$0:Lcom/android/jrdsettings/remotesecurity/RegisterActivity;

    invoke-static {v2}, Lcom/android/jrdsettings/remotesecurity/gcm/GCMRegistrar;->checkManifest(Landroid/content/Context;)V

    .line 168
    new-instance v0, Lcom/android/jrdsettings/remotesecurity/logic/RSDBHelper;

    iget-object v2, p0, Lcom/android/jrdsettings/remotesecurity/RegisterActivity$3;->this$0:Lcom/android/jrdsettings/remotesecurity/RegisterActivity;

    invoke-direct {v0, v2}, Lcom/android/jrdsettings/remotesecurity/logic/RSDBHelper;-><init>(Landroid/content/Context;)V

    .line 170
    .local v0, rSDBHelper:Lcom/android/jrdsettings/remotesecurity/logic/RSDBHelper;
    iget-object v2, p0, Lcom/android/jrdsettings/remotesecurity/RegisterActivity$3;->this$0:Lcom/android/jrdsettings/remotesecurity/RegisterActivity;

    const-string v3, "regid"

    invoke-virtual {v0, v3}, Lcom/android/jrdsettings/remotesecurity/logic/RSDBHelper;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    #setter for: Lcom/android/jrdsettings/remotesecurity/RegisterActivity;->mRegId:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/android/jrdsettings/remotesecurity/RegisterActivity;->access$402(Lcom/android/jrdsettings/remotesecurity/RegisterActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 171
    const-string v2, "Register"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mRegId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/jrdsettings/remotesecurity/RegisterActivity$3;->this$0:Lcom/android/jrdsettings/remotesecurity/RegisterActivity;

    #getter for: Lcom/android/jrdsettings/remotesecurity/RegisterActivity;->mRegId:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/jrdsettings/remotesecurity/RegisterActivity;->access$400(Lcom/android/jrdsettings/remotesecurity/RegisterActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/jrdsettings/remotesecurity/util/LogX;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    iget-object v2, p0, Lcom/android/jrdsettings/remotesecurity/RegisterActivity$3;->this$0:Lcom/android/jrdsettings/remotesecurity/RegisterActivity;

    #getter for: Lcom/android/jrdsettings/remotesecurity/RegisterActivity;->mRegId:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/jrdsettings/remotesecurity/RegisterActivity;->access$400(Lcom/android/jrdsettings/remotesecurity/RegisterActivity;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/jrdsettings/remotesecurity/RegisterActivity$3;->this$0:Lcom/android/jrdsettings/remotesecurity/RegisterActivity;

    #getter for: Lcom/android/jrdsettings/remotesecurity/RegisterActivity;->mRegId:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/jrdsettings/remotesecurity/RegisterActivity;->access$400(Lcom/android/jrdsettings/remotesecurity/RegisterActivity;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 177
    :cond_0
    const-string v2, "Register"

    const-string v3, "GCMRegistrar.register"

    invoke-static {v2, v3}, Lcom/android/jrdsettings/remotesecurity/util/LogX;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    iget-object v2, p0, Lcom/android/jrdsettings/remotesecurity/RegisterActivity$3;->this$0:Lcom/android/jrdsettings/remotesecurity/RegisterActivity;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "1035177391792"

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/android/jrdsettings/remotesecurity/gcm/GCMRegistrar;->register(Landroid/content/Context;[Ljava/lang/String;)V

    .line 192
    :goto_0
    return-void

    .line 180
    :cond_1
    const-string v2, "Register"

    const-string v3, "RegisteredOnServerRequest"

    invoke-static {v2, v3}, Lcom/android/jrdsettings/remotesecurity/util/LogX;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    new-instance v1, Lcom/android/jrdsettings/remotesecurity/logic/request/RegisteredOnServerRequest;

    iget-object v2, p0, Lcom/android/jrdsettings/remotesecurity/RegisterActivity$3;->this$0:Lcom/android/jrdsettings/remotesecurity/RegisterActivity;

    iget-object v3, p0, Lcom/android/jrdsettings/remotesecurity/RegisterActivity$3;->this$0:Lcom/android/jrdsettings/remotesecurity/RegisterActivity;

    #getter for: Lcom/android/jrdsettings/remotesecurity/RegisterActivity;->mRegisterHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/jrdsettings/remotesecurity/RegisterActivity;->access$500(Lcom/android/jrdsettings/remotesecurity/RegisterActivity;)Landroid/os/Handler;

    move-result-object v3

    const-string v4, "phone/register"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/jrdsettings/remotesecurity/logic/request/RegisteredOnServerRequest;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    .line 184
    .local v1, registerRequest:Lcom/android/jrdsettings/remotesecurity/logic/request/RegisteredOnServerRequest;
    iget-object v2, p0, Lcom/android/jrdsettings/remotesecurity/RegisterActivity$3;->this$0:Lcom/android/jrdsettings/remotesecurity/RegisterActivity;

    #getter for: Lcom/android/jrdsettings/remotesecurity/RegisterActivity;->mSecurity_num:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/jrdsettings/remotesecurity/RegisterActivity;->access$000(Lcom/android/jrdsettings/remotesecurity/RegisterActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/jrdsettings/remotesecurity/logic/request/RegisteredOnServerRequest;->setSecurity_num(Ljava/lang/String;)V

    .line 185
    iget-object v2, p0, Lcom/android/jrdsettings/remotesecurity/RegisterActivity$3;->this$0:Lcom/android/jrdsettings/remotesecurity/RegisterActivity;

    #getter for: Lcom/android/jrdsettings/remotesecurity/RegisterActivity;->mCountry:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/jrdsettings/remotesecurity/RegisterActivity;->access$600(Lcom/android/jrdsettings/remotesecurity/RegisterActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/jrdsettings/remotesecurity/logic/request/RegisteredOnServerRequest;->setmCountry(Ljava/lang/String;)V

    .line 186
    iget-object v2, p0, Lcom/android/jrdsettings/remotesecurity/RegisterActivity$3;->this$0:Lcom/android/jrdsettings/remotesecurity/RegisterActivity;

    #getter for: Lcom/android/jrdsettings/remotesecurity/RegisterActivity;->mPhoneName:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/jrdsettings/remotesecurity/RegisterActivity;->access$200(Lcom/android/jrdsettings/remotesecurity/RegisterActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/jrdsettings/remotesecurity/logic/request/RegisteredOnServerRequest;->setmPhone_name(Ljava/lang/String;)V

    .line 187
    iget-object v2, p0, Lcom/android/jrdsettings/remotesecurity/RegisterActivity$3;->this$0:Lcom/android/jrdsettings/remotesecurity/RegisterActivity;

    #getter for: Lcom/android/jrdsettings/remotesecurity/RegisterActivity;->mUsername:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/jrdsettings/remotesecurity/RegisterActivity;->access$700(Lcom/android/jrdsettings/remotesecurity/RegisterActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/jrdsettings/remotesecurity/logic/request/RegisteredOnServerRequest;->setmUsername(Ljava/lang/String;)V

    .line 188
    iget-object v2, p0, Lcom/android/jrdsettings/remotesecurity/RegisterActivity$3;->this$0:Lcom/android/jrdsettings/remotesecurity/RegisterActivity;

    #getter for: Lcom/android/jrdsettings/remotesecurity/RegisterActivity;->mRegId:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/jrdsettings/remotesecurity/RegisterActivity;->access$400(Lcom/android/jrdsettings/remotesecurity/RegisterActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/jrdsettings/remotesecurity/logic/request/RegisteredOnServerRequest;->setmRegid(Ljava/lang/String;)V

    .line 189
    iget-object v2, p0, Lcom/android/jrdsettings/remotesecurity/RegisterActivity$3;->this$0:Lcom/android/jrdsettings/remotesecurity/RegisterActivity;

    #getter for: Lcom/android/jrdsettings/remotesecurity/RegisterActivity;->mEmail:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/jrdsettings/remotesecurity/RegisterActivity;->access$800(Lcom/android/jrdsettings/remotesecurity/RegisterActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/jrdsettings/remotesecurity/logic/request/RegisteredOnServerRequest;->setmEmail(Ljava/lang/String;)V

    .line 190
    invoke-virtual {v1}, Lcom/android/jrdsettings/remotesecurity/logic/request/Request;->sendHttpRequest()V

    goto :goto_0
.end method
