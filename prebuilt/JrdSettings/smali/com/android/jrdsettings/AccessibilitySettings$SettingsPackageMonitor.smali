.class Lcom/android/jrdsettings/AccessibilitySettings$SettingsPackageMonitor;
.super Lcom/android/internal/content/PackageMonitor;
.source "AccessibilitySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/jrdsettings/AccessibilitySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsPackageMonitor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/jrdsettings/AccessibilitySettings;


# direct methods
.method private constructor <init>(Lcom/android/jrdsettings/AccessibilitySettings;)V
    .locals 0
    .parameter

    .prologue
    .line 780
    iput-object p1, p0, Lcom/android/jrdsettings/AccessibilitySettings$SettingsPackageMonitor;->this$0:Lcom/android/jrdsettings/AccessibilitySettings;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/jrdsettings/AccessibilitySettings;Lcom/android/jrdsettings/AccessibilitySettings$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 780
    invoke-direct {p0, p1}, Lcom/android/jrdsettings/AccessibilitySettings$SettingsPackageMonitor;-><init>(Lcom/android/jrdsettings/AccessibilitySettings;)V

    return-void
.end method


# virtual methods
.method public onPackageAdded(Ljava/lang/String;I)V
    .locals 4
    .parameter "packageName"
    .parameter "uid"

    .prologue
    .line 784
    iget-object v1, p0, Lcom/android/jrdsettings/AccessibilitySettings$SettingsPackageMonitor;->this$0:Lcom/android/jrdsettings/AccessibilitySettings;

    #getter for: Lcom/android/jrdsettings/AccessibilitySettings;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/jrdsettings/AccessibilitySettings;->access$500(Lcom/android/jrdsettings/AccessibilitySettings;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 785
    .local v0, message:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/jrdsettings/AccessibilitySettings$SettingsPackageMonitor;->this$0:Lcom/android/jrdsettings/AccessibilitySettings;

    #getter for: Lcom/android/jrdsettings/AccessibilitySettings;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/jrdsettings/AccessibilitySettings;->access$500(Lcom/android/jrdsettings/AccessibilitySettings;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 786
    return-void
.end method

.method public onPackageAppeared(Ljava/lang/String;I)V
    .locals 4
    .parameter "packageName"
    .parameter "reason"

    .prologue
    .line 790
    iget-object v1, p0, Lcom/android/jrdsettings/AccessibilitySettings$SettingsPackageMonitor;->this$0:Lcom/android/jrdsettings/AccessibilitySettings;

    #getter for: Lcom/android/jrdsettings/AccessibilitySettings;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/jrdsettings/AccessibilitySettings;->access$500(Lcom/android/jrdsettings/AccessibilitySettings;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 791
    .local v0, message:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/jrdsettings/AccessibilitySettings$SettingsPackageMonitor;->this$0:Lcom/android/jrdsettings/AccessibilitySettings;

    #getter for: Lcom/android/jrdsettings/AccessibilitySettings;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/jrdsettings/AccessibilitySettings;->access$500(Lcom/android/jrdsettings/AccessibilitySettings;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 792
    return-void
.end method

.method public onPackageDisappeared(Ljava/lang/String;I)V
    .locals 4
    .parameter "packageName"
    .parameter "reason"

    .prologue
    .line 796
    iget-object v1, p0, Lcom/android/jrdsettings/AccessibilitySettings$SettingsPackageMonitor;->this$0:Lcom/android/jrdsettings/AccessibilitySettings;

    #getter for: Lcom/android/jrdsettings/AccessibilitySettings;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/jrdsettings/AccessibilitySettings;->access$500(Lcom/android/jrdsettings/AccessibilitySettings;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 797
    .local v0, message:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/jrdsettings/AccessibilitySettings$SettingsPackageMonitor;->this$0:Lcom/android/jrdsettings/AccessibilitySettings;

    #getter for: Lcom/android/jrdsettings/AccessibilitySettings;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/jrdsettings/AccessibilitySettings;->access$500(Lcom/android/jrdsettings/AccessibilitySettings;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 798
    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;I)V
    .locals 4
    .parameter "packageName"
    .parameter "uid"

    .prologue
    .line 802
    iget-object v1, p0, Lcom/android/jrdsettings/AccessibilitySettings$SettingsPackageMonitor;->this$0:Lcom/android/jrdsettings/AccessibilitySettings;

    #getter for: Lcom/android/jrdsettings/AccessibilitySettings;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/jrdsettings/AccessibilitySettings;->access$500(Lcom/android/jrdsettings/AccessibilitySettings;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 803
    .local v0, message:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/jrdsettings/AccessibilitySettings$SettingsPackageMonitor;->this$0:Lcom/android/jrdsettings/AccessibilitySettings;

    #getter for: Lcom/android/jrdsettings/AccessibilitySettings;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/jrdsettings/AccessibilitySettings;->access$500(Lcom/android/jrdsettings/AccessibilitySettings;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 804
    return-void
.end method
