.class Lcom/android/jrdsettings/SecuritySettings$2;
.super Landroid/content/BroadcastReceiver;
.source "SecuritySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/jrdsettings/SecuritySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/jrdsettings/SecuritySettings;


# direct methods
.method constructor <init>(Lcom/android/jrdsettings/SecuritySettings;)V
    .locals 0
    .parameter

    .prologue
    .line 165
    iput-object p1, p0, Lcom/android/jrdsettings/SecuritySettings$2;->this$0:Lcom/android/jrdsettings/SecuritySettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 168
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 169
    .local v0, action:Ljava/lang/String;
    const-string v3, "SecuritySettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "receive action="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    const-string v3, "android.intent.action.SIM_INFO_UPDATE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 171
    iget-object v3, p0, Lcom/android/jrdsettings/SecuritySettings$2;->this$0:Lcom/android/jrdsettings/SecuritySettings;

    #calls: Lcom/android/jrdsettings/SecuritySettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
    invoke-static {v3}, Lcom/android/jrdsettings/SecuritySettings;->access$100(Lcom/android/jrdsettings/SecuritySettings;)Landroid/preference/PreferenceScreen;

    .line 172
    iget-object v3, p0, Lcom/android/jrdsettings/SecuritySettings$2;->this$0:Lcom/android/jrdsettings/SecuritySettings;

    #getter for: Lcom/android/jrdsettings/SecuritySettings;->mChooseLockSettingsHelper:Lcom/android/jrdsettings/ChooseLockSettingsHelper;
    invoke-static {v3}, Lcom/android/jrdsettings/SecuritySettings;->access$200(Lcom/android/jrdsettings/SecuritySettings;)Lcom/android/jrdsettings/ChooseLockSettingsHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/jrdsettings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    .line 173
    .local v1, lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    iget-object v3, p0, Lcom/android/jrdsettings/SecuritySettings$2;->this$0:Lcom/android/jrdsettings/SecuritySettings;

    #getter for: Lcom/android/jrdsettings/SecuritySettings;->mBiometricWeakLiveliness:Landroid/preference/CheckBoxPreference;
    invoke-static {v3}, Lcom/android/jrdsettings/SecuritySettings;->access$300(Lcom/android/jrdsettings/SecuritySettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 174
    iget-object v3, p0, Lcom/android/jrdsettings/SecuritySettings$2;->this$0:Lcom/android/jrdsettings/SecuritySettings;

    #getter for: Lcom/android/jrdsettings/SecuritySettings;->mBiometricWeakLiveliness:Landroid/preference/CheckBoxPreference;
    invoke-static {v3}, Lcom/android/jrdsettings/SecuritySettings;->access$300(Lcom/android/jrdsettings/SecuritySettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isBiometricWeakLivelinessEnabled()Z

    move-result v6

    invoke-virtual {v3, v6}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 177
    :cond_0
    iget-object v3, p0, Lcom/android/jrdsettings/SecuritySettings$2;->this$0:Lcom/android/jrdsettings/SecuritySettings;

    #getter for: Lcom/android/jrdsettings/SecuritySettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;
    invoke-static {v3}, Lcom/android/jrdsettings/SecuritySettings;->access$400(Lcom/android/jrdsettings/SecuritySettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 178
    iget-object v3, p0, Lcom/android/jrdsettings/SecuritySettings$2;->this$0:Lcom/android/jrdsettings/SecuritySettings;

    #getter for: Lcom/android/jrdsettings/SecuritySettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;
    invoke-static {v3}, Lcom/android/jrdsettings/SecuritySettings;->access$400(Lcom/android/jrdsettings/SecuritySettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isVisiblePatternEnabled()Z

    move-result v6

    invoke-virtual {v3, v6}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 180
    :cond_1
    iget-object v3, p0, Lcom/android/jrdsettings/SecuritySettings$2;->this$0:Lcom/android/jrdsettings/SecuritySettings;

    #getter for: Lcom/android/jrdsettings/SecuritySettings;->mPowerButtonInstantlyLocks:Landroid/preference/CheckBoxPreference;
    invoke-static {v3}, Lcom/android/jrdsettings/SecuritySettings;->access$500(Lcom/android/jrdsettings/SecuritySettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 181
    iget-object v3, p0, Lcom/android/jrdsettings/SecuritySettings$2;->this$0:Lcom/android/jrdsettings/SecuritySettings;

    #getter for: Lcom/android/jrdsettings/SecuritySettings;->mPowerButtonInstantlyLocks:Landroid/preference/CheckBoxPreference;
    invoke-static {v3}, Lcom/android/jrdsettings/SecuritySettings;->access$500(Lcom/android/jrdsettings/SecuritySettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->getPowerButtonInstantlyLocks()Z

    move-result v6

    invoke-virtual {v3, v6}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 184
    :cond_2
    iget-object v3, p0, Lcom/android/jrdsettings/SecuritySettings$2;->this$0:Lcom/android/jrdsettings/SecuritySettings;

    #getter for: Lcom/android/jrdsettings/SecuritySettings;->mShowPassword:Landroid/preference/CheckBoxPreference;
    invoke-static {v3}, Lcom/android/jrdsettings/SecuritySettings;->access$600(Lcom/android/jrdsettings/SecuritySettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 185
    iget-object v3, p0, Lcom/android/jrdsettings/SecuritySettings$2;->this$0:Lcom/android/jrdsettings/SecuritySettings;

    #getter for: Lcom/android/jrdsettings/SecuritySettings;->mShowPassword:Landroid/preference/CheckBoxPreference;
    invoke-static {v3}, Lcom/android/jrdsettings/SecuritySettings;->access$600(Lcom/android/jrdsettings/SecuritySettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v6

    iget-object v3, p0, Lcom/android/jrdsettings/SecuritySettings$2;->this$0:Lcom/android/jrdsettings/SecuritySettings;

    invoke-virtual {v3}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v7, "show_password"

    invoke-static {v3, v7, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_5

    move v3, v4

    :goto_0
    invoke-virtual {v6, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 189
    :cond_3
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v3

    invoke-virtual {v3}, Landroid/security/KeyStore;->state()Landroid/security/KeyStore$State;

    move-result-object v2

    .line 190
    .local v2, state:Landroid/security/KeyStore$State;
    const-string v3, "SecuritySettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "KeyStore.State on receiver:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    iget-object v3, p0, Lcom/android/jrdsettings/SecuritySettings$2;->this$0:Lcom/android/jrdsettings/SecuritySettings;

    #getter for: Lcom/android/jrdsettings/SecuritySettings;->mResetCredentials:Landroid/preference/Preference;
    invoke-static {v3}, Lcom/android/jrdsettings/SecuritySettings;->access$700(Lcom/android/jrdsettings/SecuritySettings;)Landroid/preference/Preference;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 192
    iget-object v3, p0, Lcom/android/jrdsettings/SecuritySettings$2;->this$0:Lcom/android/jrdsettings/SecuritySettings;

    #getter for: Lcom/android/jrdsettings/SecuritySettings;->mResetCredentials:Landroid/preference/Preference;
    invoke-static {v3}, Lcom/android/jrdsettings/SecuritySettings;->access$700(Lcom/android/jrdsettings/SecuritySettings;)Landroid/preference/Preference;

    move-result-object v3

    sget-object v6, Landroid/security/KeyStore$State;->UNINITIALIZED:Landroid/security/KeyStore$State;

    if-eq v2, v6, :cond_6

    :goto_1
    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 195
    .end local v1           #lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    .end local v2           #state:Landroid/security/KeyStore$State;
    :cond_4
    return-void

    .restart local v1       #lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    :cond_5
    move v3, v5

    .line 185
    goto :goto_0

    .restart local v2       #state:Landroid/security/KeyStore$State;
    :cond_6
    move v4, v5

    .line 192
    goto :goto_1
.end method
