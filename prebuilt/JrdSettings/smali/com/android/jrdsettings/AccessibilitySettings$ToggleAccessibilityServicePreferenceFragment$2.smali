.class Lcom/android/jrdsettings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment$2;
.super Ljava/lang/Object;
.source "AccessibilitySettings.java"

# interfaces
.implements Lcom/android/jrdsettings/AccessibilitySettings$ToggleSwitch$OnBeforeCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/jrdsettings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->onInstallActionBarToggleSwitch()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/jrdsettings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;


# direct methods
.method constructor <init>(Lcom/android/jrdsettings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 978
    iput-object p1, p0, Lcom/android/jrdsettings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment$2;->this$0:Lcom/android/jrdsettings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBeforeCheckedChanged(Lcom/android/jrdsettings/AccessibilitySettings$ToggleSwitch;Z)Z
    .locals 4
    .parameter "toggleSwitch"
    .parameter "checked"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 981
    if-eqz p2, :cond_1

    .line 982
    iget-object v2, p0, Lcom/android/jrdsettings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment$2;->this$0:Lcom/android/jrdsettings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;

    #getter for: Lcom/android/jrdsettings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->mEnableWarningMessage:Ljava/lang/CharSequence;
    invoke-static {v2}, Lcom/android/jrdsettings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->access$900(Lcom/android/jrdsettings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 983
    invoke-virtual {p1, v1}, Lcom/android/jrdsettings/AccessibilitySettings$ToggleSwitch;->setCheckedInternal(Z)V

    .line 984
    iget-object v2, p0, Lcom/android/jrdsettings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment$2;->this$0:Lcom/android/jrdsettings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;

    invoke-virtual {v2}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "checked"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 985
    iget-object v1, p0, Lcom/android/jrdsettings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment$2;->this$0:Lcom/android/jrdsettings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;

    invoke-virtual {v1, v0}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->showDialog(I)V

    .line 998
    :goto_0
    return v0

    .line 988
    :cond_0
    iget-object v2, p0, Lcom/android/jrdsettings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment$2;->this$0:Lcom/android/jrdsettings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;

    iget-object v3, p0, Lcom/android/jrdsettings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment$2;->this$0:Lcom/android/jrdsettings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;

    iget-object v3, v3, Lcom/android/jrdsettings/AccessibilitySettings$ToggleFeaturePreferenceFragment;->mPreferenceKey:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Lcom/android/jrdsettings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->onPreferenceToggled(Ljava/lang/String;Z)V

    :goto_1
    move v0, v1

    .line 998
    goto :goto_0

    .line 990
    :cond_1
    iget-object v2, p0, Lcom/android/jrdsettings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment$2;->this$0:Lcom/android/jrdsettings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;

    #getter for: Lcom/android/jrdsettings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->mDisableWarningMessage:Ljava/lang/CharSequence;
    invoke-static {v2}, Lcom/android/jrdsettings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->access$1000(Lcom/android/jrdsettings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 991
    invoke-virtual {p1, v0}, Lcom/android/jrdsettings/AccessibilitySettings$ToggleSwitch;->setCheckedInternal(Z)V

    .line 992
    iget-object v1, p0, Lcom/android/jrdsettings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment$2;->this$0:Lcom/android/jrdsettings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "checked"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 993
    iget-object v1, p0, Lcom/android/jrdsettings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment$2;->this$0:Lcom/android/jrdsettings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->showDialog(I)V

    goto :goto_0

    .line 996
    :cond_2
    iget-object v0, p0, Lcom/android/jrdsettings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment$2;->this$0:Lcom/android/jrdsettings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;

    iget-object v2, p0, Lcom/android/jrdsettings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment$2;->this$0:Lcom/android/jrdsettings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;

    iget-object v2, v2, Lcom/android/jrdsettings/AccessibilitySettings$ToggleFeaturePreferenceFragment;->mPreferenceKey:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lcom/android/jrdsettings/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->onPreferenceToggled(Ljava/lang/String;Z)V

    goto :goto_1
.end method