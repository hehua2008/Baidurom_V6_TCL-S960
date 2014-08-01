.class Lcom/android/jrdsettings/wfd/WifiDisplaySettings$1;
.super Ljava/lang/Object;
.source "WifiDisplaySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/jrdsettings/wfd/WifiDisplaySettings;->showDisconnectDialog(Landroid/hardware/display/WifiDisplay;)Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/jrdsettings/wfd/WifiDisplaySettings;

.field final synthetic val$display:Landroid/hardware/display/WifiDisplay;


# direct methods
.method constructor <init>(Lcom/android/jrdsettings/wfd/WifiDisplaySettings;Landroid/hardware/display/WifiDisplay;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 519
    iput-object p1, p0, Lcom/android/jrdsettings/wfd/WifiDisplaySettings$1;->this$0:Lcom/android/jrdsettings/wfd/WifiDisplaySettings;

    iput-object p2, p0, Lcom/android/jrdsettings/wfd/WifiDisplaySettings$1;->val$display:Landroid/hardware/display/WifiDisplay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 522
    iget-object v0, p0, Lcom/android/jrdsettings/wfd/WifiDisplaySettings$1;->val$display:Landroid/hardware/display/WifiDisplay;

    iget-object v1, p0, Lcom/android/jrdsettings/wfd/WifiDisplaySettings$1;->this$0:Lcom/android/jrdsettings/wfd/WifiDisplaySettings;

    #getter for: Lcom/android/jrdsettings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;
    invoke-static {v1}, Lcom/android/jrdsettings/wfd/WifiDisplaySettings;->access$000(Lcom/android/jrdsettings/wfd/WifiDisplaySettings;)Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplay()Landroid/hardware/display/WifiDisplay;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/display/WifiDisplay;->equals(Landroid/hardware/display/WifiDisplay;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 523
    const-string v0, "WifiDisplaySettings"

    const-string v1, "click disconnect button, disconnectWifiDisplay()"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    iget-object v0, p0, Lcom/android/jrdsettings/wfd/WifiDisplaySettings$1;->this$0:Lcom/android/jrdsettings/wfd/WifiDisplaySettings;

    #getter for: Lcom/android/jrdsettings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;
    invoke-static {v0}, Lcom/android/jrdsettings/wfd/WifiDisplaySettings;->access$100(Lcom/android/jrdsettings/wfd/WifiDisplaySettings;)Landroid/hardware/display/DisplayManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->disconnectWifiDisplay()V

    .line 525
    iget-object v0, p0, Lcom/android/jrdsettings/wfd/WifiDisplaySettings$1;->this$0:Lcom/android/jrdsettings/wfd/WifiDisplaySettings;

    const/4 v1, 0x0

    #setter for: Lcom/android/jrdsettings/wfd/WifiDisplaySettings;->mDisconnectWifiDisplay:Landroid/hardware/display/WifiDisplay;
    invoke-static {v0, v1}, Lcom/android/jrdsettings/wfd/WifiDisplaySettings;->access$202(Lcom/android/jrdsettings/wfd/WifiDisplaySettings;Landroid/hardware/display/WifiDisplay;)Landroid/hardware/display/WifiDisplay;

    .line 526
    iget-object v0, p0, Lcom/android/jrdsettings/wfd/WifiDisplaySettings$1;->this$0:Lcom/android/jrdsettings/wfd/WifiDisplaySettings;

    const/4 v1, 0x0

    #setter for: Lcom/android/jrdsettings/wfd/WifiDisplaySettings;->mNeedAutoConnect:Z
    invoke-static {v0, v1}, Lcom/android/jrdsettings/wfd/WifiDisplaySettings;->access$302(Lcom/android/jrdsettings/wfd/WifiDisplaySettings;Z)Z

    .line 528
    :cond_0
    return-void
.end method
