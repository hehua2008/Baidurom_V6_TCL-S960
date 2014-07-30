.class Lcom/android/server/display/WifiDisplayController$18;
.super Landroid/content/BroadcastReceiver;
.source "WifiDisplayController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/WifiDisplayController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/WifiDisplayController;


# direct methods
.method constructor <init>(Lcom/android/server/display/WifiDisplayController;)V
    .locals 0
    .parameter

    .prologue
    .line 1624
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController$18;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v7, 0x0

    const/4 v2, 0x1

    .line 1627
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1628
    .local v0, action:Ljava/lang/String;
    const-string v8, "android.net.wifi.p2p.STATE_CHANGED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1631
    const-string v8, "wifi_p2p_state"

    invoke-virtual {p2, v8, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_1

    .line 1635
    .local v2, enabled:Z
    :goto_0
    const-string v7, "WifiDisplayController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Received WIFI_P2P_STATE_CHANGED_ACTION: enabled="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1638
    iget-object v7, p0, Lcom/android/server/display/WifiDisplayController$18;->this$0:Lcom/android/server/display/WifiDisplayController;

    #calls: Lcom/android/server/display/WifiDisplayController;->handleStateChanged(Z)V
    invoke-static {v7, v2}, Lcom/android/server/display/WifiDisplayController;->access$4500(Lcom/android/server/display/WifiDisplayController;Z)V

    .line 1734
    .end local v2           #enabled:Z
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v2, v7

    .line 1631
    goto :goto_0

    .line 1639
    :cond_2
    const-string v8, "android.net.wifi.p2p.PEERS_CHANGED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1640
    invoke-static {}, Lcom/android/server/display/WifiDisplayController;->access$600()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1641
    const-string v7, "WifiDisplayController"

    const-string v8, "Received WIFI_P2P_PEERS_CHANGED_ACTION."

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1643
    :cond_3
    iget-object v7, p0, Lcom/android/server/display/WifiDisplayController$18;->this$0:Lcom/android/server/display/WifiDisplayController;

    #getter for: Lcom/android/server/display/WifiDisplayController;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v7}, Lcom/android/server/display/WifiDisplayController;->access$4700(Lcom/android/server/display/WifiDisplayController;)Landroid/app/AlarmManager;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/display/WifiDisplayController$18;->this$0:Lcom/android/server/display/WifiDisplayController;

    #getter for: Lcom/android/server/display/WifiDisplayController;->mWfdSearchIntent:Landroid/app/PendingIntent;
    invoke-static {v8}, Lcom/android/server/display/WifiDisplayController;->access$4600(Lcom/android/server/display/WifiDisplayController;)Landroid/app/PendingIntent;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1644
    iget-object v7, p0, Lcom/android/server/display/WifiDisplayController$18;->this$0:Lcom/android/server/display/WifiDisplayController;

    #calls: Lcom/android/server/display/WifiDisplayController;->handlePeersChanged()V
    invoke-static {v7}, Lcom/android/server/display/WifiDisplayController;->access$4800(Lcom/android/server/display/WifiDisplayController;)V

    goto :goto_1

    .line 1646
    :cond_4
    const-string v8, "com.android.server.wfd.action.ACTION_WFD_SEARCH_STOP"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 1647
    invoke-static {}, Lcom/android/server/display/WifiDisplayController;->access$600()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1648
    const-string v7, "WifiDisplayController"

    const-string v8, "Received ACTION_WFD_SEARCH_STOP, this is used for give user well performents"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1650
    :cond_5
    iget-object v7, p0, Lcom/android/server/display/WifiDisplayController$18;->this$0:Lcom/android/server/display/WifiDisplayController;

    #calls: Lcom/android/server/display/WifiDisplayController;->handleScanFinished()V
    invoke-static {v7}, Lcom/android/server/display/WifiDisplayController;->access$1000(Lcom/android/server/display/WifiDisplayController;)V

    goto :goto_1

    .line 1652
    :cond_6
    const-string v8, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 1653
    const-string v7, "networkInfo"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/NetworkInfo;

    .line 1656
    .local v4, networkInfo:Landroid/net/NetworkInfo;
    const-string v7, "reason="

    const/4 v8, -0x1

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 1657
    .local v6, reason:I
    invoke-static {}, Lcom/android/server/display/WifiDisplayController;->access$600()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 1658
    const-string v7, "WifiDisplayController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Received WIFI_P2P_CONNECTION_CHANGED_ACTION: networkInfo="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", reason = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1666
    :goto_2
    iget-object v7, p0, Lcom/android/server/display/WifiDisplayController$18;->this$0:Lcom/android/server/display/WifiDisplayController;

    #calls: Lcom/android/server/display/WifiDisplayController;->handleConnectionChanged(Landroid/net/NetworkInfo;I)V
    invoke-static {v7, v4, v6}, Lcom/android/server/display/WifiDisplayController;->access$4900(Lcom/android/server/display/WifiDisplayController;Landroid/net/NetworkInfo;I)V

    .line 1668
    iget-object v7, p0, Lcom/android/server/display/WifiDisplayController$18;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v8

    #setter for: Lcom/android/server/display/WifiDisplayController;->mLastTimeConnected:Z
    invoke-static {v7, v8}, Lcom/android/server/display/WifiDisplayController;->access$5002(Lcom/android/server/display/WifiDisplayController;Z)Z

    .line 1671
    iget-object v7, p0, Lcom/android/server/display/WifiDisplayController$18;->this$0:Lcom/android/server/display/WifiDisplayController;

    iget-object v8, p0, Lcom/android/server/display/WifiDisplayController$18;->this$0:Lcom/android/server/display/WifiDisplayController;

    #getter for: Lcom/android/server/display/WifiDisplayController;->mLastTimeConnected:Z
    invoke-static {v8}, Lcom/android/server/display/WifiDisplayController;->access$5000(Lcom/android/server/display/WifiDisplayController;)Z

    move-result v8

    #calls: Lcom/android/server/display/WifiDisplayController;->updateWifiChannelId(ZLandroid/content/Intent;)V
    invoke-static {v7, v8, p2}, Lcom/android/server/display/WifiDisplayController;->access$5100(Lcom/android/server/display/WifiDisplayController;ZLandroid/content/Intent;)V

    goto/16 :goto_1

    .line 1661
    :cond_7
    const-string v7, "WifiDisplayController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Received WIFI_P2P_CONNECTION_CHANGED_ACTION: isConnected? "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", reason = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1676
    .end local v4           #networkInfo:Landroid/net/NetworkInfo;
    .end local v6           #reason:I
    :cond_8
    const-string v8, "com.mediatek.mediaplayer.DRM_PLAY"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 1677
    const/4 v5, 0x0

    .line 1678
    .local v5, playerID:I
    iget-object v8, p0, Lcom/android/server/display/WifiDisplayController$18;->this$0:Lcom/android/server/display/WifiDisplayController;

    const-string v9, "isPlaying"

    invoke-virtual {p2, v9, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    #setter for: Lcom/android/server/display/WifiDisplayController;->mDRMContent_Mediaplayer:Z
    invoke-static {v8, v9}, Lcom/android/server/display/WifiDisplayController;->access$5202(Lcom/android/server/display/WifiDisplayController;Z)Z

    .line 1679
    const-string v8, "playerId"

    invoke-virtual {p2, v8, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 1680
    const-string v8, "WifiDisplayController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Received DRM_CONTENT_MEDIAPLAYER: isPlaying = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/display/WifiDisplayController$18;->this$0:Lcom/android/server/display/WifiDisplayController;

    #getter for: Lcom/android/server/display/WifiDisplayController;->mDRMContent_Mediaplayer:Z
    invoke-static {v10}, Lcom/android/server/display/WifiDisplayController;->access$5200(Lcom/android/server/display/WifiDisplayController;)Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", player = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", isConnected = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/display/WifiDisplayController$18;->this$0:Lcom/android/server/display/WifiDisplayController;

    #getter for: Lcom/android/server/display/WifiDisplayController;->mIsWFDConnected:Z
    invoke-static {v10}, Lcom/android/server/display/WifiDisplayController;->access$5300(Lcom/android/server/display/WifiDisplayController;)Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", isConnecting = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/display/WifiDisplayController$18;->this$0:Lcom/android/server/display/WifiDisplayController;

    #getter for: Lcom/android/server/display/WifiDisplayController;->mRTSPConnecting:Z
    invoke-static {v10}, Lcom/android/server/display/WifiDisplayController;->access$3100(Lcom/android/server/display/WifiDisplayController;)Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1685
    iget-object v8, p0, Lcom/android/server/display/WifiDisplayController$18;->this$0:Lcom/android/server/display/WifiDisplayController;

    #getter for: Lcom/android/server/display/WifiDisplayController;->mIsWFDConnected:Z
    invoke-static {v8}, Lcom/android/server/display/WifiDisplayController;->access$5300(Lcom/android/server/display/WifiDisplayController;)Z

    move-result v8

    if-eq v2, v8, :cond_9

    iget-object v8, p0, Lcom/android/server/display/WifiDisplayController$18;->this$0:Lcom/android/server/display/WifiDisplayController;

    #getter for: Lcom/android/server/display/WifiDisplayController;->mRTSPConnecting:Z
    invoke-static {v8}, Lcom/android/server/display/WifiDisplayController;->access$3100(Lcom/android/server/display/WifiDisplayController;)Z

    move-result v8

    if-ne v2, v8, :cond_0

    .line 1687
    :cond_9
    iget-object v8, p0, Lcom/android/server/display/WifiDisplayController$18;->this$0:Lcom/android/server/display/WifiDisplayController;

    #getter for: Lcom/android/server/display/WifiDisplayController;->mDRMContent_Mediaplayer:Z
    invoke-static {v8}, Lcom/android/server/display/WifiDisplayController;->access$5200(Lcom/android/server/display/WifiDisplayController;)Z

    move-result v8

    if-ne v2, v8, :cond_a

    .line 1688
    iget-object v8, p0, Lcom/android/server/display/WifiDisplayController$18;->this$0:Lcom/android/server/display/WifiDisplayController;

    #calls: Lcom/android/server/display/WifiDisplayController;->setRemoteSubmixOn(Z)V
    invoke-static {v8, v7}, Lcom/android/server/display/WifiDisplayController;->access$5400(Lcom/android/server/display/WifiDisplayController;Z)V

    .line 1689
    iget-object v7, p0, Lcom/android/server/display/WifiDisplayController$18;->this$0:Lcom/android/server/display/WifiDisplayController;

    #setter for: Lcom/android/server/display/WifiDisplayController;->mPlayerID_Mediaplayer:I
    invoke-static {v7, v5}, Lcom/android/server/display/WifiDisplayController;->access$5502(Lcom/android/server/display/WifiDisplayController;I)I

    goto/16 :goto_1

    .line 1691
    :cond_a
    iget-object v7, p0, Lcom/android/server/display/WifiDisplayController$18;->this$0:Lcom/android/server/display/WifiDisplayController;

    #getter for: Lcom/android/server/display/WifiDisplayController;->mPlayerID_Mediaplayer:I
    invoke-static {v7}, Lcom/android/server/display/WifiDisplayController;->access$5500(Lcom/android/server/display/WifiDisplayController;)I

    move-result v7

    if-ne v7, v5, :cond_b

    .line 1692
    iget-object v7, p0, Lcom/android/server/display/WifiDisplayController$18;->this$0:Lcom/android/server/display/WifiDisplayController;

    #calls: Lcom/android/server/display/WifiDisplayController;->setRemoteSubmixOn(Z)V
    invoke-static {v7, v2}, Lcom/android/server/display/WifiDisplayController;->access$5400(Lcom/android/server/display/WifiDisplayController;Z)V

    goto/16 :goto_1

    .line 1694
    :cond_b
    const-string v7, "WifiDisplayController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "player ID doesn\'t match last time: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/display/WifiDisplayController$18;->this$0:Lcom/android/server/display/WifiDisplayController;

    #getter for: Lcom/android/server/display/WifiDisplayController;->mPlayerID_Mediaplayer:I
    invoke-static {v9}, Lcom/android/server/display/WifiDisplayController;->access$5500(Lcom/android/server/display/WifiDisplayController;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1700
    .end local v5           #playerID:I
    :cond_c
    const-string v7, "android.net.wifi.p2p.DISCOVERY_STATE_CHANGE"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 1701
    const-string v7, "discoveryState"

    invoke-virtual {p2, v7, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 1703
    .local v1, discoveryState:I
    invoke-static {}, Lcom/android/server/display/WifiDisplayController;->access$600()Z

    move-result v7

    if-eqz v7, :cond_d

    .line 1704
    const-string v7, "WifiDisplayController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Received WIFI_P2P_DISCOVERY_CHANGED_ACTION: discoveryState="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1707
    :cond_d
    if-ne v1, v2, :cond_0

    .line 1708
    iget-object v7, p0, Lcom/android/server/display/WifiDisplayController$18;->this$0:Lcom/android/server/display/WifiDisplayController;

    #calls: Lcom/android/server/display/WifiDisplayController;->handleScanFinished()V
    invoke-static {v7}, Lcom/android/server/display/WifiDisplayController;->access$1000(Lcom/android/server/display/WifiDisplayController;)V

    goto/16 :goto_1

    .line 1712
    .end local v1           #discoveryState:I
    :cond_e
    const-string v7, "android.intent.action.ACTION_PRE_SHUTDOWN"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 1713
    const-string v7, "WifiDisplayController"

    const-string v8, "Received android.intent.action.ACTION_PRE_SHUTDOWN, do disconnect anyway"

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1717
    iget-object v7, p0, Lcom/android/server/display/WifiDisplayController$18;->this$0:Lcom/android/server/display/WifiDisplayController;

    #getter for: Lcom/android/server/display/WifiDisplayController;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v7}, Lcom/android/server/display/WifiDisplayController;->access$2200(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v7

    if-eqz v7, :cond_f

    .line 1718
    iget-object v7, p0, Lcom/android/server/display/WifiDisplayController$18;->this$0:Lcom/android/server/display/WifiDisplayController;

    #getter for: Lcom/android/server/display/WifiDisplayController;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v7}, Lcom/android/server/display/WifiDisplayController;->access$2200(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/display/WifiDisplayController$18;->this$0:Lcom/android/server/display/WifiDisplayController;

    #getter for: Lcom/android/server/display/WifiDisplayController;->mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static {v8}, Lcom/android/server/display/WifiDisplayController;->access$2100(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/net/wifi/p2p/WifiP2pManager;->removeGroup(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 1721
    :cond_f
    iget-object v7, p0, Lcom/android/server/display/WifiDisplayController$18;->this$0:Lcom/android/server/display/WifiDisplayController;

    #getter for: Lcom/android/server/display/WifiDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;
    invoke-static {v7}, Lcom/android/server/display/WifiDisplayController;->access$1800(Lcom/android/server/display/WifiDisplayController;)Landroid/media/RemoteDisplay;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 1722
    iget-object v7, p0, Lcom/android/server/display/WifiDisplayController$18;->this$0:Lcom/android/server/display/WifiDisplayController;

    #getter for: Lcom/android/server/display/WifiDisplayController;->mRemoteDisplay:Landroid/media/RemoteDisplay;
    invoke-static {v7}, Lcom/android/server/display/WifiDisplayController;->access$1800(Lcom/android/server/display/WifiDisplayController;)Landroid/media/RemoteDisplay;

    move-result-object v7

    invoke-virtual {v7}, Landroid/media/RemoteDisplay;->dispose()V

    goto/16 :goto_1

    .line 1726
    :cond_10
    const-string v7, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1727
    const-string v7, "networkInfo"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkInfo;

    .line 1729
    .local v3, info:Landroid/net/NetworkInfo;
    iget-object v7, p0, Lcom/android/server/display/WifiDisplayController$18;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v8

    #setter for: Lcom/android/server/display/WifiDisplayController;->mWifiApConnected:Z
    invoke-static {v7, v8}, Lcom/android/server/display/WifiDisplayController;->access$5602(Lcom/android/server/display/WifiDisplayController;Z)Z

    .line 1731
    const-string v7, "WifiDisplayController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Received WifiManager.NETWORK_STATE_CHANGED_ACTION, connected:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/display/WifiDisplayController$18;->this$0:Lcom/android/server/display/WifiDisplayController;

    #getter for: Lcom/android/server/display/WifiDisplayController;->mWifiApConnected:Z
    invoke-static {v9}, Lcom/android/server/display/WifiDisplayController;->access$5600(Lcom/android/server/display/WifiDisplayController;)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method
