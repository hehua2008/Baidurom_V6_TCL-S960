.class Lcom/android/jrdsettings/DisplaySettings$7;
.super Landroid/content/BroadcastReceiver;
.source "DisplaySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/jrdsettings/DisplaySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/jrdsettings/DisplaySettings;


# direct methods
.method constructor <init>(Lcom/android/jrdsettings/DisplaySettings;)V
    .locals 0
    .parameter

    .prologue
    .line 1231
    iput-object p1, p0, Lcom/android/jrdsettings/DisplaySettings$7;->this$0:Lcom/android/jrdsettings/DisplaySettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context1"
    .parameter "intent"

    .prologue
    .line 1234
    const-string v1, "state"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1235
    .local v0, isSmartBookPluggedIn:Ljava/lang/Boolean;
    const-string v1, "DisplaySettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "smartbook plug:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1237
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/jrdsettings/DisplaySettings$7;->this$0:Lcom/android/jrdsettings/DisplaySettings;

    #getter for: Lcom/android/jrdsettings/DisplaySettings;->mHdmiManager:Lcom/mediatek/common/hdmi/IMtkHdmiManager;
    invoke-static {v1}, Lcom/android/jrdsettings/DisplaySettings;->access$1000(Lcom/android/jrdsettings/DisplaySettings;)Lcom/mediatek/common/hdmi/IMtkHdmiManager;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1238
    :cond_0
    iget-object v1, p0, Lcom/android/jrdsettings/DisplaySettings$7;->this$0:Lcom/android/jrdsettings/DisplaySettings;

    #getter for: Lcom/android/jrdsettings/DisplaySettings;->mDisplayDefCategory:Landroid/preference/PreferenceCategory;
    invoke-static {v1}, Lcom/android/jrdsettings/DisplaySettings;->access$1200(Lcom/android/jrdsettings/DisplaySettings;)Landroid/preference/PreferenceCategory;

    move-result-object v1

    iget-object v2, p0, Lcom/android/jrdsettings/DisplaySettings$7;->this$0:Lcom/android/jrdsettings/DisplaySettings;

    #getter for: Lcom/android/jrdsettings/DisplaySettings;->mHDMISettings:Landroid/preference/Preference;
    invoke-static {v2}, Lcom/android/jrdsettings/DisplaySettings;->access$1100(Lcom/android/jrdsettings/DisplaySettings;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 1242
    :goto_0
    return-void

    .line 1240
    :cond_1
    iget-object v1, p0, Lcom/android/jrdsettings/DisplaySettings$7;->this$0:Lcom/android/jrdsettings/DisplaySettings;

    #getter for: Lcom/android/jrdsettings/DisplaySettings;->mDisplayDefCategory:Landroid/preference/PreferenceCategory;
    invoke-static {v1}, Lcom/android/jrdsettings/DisplaySettings;->access$1200(Lcom/android/jrdsettings/DisplaySettings;)Landroid/preference/PreferenceCategory;

    move-result-object v1

    iget-object v2, p0, Lcom/android/jrdsettings/DisplaySettings$7;->this$0:Lcom/android/jrdsettings/DisplaySettings;

    #getter for: Lcom/android/jrdsettings/DisplaySettings;->mHDMISettings:Landroid/preference/Preference;
    invoke-static {v2}, Lcom/android/jrdsettings/DisplaySettings;->access$1100(Lcom/android/jrdsettings/DisplaySettings;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method
