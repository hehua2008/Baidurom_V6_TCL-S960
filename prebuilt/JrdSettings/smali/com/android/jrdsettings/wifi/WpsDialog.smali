.class public Lcom/android/jrdsettings/wifi/WpsDialog;
.super Landroid/app/AlertDialog;
.source "WpsDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/jrdsettings/wifi/WpsDialog$5;,
        Lcom/android/jrdsettings/wifi/WpsDialog$DialogState;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WpsDialog"

.field private static final WPS_TIMEOUT_S:I = 0x78


# instance fields
.field private mButton:Landroid/widget/Button;

.field private mContext:Landroid/content/Context;

.field mDialogState:Lcom/android/jrdsettings/wifi/WpsDialog$DialogState;

.field private final mFilter:Landroid/content/IntentFilter;

.field private mHandler:Landroid/os/Handler;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mTextView:Landroid/widget/TextView;

.field private mTimeoutBar:Landroid/widget/ProgressBar;

.field private mTimer:Ljava/util/Timer;

.field private mView:Landroid/view/View;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWpsListener:Landroid/net/wifi/WifiManager$WpsListener;

.field private mWpsSetup:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "wpsSetup"

    .prologue
    .line 80
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 68
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/jrdsettings/wifi/WpsDialog;->mHandler:Landroid/os/Handler;

    .line 77
    sget-object v0, Lcom/android/jrdsettings/wifi/WpsDialog$DialogState;->WPS_INIT:Lcom/android/jrdsettings/wifi/WpsDialog$DialogState;

    iput-object v0, p0, Lcom/android/jrdsettings/wifi/WpsDialog;->mDialogState:Lcom/android/jrdsettings/wifi/WpsDialog$DialogState;

    .line 81
    iput-object p1, p0, Lcom/android/jrdsettings/wifi/WpsDialog;->mContext:Landroid/content/Context;

    .line 82
    iput p2, p0, Lcom/android/jrdsettings/wifi/WpsDialog;->mWpsSetup:I

    .line 122
    new-instance v0, Lcom/android/jrdsettings/wifi/WpsDialog$1WpsListener;

    invoke-direct {v0, p0}, Lcom/android/jrdsettings/wifi/WpsDialog$1WpsListener;-><init>(Lcom/android/jrdsettings/wifi/WpsDialog;)V

    iput-object v0, p0, Lcom/android/jrdsettings/wifi/WpsDialog;->mWpsListener:Landroid/net/wifi/WifiManager$WpsListener;

    .line 125
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/jrdsettings/wifi/WpsDialog;->mFilter:Landroid/content/IntentFilter;

    .line 126
    iget-object v0, p0, Lcom/android/jrdsettings/wifi/WpsDialog;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Lcom/android/jrdsettings/wifi/WpsDialog;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 128
    new-instance v0, Lcom/android/jrdsettings/wifi/WpsDialog$1;

    invoke-direct {v0, p0}, Lcom/android/jrdsettings/wifi/WpsDialog$1;-><init>(Lcom/android/jrdsettings/wifi/WpsDialog;)V

    iput-object v0, p0, Lcom/android/jrdsettings/wifi/WpsDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 134
    return-void
.end method

