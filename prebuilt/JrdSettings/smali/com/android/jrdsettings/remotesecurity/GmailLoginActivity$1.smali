.class Lcom/android/jrdsettings/remotesecurity/GmailLoginActivity$1;
.super Landroid/webkit/WebViewClient;
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
    .line 127
    iput-object p1, p0, Lcom/android/jrdsettings/remotesecurity/GmailLoginActivity$1;->this$0:Lcom/android/jrdsettings/remotesecurity/GmailLoginActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method private extractCodeFromUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "url"

    .prologue
    .line 181
    const-string v0, "http://localhost"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x7

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 8
    .parameter "view"
    .parameter "url"

    .prologue
    const/4 v1, -0x1

    .line 137
    iget-object v0, p0, Lcom/android/jrdsettings/remotesecurity/GmailLoginActivity$1;->this$0:Lcom/android/jrdsettings/remotesecurity/GmailLoginActivity;

    iput-object p2, v0, Lcom/android/jrdsettings/remotesecurity/GmailLoginActivity;->urlString:Ljava/lang/String;

    .line 138
    iget-object v0, p0, Lcom/android/jrdsettings/remotesecurity/GmailLoginActivity$1;->this$0:Lcom/android/jrdsettings/remotesecurity/GmailLoginActivity;

    iput-object p1, v0, Lcom/android/jrdsettings/remotesecurity/GmailLoginActivity;->mWebView:Landroid/webkit/WebView;

    .line 139
    const-string v0, "http://localhost"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    const-string v0, "code="

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v1, :cond_1

    .line 141
    invoke-direct {p0, p2}, Lcom/android/jrdsettings/remotesecurity/GmailLoginActivity$1;->extractCodeFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 142
    .local v5, code:Ljava/lang/String;
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 144
    iget-object v7, p0, Lcom/android/jrdsettings/remotesecurity/GmailLoginActivity$1;->this$0:Lcom/android/jrdsettings/remotesecurity/GmailLoginActivity;

    new-instance v0, Lcom/google/api/client/googleapis/auth/oauth2/GoogleAuthorizationCodeTokenRequest;

    new-instance v1, Lcom/google/api/client/http/javanet/NetHttpTransport;

    invoke-direct {v1}, Lcom/google/api/client/http/javanet/NetHttpTransport;-><init>()V

    new-instance v2, Lcom/google/api/client/json/jackson/JacksonFactory;

    invoke-direct {v2}, Lcom/google/api/client/json/jackson/JacksonFactory;-><init>()V

    const-string v3, "1035177391792.apps.googleusercontent.com"

    const-string v4, "U_xquarJjy14Jk-bpblH8Q8E"

    const-string v6, "http://localhost"

    invoke-direct/range {v0 .. v6}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleAuthorizationCodeTokenRequest;-><init>(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/json/JsonFactory;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, v7, Lcom/android/jrdsettings/remotesecurity/GmailLoginActivity;->tokenReq:Lcom/google/api/client/googleapis/auth/oauth2/GoogleAuthorizationCodeTokenRequest;

    .line 149
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/jrdsettings/remotesecurity/GmailLoginActivity$1$1;

    invoke-direct {v1, p0}, Lcom/android/jrdsettings/remotesecurity/GmailLoginActivity$1$1;-><init>(Lcom/android/jrdsettings/remotesecurity/GmailLoginActivity$1;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 172
    iget-object v0, p0, Lcom/android/jrdsettings/remotesecurity/GmailLoginActivity$1;->this$0:Lcom/android/jrdsettings/remotesecurity/GmailLoginActivity;

    iget-object v0, v0, Lcom/android/jrdsettings/remotesecurity/GmailLoginActivity;->progressbar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 177
    .end local v5           #code:Ljava/lang/String;
    :cond_0
    :goto_0
    const-string v0, "GmailLoginActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPageFinished : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/jrdsettings/remotesecurity/util/LogX;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    return-void

    .line 173
    :cond_1
    const-string v0, "error="

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v1, :cond_0

    goto :goto_0
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter "view"
    .parameter "url"
    .parameter "bitmap"

    .prologue
    .line 131
    const-string v0, "GmailLoginActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPageStarted : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/jrdsettings/remotesecurity/util/LogX;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    iget-object v0, p0, Lcom/android/jrdsettings/remotesecurity/GmailLoginActivity$1;->this$0:Lcom/android/jrdsettings/remotesecurity/GmailLoginActivity;

    iput-object p1, v0, Lcom/android/jrdsettings/remotesecurity/GmailLoginActivity;->mWebView:Landroid/webkit/WebView;

    .line 133
    return-void
.end method
