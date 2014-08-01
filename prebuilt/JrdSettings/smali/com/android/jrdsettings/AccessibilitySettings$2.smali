.class Lcom/android/jrdsettings/AccessibilitySettings$2;
.super Lcom/android/jrdsettings/AccessibilitySettings$SettingsContentObserver;
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
.method constructor <init>(Lcom/android/jrdsettings/AccessibilitySettings;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 200
    iput-object p1, p0, Lcom/android/jrdsettings/AccessibilitySettings$2;->this$0:Lcom/android/jrdsettings/AccessibilitySettings;

    invoke-direct {p0, p2}, Lcom/android/jrdsettings/AccessibilitySettings$SettingsContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1
    .parameter "selfChange"
    .parameter "uri"

    .prologue
    .line 203
    iget-object v0, p0, Lcom/android/jrdsettings/AccessibilitySettings$2;->this$0:Lcom/android/jrdsettings/AccessibilitySettings;

    #calls: Lcom/android/jrdsettings/AccessibilitySettings;->loadInstalledServices()V
    invoke-static {v0}, Lcom/android/jrdsettings/AccessibilitySettings;->access$100(Lcom/android/jrdsettings/AccessibilitySettings;)V

    .line 204
    iget-object v0, p0, Lcom/android/jrdsettings/AccessibilitySettings$2;->this$0:Lcom/android/jrdsettings/AccessibilitySettings;

    #calls: Lcom/android/jrdsettings/AccessibilitySettings;->updateServicesPreferences()V
    invoke-static {v0}, Lcom/android/jrdsettings/AccessibilitySettings;->access$200(Lcom/android/jrdsettings/AccessibilitySettings;)V

    .line 205
    return-void
.end method
