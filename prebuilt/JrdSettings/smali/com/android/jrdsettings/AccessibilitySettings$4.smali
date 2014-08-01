.class Lcom/android/jrdsettings/AccessibilitySettings$4;
.super Landroid/database/ContentObserver;
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
    .line 238
    iput-object p1, p0, Lcom/android/jrdsettings/AccessibilitySettings$4;->this$0:Lcom/android/jrdsettings/AccessibilitySettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 241
    iget-object v0, p0, Lcom/android/jrdsettings/AccessibilitySettings$4;->this$0:Lcom/android/jrdsettings/AccessibilitySettings;

    #calls: Lcom/android/jrdsettings/AccessibilitySettings;->updateRotationCheckbox()V
    invoke-static {v0}, Lcom/android/jrdsettings/AccessibilitySettings;->access$400(Lcom/android/jrdsettings/AccessibilitySettings;)V

    .line 242
    return-void
.end method
