.class Lcom/android/jrdsettings/wifi/p2p/WifiP2pSettings$6;
.super Ljava/lang/Object;
.source "WifiP2pSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/jrdsettings/wifi/p2p/WifiP2pSettings;->onActivityCreated(Landroid/os/Bundle;)V
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
    .line 318
    iput-object p1, p0, Lcom/android/jrdsettings/wifi/p2p/WifiP2pSettings$6;->this$0:Lcom/android/jrdsettings/wifi/p2p/WifiP2pSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 321
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 322
    iget-object v0, p0, Lcom/android/jrdsettings/wifi/p2p/WifiP2pSettings$6;->this$0:Lcom/android/jrdsettings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/jrdsettings/wifi/p2p/WifiP2pSettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;
    invoke-static {v0}, Lcom/android/jrdsettings/wifi/p2p/WifiP2pSettings;->access$1000(Lcom/android/jrdsettings/wifi/p2p/WifiP2pSettings;)Landroid/hardware/display/DisplayManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->disconnectWifiDisplay()V

    .line 324
    :cond_0
    return-void
.end method
