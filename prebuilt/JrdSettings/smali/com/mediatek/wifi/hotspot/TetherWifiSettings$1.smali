.class Lcom/mediatek/wifi/hotspot/TetherWifiSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "TetherWifiSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/wifi/hotspot/TetherWifiSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/wifi/hotspot/TetherWifiSettings;


# direct methods
.method constructor <init>(Lcom/mediatek/wifi/hotspot/TetherWifiSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 136
    iput-object p1, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings$1;->this$0:Lcom/mediatek/wifi/hotspot/TetherWifiSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, 0x1

    .line 139
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 140
    .local v0, action:Ljava/lang/String;
    const-string v1, "TetherWifiSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "receive action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    const-string v1, "android.net.wifi.WIFI_HOTSPOT_CLIENTS_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 142
    iget-object v1, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings$1;->this$0:Lcom/mediatek/wifi/hotspot/TetherWifiSettings;

    #calls: Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->handleWifiApClientsChanged()V
    invoke-static {v1}, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->access$000(Lcom/mediatek/wifi/hotspot/TetherWifiSettings;)V

    .line 151
    :cond_0
    :goto_0
    return-void

    .line 143
    :cond_1
    const-string v1, "android.net.wifi.WIFI_WPS_CHECK_PIN_FAIL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 144
    const v1, 0x7f090115

    invoke-static {p1, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 145
    :cond_2
    const-string v1, "android.net.wifi.WIFI_HOTSPOT_OVERLAP"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 146
    const v1, 0x7f090439

    invoke-static {p1, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 147
    :cond_3
    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 148
    iget-object v1, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings$1;->this$0:Lcom/mediatek/wifi/hotspot/TetherWifiSettings;

    const-string v2, "wifi_state"

    const/16 v3, 0xe

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    #calls: Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->handleWifiApStateChanged(I)V
    invoke-static {v1, v2}, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->access$100(Lcom/mediatek/wifi/hotspot/TetherWifiSettings;I)V

    goto :goto_0
.end method
