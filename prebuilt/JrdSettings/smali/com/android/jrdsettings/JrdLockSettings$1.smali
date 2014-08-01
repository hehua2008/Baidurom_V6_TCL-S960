.class Lcom/android/jrdsettings/JrdLockSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "JrdLockSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/jrdsettings/JrdLockSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/jrdsettings/JrdLockSettings;


# direct methods
.method constructor <init>(Lcom/android/jrdsettings/JrdLockSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 247
    iput-object p1, p0, Lcom/android/jrdsettings/JrdLockSettings$1;->this$0:Lcom/android/jrdsettings/JrdLockSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 250
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 251
    .local v0, action:Ljava/lang/String;
    const-string v2, "JrdLockSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "receive action="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    const-string v2, "android.intent.action.SIM_INFO_UPDATE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 253
    iget-object v2, p0, Lcom/android/jrdsettings/JrdLockSettings$1;->this$0:Lcom/android/jrdsettings/JrdLockSettings;

    #calls: Lcom/android/jrdsettings/JrdLockSettings;->initUI()V
    invoke-static {v2}, Lcom/android/jrdsettings/JrdLockSettings;->access$000(Lcom/android/jrdsettings/JrdLockSettings;)V

    .line 254
    iget-object v2, p0, Lcom/android/jrdsettings/JrdLockSettings$1;->this$0:Lcom/android/jrdsettings/JrdLockSettings;

    #getter for: Lcom/android/jrdsettings/JrdLockSettings;->mChooseLockSettingsHelper:Lcom/android/jrdsettings/ChooseLockSettingsHelper;
    invoke-static {v2}, Lcom/android/jrdsettings/JrdLockSettings;->access$100(Lcom/android/jrdsettings/JrdLockSettings;)Lcom/android/jrdsettings/ChooseLockSettingsHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/jrdsettings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    .line 255
    .local v1, lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    iget-object v2, p0, Lcom/android/jrdsettings/JrdLockSettings$1;->this$0:Lcom/android/jrdsettings/JrdLockSettings;

    #getter for: Lcom/android/jrdsettings/JrdLockSettings;->mBiometricWeakLiveliness:Landroid/preference/CheckBoxPreference;
    invoke-static {v2}, Lcom/android/jrdsettings/JrdLockSettings;->access$200(Lcom/android/jrdsettings/JrdLockSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 256
    iget-object v2, p0, Lcom/android/jrdsettings/JrdLockSettings$1;->this$0:Lcom/android/jrdsettings/JrdLockSettings;

    #getter for: Lcom/android/jrdsettings/JrdLockSettings;->mBiometricWeakLiveliness:Landroid/preference/CheckBoxPreference;
    invoke-static {v2}, Lcom/android/jrdsettings/JrdLockSettings;->access$200(Lcom/android/jrdsettings/JrdLockSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isBiometricWeakLivelinessEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 259
    :cond_0
    iget-object v2, p0, Lcom/android/jrdsettings/JrdLockSettings$1;->this$0:Lcom/android/jrdsettings/JrdLockSettings;

    #getter for: Lcom/android/jrdsettings/JrdLockSettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;
    invoke-static {v2}, Lcom/android/jrdsettings/JrdLockSettings;->access$300(Lcom/android/jrdsettings/JrdLockSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 260
    iget-object v2, p0, Lcom/android/jrdsettings/JrdLockSettings$1;->this$0:Lcom/android/jrdsettings/JrdLockSettings;

    #getter for: Lcom/android/jrdsettings/JrdLockSettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;
    invoke-static {v2}, Lcom/android/jrdsettings/JrdLockSettings;->access$300(Lcom/android/jrdsettings/JrdLockSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isVisiblePatternEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 262
    :cond_1
    iget-object v2, p0, Lcom/android/jrdsettings/JrdLockSettings$1;->this$0:Lcom/android/jrdsettings/JrdLockSettings;

    #getter for: Lcom/android/jrdsettings/JrdLockSettings;->mPowerButtonInstantlyLocks:Landroid/preference/CheckBoxPreference;
    invoke-static {v2}, Lcom/android/jrdsettings/JrdLockSettings;->access$400(Lcom/android/jrdsettings/JrdLockSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 263
    iget-object v2, p0, Lcom/android/jrdsettings/JrdLockSettings$1;->this$0:Lcom/android/jrdsettings/JrdLockSettings;

    #getter for: Lcom/android/jrdsettings/JrdLockSettings;->mPowerButtonInstantlyLocks:Landroid/preference/CheckBoxPreference;
    invoke-static {v2}, Lcom/android/jrdsettings/JrdLockSettings;->access$400(Lcom/android/jrdsettings/JrdLockSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->getPowerButtonInstantlyLocks()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 267
    .end local v1           #lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    :cond_2
    return-void
.end method
