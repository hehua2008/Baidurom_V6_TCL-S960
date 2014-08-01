.class Lcom/android/jrdsettings/dlna/DLNASettings$2;
.super Landroid/content/BroadcastReceiver;
.source "DLNASettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/jrdsettings/dlna/DLNASettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/jrdsettings/dlna/DLNASettings;


# direct methods
.method constructor <init>(Lcom/android/jrdsettings/dlna/DLNASettings;)V
    .locals 0
    .parameter

    .prologue
    .line 493
    iput-object p1, p0, Lcom/android/jrdsettings/dlna/DLNASettings$2;->this$0:Lcom/android/jrdsettings/dlna/DLNASettings;

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

    .line 497
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 498
    .local v0, action:Ljava/lang/String;
    const-string v3, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 499
    const-string v3, "wifi_state"

    const/4 v4, 0x4

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 501
    .local v1, change:I
    const-string v3, "DLNASettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Changed action "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    if-eq v1, v7, :cond_0

    if-nez v1, :cond_1

    .line 503
    :cond_0
    iget-object v3, p0, Lcom/android/jrdsettings/dlna/DLNASettings$2;->this$0:Lcom/android/jrdsettings/dlna/DLNASettings;

    iget-object v3, v3, Lcom/android/jrdsettings/dlna/DLNASettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 504
    iget-object v3, p0, Lcom/android/jrdsettings/dlna/DLNASettings$2;->this$0:Lcom/android/jrdsettings/dlna/DLNASettings;

    #setter for: Lcom/android/jrdsettings/dlna/DLNASettings;->mWifiEnable:Z
    invoke-static {v3, v6}, Lcom/android/jrdsettings/dlna/DLNASettings;->access$202(Lcom/android/jrdsettings/dlna/DLNASettings;Z)Z

    .line 506
    :cond_1
    iget-object v3, p0, Lcom/android/jrdsettings/dlna/DLNASettings$2;->this$0:Lcom/android/jrdsettings/dlna/DLNASettings;

    #calls: Lcom/android/jrdsettings/dlna/DLNASettings;->updateContent()V
    invoke-static {v3}, Lcom/android/jrdsettings/dlna/DLNASettings;->access$300(Lcom/android/jrdsettings/dlna/DLNASettings;)V

    .line 529
    .end local v1           #change:I
    :cond_2
    :goto_0
    return-void

    .line 507
    :cond_3
    const-string v3, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 508
    const-string v3, "networkInfo"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkInfo;

    .line 511
    .local v2, info:Landroid/net/NetworkInfo;
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v3, v4, :cond_5

    .line 512
    iget-object v3, p0, Lcom/android/jrdsettings/dlna/DLNASettings$2;->this$0:Lcom/android/jrdsettings/dlna/DLNASettings;

    iget-object v3, v3, Lcom/android/jrdsettings/dlna/DLNASettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 513
    iget-object v3, p0, Lcom/android/jrdsettings/dlna/DLNASettings$2;->this$0:Lcom/android/jrdsettings/dlna/DLNASettings;

    #setter for: Lcom/android/jrdsettings/dlna/DLNASettings;->mWifiEnable:Z
    invoke-static {v3, v7}, Lcom/android/jrdsettings/dlna/DLNASettings;->access$202(Lcom/android/jrdsettings/dlna/DLNASettings;Z)Z

    .line 518
    :cond_4
    :goto_1
    iget-object v3, p0, Lcom/android/jrdsettings/dlna/DLNASettings$2;->this$0:Lcom/android/jrdsettings/dlna/DLNASettings;

    #calls: Lcom/android/jrdsettings/dlna/DLNASettings;->updateContent()V
    invoke-static {v3}, Lcom/android/jrdsettings/dlna/DLNASettings;->access$300(Lcom/android/jrdsettings/dlna/DLNASettings;)V

    goto :goto_0

    .line 514
    :cond_5
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v3, v4, :cond_4

    .line 515
    iget-object v3, p0, Lcom/android/jrdsettings/dlna/DLNASettings$2;->this$0:Lcom/android/jrdsettings/dlna/DLNASettings;

    iget-object v3, v3, Lcom/android/jrdsettings/dlna/DLNASettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 516
    iget-object v3, p0, Lcom/android/jrdsettings/dlna/DLNASettings$2;->this$0:Lcom/android/jrdsettings/dlna/DLNASettings;

    #setter for: Lcom/android/jrdsettings/dlna/DLNASettings;->mWifiEnable:Z
    invoke-static {v3, v6}, Lcom/android/jrdsettings/dlna/DLNASettings;->access$202(Lcom/android/jrdsettings/dlna/DLNASettings;Z)Z

    goto :goto_1

    .line 519
    .end local v2           #info:Landroid/net/NetworkInfo;
    :cond_6
    const-string v3, "android.intent.DLNA_SWITCH"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 520
    iget-object v3, p0, Lcom/android/jrdsettings/dlna/DLNASettings$2;->this$0:Lcom/android/jrdsettings/dlna/DLNASettings;

    iget-object v4, p0, Lcom/android/jrdsettings/dlna/DLNASettings$2;->this$0:Lcom/android/jrdsettings/dlna/DLNASettings;

    #calls: Lcom/android/jrdsettings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v4}, Lcom/android/jrdsettings/dlna/DLNASettings;->access$500(Lcom/android/jrdsettings/dlna/DLNASettings;)Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "dlna_mode_on"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    #setter for: Lcom/android/jrdsettings/dlna/DLNASettings;->mScanEnable:I
    invoke-static {v3, v4}, Lcom/android/jrdsettings/dlna/DLNASettings;->access$402(Lcom/android/jrdsettings/dlna/DLNASettings;I)I

    .line 522
    iget-object v3, p0, Lcom/android/jrdsettings/dlna/DLNASettings$2;->this$0:Lcom/android/jrdsettings/dlna/DLNASettings;

    #calls: Lcom/android/jrdsettings/dlna/DLNASettings;->updateContent()V
    invoke-static {v3}, Lcom/android/jrdsettings/dlna/DLNASettings;->access$300(Lcom/android/jrdsettings/dlna/DLNASettings;)V

    goto :goto_0

    .line 523
    :cond_7
    const-string v3, "android.intent.device_add"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 524
    iget-object v3, p0, Lcom/android/jrdsettings/dlna/DLNASettings$2;->this$0:Lcom/android/jrdsettings/dlna/DLNASettings;

    #calls: Lcom/android/jrdsettings/dlna/DLNASettings;->updateContent()V
    invoke-static {v3}, Lcom/android/jrdsettings/dlna/DLNASettings;->access$300(Lcom/android/jrdsettings/dlna/DLNASettings;)V

    goto :goto_0

    .line 525
    :cond_8
    const-string v3, "android.intent.device_remove"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 526
    iget-object v3, p0, Lcom/android/jrdsettings/dlna/DLNASettings$2;->this$0:Lcom/android/jrdsettings/dlna/DLNASettings;

    #calls: Lcom/android/jrdsettings/dlna/DLNASettings;->updateContent()V
    invoke-static {v3}, Lcom/android/jrdsettings/dlna/DLNASettings;->access$300(Lcom/android/jrdsettings/dlna/DLNASettings;)V

    goto :goto_0
.end method
