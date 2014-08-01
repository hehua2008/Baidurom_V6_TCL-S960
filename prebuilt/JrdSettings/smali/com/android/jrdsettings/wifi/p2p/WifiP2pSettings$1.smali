.class Lcom/android/jrdsettings/wifi/p2p/WifiP2pSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiP2pSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/jrdsettings/wifi/p2p/WifiP2pSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/jrdsettings/wifi/p2p/WifiP2pSettings;


# direct methods
.method constructor <init>(Lcom/android/jrdsettings/wifi/p2p/WifiP2pSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 148
    iput-object p1, p0, Lcom/android/jrdsettings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/jrdsettings/wifi/p2p/WifiP2pSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v8, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 151
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 153
    .local v0, action:Ljava/lang/String;
    const-string v5, "WifiP2pSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "receive action: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    const-string v5, "android.net.wifi.p2p.STATE_CHANGED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 156
    iget-object v5, p0, Lcom/android/jrdsettings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/jrdsettings/wifi/p2p/WifiP2pSettings;

    const-string v6, "wifi_p2p_state"

    invoke-virtual {p2, v6, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v8, :cond_1

    :goto_0
    #setter for: Lcom/android/jrdsettings/wifi/p2p/WifiP2pSettings;->mWifiP2pEnabled:Z
    invoke-static {v5, v3}, Lcom/android/jrdsettings/wifi/p2p/WifiP2pSettings;->access$002(Lcom/android/jrdsettings/wifi/p2p/WifiP2pSettings;Z)Z

    .line 158
    iget-object v3, p0, Lcom/android/jrdsettings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/jrdsettings/wifi/p2p/WifiP2pSettings;

    #calls: Lcom/android/jrdsettings/wifi/p2p/WifiP2pSettings;->handleP2pStateChanged()V
    invoke-static {v3}, Lcom/android/jrdsettings/wifi/p2p/WifiP2pSettings;->access$100(Lcom/android/jrdsettings/wifi/p2p/WifiP2pSettings;)V

    .line 195
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v3, v4

    .line 156
    goto :goto_0

    .line 159
    :cond_2
    const-string v5, "android.net.wifi.p2p.PEERS_CHANGED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 160
    iget-object v3, p0, Lcom/android/jrdsettings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/jrdsettings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/jrdsettings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v3}, Lcom/android/jrdsettings/wifi/p2p/WifiP2pSettings;->access$200(Lcom/android/jrdsettings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 161
    iget-object v3, p0, Lcom/android/jrdsettings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/jrdsettings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/jrdsettings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v3}, Lcom/android/jrdsettings/wifi/p2p/WifiP2pSettings;->access$200(Lcom/android/jrdsettings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/jrdsettings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/jrdsettings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/jrdsettings/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static {v4}, Lcom/android/jrdsettings/wifi/p2p/WifiP2pSettings;->access$300(Lcom/android/jrdsettings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v4

    iget-object v5, p0, Lcom/android/jrdsettings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/jrdsettings/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v3, v4, v5}, Landroid/net/wifi/p2p/WifiP2pManager;->requestPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;)V

    goto :goto_1

    .line 163
    :cond_3
    const-string v5, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 164
    iget-object v3, p0, Lcom/android/jrdsettings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/jrdsettings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/jrdsettings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v3}, Lcom/android/jrdsettings/wifi/p2p/WifiP2pSettings;->access$200(Lcom/android/jrdsettings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 165
    const-string v3, "networkInfo"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkInfo;

    .line 167
    .local v2, networkInfo:Landroid/net/NetworkInfo;
    iget-object v3, p0, Lcom/android/jrdsettings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/jrdsettings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/jrdsettings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v3}, Lcom/android/jrdsettings/wifi/p2p/WifiP2pSettings;->access$200(Lcom/android/jrdsettings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 168
    iget-object v3, p0, Lcom/android/jrdsettings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/jrdsettings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/jrdsettings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v3}, Lcom/android/jrdsettings/wifi/p2p/WifiP2pSettings;->access$200(Lcom/android/jrdsettings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/jrdsettings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/jrdsettings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/jrdsettings/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static {v4}, Lcom/android/jrdsettings/wifi/p2p/WifiP2pSettings;->access$300(Lcom/android/jrdsettings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v4

    iget-object v5, p0, Lcom/android/jrdsettings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/jrdsettings/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v3, v4, v5}, Landroid/net/wifi/p2p/WifiP2pManager;->requestGroupInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;)V

    .line 170
    :cond_4
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 171
    const-string v3, "WifiP2pSettings"

    const-string v4, "Connected"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 174
    :cond_5
    iget-object v3, p0, Lcom/android/jrdsettings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/jrdsettings/wifi/p2p/WifiP2pSettings;

    #calls: Lcom/android/jrdsettings/wifi/p2p/WifiP2pSettings;->startSearch()V
    invoke-static {v3}, Lcom/android/jrdsettings/wifi/p2p/WifiP2pSettings;->access$400(Lcom/android/jrdsettings/wifi/p2p/WifiP2pSettings;)V

    goto :goto_1

    .line 176
    .end local v2           #networkInfo:Landroid/net/NetworkInfo;
    :cond_6
    const-string v5, "android.net.wifi.p2p.THIS_DEVICE_CHANGED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 177
    iget-object v4, p0, Lcom/android/jrdsettings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/jrdsettings/wifi/p2p/WifiP2pSettings;

    const-string v3, "wifiP2pDevice"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/p2p/WifiP2pDevice;

    #setter for: Lcom/android/jrdsettings/wifi/p2p/WifiP2pSettings;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v4, v3}, Lcom/android/jrdsettings/wifi/p2p/WifiP2pSettings;->access$502(Lcom/android/jrdsettings/wifi/p2p/WifiP2pSettings;Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 179
    const-string v3, "WifiP2pSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Update device info: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/jrdsettings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/jrdsettings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/jrdsettings/wifi/p2p/WifiP2pSettings;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {v5}, Lcom/android/jrdsettings/wifi/p2p/WifiP2pSettings;->access$500(Lcom/android/jrdsettings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    iget-object v3, p0, Lcom/android/jrdsettings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/jrdsettings/wifi/p2p/WifiP2pSettings;

    #calls: Lcom/android/jrdsettings/wifi/p2p/WifiP2pSettings;->updateDevicePref()V
    invoke-static {v3}, Lcom/android/jrdsettings/wifi/p2p/WifiP2pSettings;->access$600(Lcom/android/jrdsettings/wifi/p2p/WifiP2pSettings;)V

    goto/16 :goto_1

    .line 181
    :cond_7
    const-string v5, "android.net.wifi.p2p.DISCOVERY_STATE_CHANGE"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 182
    const-string v5, "discoveryState"

    invoke-virtual {p2, v5, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 184
    .local v1, discoveryState:I
    const-string v5, "WifiP2pSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Discovery state changed: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    if-ne v1, v8, :cond_8

    .line 186
    iget-object v4, p0, Lcom/android/jrdsettings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/jrdsettings/wifi/p2p/WifiP2pSettings;

    #calls: Lcom/android/jrdsettings/wifi/p2p/WifiP2pSettings;->updateSearchMenu(Z)V
    invoke-static {v4, v3}, Lcom/android/jrdsettings/wifi/p2p/WifiP2pSettings;->access$700(Lcom/android/jrdsettings/wifi/p2p/WifiP2pSettings;Z)V

    goto/16 :goto_1

    .line 188
    :cond_8
    iget-object v3, p0, Lcom/android/jrdsettings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/jrdsettings/wifi/p2p/WifiP2pSettings;

    #calls: Lcom/android/jrdsettings/wifi/p2p/WifiP2pSettings;->updateSearchMenu(Z)V
    invoke-static {v3, v4}, Lcom/android/jrdsettings/wifi/p2p/WifiP2pSettings;->access$700(Lcom/android/jrdsettings/wifi/p2p/WifiP2pSettings;Z)V

    goto/16 :goto_1

    .line 190
    .end local v1           #discoveryState:I
    :cond_9
    const-string v3, "android.net.wifi.p2p.PERSISTENT_GROUPS_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 191
    iget-object v3, p0, Lcom/android/jrdsettings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/jrdsettings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/jrdsettings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v3}, Lcom/android/jrdsettings/wifi/p2p/WifiP2pSettings;->access$200(Lcom/android/jrdsettings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 192
    iget-object v3, p0, Lcom/android/jrdsettings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/jrdsettings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/jrdsettings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v3}, Lcom/android/jrdsettings/wifi/p2p/WifiP2pSettings;->access$200(Lcom/android/jrdsettings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/jrdsettings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/jrdsettings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/jrdsettings/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static {v4}, Lcom/android/jrdsettings/wifi/p2p/WifiP2pSettings;->access$300(Lcom/android/jrdsettings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v4

    iget-object v5, p0, Lcom/android/jrdsettings/wifi/p2p/WifiP2pSettings$1;->this$0:Lcom/android/jrdsettings/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v3, v4, v5}, Landroid/net/wifi/p2p/WifiP2pManager;->requestPersistentGroupInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$PersistentGroupInfoListener;)V

    goto/16 :goto_1
.end method
