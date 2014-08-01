.class public Lcom/android/jrdsettings/remotesecurity/GmailLoginActivity;
.super Landroid/app/Activity;
.source "GmailLoginActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "GmailLoginActivity"


# instance fields
.field private getUserInfoHandler:Landroid/os/Handler;

.field public final gmailLoginActivity:Landroid/app/Activity;

.field private final mHandleMessageReceiver:Landroid/content/BroadcastReceiver;

.field private mIsLogin:Z

.field private mPausing:Z

.field private mUnregisterHandler:Landroid/os/Handler;

.field public mWebView:Landroid/webkit/WebView;

.field mWebViewClient:Landroid/webkit/WebViewClient;

.field progressbar:Landroid/widget/ProgressBar;

.field public resp:Lcom/google/api/client/googleapis/auth/oauth2/GoogleTokenResponse;

.field public tokenReq:Lcom/google/api/client/googleapis/auth/oauth2/GoogleAuthorizationCodeTokenRequest;

.field public urlString:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 59
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 63
    iput-object v1, p0, Lcom/android/jrdsettings/remotesecurity/GmailLoginActivity;->tokenReq:Lcom/google/api/client/googleapis/auth/oauth2/GoogleAuthorizationCodeTokenRequest;

    .line 65
    iput-object v1, p0, Lcom/android/jrdsettings/remotesecurity/GmailLoginActivity;->resp:Lcom/google/api/client/googleapis/auth/oauth2/GoogleTokenResponse;

    .line 67
    iput-object v1, p0, Lcom/android/jrdsettings/remotesecurity/GmailLoginActivity;->urlString:Ljava/lang/String;

    .line 69
    iput-object v1, p0, Lcom/android/jrdsettings/remotesecurity/GmailLoginActivity;->mWebView:Landroid/webkit/WebView;

    .line 70
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/jrdsettings/remotesecurity/GmailLoginActivity;->mIsLogin:Z

    .line 71
    iput-object v1, p0, Lcom/android/jrdsettings/remotesecurity/GmailLoginActivity;->progressbar:Landroid/widget/ProgressBar;

    .line 73
    iput-object p0, p0, Lcom/android/jrdsettings/remotesecurity/GmailLoginActivity;->gmailLoginActivity:Landroid/app/Activity;

    .line 76
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/jrdsettings/remotesecurity/GmailLoginActivity;->mPausing:Z

    .line 127
    new-instance v0, Lcom/android/jrdsettings/remotesecurity/GmailLoginActivity$1;

    invoke-direct {v0, p0}, Lcom/android/jrdsettings/remotesecurity/GmailLoginActivity$1;-><init>(Lcom/android/jrdsettings/remotesecurity/GmailLoginActivity;)V

    iput-object v0, p0, Lcom/android/jrdsettings/remotesecurity/GmailLoginActivity;->mWebViewClient:Landroid/webkit/WebViewClient;

    .line 189
    new-instance v0, Lcom/android/jrdsettings/remotesecurity/GmailLoginActivity$2;

    invoke-direct {v0, p0}, Lcom/android/jrdsettings/remotesecurity/GmailLoginActivity$2;-><init>(Lcom/android/jrdsettings/remotesecurity/GmailLoginActivity;)V

    iput-object v0, p0, Lcom/android/jrdsettings/remotesecurity/GmailLoginActivity;->getUserInfoHandler:Landroid/os/Handler;

    .line 290
    new-instance v0, Lcom/android/jrdsettings/remotesecurity/GmailLoginActivity$3;

    invoke-direct {v0, p0}, Lcom/android/jrdsettings/remotesecurity/GmailLoginActivity$3;-><init>(Lcom/android/jrdsettings/remotesecurity/GmailLoginActivity;)V

    iput-object v0, p0, Lcom/android/jrdsettings/remotesecurity/GmailLoginActivity;->mHandleMessageReceiver:Landroid/content/BroadcastReceiver;

    .line 316
    new-instance v0, Lcom/android/jrdsettings/remotesecurity/GmailLoginActivity$4;

    invoke-direct {v0, p0}, Lcom/android/jrdsettings/remotesecurity/GmailLoginActivity$4;-><init>(Lcom/android/jrdsettings/remotesecurity/GmailLoginActivity;)V

    iput-object v0, p0, Lcom/android/jrdsettings/remotesecurity/GmailLoginActivity;->mUnregisterHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/jrdsettings/remotesecurity/GmailLoginActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/jrdsettings/remotesecurity/GmailLoginActivity;->getUserInfoHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/jrdsettings/remotesecurity/GmailLoginActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/android/jrdsettings/remotesecurity/GmailLoginActivity;->mIsLogin:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/jrdsettings/remotesecurity/GmailLoginActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/android/jrdsettings/remotesecurity/GmailLoginActivity;->mPausing:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/jrdsettings/remotesecurity/GmailLoginActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/jrdsettings/remotesecurity/GmailLoginActivity;->mUnregisterHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private gmailWebViewLoad(Landroid/webkit/WebViewClient;)V
    .locals 9
    .parameter "webViewClient"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 107
    const v2, 0x7f0b01cf

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebView;

    .line 108
    .local v1, webview:Landroid/webkit/WebView;
    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 109
    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    .line 110
    const v2, 0x7f0b01d0

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p0, Lcom/android/jrdsettings/remotesecurity/GmailLoginActivity;->progressbar:Landroid/widget/ProgressBar;

    .line 111
    iget-object v2, p0, Lcom/android/jrdsettings/remotesecurity/GmailLoginActivity;->progressbar:Landroid/widget/ProgressBar;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 112
    new-instance v2, Lcom/google/api/client/googleapis/auth/oauth2/GoogleAuthorizationCodeRequestUrl;

    const-string v3, "1035177391792.apps.googleusercontent.com"

    const-string v4, "http://localhost"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const-string v6, "https://www.googleapis.com/auth/userinfo.email"

    aput-object v6, v5, v8

    const-string v6, "https://www.googleapis.com/auth/userinfo.profile"

    aput-object v6, v5, v7

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleAuthorizationCodeRequestUrl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Iterable;)V

    invoke-virtual {v2}, Lcom/google/api/client/http/GenericUrl;->build()Ljava/lang/String;

    move-result-object v0

    .line 116
    .local v0, authorizationUrl:Ljava/lang/String;
    invoke-virtual {v1, p1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 117
    const-string v2, "GmailLoginActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "authorizationUrl="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/jrdsettings/remotesecurity/util/LogX;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    invoke-virtual {v1, v7}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 119
    invoke-virtual {v1}, Landroid/webkit/WebView;->clearFormData()V

    .line 120
    invoke-virtual {v1}, Landroid/webkit/WebView;->clearSslPreferences()V

    .line 121
    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 122
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 3

    .prologue
    .line 393
    iget-object v1, p0, Lcom/android/jrdsettings/remotesecurity/GmailLoginActivity;->mWebView:Landroid/webkit/WebView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/jrdsettings/remotesecurity/GmailLoginActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 395
    iget-object v1, p0, Lcom/android/jrdsettings/remotesecurity/GmailLoginActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->clearFormData()V

    .line 396
    iget-object v1, p0, Lcom/android/jrdsettings/remotesecurity/GmailLoginActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->goBack()V

    .line 406
    :goto_0
    return-void

    .line 400
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.jrdsettings.remotesecurity.RS_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 401
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "rs_state"

    iget-boolean v1, p0, Lcom/android/jrdsettings/remotesecurity/GmailLoginActivity;->mIsLogin:Z

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 402
    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 403
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0

    .line 401
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 97
    const-string v0, "GmailLoginActivity"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/android/jrdsettings/remotesecurity/util/LogX;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 99
    const v0, 0x7f0400b3

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 100
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "isloginIn"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/jrdsettings/remotesecurity/GmailLoginActivity;->mIsLogin:Z

    .line 101
    iget-object v0, p0, Lcom/android/jrdsettings/remotesecurity/GmailLoginActivity;->mHandleMessageReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.android.jrdsettings.remotesecurity.MESSAGE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 103
    iget-object v0, p0, Lcom/android/jrdsettings/remotesecurity/GmailLoginActivity;->mWebViewClient:Landroid/webkit/WebViewClient;

    invoke-direct {p0, v0}, Lcom/android/jrdsettings/remotesecurity/GmailLoginActivity;->gmailWebViewLoad(Landroid/webkit/WebViewClient;)V

    .line 104
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 379
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 380
    const-string v0, "GmailLoginActivity"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/android/jrdsettings/remotesecurity/util/LogX;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    iget-object v0, p0, Lcom/android/jrdsettings/remotesecurity/GmailLoginActivity;->mHandleMessageReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 382
    const-string v0, "GmailLoginActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mWebView ==== "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/jrdsettings/remotesecurity/GmailLoginActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/jrdsettings/remotesecurity/util/LogX;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    iget-object v0, p0, Lcom/android/jrdsettings/remotesecurity/GmailLoginActivity;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 384
    iget-object v0, p0, Lcom/android/jrdsettings/remotesecurity/GmailLoginActivity;->mWebView:Landroid/webkit/WebView;

    const-string v1, "https://accounts.google.com/logout"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 386
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 87
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 89
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/jrdsettings/remotesecurity/GmailLoginActivity;->mPausing:Z

    .line 90
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 80
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 82
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/jrdsettings/remotesecurity/GmailLoginActivity;->mPausing:Z

    .line 83
    return-void
.end method
