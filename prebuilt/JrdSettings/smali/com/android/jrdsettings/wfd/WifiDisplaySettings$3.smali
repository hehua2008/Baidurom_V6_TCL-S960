.class Lcom/android/jrdsettings/wfd/WifiDisplaySettings$3;
.super Ljava/lang/Object;
.source "WifiDisplaySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/jrdsettings/wfd/WifiDisplaySettings;->showForgetDialog(Landroid/hardware/display/WifiDisplay;)Landroid/app/AlertDialog;
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
    .line 558
    iput-object p1, p0, Lcom/android/jrdsettings/wfd/WifiDisplaySettings$3;->this$0:Lcom/android/jrdsettings/wfd/WifiDisplaySettings;

    iput-object p2, p0, Lcom/android/jrdsettings/wfd/WifiDisplaySettings$3;->val$display:Landroid/hardware/display/WifiDisplay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 561
    const-string v0, "WifiDisplaySettings"

    const-string v1, "click forget button, forgetWifiDisplay()"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    iget-object v0, p0, Lcom/android/jrdsettings/wfd/WifiDisplaySettings$3;->this$0:Lcom/android/jrdsettings/wfd/WifiDisplaySettings;

    #getter for: Lcom/android/jrdsettings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;
    invoke-static {v0}, Lcom/android/jrdsettings/wfd/WifiDisplaySettings;->access$100(Lcom/android/jrdsettings/wfd/WifiDisplaySettings;)Landroid/hardware/display/DisplayManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/jrdsettings/wfd/WifiDisplaySettings$3;->val$display:Landroid/hardware/display/WifiDisplay;

    invoke-virtual {v1}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->forgetWifiDisplay(Ljava/lang/String;)V

    .line 563
    iget-object v0, p0, Lcom/android/jrdsettings/wfd/WifiDisplaySettings$3;->this$0:Lcom/android/jrdsettings/wfd/WifiDisplaySettings;

    const/4 v1, 0x0

    #setter for: Lcom/android/jrdsettings/wfd/WifiDisplaySettings;->mForgetWifiDisplay:Landroid/hardware/display/WifiDisplay;
    invoke-static {v0, v1}, Lcom/android/jrdsettings/wfd/WifiDisplaySettings;->access$402(Lcom/android/jrdsettings/wfd/WifiDisplaySettings;Landroid/hardware/display/WifiDisplay;)Landroid/hardware/display/WifiDisplay;

    .line 564
    return-void
.end method
