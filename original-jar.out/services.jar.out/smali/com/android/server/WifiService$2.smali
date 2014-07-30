.class Lcom/android/server/WifiService$2;
.super Landroid/content/BroadcastReceiver;
.source "WifiService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/WifiService;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/WifiService;


# direct methods
.method constructor <init>(Lcom/android/server/WifiService;)V
    .locals 0
    .parameter

    .prologue
    .line 496
    iput-object p1, p0, Lcom/android/server/WifiService$2;->this$0:Lcom/android/server/WifiService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x3

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 499
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string v8, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 500
    const-string v7, "wifi_state"

    invoke-virtual {p2, v7, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 503
    .local v4, wifiState:I
    iget-object v7, p0, Lcom/android/server/WifiService$2;->this$0:Lcom/android/server/WifiService;

    if-ne v4, v9, :cond_1

    :goto_0
    #setter for: Lcom/android/server/WifiService;->mWifiEnabled:Z
    invoke-static {v7, v5}, Lcom/android/server/WifiService;->access$1202(Lcom/android/server/WifiService;Z)Z

    .line 506
    iget-object v5, p0, Lcom/android/server/WifiService$2;->this$0:Lcom/android/server/WifiService;

    #calls: Lcom/android/server/WifiService;->resetNotification()V
    invoke-static {v5}, Lcom/android/server/WifiService;->access$1300(Lcom/android/server/WifiService;)V

    .line 507
    iget-object v5, p0, Lcom/android/server/WifiService$2;->this$0:Lcom/android/server/WifiService;

    #setter for: Lcom/android/server/WifiService;->mWaitForScanResult:Z
    invoke-static {v5, v6}, Lcom/android/server/WifiService;->access$1402(Lcom/android/server/WifiService;Z)Z

    .line 508
    iget-object v5, p0, Lcom/android/server/WifiService$2;->this$0:Lcom/android/server/WifiService;

    #setter for: Lcom/android/server/WifiService;->mShowReselectDialog:Z
    invoke-static {v5, v6}, Lcom/android/server/WifiService;->access$1502(Lcom/android/server/WifiService;Z)Z

    .line 591
    .end local v4           #wifiState:I
    :cond_0
    :goto_1
    return-void

    .restart local v4       #wifiState:I
    :cond_1
    move v5, v6

    .line 503
    goto :goto_0

    .line 509
    .end local v4           #wifiState:I
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string v8, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 511
    iget-object v7, p0, Lcom/android/server/WifiService$2;->this$0:Lcom/android/server/WifiService;

    const-string v5, "networkInfo"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/net/NetworkInfo;

    iput-object v5, v7, Lcom/android/server/WifiService;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 513
    const-string v5, "WifiService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Received NETWORK_STATE_CHANGED_ACTION, mNetworkInfo:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/WifiService$2;->this$0:Lcom/android/server/WifiService;

    iget-object v8, v8, Lcom/android/server/WifiService;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/mediatek/xlog/SXlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    sget-object v5, Lcom/android/server/WifiService$7;->$SwitchMap$android$net$NetworkInfo$DetailedState:[I

    iget-object v7, p0, Lcom/android/server/WifiService$2;->this$0:Lcom/android/server/WifiService;

    iget-object v7, v7, Lcom/android/server/WifiService;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aget v5, v5, v7

    packed-switch v5, :pswitch_data_0

    goto :goto_1

    .line 517
    :pswitch_0
    iget-object v5, p0, Lcom/android/server/WifiService$2;->this$0:Lcom/android/server/WifiService;

    #setter for: Lcom/android/server/WifiService;->mWaitForScanResult:Z
    invoke-static {v5, v6}, Lcom/android/server/WifiService;->access$1402(Lcom/android/server/WifiService;Z)Z

    .line 520
    :pswitch_1
    iget-object v5, p0, Lcom/android/server/WifiService$2;->this$0:Lcom/android/server/WifiService;

    #calls: Lcom/android/server/WifiService;->evaluateTrafficStatsPolling()V
    invoke-static {v5}, Lcom/android/server/WifiService;->access$1600(Lcom/android/server/WifiService;)V

    .line 521
    iget-object v5, p0, Lcom/android/server/WifiService$2;->this$0:Lcom/android/server/WifiService;

    #calls: Lcom/android/server/WifiService;->resetNotification()V
    invoke-static {v5}, Lcom/android/server/WifiService;->access$1300(Lcom/android/server/WifiService;)V

    goto :goto_1

    .line 524
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string v8, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 526
    iget-object v5, p0, Lcom/android/server/WifiService$2;->this$0:Lcom/android/server/WifiService;

    const-string v7, "SHOW_RESELECT_DIALOG"

    invoke-virtual {p2, v7, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    #setter for: Lcom/android/server/WifiService;->mShowReselectDialog:Z
    invoke-static {v5, v6}, Lcom/android/server/WifiService;->access$1502(Lcom/android/server/WifiService;Z)Z

    .line 527
    iget-object v5, p0, Lcom/android/server/WifiService$2;->this$0:Lcom/android/server/WifiService;

    #calls: Lcom/android/server/WifiService;->noteScanEnd()V
    invoke-static {v5}, Lcom/android/server/WifiService;->access$1700(Lcom/android/server/WifiService;)V

    .line 528
    iget-object v5, p0, Lcom/android/server/WifiService$2;->this$0:Lcom/android/server/WifiService;

    #calls: Lcom/android/server/WifiService;->checkAndSetNotification()V
    invoke-static {v5}, Lcom/android/server/WifiService;->access$1800(Lcom/android/server/WifiService;)V

    goto :goto_1

    .line 530
    :cond_4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string v8, "storageforcemode.disable.dataconnection"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 531
    iget-object v7, p0, Lcom/android/server/WifiService$2;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/server/WifiService;->access$200(Lcom/android/server/WifiService;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 532
    .local v0, cr:Landroid/content/ContentResolver;
    iget-object v7, p0, Lcom/android/server/WifiService$2;->this$0:Lcom/android/server/WifiService;

    invoke-virtual {v7}, Lcom/android/server/WifiService;->getWifiEnabledState()I

    move-result v4

    .line 533
    .restart local v4       #wifiState:I
    if-eq v4, v10, :cond_5

    if-ne v4, v9, :cond_0

    .line 535
    :cond_5
    const-string v7, "wifi_saved_state"

    invoke-static {v0, v7, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 536
    const-string v7, "storageforcemode.disable.dataconnection"

    invoke-static {v0, v7, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 537
    iget-object v5, p0, Lcom/android/server/WifiService$2;->this$0:Lcom/android/server/WifiService;

    invoke-virtual {v5, v6}, Lcom/android/server/WifiService;->setWifiEnabled(Z)Z

    goto/16 :goto_1

    .line 539
    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v4           #wifiState:I
    :cond_6
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string v8, "storageforcemode.enable.dataconnection"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 540
    iget-object v7, p0, Lcom/android/server/WifiService$2;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/server/WifiService;->access$200(Lcom/android/server/WifiService;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 541
    .restart local v0       #cr:Landroid/content/ContentResolver;
    const/4 v2, 0x0

    .line 543
    .local v2, storageForceMode:I
    :try_start_0
    const-string v7, "storageforcemode.disable.dataconnection"

    invoke-static {v0, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 547
    :goto_2
    if-ne v2, v5, :cond_0

    .line 548
    const-string v7, "storageforcemode.disable.dataconnection"

    invoke-static {v0, v7, v6}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 549
    iget-object v7, p0, Lcom/android/server/WifiService$2;->this$0:Lcom/android/server/WifiService;

    invoke-virtual {v7}, Lcom/android/server/WifiService;->getWifiEnabledState()I

    move-result v4

    .line 550
    .restart local v4       #wifiState:I
    if-eq v4, v10, :cond_0

    if-eq v4, v9, :cond_0

    .line 552
    const/4 v3, 0x0

    .line 554
    .local v3, wifiSavedState:I
    :try_start_1
    const-string v7, "wifi_saved_state"

    invoke-static {v0, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    .line 558
    :goto_3
    if-ne v3, v5, :cond_0

    .line 559
    const-string v7, "wifi_saved_state"

    invoke-static {v0, v7, v6}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 560
    iget-object v6, p0, Lcom/android/server/WifiService$2;->this$0:Lcom/android/server/WifiService;

    invoke-virtual {v6, v5}, Lcom/android/server/WifiService;->setWifiEnabled(Z)Z

    goto/16 :goto_1

    .line 544
    .end local v3           #wifiSavedState:I
    .end local v4           #wifiState:I
    :catch_0
    move-exception v1

    .line 545
    .local v1, e:Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 555
    .end local v1           #e:Landroid/provider/Settings$SettingNotFoundException;
    .restart local v3       #wifiSavedState:I
    .restart local v4       #wifiState:I
    :catch_1
    move-exception v1

    .line 556
    .restart local v1       #e:Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3

    .line 566
    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v1           #e:Landroid/provider/Settings$SettingNotFoundException;
    .end local v2           #storageForceMode:I
    .end local v3           #wifiSavedState:I
    .end local v4           #wifiState:I
    :cond_7
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string v8, "android.intent.action.ACTION_BOOT_IPO"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 567
    const-string v7, "WifiService"

    const-string v8, "Enable Wifi when IPO boot if necessary!"

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    const/4 v4, 0x0

    .line 570
    .restart local v4       #wifiState:I
    :try_start_2
    iget-object v7, p0, Lcom/android/server/WifiService$2;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/server/WifiService;->access$200(Lcom/android/server/WifiService;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "wifi_on"

    invoke-static {v7, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result v4

    .line 575
    :goto_4
    if-nez v4, :cond_0

    .line 576
    const/4 v3, 0x0

    .line 578
    .restart local v3       #wifiSavedState:I
    :try_start_3
    iget-object v7, p0, Lcom/android/server/WifiService$2;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/server/WifiService;->access$200(Lcom/android/server/WifiService;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "wifi_saved_state"

    invoke-static {v7, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-result v3

    .line 583
    :goto_5
    if-ne v3, v5, :cond_0

    .line 584
    iget-object v7, p0, Lcom/android/server/WifiService$2;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/server/WifiService;->access$200(Lcom/android/server/WifiService;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "wifi_saved_state"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 586
    iget-object v6, p0, Lcom/android/server/WifiService$2;->this$0:Lcom/android/server/WifiService;

    invoke-virtual {v6, v5}, Lcom/android/server/WifiService;->setWifiEnabled(Z)Z

    goto/16 :goto_1

    .line 572
    .end local v3           #wifiSavedState:I
    :catch_2
    move-exception v1

    .line 573
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4

    .line 580
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v3       #wifiSavedState:I
    :catch_3
    move-exception v1

    .line 581
    .restart local v1       #e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_5

    .line 515
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
