.class Lcom/android/jrdsettings/audioshare/AudioShareEnabler$1;
.super Landroid/content/BroadcastReceiver;
.source "AudioShareEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/jrdsettings/audioshare/AudioShareEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/jrdsettings/audioshare/AudioShareEnabler;


# direct methods
.method constructor <init>(Lcom/android/jrdsettings/audioshare/AudioShareEnabler;)V
    .locals 0
    .parameter

    .prologue
    .line 99
    iput-object p1, p0, Lcom/android/jrdsettings/audioshare/AudioShareEnabler$1;->this$0:Lcom/android/jrdsettings/audioshare/AudioShareEnabler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 102
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 103
    .local v0, action:Ljava/lang/String;
    const-string v10, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 104
    const-string v8, "wifi_state"

    const/4 v9, 0x4

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 107
    .local v7, wifiState:I
    iget-object v8, p0, Lcom/android/jrdsettings/audioshare/AudioShareEnabler$1;->this$0:Lcom/android/jrdsettings/audioshare/AudioShareEnabler;

    #calls: Lcom/android/jrdsettings/audioshare/AudioShareEnabler;->handleWifiStateChanged(I)V
    invoke-static {v8, v7}, Lcom/android/jrdsettings/audioshare/AudioShareEnabler;->access$000(Lcom/android/jrdsettings/audioshare/AudioShareEnabler;I)V

    .line 168
    .end local v7           #wifiState:I
    :cond_0
    :goto_0
    return-void

    .line 109
    :cond_1
    const-string v10, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 123
    iget-object v10, p0, Lcom/android/jrdsettings/audioshare/AudioShareEnabler$1;->this$0:Lcom/android/jrdsettings/audioshare/AudioShareEnabler;

    #getter for: Lcom/android/jrdsettings/audioshare/AudioShareEnabler;->mConnectivityManager:Landroid/net/ConnectivityManager;
    invoke-static {v10}, Lcom/android/jrdsettings/audioshare/AudioShareEnabler;->access$100(Lcom/android/jrdsettings/audioshare/AudioShareEnabler;)Landroid/net/ConnectivityManager;

    move-result-object v10

    invoke-virtual {v10, v9}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 124
    .local v2, info1:Landroid/net/NetworkInfo;
    if-nez v2, :cond_2

    move v4, v8

    .line 125
    .local v4, isConnected1:Z
    :goto_1
    const-string v9, "networkInfo"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkInfo;

    .line 126
    .local v3, info2:Landroid/net/NetworkInfo;
    if-nez v3, :cond_3

    move v5, v8

    .line 127
    .local v5, isConnected2:Z
    :goto_2
    if-ne v4, v5, :cond_0

    .line 128
    iget-object v8, p0, Lcom/android/jrdsettings/audioshare/AudioShareEnabler$1;->this$0:Lcom/android/jrdsettings/audioshare/AudioShareEnabler;

    #getter for: Lcom/android/jrdsettings/audioshare/AudioShareEnabler;->TAG:Ljava/lang/String;
    invoke-static {v8}, Lcom/android/jrdsettings/audioshare/AudioShareEnabler;->access$200(Lcom/android/jrdsettings/audioshare/AudioShareEnabler;)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isConnected = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iget-object v8, p0, Lcom/android/jrdsettings/audioshare/AudioShareEnabler$1;->this$0:Lcom/android/jrdsettings/audioshare/AudioShareEnabler;

    #calls: Lcom/android/jrdsettings/audioshare/AudioShareEnabler;->updateSwitchChecked()V
    invoke-static {v8}, Lcom/android/jrdsettings/audioshare/AudioShareEnabler;->access$300(Lcom/android/jrdsettings/audioshare/AudioShareEnabler;)V

    goto :goto_0

    .line 124
    .end local v3           #info2:Landroid/net/NetworkInfo;
    .end local v4           #isConnected1:Z
    .end local v5           #isConnected2:Z
    :cond_2
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    goto :goto_1

    .line 126
    .restart local v3       #info2:Landroid/net/NetworkInfo;
    .restart local v4       #isConnected1:Z
    :cond_3
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    goto :goto_2

    .line 133
    .end local v2           #info1:Landroid/net/NetworkInfo;
    .end local v3           #info2:Landroid/net/NetworkInfo;
    .end local v4           #isConnected1:Z
    :cond_4
    const-string v10, "intent_audio_share_stop_Service"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 134
    iget-object v9, p0, Lcom/android/jrdsettings/audioshare/AudioShareEnabler$1;->this$0:Lcom/android/jrdsettings/audioshare/AudioShareEnabler;

    #getter for: Lcom/android/jrdsettings/audioshare/AudioShareEnabler;->mSwitch:Landroid/widget/Switch;
    invoke-static {v9}, Lcom/android/jrdsettings/audioshare/AudioShareEnabler;->access$400(Lcom/android/jrdsettings/audioshare/AudioShareEnabler;)Landroid/widget/Switch;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0

    .line 136
    :cond_5
    const-string v10, "audio_share_service_Startted"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 137
    iget-object v8, p0, Lcom/android/jrdsettings/audioshare/AudioShareEnabler$1;->this$0:Lcom/android/jrdsettings/audioshare/AudioShareEnabler;

    #getter for: Lcom/android/jrdsettings/audioshare/AudioShareEnabler;->TAG:Ljava/lang/String;
    invoke-static {v8}, Lcom/android/jrdsettings/audioshare/AudioShareEnabler;->access$200(Lcom/android/jrdsettings/audioshare/AudioShareEnabler;)Ljava/lang/String;

    move-result-object v8

    const-string v10, "AudioShareService.INTENT_SERVICE_STARTTED"

    invoke-static {v8, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iget-object v8, p0, Lcom/android/jrdsettings/audioshare/AudioShareEnabler$1;->this$0:Lcom/android/jrdsettings/audioshare/AudioShareEnabler;

    #getter for: Lcom/android/jrdsettings/audioshare/AudioShareEnabler;->mHelper:Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper;
    invoke-static {v8}, Lcom/android/jrdsettings/audioshare/AudioShareEnabler;->access$500(Lcom/android/jrdsettings/audioshare/AudioShareEnabler;)Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/jrdsettings/audioshare/service/AudioShareServiceHelper;->connectToService()Z

    .line 139
    iget-object v8, p0, Lcom/android/jrdsettings/audioshare/AudioShareEnabler$1;->this$0:Lcom/android/jrdsettings/audioshare/AudioShareEnabler;

    #getter for: Lcom/android/jrdsettings/audioshare/AudioShareEnabler;->mSwitch:Landroid/widget/Switch;
    invoke-static {v8}, Lcom/android/jrdsettings/audioshare/AudioShareEnabler;->access$400(Lcom/android/jrdsettings/audioshare/AudioShareEnabler;)Landroid/widget/Switch;

    move-result-object v8

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 140
    iget-object v8, p0, Lcom/android/jrdsettings/audioshare/AudioShareEnabler$1;->this$0:Lcom/android/jrdsettings/audioshare/AudioShareEnabler;

    #getter for: Lcom/android/jrdsettings/audioshare/AudioShareEnabler;->mSwitch:Landroid/widget/Switch;
    invoke-static {v8}, Lcom/android/jrdsettings/audioshare/AudioShareEnabler;->access$400(Lcom/android/jrdsettings/audioshare/AudioShareEnabler;)Landroid/widget/Switch;

    move-result-object v8

    invoke-virtual {v8, v9}, Landroid/widget/Switch;->setChecked(Z)V

    .line 141
    iget-object v8, p0, Lcom/android/jrdsettings/audioshare/AudioShareEnabler$1;->this$0:Lcom/android/jrdsettings/audioshare/AudioShareEnabler;

    #setter for: Lcom/android/jrdsettings/audioshare/AudioShareEnabler;->mBindFlag:Z
    invoke-static {v8, v9}, Lcom/android/jrdsettings/audioshare/AudioShareEnabler;->access$602(Lcom/android/jrdsettings/audioshare/AudioShareEnabler;Z)Z

    .line 142
    invoke-static {v9}, Lcom/android/jrdsettings/audioshare/AudioShareEnabler;->access$702(Z)Z

    goto/16 :goto_0

    .line 145
    :cond_6
    const-string v10, "audio_share_service_Stopped"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 146
    iget-object v10, p0, Lcom/android/jrdsettings/audioshare/AudioShareEnabler$1;->this$0:Lcom/android/jrdsettings/audioshare/AudioShareEnabler;

    #getter for: Lcom/android/jrdsettings/audioshare/AudioShareEnabler;->TAG:Ljava/lang/String;
    invoke-static {v10}, Lcom/android/jrdsettings/audioshare/AudioShareEnabler;->access$200(Lcom/android/jrdsettings/audioshare/AudioShareEnabler;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "AudioShareService.INTENT_SERVICE_STOPPED"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    invoke-static {v8}, Lcom/android/jrdsettings/audioshare/AudioShareEnabler;->access$702(Z)Z

    .line 148
    iget-object v10, p0, Lcom/android/jrdsettings/audioshare/AudioShareEnabler$1;->this$0:Lcom/android/jrdsettings/audioshare/AudioShareEnabler;

    #getter for: Lcom/android/jrdsettings/audioshare/AudioShareEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v10}, Lcom/android/jrdsettings/audioshare/AudioShareEnabler;->access$800(Lcom/android/jrdsettings/audioshare/AudioShareEnabler;)Landroid/net/wifi/WifiManager;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v7

    .line 149
    .restart local v7       #wifiState:I
    const/4 v10, 0x3

    if-ne v7, v10, :cond_9

    move v6, v9

    .line 150
    .local v6, isEnabled:Z
    :goto_3
    iget-object v10, p0, Lcom/android/jrdsettings/audioshare/AudioShareEnabler$1;->this$0:Lcom/android/jrdsettings/audioshare/AudioShareEnabler;

    #getter for: Lcom/android/jrdsettings/audioshare/AudioShareEnabler;->mConnectivityManager:Landroid/net/ConnectivityManager;
    invoke-static {v10}, Lcom/android/jrdsettings/audioshare/AudioShareEnabler;->access$100(Lcom/android/jrdsettings/audioshare/AudioShareEnabler;)Landroid/net/ConnectivityManager;

    move-result-object v10

    if-nez v10, :cond_7

    .line 151
    iget-object v10, p0, Lcom/android/jrdsettings/audioshare/AudioShareEnabler$1;->this$0:Lcom/android/jrdsettings/audioshare/AudioShareEnabler;

    iget-object v11, p0, Lcom/android/jrdsettings/audioshare/AudioShareEnabler$1;->this$0:Lcom/android/jrdsettings/audioshare/AudioShareEnabler;

    #getter for: Lcom/android/jrdsettings/audioshare/AudioShareEnabler;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/android/jrdsettings/audioshare/AudioShareEnabler;->access$900(Lcom/android/jrdsettings/audioshare/AudioShareEnabler;)Landroid/content/Context;

    move-result-object v11

    #calls: Lcom/android/jrdsettings/audioshare/AudioShareEnabler;->initConnectivityManager(Landroid/content/Context;)V
    invoke-static {v10, v11}, Lcom/android/jrdsettings/audioshare/AudioShareEnabler;->access$1000(Lcom/android/jrdsettings/audioshare/AudioShareEnabler;Landroid/content/Context;)V

    .line 153
    :cond_7
    iget-object v10, p0, Lcom/android/jrdsettings/audioshare/AudioShareEnabler$1;->this$0:Lcom/android/jrdsettings/audioshare/AudioShareEnabler;

    #getter for: Lcom/android/jrdsettings/audioshare/AudioShareEnabler;->mConnectivityManager:Landroid/net/ConnectivityManager;
    invoke-static {v10}, Lcom/android/jrdsettings/audioshare/AudioShareEnabler;->access$100(Lcom/android/jrdsettings/audioshare/AudioShareEnabler;)Landroid/net/ConnectivityManager;

    move-result-object v10

    invoke-virtual {v10, v9}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 154
    .local v1, info:Landroid/net/NetworkInfo;
    if-eqz v6, :cond_8

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v10

    if-eqz v10, :cond_8

    .line 155
    iget-object v10, p0, Lcom/android/jrdsettings/audioshare/AudioShareEnabler$1;->this$0:Lcom/android/jrdsettings/audioshare/AudioShareEnabler;

    #getter for: Lcom/android/jrdsettings/audioshare/AudioShareEnabler;->mSwitch:Landroid/widget/Switch;
    invoke-static {v10}, Lcom/android/jrdsettings/audioshare/AudioShareEnabler;->access$400(Lcom/android/jrdsettings/audioshare/AudioShareEnabler;)Landroid/widget/Switch;

    move-result-object v10

    invoke-virtual {v10, v9}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 157
    :cond_8
    iget-object v9, p0, Lcom/android/jrdsettings/audioshare/AudioShareEnabler$1;->this$0:Lcom/android/jrdsettings/audioshare/AudioShareEnabler;

    #getter for: Lcom/android/jrdsettings/audioshare/AudioShareEnabler;->mSwitch:Landroid/widget/Switch;
    invoke-static {v9}, Lcom/android/jrdsettings/audioshare/AudioShareEnabler;->access$400(Lcom/android/jrdsettings/audioshare/AudioShareEnabler;)Landroid/widget/Switch;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/widget/Switch;->setChecked(Z)V

    goto/16 :goto_0

    .end local v1           #info:Landroid/net/NetworkInfo;
    .end local v6           #isEnabled:Z
    :cond_9
    move v6, v8

    .line 149
    goto :goto_3

    .line 159
    .end local v7           #wifiState:I
    :cond_a
    const-string v9, "audio_share_service_Startting"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 160
    iget-object v9, p0, Lcom/android/jrdsettings/audioshare/AudioShareEnabler$1;->this$0:Lcom/android/jrdsettings/audioshare/AudioShareEnabler;

    #getter for: Lcom/android/jrdsettings/audioshare/AudioShareEnabler;->TAG:Ljava/lang/String;
    invoke-static {v9}, Lcom/android/jrdsettings/audioshare/AudioShareEnabler;->access$200(Lcom/android/jrdsettings/audioshare/AudioShareEnabler;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "AudioShareService.INTENT_SERVICE_STARTTING"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget-object v9, p0, Lcom/android/jrdsettings/audioshare/AudioShareEnabler$1;->this$0:Lcom/android/jrdsettings/audioshare/AudioShareEnabler;

    #getter for: Lcom/android/jrdsettings/audioshare/AudioShareEnabler;->mSwitch:Landroid/widget/Switch;
    invoke-static {v9}, Lcom/android/jrdsettings/audioshare/AudioShareEnabler;->access$400(Lcom/android/jrdsettings/audioshare/AudioShareEnabler;)Landroid/widget/Switch;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setEnabled(Z)V

    goto/16 :goto_0

    .line 163
    :cond_b
    const-string v9, "audio_share_service_Stopping"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 164
    iget-object v9, p0, Lcom/android/jrdsettings/audioshare/AudioShareEnabler$1;->this$0:Lcom/android/jrdsettings/audioshare/AudioShareEnabler;

    #getter for: Lcom/android/jrdsettings/audioshare/AudioShareEnabler;->TAG:Ljava/lang/String;
    invoke-static {v9}, Lcom/android/jrdsettings/audioshare/AudioShareEnabler;->access$200(Lcom/android/jrdsettings/audioshare/AudioShareEnabler;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "AudioShareService.INTENT_SERVICE_STOPPING"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    iget-object v9, p0, Lcom/android/jrdsettings/audioshare/AudioShareEnabler$1;->this$0:Lcom/android/jrdsettings/audioshare/AudioShareEnabler;

    #getter for: Lcom/android/jrdsettings/audioshare/AudioShareEnabler;->mSwitch:Landroid/widget/Switch;
    invoke-static {v9}, Lcom/android/jrdsettings/audioshare/AudioShareEnabler;->access$400(Lcom/android/jrdsettings/audioshare/AudioShareEnabler;)Landroid/widget/Switch;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setEnabled(Z)V

    goto/16 :goto_0
.end method
