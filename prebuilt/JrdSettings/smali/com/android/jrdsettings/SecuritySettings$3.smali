.class Lcom/android/jrdsettings/SecuritySettings$3;
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
    .line 207
    iput-object p1, p0, Lcom/android/jrdsettings/SecuritySettings$3;->this$0:Lcom/android/jrdsettings/SecuritySettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, 0x1

    .line 210
    new-instance v0, Lcom/android/jrdsettings/remotesecurity/logic/RSDBHelper;

    invoke-direct {v0, p1}, Lcom/android/jrdsettings/remotesecurity/logic/RSDBHelper;-><init>(Landroid/content/Context;)V

    .line 211
    .local v0, db:Lcom/android/jrdsettings/remotesecurity/logic/RSDBHelper;
    const-string v5, "rs_state"

    invoke-virtual {v0, v5}, Lcom/android/jrdsettings/remotesecurity/logic/RSDBHelper;->getIntValue(Ljava/lang/String;)I

    move-result v5

    if-ne v5, v4, :cond_1

    move v3, v4

    .line 212
    .local v3, state:Z
    :goto_0
    const-string v5, "SecuritySettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "state change state="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/jrdsettings/remotesecurity/util/LogX;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    iget-object v5, p0, Lcom/android/jrdsettings/SecuritySettings$3;->this$0:Lcom/android/jrdsettings/SecuritySettings;

    #getter for: Lcom/android/jrdsettings/SecuritySettings;->mRemoteSecuritySwitchPreference:Lcom/android/jrdsettings/remotesecurity/RemoteSecuritySwitchPreference;
    invoke-static {v5}, Lcom/android/jrdsettings/SecuritySettings;->access$800(Lcom/android/jrdsettings/SecuritySettings;)Lcom/android/jrdsettings/remotesecurity/RemoteSecuritySwitchPreference;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 214
    iget-object v5, p0, Lcom/android/jrdsettings/SecuritySettings$3;->this$0:Lcom/android/jrdsettings/SecuritySettings;

    #getter for: Lcom/android/jrdsettings/SecuritySettings;->mRemoteSecuritySwitchPreference:Lcom/android/jrdsettings/remotesecurity/RemoteSecuritySwitchPreference;
    invoke-static {v5}, Lcom/android/jrdsettings/SecuritySettings;->access$800(Lcom/android/jrdsettings/SecuritySettings;)Lcom/android/jrdsettings/remotesecurity/RemoteSecuritySwitchPreference;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/android/jrdsettings/remotesecurity/RemoteSecuritySwitchPreference;->setChecked(Z)V

    .line 215
    new-instance v2, Landroid/content/ComponentName;

    const-class v5, Lcom/android/jrdsettings/remotesecurity/logic/RSMessageBroadcastReceiver;

    invoke-direct {v2, p1, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 216
    .local v2, receiver:Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 217
    .local v1, pm:Landroid/content/pm/PackageManager;
    if-eqz v3, :cond_2

    .line 218
    invoke-virtual {v1, v2, v4, v4}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 229
    .end local v1           #pm:Landroid/content/pm/PackageManager;
    .end local v2           #receiver:Landroid/content/ComponentName;
    :cond_0
    :goto_1
    return-void

    .line 211
    .end local v3           #state:Z
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 223
    .restart local v1       #pm:Landroid/content/pm/PackageManager;
    .restart local v2       #receiver:Landroid/content/ComponentName;
    .restart local v3       #state:Z
    :cond_2
    const/4 v5, 0x2

    invoke-virtual {v1, v2, v5, v4}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    goto :goto_1
.end method
