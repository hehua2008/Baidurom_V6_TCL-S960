.class Lcom/android/jrdsettings/AccessibilitySettings$1;
.super Landroid/os/Handler;
.source "AccessibilitySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/jrdsettings/AccessibilitySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/jrdsettings/AccessibilitySettings;


# direct methods
.method constructor <init>(Lcom/android/jrdsettings/AccessibilitySettings;)V
    .locals 0
    .parameter

    .prologue
    .line 190
    iput-object p1, p0, Lcom/android/jrdsettings/AccessibilitySettings$1;->this$0:Lcom/android/jrdsettings/AccessibilitySettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 193
    invoke-super {p0, p1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    .line 194
    iget-object v0, p0, Lcom/android/jrdsettings/AccessibilitySettings$1;->this$0:Lcom/android/jrdsettings/AccessibilitySettings;

    #calls: Lcom/android/jrdsettings/AccessibilitySettings;->loadInstalledServices()V
    invoke-static {v0}, Lcom/android/jrdsettings/AccessibilitySettings;->access$100(Lcom/android/jrdsettings/AccessibilitySettings;)V

    .line 195
    iget-object v0, p0, Lcom/android/jrdsettings/AccessibilitySettings$1;->this$0:Lcom/android/jrdsettings/AccessibilitySettings;

    #calls: Lcom/android/jrdsettings/AccessibilitySettings;->updateServicesPreferences()V
    invoke-static {v0}, Lcom/android/jrdsettings/AccessibilitySettings;->access$200(Lcom/android/jrdsettings/AccessibilitySettings;)V

    .line 196
    return-void
.end method
