.class public Lcom/android/jrdsettings/remotesecurity/RegisterActivity;
.super Landroid/app/Activity;
.source "RegisterActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Register"


# instance fields
.field context:Landroid/content/Context;

.field mBtnRegisterOnClickListener:Landroid/view/View$OnClickListener;

.field private mCountry:Ljava/lang/String;

.field private mDeviceNameEditText:Landroid/widget/EditText;

.field private mEmail:Ljava/lang/String;

.field private final mHandleMessageReceiver:Landroid/content/BroadcastReceiver;

.field private mPhoneName:Ljava/lang/String;

.field private mRegId:Ljava/lang/String;

.field private mRegisterHandler:Landroid/os/Handler;

.field private mSecurity_num:Ljava/lang/String;

.field private mSecurity_numEditText:Landroid/widget/EditText;

.field private mUsername:Ljava/lang/String;

.field public mWebView:Landroid/webkit/WebView;

.field public tokenReq:Lcom/google/api/client/googleapis/auth/oauth2/GoogleAuthorizationCodeTokenRequest;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 53
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 57
    iput-object v0, p0, Lcom/android/jrdsettings/remotesecurity/RegisterActivity;->tokenReq:Lcom/google/api/client/googleapis/auth/oauth2/GoogleAuthorizationCodeTokenRequest;

    .line 59
    iput-object v0, p0, Lcom/android/jrdsettings/remotesecurity/RegisterActivity;->mWebView:Landroid/webkit/WebView;

    .line 65
    iput-object v0, p0, Lcom/android/jrdsettings/remotesecurity/RegisterActivity;->mRegId:Ljava/lang/String;

    .line 159
    new-instance v0, Lcom/android/jrdsettings/remotesecurity/RegisterActivity$3;

    invoke-direct {v0, p0}, Lcom/android/jrdsettings/remotesecurity/RegisterActivity$3;-><init>(Lcom/android/jrdsettings/remotesecurity/RegisterActivity;)V

    iput-object v0, p0, Lcom/android/jrdsettings/remotesecurity/RegisterActivity;->mBtnRegisterOnClickListener:Landroid/view/View$OnClickListener;

    .line 198
    new-instance v0, Lcom/android/jrdsettings/remotesecurity/RegisterActivity$4;

    invoke-direct {v0, p0}, Lcom/android/jrdsettings/remotesecurity/RegisterActivity$4;-><init>(Lcom/android/jrdsettings/remotesecurity/RegisterActivity;)V

    iput-object v0, p0, Lcom/android/jrdsettings/remotesecurity/RegisterActivity;->mRegisterHandler:Landroid/os/Handler;

    .line 277
    new-instance v0, Lcom/android/jrdsettings/remotesecurity/RegisterActivity$5;

    invoke-direct {v0, p0}, Lcom/android/jrdsettings/remotesecurity/RegisterActivity$5;-><init>(Lcom/android/jrdsettings/remotesecurity/RegisterActivity;)V

    iput-object v0, p0, Lcom/android/jrdsettings/remotesecurity/RegisterActivity;->mHandleMessageReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/jrdsettings/remotesecurity/RegisterActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/jrdsettings/remotesecurity/RegisterActivity;->mSecurity_num:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/jrdsettings/remotesecurity/RegisterActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput-object p1, p0, Lcom/android/jrdsettings/remotesecurity/RegisterActivity;->mSecurity_num:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/jrdsettings/remotesecurity/RegisterActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/jrdsettings/remotesecurity/RegisterActivity;->mSecurity_numEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/jrdsettings/remotesecurity/RegisterActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/jrdsettings/remotesecurity/RegisterActivity;->mPhoneName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/jrdsettings/remotesecurity/RegisterActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput-object p1, p0, Lcom/android/jrdsettings/remotesecurity/RegisterActivity;->mPhoneName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/jrdsettings/remotesecurity/RegisterActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/jrdsettings/remotesecurity/RegisterActivity;->mDeviceNameEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/jrdsettings/remotesecurity/RegisterActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/jrdsettings/remotesecurity/RegisterActivity;->mRegId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/jrdsettings/remotesecurity/RegisterActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput-object p1, p0, Lcom/android/jrdsettings/remotesecurity/RegisterActivity;->mRegId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/jrdsettings/remotesecurity/RegisterActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/jrdsettings/remotesecurity/RegisterActivity;->mRegisterHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/jrdsettings/remotesecurity/RegisterActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/jrdsettings/remotesecurity/RegisterActivity;->mCountry:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/jrdsettings/remotesecurity/RegisterActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/jrdsettings/remotesecurity/RegisterActivity;->mUsername:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/jrdsettings/remotesecurity/RegisterActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/jrdsettings/remotesecurity/RegisterActivity;->mEmail:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "savedInstanceState"

    .prologue
    .line 105
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 106
    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 107
    const v7, 0x7f0400b5

    invoke-virtual {p0, v7}, Landroid/app/Activity;->setContentView(I)V

    .line 109
    iget-object v7, p0, Lcom/android/jrdsettings/remotesecurity/RegisterActivity;->mHandleMessageReceiver:Landroid/content/BroadcastReceiver;

    new-instance v8, Landroid/content/IntentFilter;

    const-string v9, "com.android.jrdsettings.remotesecurity.MESSAGE"

    invoke-direct {v8, v9}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v7, v8}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 112
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    .line 113
    .local v5, intent:Landroid/content/Intent;
    const-string v7, "email"

    invoke-virtual {v5, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/jrdsettings/remotesecurity/RegisterActivity;->mEmail:Ljava/lang/String;

    .line 114
    const-string v7, "country"

    invoke-virtual {v5, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/jrdsettings/remotesecurity/RegisterActivity;->mCountry:Ljava/lang/String;

    .line 115
    const-string v7, "username"

    invoke-virtual {v5, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/jrdsettings/remotesecurity/RegisterActivity;->mUsername:Ljava/lang/String;

    .line 116
    new-instance v3, Lcom/android/jrdsettings/remotesecurity/logic/RSDBHelper;

    invoke-direct {v3, p0}, Lcom/android/jrdsettings/remotesecurity/logic/RSDBHelper;-><init>(Landroid/content/Context;)V

    .line 117
    .local v3, db:Lcom/android/jrdsettings/remotesecurity/logic/RSDBHelper;
    const v7, 0x7f0b01d3

    invoke-virtual {p0, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    iput-object v7, p0, Lcom/android/jrdsettings/remotesecurity/RegisterActivity;->mSecurity_numEditText:Landroid/widget/EditText;

    .line 118
    const-string v7, "sec_number"

    invoke-virtual {v3, v7}, Lcom/android/jrdsettings/remotesecurity/logic/RSDBHelper;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 119
    .local v6, sec_number:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/jrdsettings/remotesecurity/util/CommonUtilities;->isValidString(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 120
    iget-object v7, p0, Lcom/android/jrdsettings/remotesecurity/RegisterActivity;->mSecurity_numEditText:Landroid/widget/EditText;

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    :cond_0
    const v7, 0x7f0b01d6

    invoke-virtual {p0, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    iput-object v7, p0, Lcom/android/jrdsettings/remotesecurity/RegisterActivity;->mDeviceNameEditText:Landroid/widget/EditText;

    .line 124
    const-string v7, "phone_name"

    invoke-virtual {v3, v7}, Lcom/android/jrdsettings/remotesecurity/logic/RSDBHelper;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 125
    .local v4, deviceName:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/jrdsettings/remotesecurity/util/CommonUtilities;->isValidString(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 126
    iget-object v7, p0, Lcom/android/jrdsettings/remotesecurity/RegisterActivity;->mDeviceNameEditText:Landroid/widget/EditText;

    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    :goto_0
    const v7, 0x7f0b01d7

    invoke-virtual {p0, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 132
    .local v1, btnRegister:Landroid/widget/Button;
    iget-object v7, p0, Lcom/android/jrdsettings/remotesecurity/RegisterActivity;->mBtnRegisterOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "network"

    invoke-static {v7, v8}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 135
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 136
    .local v2, builder:Landroid/app/AlertDialog$Builder;
    const v7, 0x7f090974

    invoke-virtual {v2, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x7f090975

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x7f090979

    new-instance v9, Lcom/android/jrdsettings/remotesecurity/RegisterActivity$2;

    invoke-direct {v9, p0}, Lcom/android/jrdsettings/remotesecurity/RegisterActivity$2;-><init>(Lcom/android/jrdsettings/remotesecurity/RegisterActivity;)V

    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x7f09097a

    new-instance v9, Lcom/android/jrdsettings/remotesecurity/RegisterActivity$1;

    invoke-direct {v9, p0}, Lcom/android/jrdsettings/remotesecurity/RegisterActivity$1;-><init>(Lcom/android/jrdsettings/remotesecurity/RegisterActivity;)V

    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 151
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 152
    .local v0, alert:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 154
    .end local v0           #alert:Landroid/app/AlertDialog;
    .end local v2           #builder:Landroid/app/AlertDialog$Builder;
    :cond_1
    return-void

    .line 128
    .end local v1           #btnRegister:Landroid/widget/Button;
    :cond_2
    iget-object v7, p0, Lcom/android/jrdsettings/remotesecurity/RegisterActivity;->mDeviceNameEditText:Landroid/widget/EditText;

    sget-object v8, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 312
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 313
    const-string v0, "Register"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/android/jrdsettings/remotesecurity/util/LogX;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    iget-object v0, p0, Lcom/android/jrdsettings/remotesecurity/RegisterActivity;->mHandleMessageReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 315
    return-void
.end method