.method static synthetic access$000(Lcom/android/jrdsettings/wifi/WpsDialog;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/jrdsettings/wifi/WpsDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/jrdsettings/wifi/WpsDialog;Lcom/android/jrdsettings/wifi/WpsDialog$DialogState;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lcom/android/jrdsettings/wifi/WpsDialog;->updateDialog(Lcom/android/jrdsettings/wifi/WpsDialog$DialogState;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/jrdsettings/wifi/WpsDialog;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lcom/android/jrdsettings/wifi/WpsDialog;->handleEvent(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/jrdsettings/wifi/WpsDialog;)Landroid/widget/ProgressBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/jrdsettings/wifi/WpsDialog;->mTimeoutBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/jrdsettings/wifi/WpsDialog;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/jrdsettings/wifi/WpsDialog;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/jrdsettings/wifi/WpsDialog;)Landroid/widget/ProgressBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/jrdsettings/wifi/WpsDialog;->mProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/jrdsettings/wifi/WpsDialog;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/jrdsettings/wifi/WpsDialog;->mButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/jrdsettings/wifi/WpsDialog;)Landroid/content/BroadcastReceiver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/jrdsettings/wifi/WpsDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/jrdsettings/wifi/WpsDialog;Landroid/content/BroadcastReceiver;)Landroid/content/BroadcastReceiver;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput-object p1, p0, Lcom/android/jrdsettings/wifi/WpsDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/jrdsettings/wifi/WpsDialog;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/jrdsettings/wifi/WpsDialog;->mTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method private handleEvent(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v7, 0x1

    .line 245
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 246
    .local v0, action:Ljava/lang/String;
    const-string v5, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 247
    const-string v5, "networkInfo"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    .line 249
    .local v1, info:Landroid/net/NetworkInfo;
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    .line 250
    .local v3, state:Landroid/net/NetworkInfo$DetailedState;
    sget-object v5, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v3, v5, :cond_0

    iget-object v5, p0, Lcom/android/jrdsettings/wifi/WpsDialog;->mDialogState:Lcom/android/jrdsettings/wifi/WpsDialog$DialogState;

    sget-object v6, Lcom/android/jrdsettings/wifi/WpsDialog$DialogState;->WPS_COMPLETE:Lcom/android/jrdsettings/wifi/WpsDialog$DialogState;

    if-ne v5, v6, :cond_0

    .line 252
    iget-object v5, p0, Lcom/android/jrdsettings/wifi/WpsDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v4

    .line 253
    .local v4, wifiInfo:Landroid/net/wifi/WifiInfo;
    if-eqz v4, :cond_0

    .line 254
    iget-object v5, p0, Lcom/android/jrdsettings/wifi/WpsDialog;->mContext:Landroid/content/Context;

    const v6, 0x7f090433

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v7, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 256
    .local v2, msg:Ljava/lang/String;
    sget-object v5, Lcom/android/jrdsettings/wifi/WpsDialog$DialogState;->CONNECTED:Lcom/android/jrdsettings/wifi/WpsDialog$DialogState;

    invoke-direct {p0, v5, v2}, Lcom/android/jrdsettings/wifi/WpsDialog;->updateDialog(Lcom/android/jrdsettings/wifi/WpsDialog$DialogState;Ljava/lang/String;)V

    .line 269
    .end local v1           #info:Landroid/net/NetworkInfo;
    .end local v2           #msg:Ljava/lang/String;
    .end local v3           #state:Landroid/net/NetworkInfo$DetailedState;
    .end local v4           #wifiInfo:Landroid/net/wifi/WifiInfo;
    :cond_0
    :goto_0
    return-void

    .line 259
    :cond_1
    const-string v5, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 261
    const-string v5, "wifi_state"

    const/4 v6, 0x4

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v7, :cond_0

    .line 263
    const-string v5, "WpsDialog"

    const-string v6, "handleEvent, wifi disabled"

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0
.end method

.method private updateDialog(Lcom/android/jrdsettings/wifi/WpsDialog$DialogState;Ljava/lang/String;)V
    .locals 2
    .parameter "state"
    .parameter "msg"

    .prologue
    .line 214
    iget-object v0, p0, Lcom/android/jrdsettings/wifi/WpsDialog;->mDialogState:Lcom/android/jrdsettings/wifi/WpsDialog$DialogState;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 242
    :goto_0
    return-void

    .line 218
    :cond_0
    iput-object p1, p0, Lcom/android/jrdsettings/wifi/WpsDialog;->mDialogState:Lcom/android/jrdsettings/wifi/WpsDialog$DialogState;

    .line 220
    iget-object v0, p0, Lcom/android/jrdsettings/wifi/WpsDialog;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/jrdsettings/wifi/WpsDialog$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/jrdsettings/wifi/WpsDialog$4;-><init>(Lcom/android/jrdsettings/wifi/WpsDialog;Lcom/android/jrdsettings/wifi/WpsDialog$DialogState;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 138
    const-string v0, "WpsDialog"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    invoke-virtual {p0}, Landroid/app/Dialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0400f4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/jrdsettings/wifi/WpsDialog;->mView:Landroid/view/View;

    .line 141
    iget-object v0, p0, Lcom/android/jrdsettings/wifi/WpsDialog;->mView:Landroid/view/View;

    const v1, 0x7f0b02dc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/jrdsettings/wifi/WpsDialog;->mTextView:Landroid/widget/TextView;

    .line 142
    iget-object v0, p0, Lcom/android/jrdsettings/wifi/WpsDialog;->mTextView:Landroid/widget/TextView;

    const v1, 0x7f09042f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 144
    iget-object v0, p0, Lcom/android/jrdsettings/wifi/WpsDialog;->mView:Landroid/view/View;

    const v1, 0x7f0b02dd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/jrdsettings/wifi/WpsDialog;->mTimeoutBar:Landroid/widget/ProgressBar;

    .line 145
    iget-object v0, p0, Lcom/android/jrdsettings/wifi/WpsDialog;->mTimeoutBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x78

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 146
    iget-object v0, p0, Lcom/android/jrdsettings/wifi/WpsDialog;->mTimeoutBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 148
    iget-object v0, p0, Lcom/android/jrdsettings/wifi/WpsDialog;->mView:Landroid/view/View;

    const v1, 0x7f0b02de

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/jrdsettings/wifi/WpsDialog;->mProgressBar:Landroid/widget/ProgressBar;

    .line 149
    iget-object v0, p0, Lcom/android/jrdsettings/wifi/WpsDialog;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 151
    iget-object v0, p0, Lcom/android/jrdsettings/wifi/WpsDialog;->mView:Landroid/view/View;

    const v1, 0x7f0b02df

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/jrdsettings/wifi/WpsDialog;->mButton:Landroid/widget/Button;

    .line 152
    iget-object v0, p0, Lcom/android/jrdsettings/wifi/WpsDialog;->mButton:Landroid/widget/Button;

    const v1, 0x7f090468

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 153
    iget-object v0, p0, Lcom/android/jrdsettings/wifi/WpsDialog;->mButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/jrdsettings/wifi/WpsDialog$2;

    invoke-direct {v1, p0}, Lcom/android/jrdsettings/wifi/WpsDialog$2;-><init>(Lcom/android/jrdsettings/wifi/WpsDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    iget-object v0, p0, Lcom/android/jrdsettings/wifi/WpsDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/jrdsettings/wifi/WpsDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 165
    iget-object v0, p0, Lcom/android/jrdsettings/wifi/WpsDialog;->mView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 166
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 167
    return-void
.end method

.method protected onStart()V
    .locals 7

    .prologue
    const-wide/16 v2, 0x3e8

    .line 171
    const-string v0, "WpsDialog"

    const-string v1, "onStart"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    new-instance v0, Ljava/util/Timer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Z)V

    iput-object v0, p0, Lcom/android/jrdsettings/wifi/WpsDialog;->mTimer:Ljava/util/Timer;

    .line 176
    iget-object v0, p0, Lcom/android/jrdsettings/wifi/WpsDialog;->mTimer:Ljava/util/Timer;

    new-instance v1, Lcom/android/jrdsettings/wifi/WpsDialog$3;

    invoke-direct {v1, p0}, Lcom/android/jrdsettings/wifi/WpsDialog$3;-><init>(Lcom/android/jrdsettings/wifi/WpsDialog;)V

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 189
    iget-object v0, p0, Lcom/android/jrdsettings/wifi/WpsDialog;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/jrdsettings/wifi/WpsDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/jrdsettings/wifi/WpsDialog;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 191
    new-instance v6, Landroid/net/wifi/WpsInfo;

    invoke-direct {v6}, Landroid/net/wifi/WpsInfo;-><init>()V

    .line 192
    .local v6, wpsConfig:Landroid/net/wifi/WpsInfo;
    iget v0, p0, Lcom/android/jrdsettings/wifi/WpsDialog;->mWpsSetup:I

    iput v0, v6, Landroid/net/wifi/WpsInfo;->setup:I

    .line 193
    iget-object v0, p0, Lcom/android/jrdsettings/wifi/WpsDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/jrdsettings/wifi/WpsDialog;->mWpsListener:Landroid/net/wifi/WifiManager$WpsListener;

    invoke-virtual {v0, v6, v1}, Landroid/net/wifi/WifiManager;->startWps(Landroid/net/wifi/WpsInfo;Landroid/net/wifi/WifiManager$WpsListener;)V

    .line 194
    return-void
.end method

.method protected onStop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 198
    const-string v0, "WpsDialog"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    iget-object v0, p0, Lcom/android/jrdsettings/wifi/WpsDialog;->mDialogState:Lcom/android/jrdsettings/wifi/WpsDialog$DialogState;

    sget-object v1, Lcom/android/jrdsettings/wifi/WpsDialog$DialogState;->WPS_COMPLETE:Lcom/android/jrdsettings/wifi/WpsDialog$DialogState;

    if-eq v0, v1, :cond_0

    .line 200
    iget-object v0, p0, Lcom/android/jrdsettings/wifi/WpsDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiManager;->cancelWps(Landroid/net/wifi/WifiManager$ActionListener;)V

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/android/jrdsettings/wifi/WpsDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    .line 204
    iget-object v0, p0, Lcom/android/jrdsettings/wifi/WpsDialog;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/jrdsettings/wifi/WpsDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 205
    iput-object v2, p0, Lcom/android/jrdsettings/wifi/WpsDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 208
    :cond_1
    iget-object v0, p0, Lcom/android/jrdsettings/wifi/WpsDialog;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_2

    .line 209
    iget-object v0, p0, Lcom/android/jrdsettings/wifi/WpsDialog;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 211
    :cond_2
    return-void
.end method
