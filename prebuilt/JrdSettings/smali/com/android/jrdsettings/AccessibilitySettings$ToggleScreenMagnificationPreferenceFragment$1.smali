.class Lcom/android/jrdsettings/AccessibilitySettings$ToggleScreenMagnificationPreferenceFragment$1;
.super Ljava/lang/Object;
.source "AccessibilitySettings.java"

# interfaces
.implements Lcom/android/jrdsettings/AccessibilitySettings$ToggleSwitch$OnBeforeCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/jrdsettings/AccessibilitySettings$ToggleScreenMagnificationPreferenceFragment;->onInstallActionBarToggleSwitch()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/jrdsettings/AccessibilitySettings$ToggleScreenMagnificationPreferenceFragment;


# direct methods
.method constructor <init>(Lcom/android/jrdsettings/AccessibilitySettings$ToggleScreenMagnificationPreferenceFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1057
    iput-object p1, p0, Lcom/android/jrdsettings/AccessibilitySettings$ToggleScreenMagnificationPreferenceFragment$1;->this$0:Lcom/android/jrdsettings/AccessibilitySettings$ToggleScreenMagnificationPreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBeforeCheckedChanged(Lcom/android/jrdsettings/AccessibilitySettings$ToggleSwitch;Z)Z
    .locals 2
    .parameter "toggleSwitch"
    .parameter "checked"

    .prologue
    .line 1060
    invoke-virtual {p1, p2}, Lcom/android/jrdsettings/AccessibilitySettings$ToggleSwitch;->setCheckedInternal(Z)V

    .line 1061
    iget-object v0, p0, Lcom/android/jrdsettings/AccessibilitySettings$ToggleScreenMagnificationPreferenceFragment$1;->this$0:Lcom/android/jrdsettings/AccessibilitySettings$ToggleScreenMagnificationPreferenceFragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "checked"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1062
    iget-object v0, p0, Lcom/android/jrdsettings/AccessibilitySettings$ToggleScreenMagnificationPreferenceFragment$1;->this$0:Lcom/android/jrdsettings/AccessibilitySettings$ToggleScreenMagnificationPreferenceFragment;

    iget-object v1, p0, Lcom/android/jrdsettings/AccessibilitySettings$ToggleScreenMagnificationPreferenceFragment$1;->this$0:Lcom/android/jrdsettings/AccessibilitySettings$ToggleScreenMagnificationPreferenceFragment;

    iget-object v1, v1, Lcom/android/jrdsettings/AccessibilitySettings$ToggleFeaturePreferenceFragment;->mPreferenceKey:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/android/jrdsettings/AccessibilitySettings$ToggleScreenMagnificationPreferenceFragment;->onPreferenceToggled(Ljava/lang/String;Z)V

    .line 1063
    const/4 v0, 0x0

    return v0
.end method
