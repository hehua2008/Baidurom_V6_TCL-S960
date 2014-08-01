.class Lcom/android/jrdsettings/remotesecurity/GmailLoginActivity$1$1;
.super Ljava/lang/Object;
.source "GmailLoginActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/jrdsettings/remotesecurity/GmailLoginActivity$1;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/jrdsettings/remotesecurity/GmailLoginActivity$1;


# direct methods
.method constructor <init>(Lcom/android/jrdsettings/remotesecurity/GmailLoginActivity$1;)V
    .locals 0
    .parameter

    .prologue
    .line 149
    iput-object p1, p0, Lcom/android/jrdsettings/remotesecurity/GmailLoginActivity$1$1;->this$1:Lcom/android/jrdsettings/remotesecurity/GmailLoginActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 152
    :try_start_0
    iget-object v3, p0, Lcom/android/jrdsettings/remotesecurity/GmailLoginActivity$1$1;->this$1:Lcom/android/jrdsettings/remotesecurity/GmailLoginActivity$1;

    iget-object v3, v3, Lcom/android/jrdsettings/remotesecurity/GmailLoginActivity$1;->this$0:Lcom/android/jrdsettings/remotesecurity/GmailLoginActivity;

    iget-object v4, p0, Lcom/android/jrdsettings/remotesecurity/GmailLoginActivity$1$1;->this$1:Lcom/android/jrdsettings/remotesecurity/GmailLoginActivity$1;

    iget-object v4, v4, Lcom/android/jrdsettings/remotesecurity/GmailLoginActivity$1;->this$0:Lcom/android/jrdsettings/remotesecurity/GmailLoginActivity;

    iget-object v4, v4, Lcom/android/jrdsettings/remotesecurity/GmailLoginActivity;->tokenReq:Lcom/google/api/client/googleapis/auth/oauth2/GoogleAuthorizationCodeTokenRequest;

    invoke-virtual {v4}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleAuthorizationCodeTokenRequest;->execute()Lcom/google/api/client/googleapis/auth/oauth2/GoogleTokenResponse;

    move-result-object v4

    iput-object v4, v3, Lcom/android/jrdsettings/remotesecurity/GmailLoginActivity;->resp:Lcom/google/api/client/googleapis/auth/oauth2/GoogleTokenResponse;

    .line 153
    iget-object v3, p0, Lcom/android/jrdsettings/remotesecurity/GmailLoginActivity$1$1;->this$1:Lcom/android/jrdsettings/remotesecurity/GmailLoginActivity$1;

    iget-object v3, v3, Lcom/android/jrdsettings/remotesecurity/GmailLoginActivity$1;->this$0:Lcom/android/jrdsettings/remotesecurity/GmailLoginActivity;

    iget-object v3, v3, Lcom/android/jrdsettings/remotesecurity/GmailLoginActivity;->resp:Lcom/google/api/client/googleapis/auth/oauth2/GoogleTokenResponse;

    invoke-virtual {v3}, Lcom/google/api/client/auth/oauth2/TokenResponse;->getAccessToken()Ljava/lang/String;

    move-result-object v2

    .line 154
    .local v2, token:Ljava/lang/String;
    const-string v3, "GmailLoginActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "tokenReq="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/jrdsettings/remotesecurity/GmailLoginActivity$1$1;->this$1:Lcom/android/jrdsettings/remotesecurity/GmailLoginActivity$1;

    iget-object v5, v5, Lcom/android/jrdsettings/remotesecurity/GmailLoginActivity$1;->this$0:Lcom/android/jrdsettings/remotesecurity/GmailLoginActivity;

    iget-object v5, v5, Lcom/android/jrdsettings/remotesecurity/GmailLoginActivity;->tokenReq:Lcom/google/api/client/googleapis/auth/oauth2/GoogleAuthorizationCodeTokenRequest;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";resp="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/jrdsettings/remotesecurity/GmailLoginActivity$1$1;->this$1:Lcom/android/jrdsettings/remotesecurity/GmailLoginActivity$1;

    iget-object v5, v5, Lcom/android/jrdsettings/remotesecurity/GmailLoginActivity$1;->this$0:Lcom/android/jrdsettings/remotesecurity/GmailLoginActivity;

    iget-object v5, v5, Lcom/android/jrdsettings/remotesecurity/GmailLoginActivity;->resp:Lcom/google/api/client/googleapis/auth/oauth2/GoogleTokenResponse;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";token="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";url="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/jrdsettings/remotesecurity/GmailLoginActivity$1$1;->this$1:Lcom/android/jrdsettings/remotesecurity/GmailLoginActivity$1;

    iget-object v5, v5, Lcom/android/jrdsettings/remotesecurity/GmailLoginActivity$1;->this$0:Lcom/android/jrdsettings/remotesecurity/GmailLoginActivity;

    iget-object v5, v5, Lcom/android/jrdsettings/remotesecurity/GmailLoginActivity;->urlString:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/jrdsettings/remotesecurity/util/LogX;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    iget-object v3, p0, Lcom/android/jrdsettings/remotesecurity/GmailLoginActivity$1$1;->this$1:Lcom/android/jrdsettings/remotesecurity/GmailLoginActivity$1;

    iget-object v3, v3, Lcom/android/jrdsettings/remotesecurity/GmailLoginActivity$1;->this$0:Lcom/android/jrdsettings/remotesecurity/GmailLoginActivity;

    iget-object v3, v3, Lcom/android/jrdsettings/remotesecurity/GmailLoginActivity;->mWebView:Landroid/webkit/WebView;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 158
    new-instance v1, Lcom/android/jrdsettings/remotesecurity/logic/request/GetUserInfoRequest;

    iget-object v3, p0, Lcom/android/jrdsettings/remotesecurity/GmailLoginActivity$1$1;->this$1:Lcom/android/jrdsettings/remotesecurity/GmailLoginActivity$1;

    iget-object v3, v3, Lcom/android/jrdsettings/remotesecurity/GmailLoginActivity$1;->this$0:Lcom/android/jrdsettings/remotesecurity/GmailLoginActivity;

    iget-object v4, p0, Lcom/android/jrdsettings/remotesecurity/GmailLoginActivity$1$1;->this$1:Lcom/android/jrdsettings/remotesecurity/GmailLoginActivity$1;

    iget-object v4, v4, Lcom/android/jrdsettings/remotesecurity/GmailLoginActivity$1;->this$0:Lcom/android/jrdsettings/remotesecurity/GmailLoginActivity;

    #getter for: Lcom/android/jrdsettings/remotesecurity/GmailLoginActivity;->getUserInfoHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/jrdsettings/remotesecurity/GmailLoginActivity;->access$000(Lcom/android/jrdsettings/remotesecurity/GmailLoginActivity;)Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "https://www.googleapis.com/oauth2/v2/userinfo?access_token="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/jrdsettings/remotesecurity/GmailLoginActivity$1$1;->this$1:Lcom/android/jrdsettings/remotesecurity/GmailLoginActivity$1;

    iget-object v6, v6, Lcom/android/jrdsettings/remotesecurity/GmailLoginActivity$1;->this$0:Lcom/android/jrdsettings/remotesecurity/GmailLoginActivity;

    #getter for: Lcom/android/jrdsettings/remotesecurity/GmailLoginActivity;->mIsLogin:Z
    invoke-static {v6}, Lcom/android/jrdsettings/remotesecurity/GmailLoginActivity;->access$100(Lcom/android/jrdsettings/remotesecurity/GmailLoginActivity;)Z

    move-result v6

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/android/jrdsettings/remotesecurity/logic/request/GetUserInfoRequest;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Z)V

    .line 163
    .local v1, getUserInfoRequest:Lcom/android/jrdsettings/remotesecurity/logic/request/GetUserInfoRequest;
    invoke-virtual {v1}, Lcom/android/jrdsettings/remotesecurity/logic/request/Request;->sendHttpRequest()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    .end local v1           #getUserInfoRequest:Lcom/android/jrdsettings/remotesecurity/logic/request/GetUserInfoRequest;
    .end local v2           #token:Ljava/lang/String;
    :goto_0
    return-void

    .line 165
    :catch_0
    move-exception v0

    .line 167
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
