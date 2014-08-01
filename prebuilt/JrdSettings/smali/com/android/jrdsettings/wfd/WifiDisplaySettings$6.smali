.class Lcom/android/jrdsettings/wfd/WifiDisplaySettings$6;
.super Ljava/lang/Object;
.source "WifiDisplaySettings.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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
    .line 622
    iput-object p1, p0, Lcom/android/jrdsettings/wfd/WifiDisplaySettings$6;->this$0:Lcom/android/jrdsettings/wfd/WifiDisplaySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const/4 v2, 0x0

    .line 626
    iget-object v0, p0, Lcom/android/jrdsettings/wfd/WifiDisplaySettings$6;->this$0:Lcom/android/jrdsettings/wfd/WifiDisplaySettings;

    #calls: Lcom/android/jrdsettings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/jrdsettings/wfd/WifiDisplaySettings;->access$500(Lcom/android/jrdsettings/wfd/WifiDisplaySettings;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 628
    iget-object v0, p0, Lcom/android/jrdsettings/wfd/WifiDisplaySettings$6;->this$0:Lcom/android/jrdsettings/wfd/WifiDisplaySettings;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f090412

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 629
    iget-object v0, p0, Lcom/android/jrdsettings/wfd/WifiDisplaySettings$6;->this$0:Lcom/android/jrdsettings/wfd/WifiDisplaySettings;

    #setter for: Lcom/android/jrdsettings/wfd/WifiDisplaySettings;->mWifiDisplayOnSetting:Z
    invoke-static {v0, v2}, Lcom/android/jrdsettings/wfd/WifiDisplaySettings;->access$602(Lcom/android/jrdsettings/wfd/WifiDisplaySettings;Z)Z

    .line 634
    iget-object v0, p0, Lcom/android/jrdsettings/wfd/WifiDisplaySettings$6;->this$0:Lcom/android/jrdsettings/wfd/WifiDisplaySettings;

    #getter for: Lcom/android/jrdsettings/wfd/WifiDisplaySettings;->mMultiShareManager:Lcom/android/jrdsettings/MultiShareManager;
    invoke-static {v0}, Lcom/android/jrdsettings/wfd/WifiDisplaySettings;->access$700(Lcom/android/jrdsettings/wfd/WifiDisplaySettings;)Lcom/android/jrdsettings/MultiShareManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/jrdsettings/MultiShareManager;->stopWifiDisplay()Z

    .line 635
    iget-object v0, p0, Lcom/android/jrdsettings/wfd/WifiDisplaySettings$6;->this$0:Lcom/android/jrdsettings/wfd/WifiDisplaySettings;

    #getter for: Lcom/android/jrdsettings/wfd/WifiDisplaySettings;->mActionBarSwitch:Landroid/widget/Switch;
    invoke-static {v0}, Lcom/android/jrdsettings/wfd/WifiDisplaySettings;->access$800(Lcom/android/jrdsettings/wfd/WifiDisplaySettings;)Landroid/widget/Switch;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 652
    :goto_0
    return-void

    .line 639
    :cond_0
    iget-object v0, p0, Lcom/android/jrdsettings/wfd/WifiDisplaySettings$6;->this$0:Lcom/android/jrdsettings/wfd/WifiDisplaySettings;

    #setter for: Lcom/android/jrdsettings/wfd/WifiDisplaySettings;->mWifiDisplayOnSetting:Z
    invoke-static {v0, p2}, Lcom/android/jrdsettings/wfd/WifiDisplaySettings;->access$602(Lcom/android/jrdsettings/wfd/WifiDisplaySettings;Z)Z

    .line 640
    const-string v0, "WifiDisplaySettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCheckedChanged to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    if-eqz p2, :cond_1

    .line 647
    iget-object v0, p0, Lcom/android/jrdsettings/wfd/WifiDisplaySettings$6;->this$0:Lcom/android/jrdsettings/wfd/WifiDisplaySettings;

    #getter for: Lcom/android/jrdsettings/wfd/WifiDisplaySettings;->mMultiShareManager:Lcom/android/jrdsettings/MultiShareManager;
    invoke-static {v0}, Lcom/android/jrdsettings/wfd/WifiDisplaySettings;->access$700(Lcom/android/jrdsettings/wfd/WifiDisplaySettings;)Lcom/android/jrdsettings/MultiShareManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/jrdsettings/MultiShareManager;->startWifiDisplay()Z

    goto :goto_0

    .line 649
    :cond_1
    iget-object v0, p0, Lcom/android/jrdsettings/wfd/WifiDisplaySettings$6;->this$0:Lcom/android/jrdsettings/wfd/WifiDisplaySettings;

    #getter for: Lcom/android/jrdsettings/wfd/WifiDisplaySettings;->mMultiShareManager:Lcom/android/jrdsettings/MultiShareManager;
    invoke-static {v0}, Lcom/android/jrdsettings/wfd/WifiDisplaySettings;->access$700(Lcom/android/jrdsettings/wfd/WifiDisplaySettings;)Lcom/android/jrdsettings/MultiShareManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/jrdsettings/MultiShareManager;->stopWifiDisplay()Z

    goto :goto_0
.end method
