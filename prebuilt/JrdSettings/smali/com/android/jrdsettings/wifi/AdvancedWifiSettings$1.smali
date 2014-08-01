.class Lcom/android/jrdsettings/wifi/AdvancedWifiSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "AdvancedWifiSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/jrdsettings/wifi/AdvancedWifiSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/jrdsettings/wifi/AdvancedWifiSettings;


# direct methods
.method constructor <init>(Lcom/android/jrdsettings/wifi/AdvancedWifiSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 111
    iput-object p1, p0, Lcom/android/jrdsettings/wifi/AdvancedWifiSettings$1;->this$0:Lcom/android/jrdsettings/wifi/AdvancedWifiSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 114
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 115
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 116
    const-string v2, "wifi_state"

    const/4 v3, 0x4

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 118
    .local v1, state:I
    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 119
    iget-object v2, p0, Lcom/android/jrdsettings/wifi/AdvancedWifiSettings$1;->this$0:Lcom/android/jrdsettings/wifi/AdvancedWifiSettings;

    #getter for: Lcom/android/jrdsettings/wifi/AdvancedWifiSettings;->mNotifyOpenNetworks:Landroid/preference/CheckBoxPreference;
    invoke-static {v2}, Lcom/android/jrdsettings/wifi/AdvancedWifiSettings;->access$000(Lcom/android/jrdsettings/wifi/AdvancedWifiSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 121
    iget-object v2, p0, Lcom/android/jrdsettings/wifi/AdvancedWifiSettings$1;->this$0:Lcom/android/jrdsettings/wifi/AdvancedWifiSettings;

    #getter for: Lcom/android/jrdsettings/wifi/AdvancedWifiSettings;->mPasspointSettings:Lcom/mediatek/wifi/PasspointSettings;
    invoke-static {v2}, Lcom/android/jrdsettings/wifi/AdvancedWifiSettings;->access$100(Lcom/android/jrdsettings/wifi/AdvancedWifiSettings;)Lcom/mediatek/wifi/PasspointSettings;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 122
    iget-object v2, p0, Lcom/android/jrdsettings/wifi/AdvancedWifiSettings$1;->this$0:Lcom/android/jrdsettings/wifi/AdvancedWifiSettings;

    #getter for: Lcom/android/jrdsettings/wifi/AdvancedWifiSettings;->mPasspointSettings:Lcom/mediatek/wifi/PasspointSettings;
    invoke-static {v2}, Lcom/android/jrdsettings/wifi/AdvancedWifiSettings;->access$100(Lcom/android/jrdsettings/wifi/AdvancedWifiSettings;)Lcom/mediatek/wifi/PasspointSettings;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/mediatek/wifi/PasspointSettings;->refreshPasspointPreference(Z)V

    .line 132
    .end local v1           #state:I
    :cond_0
    :goto_0
    return-void

    .line 124
    .restart local v1       #state:I
    :cond_1
    if-ne v1, v4, :cond_0

    .line 125
    iget-object v2, p0, Lcom/android/jrdsettings/wifi/AdvancedWifiSettings$1;->this$0:Lcom/android/jrdsettings/wifi/AdvancedWifiSettings;

    #getter for: Lcom/android/jrdsettings/wifi/AdvancedWifiSettings;->mNotifyOpenNetworks:Landroid/preference/CheckBoxPreference;
    invoke-static {v2}, Lcom/android/jrdsettings/wifi/AdvancedWifiSettings;->access$000(Lcom/android/jrdsettings/wifi/AdvancedWifiSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 127
    iget-object v2, p0, Lcom/android/jrdsettings/wifi/AdvancedWifiSettings$1;->this$0:Lcom/android/jrdsettings/wifi/AdvancedWifiSettings;

    #getter for: Lcom/android/jrdsettings/wifi/AdvancedWifiSettings;->mPasspointSettings:Lcom/mediatek/wifi/PasspointSettings;
    invoke-static {v2}, Lcom/android/jrdsettings/wifi/AdvancedWifiSettings;->access$100(Lcom/android/jrdsettings/wifi/AdvancedWifiSettings;)Lcom/mediatek/wifi/PasspointSettings;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 128
    iget-object v2, p0, Lcom/android/jrdsettings/wifi/AdvancedWifiSettings$1;->this$0:Lcom/android/jrdsettings/wifi/AdvancedWifiSettings;

    #getter for: Lcom/android/jrdsettings/wifi/AdvancedWifiSettings;->mPasspointSettings:Lcom/mediatek/wifi/PasspointSettings;
    invoke-static {v2}, Lcom/android/jrdsettings/wifi/AdvancedWifiSettings;->access$100(Lcom/android/jrdsettings/wifi/AdvancedWifiSettings;)Lcom/mediatek/wifi/PasspointSettings;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/mediatek/wifi/PasspointSettings;->refreshPasspointPreference(Z)V

    goto :goto_0
.end method
