.class Lcom/android/jrdsettings/wfd/WifiDisplaySettings$7;
.super Landroid/content/BroadcastReceiver;
.source "WifiDisplaySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/jrdsettings/wfd/WifiDisplaySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/jrdsettings/wfd/WifiDisplaySettings;


# direct methods
.method constructor <init>(Lcom/android/jrdsettings/wfd/WifiDisplaySettings;)V
    .locals 0
    .parameter

    .prologue
    .line 655
    iput-object p1, p0, Lcom/android/jrdsettings/wfd/WifiDisplaySettings$7;->this$0:Lcom/android/jrdsettings/wfd/WifiDisplaySettings;

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

    const/4 v6, 0x0

    .line 658
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 659
    .local v0, action:Ljava/lang/String;
    const-string v4, "android.hardware.display.action.WIFI_DISPLAY_STATUS_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 660
    const-string v4, "WifiDisplaySettings"

    const-string v5, "onReceive(): DisplayManager.ACTION_WIFI_DISPLAY_STATUS_CHANGED"

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    const-string v4, "android.hardware.display.extra.WIFI_DISPLAY_STATUS"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/hardware/display/WifiDisplayStatus;

    .line 663
    .local v3, status:Landroid/hardware/display/WifiDisplayStatus;
    iget-object v4, p0, Lcom/android/jrdsettings/wfd/WifiDisplaySettings$7;->this$0:Lcom/android/jrdsettings/wfd/WifiDisplaySettings;

    #setter for: Lcom/android/jrdsettings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;
    invoke-static {v4, v3}, Lcom/android/jrdsettings/wfd/WifiDisplaySettings;->access$002(Lcom/android/jrdsettings/wfd/WifiDisplaySettings;Landroid/hardware/display/WifiDisplayStatus;)Landroid/hardware/display/WifiDisplayStatus;

    .line 664
    iget-object v4, p0, Lcom/android/jrdsettings/wfd/WifiDisplaySettings$7;->this$0:Lcom/android/jrdsettings/wfd/WifiDisplaySettings;

    #calls: Lcom/android/jrdsettings/wfd/WifiDisplaySettings;->applyState()V
    invoke-static {v4}, Lcom/android/jrdsettings/wfd/WifiDisplaySettings;->access$900(Lcom/android/jrdsettings/wfd/WifiDisplaySettings;)V

    .line 666
    iget-object v4, p0, Lcom/android/jrdsettings/wfd/WifiDisplaySettings$7;->this$0:Lcom/android/jrdsettings/wfd/WifiDisplaySettings;

    #getter for: Lcom/android/jrdsettings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;
    invoke-static {v4}, Lcom/android/jrdsettings/wfd/WifiDisplaySettings;->access$000(Lcom/android/jrdsettings/wfd/WifiDisplaySettings;)Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v4

    invoke-virtual {v4}, Landroid/hardware/display/WifiDisplayStatus;->getFeatureState()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_0

    iget-object v4, p0, Lcom/android/jrdsettings/wfd/WifiDisplaySettings$7;->this$0:Lcom/android/jrdsettings/wfd/WifiDisplaySettings;

    #getter for: Lcom/android/jrdsettings/wfd/WifiDisplaySettings;->mNeedAutoConnect:Z
    invoke-static {v4}, Lcom/android/jrdsettings/wfd/WifiDisplaySettings;->access$300(Lcom/android/jrdsettings/wfd/WifiDisplaySettings;)Z

    move-result v4

    if-ne v4, v7, :cond_0

    .line 668
    iget-object v4, p0, Lcom/android/jrdsettings/wfd/WifiDisplaySettings$7;->this$0:Lcom/android/jrdsettings/wfd/WifiDisplaySettings;

    #calls: Lcom/android/jrdsettings/wfd/WifiDisplaySettings;->needAutoConnect()V
    invoke-static {v4}, Lcom/android/jrdsettings/wfd/WifiDisplaySettings;->access$1000(Lcom/android/jrdsettings/wfd/WifiDisplaySettings;)V

    .line 716
    .end local v3           #status:Landroid/hardware/display/WifiDisplayStatus;
    :cond_0
    :goto_0
    return-void

    .line 672
    :cond_1
    const-string v4, "com.mediatek.wfd.connection"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 673
    const-string v4, "connected"

    invoke-virtual {p2, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 674
    .local v1, isConnected:I
    if-nez v1, :cond_0

    .line 675
    const-string v4, "device_address"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 676
    .local v2, mac:Ljava/lang/String;
    const-string v4, "WifiDisplaySettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Receive disconnect broadcast, mac is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    if-eqz v2, :cond_0

    iget-object v4, p0, Lcom/android/jrdsettings/wfd/WifiDisplaySettings$7;->this$0:Lcom/android/jrdsettings/wfd/WifiDisplaySettings;

    #getter for: Lcom/android/jrdsettings/wfd/WifiDisplaySettings;->mDisconnectWifiDisplay:Landroid/hardware/display/WifiDisplay;
    invoke-static {v4}, Lcom/android/jrdsettings/wfd/WifiDisplaySettings;->access$200(Lcom/android/jrdsettings/wfd/WifiDisplaySettings;)Landroid/hardware/display/WifiDisplay;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 678
    iget-object v4, p0, Lcom/android/jrdsettings/wfd/WifiDisplaySettings$7;->this$0:Lcom/android/jrdsettings/wfd/WifiDisplaySettings;

    #getter for: Lcom/android/jrdsettings/wfd/WifiDisplaySettings;->mDisconnectWifiDisplay:Landroid/hardware/display/WifiDisplay;
    invoke-static {v4}, Lcom/android/jrdsettings/wfd/WifiDisplaySettings;->access$200(Lcom/android/jrdsettings/wfd/WifiDisplaySettings;)Landroid/hardware/display/WifiDisplay;

    move-result-object v4

    invoke-virtual {v4}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 679
    const-string v4, "WifiDisplaySettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "remove "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " disconnect dialog"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    iget-object v4, p0, Lcom/android/jrdsettings/wfd/WifiDisplaySettings$7;->this$0:Lcom/android/jrdsettings/wfd/WifiDisplaySettings;

    #calls: Lcom/android/jrdsettings/SettingsPreferenceFragment;->removeDialog(I)V
    invoke-static {v4, v7}, Lcom/android/jrdsettings/wfd/WifiDisplaySettings;->access$1100(Lcom/android/jrdsettings/wfd/WifiDisplaySettings;I)V

    goto :goto_0

    .line 685
    .end local v1           #isConnected:I
    .end local v2           #mac:Ljava/lang/String;
    :cond_2
    const-string v4, "com.android.jrdsettings.wfd.action.CLOSE_WFD"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 686
    iget-object v4, p0, Lcom/android/jrdsettings/wfd/WifiDisplaySettings$7;->this$0:Lcom/android/jrdsettings/wfd/WifiDisplaySettings;

    #getter for: Lcom/android/jrdsettings/wfd/WifiDisplaySettings;->mWifiDisplayOnSetting:Z
    invoke-static {v4}, Lcom/android/jrdsettings/wfd/WifiDisplaySettings;->access$600(Lcom/android/jrdsettings/wfd/WifiDisplaySettings;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/jrdsettings/wfd/WifiDisplaySettings$7;->this$0:Lcom/android/jrdsettings/wfd/WifiDisplaySettings;

    #getter for: Lcom/android/jrdsettings/wfd/WifiDisplaySettings;->availableDisplays:[Landroid/hardware/display/WifiDisplay;
    invoke-static {v4}, Lcom/android/jrdsettings/wfd/WifiDisplaySettings;->access$1200(Lcom/android/jrdsettings/wfd/WifiDisplaySettings;)[Landroid/hardware/display/WifiDisplay;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/jrdsettings/wfd/WifiDisplaySettings$7;->this$0:Lcom/android/jrdsettings/wfd/WifiDisplaySettings;

    #getter for: Lcom/android/jrdsettings/wfd/WifiDisplaySettings;->availableDisplays:[Landroid/hardware/display/WifiDisplay;
    invoke-static {v4}, Lcom/android/jrdsettings/wfd/WifiDisplaySettings;->access$1200(Lcom/android/jrdsettings/wfd/WifiDisplaySettings;)[Landroid/hardware/display/WifiDisplay;

    move-result-object v4

    array-length v4, v4

    if-nez v4, :cond_0

    invoke-static {}, Lcom/android/jrdsettings/wfd/WifiDisplaySettings;->access$1300()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 687
    const-string v4, "WifiDisplaySettings"

    const-string v5, "receiver ACTION_CLOSE_WFD, if display is on, close it"

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    iget-object v4, p0, Lcom/android/jrdsettings/wfd/WifiDisplaySettings$7;->this$0:Lcom/android/jrdsettings/wfd/WifiDisplaySettings;

    invoke-virtual {v4}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0903f5

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 694
    iget-object v4, p0, Lcom/android/jrdsettings/wfd/WifiDisplaySettings$7;->this$0:Lcom/android/jrdsettings/wfd/WifiDisplaySettings;

    #getter for: Lcom/android/jrdsettings/wfd/WifiDisplaySettings;->mMultiShareManager:Lcom/android/jrdsettings/MultiShareManager;
    invoke-static {v4}, Lcom/android/jrdsettings/wfd/WifiDisplaySettings;->access$700(Lcom/android/jrdsettings/wfd/WifiDisplaySettings;)Lcom/android/jrdsettings/MultiShareManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/jrdsettings/MultiShareManager;->stopWifiDisplay()Z

    .line 695
    iget-object v4, p0, Lcom/android/jrdsettings/wfd/WifiDisplaySettings$7;->this$0:Lcom/android/jrdsettings/wfd/WifiDisplaySettings;

    #setter for: Lcom/android/jrdsettings/wfd/WifiDisplaySettings;->mWifiDisplayOnSetting:Z
    invoke-static {v4, v6}, Lcom/android/jrdsettings/wfd/WifiDisplaySettings;->access$602(Lcom/android/jrdsettings/wfd/WifiDisplaySettings;Z)Z

    goto/16 :goto_0

    .line 697
    :cond_3
    const-string v4, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 698
    iget-object v4, p0, Lcom/android/jrdsettings/wfd/WifiDisplaySettings$7;->this$0:Lcom/android/jrdsettings/wfd/WifiDisplaySettings;

    #getter for: Lcom/android/jrdsettings/wfd/WifiDisplaySettings;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v4}, Lcom/android/jrdsettings/wfd/WifiDisplaySettings;->access$1500(Lcom/android/jrdsettings/wfd/WifiDisplaySettings;)Landroid/app/AlarmManager;

    move-result-object v4

    iget-object v5, p0, Lcom/android/jrdsettings/wfd/WifiDisplaySettings$7;->this$0:Lcom/android/jrdsettings/wfd/WifiDisplaySettings;

    #getter for: Lcom/android/jrdsettings/wfd/WifiDisplaySettings;->mCloseWfdIntent:Landroid/app/PendingIntent;
    invoke-static {v5}, Lcom/android/jrdsettings/wfd/WifiDisplaySettings;->access$1400(Lcom/android/jrdsettings/wfd/WifiDisplaySettings;)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    goto/16 :goto_0

    .line 699
    :cond_4
    const-string v4, "com.android.jrdsettings.wfd.action.OPEN_WFD"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 704
    iget-object v4, p0, Lcom/android/jrdsettings/wfd/WifiDisplaySettings$7;->this$0:Lcom/android/jrdsettings/wfd/WifiDisplaySettings;

    #getter for: Lcom/android/jrdsettings/wfd/WifiDisplaySettings;->mMultiShareManager:Lcom/android/jrdsettings/MultiShareManager;
    invoke-static {v4}, Lcom/android/jrdsettings/wfd/WifiDisplaySettings;->access$700(Lcom/android/jrdsettings/wfd/WifiDisplaySettings;)Lcom/android/jrdsettings/MultiShareManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/jrdsettings/MultiShareManager;->startWifiDisplay()Z

    .line 705
    iget-object v4, p0, Lcom/android/jrdsettings/wfd/WifiDisplaySettings$7;->this$0:Lcom/android/jrdsettings/wfd/WifiDisplaySettings;

    #setter for: Lcom/android/jrdsettings/wfd/WifiDisplaySettings;->mWifiDisplayOnSetting:Z
    invoke-static {v4, v7}, Lcom/android/jrdsettings/wfd/WifiDisplaySettings;->access$602(Lcom/android/jrdsettings/wfd/WifiDisplaySettings;Z)Z

    goto/16 :goto_0

    .line 706
    :cond_5
    const-string v4, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 707
    iget-object v4, p0, Lcom/android/jrdsettings/wfd/WifiDisplaySettings$7;->this$0:Lcom/android/jrdsettings/wfd/WifiDisplaySettings;

    const-string v5, "wifi_state"

    const/4 v6, 0x4

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    #calls: Lcom/android/jrdsettings/wfd/WifiDisplaySettings;->handleWifiStateChanged(I)V
    invoke-static {v4, v5}, Lcom/android/jrdsettings/wfd/WifiDisplaySettings;->access$1600(Lcom/android/jrdsettings/wfd/WifiDisplaySettings;I)V

    goto/16 :goto_0

    .line 709
    :cond_6
    const-string v4, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 710
    iget-object v4, p0, Lcom/android/jrdsettings/wfd/WifiDisplaySettings$7;->this$0:Lcom/android/jrdsettings/wfd/WifiDisplaySettings;

    #calls: Lcom/android/jrdsettings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v4}, Lcom/android/jrdsettings/wfd/WifiDisplaySettings;->access$1700(Lcom/android/jrdsettings/wfd/WifiDisplaySettings;)Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "airplane_mode_on"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v7, :cond_0

    .line 712
    iget-object v4, p0, Lcom/android/jrdsettings/wfd/WifiDisplaySettings$7;->this$0:Lcom/android/jrdsettings/wfd/WifiDisplaySettings;

    #getter for: Lcom/android/jrdsettings/wfd/WifiDisplaySettings;->mActionBarSwitch:Landroid/widget/Switch;
    invoke-static {v4}, Lcom/android/jrdsettings/wfd/WifiDisplaySettings;->access$800(Lcom/android/jrdsettings/wfd/WifiDisplaySettings;)Landroid/widget/Switch;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/widget/Switch;->setChecked(Z)V

    goto/16 :goto_0
.end method
