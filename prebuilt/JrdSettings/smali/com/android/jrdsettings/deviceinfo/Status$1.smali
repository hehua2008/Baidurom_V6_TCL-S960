.class Lcom/android/jrdsettings/deviceinfo/Status$1;
.super Landroid/content/BroadcastReceiver;
.source "Status.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/jrdsettings/deviceinfo/Status;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/jrdsettings/deviceinfo/Status;


# direct methods
.method constructor <init>(Lcom/android/jrdsettings/deviceinfo/Status;)V
    .locals 0
    .parameter

    .prologue
    .line 187
    iput-object p1, p0, Lcom/android/jrdsettings/deviceinfo/Status$1;->this$0:Lcom/android/jrdsettings/deviceinfo/Status;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v6, 0x0

    .line 191
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 192
    .local v0, action:Ljava/lang/String;
    const-string v5, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 193
    iget-object v5, p0, Lcom/android/jrdsettings/deviceinfo/Status$1;->this$0:Lcom/android/jrdsettings/deviceinfo/Status;

    #getter for: Lcom/android/jrdsettings/deviceinfo/Status;->mBatteryLevel:Landroid/preference/Preference;
    invoke-static {v5}, Lcom/android/jrdsettings/deviceinfo/Status;->access$200(Lcom/android/jrdsettings/deviceinfo/Status;)Landroid/preference/Preference;

    move-result-object v5

    invoke-static {p2}, Lcom/android/jrdsettings/Utils;->getBatteryPercentage(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 194
    iget-object v5, p0, Lcom/android/jrdsettings/deviceinfo/Status$1;->this$0:Lcom/android/jrdsettings/deviceinfo/Status;

    #getter for: Lcom/android/jrdsettings/deviceinfo/Status;->mBatteryStatus:Landroid/preference/Preference;
    invoke-static {v5}, Lcom/android/jrdsettings/deviceinfo/Status;->access$300(Lcom/android/jrdsettings/deviceinfo/Status;)Landroid/preference/Preference;

    move-result-object v5

    iget-object v6, p0, Lcom/android/jrdsettings/deviceinfo/Status$1;->this$0:Lcom/android/jrdsettings/deviceinfo/Status;

    invoke-virtual {v6}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-static {v6, p2}, Lcom/android/jrdsettings/Utils;->getBatteryStatus(Landroid/content/res/Resources;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 216
    :cond_0
    :goto_0
    return-void

    .line 195
    :cond_1
    const-string v5, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 196
    const/4 v1, 0x0

    .line 197
    .local v1, operatorName:Ljava/lang/String;
    const/4 v3, 0x0

    .line 198
    .local v3, plmn:Ljava/lang/String;
    const/4 v4, 0x0

    .line 199
    .local v4, spn:Ljava/lang/String;
    const-string v5, "showPlmn"

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 200
    const-string v5, "plmn"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 201
    if-eqz v3, :cond_2

    .line 202
    move-object v1, v3

    .line 205
    :cond_2
    const-string v5, "showSpn"

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 206
    const-string v5, "spn"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 207
    if-eqz v4, :cond_3

    .line 208
    move-object v1, v4

    .line 211
    :cond_3
    iget-object v5, p0, Lcom/android/jrdsettings/deviceinfo/Status$1;->this$0:Lcom/android/jrdsettings/deviceinfo/Status;

    const-string v6, "operator_name"

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 212
    .local v2, p:Landroid/preference/Preference;
    if-eqz v2, :cond_0

    .line 213
    iget-object v5, p0, Lcom/android/jrdsettings/deviceinfo/Status$1;->this$0:Lcom/android/jrdsettings/deviceinfo/Status;

    #getter for: Lcom/android/jrdsettings/deviceinfo/Status;->mExt:Lcom/mediatek/settings/ext/IStatusExt;
    invoke-static {v5}, Lcom/android/jrdsettings/deviceinfo/Status;->access$400(Lcom/android/jrdsettings/deviceinfo/Status;)Lcom/mediatek/settings/ext/IStatusExt;

    move-result-object v5

    invoke-interface {v5, v2, v1}, Lcom/mediatek/settings/ext/IStatusExt;->updateOpNameFromRec(Landroid/preference/Preference;Ljava/lang/String;)V

    goto :goto_0
.end method
