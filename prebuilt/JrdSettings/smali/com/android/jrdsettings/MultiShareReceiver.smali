.class public Lcom/android/jrdsettings/MultiShareReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MultiShareReceiver.java"


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "MultiShareReceiver"

.field private static mConnectivityManager:Landroid/net/ConnectivityManager;

.field private static mMultiShareManager:Lcom/android/jrdsettings/MultiShareManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v7, 0x1

    .line 55
    sget-object v4, Lcom/android/jrdsettings/MultiShareReceiver;->mMultiShareManager:Lcom/android/jrdsettings/MultiShareManager;

    if-nez v4, :cond_0

    .line 56
    new-instance v4, Lcom/android/jrdsettings/MultiShareManager;

    invoke-direct {v4, p1}, Lcom/android/jrdsettings/MultiShareManager;-><init>(Landroid/content/Context;)V

    sput-object v4, Lcom/android/jrdsettings/MultiShareReceiver;->mMultiShareManager:Lcom/android/jrdsettings/MultiShareManager;

    .line 59
    :cond_0
    sget-object v4, Lcom/android/jrdsettings/MultiShareReceiver;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-nez v4, :cond_1

    .line 60
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "connectivity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/ConnectivityManager;

    sput-object v4, Lcom/android/jrdsettings/MultiShareReceiver;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 64
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, action:Ljava/lang/String;
    const-string v4, "MultiShareReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Intent action = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    const-string v4, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 69
    sget-object v4, Lcom/android/jrdsettings/MultiShareReceiver;->mMultiShareManager:Lcom/android/jrdsettings/MultiShareManager;

    invoke-virtual {v4}, Lcom/android/jrdsettings/MultiShareManager;->resetAll()V

    .line 113
    :cond_2
    :goto_0
    return-void

    .line 72
    :cond_3
    const-string v4, "com.intent.START_AUDIO_SHARE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 73
    sget-object v4, Lcom/android/jrdsettings/MultiShareReceiver;->mMultiShareManager:Lcom/android/jrdsettings/MultiShareManager;

    invoke-virtual {v4}, Lcom/android/jrdsettings/MultiShareManager;->startAudioShare()Z

    goto :goto_0

    .line 75
    :cond_4
    const-string v4, "com.intent.STOP_AUDIO_SHARE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 76
    sget-object v4, Lcom/android/jrdsettings/MultiShareReceiver;->mMultiShareManager:Lcom/android/jrdsettings/MultiShareManager;

    invoke-virtual {v4}, Lcom/android/jrdsettings/MultiShareManager;->stopAudioShare()Z

    goto :goto_0

    .line 78
    :cond_5
    const-string v4, "com.intent.START_MULTI_SCREEN"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 79
    sget-object v4, Lcom/android/jrdsettings/MultiShareReceiver;->mMultiShareManager:Lcom/android/jrdsettings/MultiShareManager;

    invoke-virtual {v4}, Lcom/android/jrdsettings/MultiShareManager;->startMultiScreen()V

    goto :goto_0

    .line 81
    :cond_6
    const-string v4, "com.intent.STOP_MULTI_SCREEN"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 82
    sget-object v4, Lcom/android/jrdsettings/MultiShareReceiver;->mMultiShareManager:Lcom/android/jrdsettings/MultiShareManager;

    invoke-virtual {v4}, Lcom/android/jrdsettings/MultiShareManager;->stopMultiScreen()Z

    goto :goto_0

    .line 84
    :cond_7
    const-string v4, "com.intent.START_WIFI_DISPLAY"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 85
    sget-object v4, Lcom/android/jrdsettings/MultiShareReceiver;->mMultiShareManager:Lcom/android/jrdsettings/MultiShareManager;

    invoke-virtual {v4}, Lcom/android/jrdsettings/MultiShareManager;->startWifiDisplay()Z

    goto :goto_0

    .line 87
    :cond_8
    const-string v4, "com.intent.STOP_WIFI_DISPLAY"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 88
    sget-object v4, Lcom/android/jrdsettings/MultiShareReceiver;->mMultiShareManager:Lcom/android/jrdsettings/MultiShareManager;

    invoke-virtual {v4}, Lcom/android/jrdsettings/MultiShareManager;->stopWifiDisplay()Z

    goto :goto_0

    .line 91
    :cond_9
    const-string v4, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 93
    const-string v4, "networkInfo"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    .line 94
    .local v1, info:Landroid/net/NetworkInfo;
    sget-object v4, Lcom/android/jrdsettings/MultiShareReceiver;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v4, v7}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 95
    .local v3, wifiInfo:Landroid/net/NetworkInfo;
    if-nez v3, :cond_b

    const/4 v2, 0x0

    .line 96
    .local v2, isConnected:Z
    :goto_1
    if-eqz v1, :cond_a

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-nez v4, :cond_2

    if-nez v2, :cond_2

    .line 98
    :cond_a
    sget-object v4, Lcom/android/jrdsettings/MultiShareReceiver;->mMultiShareManager:Lcom/android/jrdsettings/MultiShareManager;

    invoke-virtual {v4}, Lcom/android/jrdsettings/MultiShareManager;->isAudioShareServiceRunning()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 99
    const v4, 0x7f0901d9

    invoke-static {p1, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 102
    sget-object v4, Lcom/android/jrdsettings/MultiShareReceiver;->mMultiShareManager:Lcom/android/jrdsettings/MultiShareManager;

    invoke-virtual {v4}, Lcom/android/jrdsettings/MultiShareManager;->stopAudioShare()Z

    goto/16 :goto_0

    .line 95
    .end local v2           #isConnected:Z
    :cond_b
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    goto :goto_1

    .line 103
    .restart local v2       #isConnected:Z
    :cond_c
    sget-object v4, Lcom/android/jrdsettings/MultiShareReceiver;->mMultiShareManager:Lcom/android/jrdsettings/MultiShareManager;

    invoke-virtual {v4}, Lcom/android/jrdsettings/MultiShareManager;->isMultiScreenRunning()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 104
    const v4, 0x7f0901c3

    invoke-static {p1, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 107
    sget-object v4, Lcom/android/jrdsettings/MultiShareReceiver;->mMultiShareManager:Lcom/android/jrdsettings/MultiShareManager;

    invoke-virtual {v4}, Lcom/android/jrdsettings/MultiShareManager;->stopMultiScreen()Z

    goto/16 :goto_0
.end method
