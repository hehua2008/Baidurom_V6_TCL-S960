.class Lcom/android/jrdsettings/ApnEditor$1;
.super Landroid/content/BroadcastReceiver;
.source "ApnEditor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/jrdsettings/ApnEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/jrdsettings/ApnEditor;


# direct methods
.method constructor <init>(Lcom/android/jrdsettings/ApnEditor;)V
    .locals 0
    .parameter

    .prologue
    .line 192
    iput-object p1, p0, Lcom/android/jrdsettings/ApnEditor$1;->this$0:Lcom/android/jrdsettings/ApnEditor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v3, 0x0

    .line 196
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 197
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 198
    iget-object v1, p0, Lcom/android/jrdsettings/ApnEditor$1;->this$0:Lcom/android/jrdsettings/ApnEditor;

    const-string v2, "state"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    #setter for: Lcom/android/jrdsettings/ApnEditor;->mAirplaneModeEnabled:Z
    invoke-static {v1, v2}, Lcom/android/jrdsettings/ApnEditor;->access$002(Lcom/android/jrdsettings/ApnEditor;Z)Z

    .line 199
    iget-object v1, p0, Lcom/android/jrdsettings/ApnEditor$1;->this$0:Lcom/android/jrdsettings/ApnEditor;

    #getter for: Lcom/android/jrdsettings/ApnEditor;->mAirplaneModeEnabled:Z
    invoke-static {v1}, Lcom/android/jrdsettings/ApnEditor;->access$000(Lcom/android/jrdsettings/ApnEditor;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 200
    const-string v1, "ssr"

    const-string v2, "receiver: ACTION_AIRPLANE_MODE_CHANGED in ApnEditor"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    iget-object v1, p0, Lcom/android/jrdsettings/ApnEditor$1;->this$0:Lcom/android/jrdsettings/ApnEditor;

    #calls: Lcom/android/jrdsettings/ApnEditor;->radioOffExit()V
    invoke-static {v1}, Lcom/android/jrdsettings/ApnEditor;->access$100(Lcom/android/jrdsettings/ApnEditor;)V

    .line 239
    :cond_0
    :goto_0
    return-void

    .line 203
    :cond_1
    const-string v1, "com.android.mms.transaction.START"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 204
    const-string v1, "ssr"

    const-string v2, "receiver: TRANSACTION_START in ApnEditor"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    iget-object v1, p0, Lcom/android/jrdsettings/ApnEditor$1;->this$0:Lcom/android/jrdsettings/ApnEditor;

    #setter for: Lcom/android/jrdsettings/ApnEditor;->mNotInMmsTransaction:Z
    invoke-static {v1, v3}, Lcom/android/jrdsettings/ApnEditor;->access$202(Lcom/android/jrdsettings/ApnEditor;Z)Z

    .line 206
    iget-object v1, p0, Lcom/android/jrdsettings/ApnEditor$1;->this$0:Lcom/android/jrdsettings/ApnEditor;

    invoke-virtual {v1}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    goto :goto_0

    .line 207
    :cond_2
    const-string v1, "com.android.mms.transaction.STOP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 208
    const-string v1, "ssr"

    const-string v2, "receiver: TRANSACTION_STOP in ApnEditor"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    iget-object v1, p0, Lcom/android/jrdsettings/ApnEditor$1;->this$0:Lcom/android/jrdsettings/ApnEditor;

    const/4 v2, 0x1

    #setter for: Lcom/android/jrdsettings/ApnEditor;->mNotInMmsTransaction:Z
    invoke-static {v1, v2}, Lcom/android/jrdsettings/ApnEditor;->access$202(Lcom/android/jrdsettings/ApnEditor;Z)Z

    .line 210
    iget-object v1, p0, Lcom/android/jrdsettings/ApnEditor$1;->this$0:Lcom/android/jrdsettings/ApnEditor;

    #calls: Lcom/android/jrdsettings/ApnEditor;->setScreenEnabledStatus()V
    invoke-static {v1}, Lcom/android/jrdsettings/ApnEditor;->access$300(Lcom/android/jrdsettings/ApnEditor;)V

    .line 212
    const-string v1, "tethering"

    iget-object v2, p0, Lcom/android/jrdsettings/ApnEditor$1;->this$0:Lcom/android/jrdsettings/ApnEditor;

    #getter for: Lcom/android/jrdsettings/ApnEditor;->mApnTypeList:Lcom/mediatek/apn/ApnTypePreference;
    invoke-static {v2}, Lcom/android/jrdsettings/ApnEditor;->access$400(Lcom/android/jrdsettings/ApnEditor;)Lcom/mediatek/apn/ApnTypePreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/apn/ApnTypePreference;->getTypeString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 213
    iget-object v1, p0, Lcom/android/jrdsettings/ApnEditor$1;->this$0:Lcom/android/jrdsettings/ApnEditor;

    iget-object v1, v1, Lcom/android/jrdsettings/ApnEditor;->mExt:Lcom/mediatek/settings/ext/IApnSettingsExt;

    iget-object v2, p0, Lcom/android/jrdsettings/ApnEditor$1;->this$0:Lcom/android/jrdsettings/ApnEditor;

    #getter for: Lcom/android/jrdsettings/ApnEditor;->mApnTypeList:Lcom/mediatek/apn/ApnTypePreference;
    invoke-static {v2}, Lcom/android/jrdsettings/ApnEditor;->access$400(Lcom/android/jrdsettings/ApnEditor;)Lcom/mediatek/apn/ApnTypePreference;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/mediatek/settings/ext/IApnSettingsExt;->setApnTypePreferenceState(Landroid/preference/Preference;)V

    goto :goto_0

    .line 215
    :cond_3
    const-string v1, "android.intent.action.DUAL_SIM_MODE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 216
    iget-object v1, p0, Lcom/android/jrdsettings/ApnEditor$1;->this$0:Lcom/android/jrdsettings/ApnEditor;

    const-string v2, "mode"

    const/4 v3, -0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    #setter for: Lcom/android/jrdsettings/ApnEditor;->mDualSimMode:I
    invoke-static {v1, v2}, Lcom/android/jrdsettings/ApnEditor;->access$502(Lcom/android/jrdsettings/ApnEditor;I)I

    .line 217
    invoke-static {}, Lcom/android/jrdsettings/ApnEditor;->access$600()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "receiver, new dual sim mode"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/jrdsettings/ApnEditor$1;->this$0:Lcom/android/jrdsettings/ApnEditor;

    #getter for: Lcom/android/jrdsettings/ApnEditor;->mDualSimMode:I
    invoke-static {v3}, Lcom/android/jrdsettings/ApnEditor;->access$500(Lcom/android/jrdsettings/ApnEditor;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    iget-object v1, p0, Lcom/android/jrdsettings/ApnEditor$1;->this$0:Lcom/android/jrdsettings/ApnEditor;

    #getter for: Lcom/android/jrdsettings/ApnEditor;->mDualSimMode:I
    invoke-static {v1}, Lcom/android/jrdsettings/ApnEditor;->access$500(Lcom/android/jrdsettings/ApnEditor;)I

    move-result v1

    if-nez v1, :cond_0

    .line 219
    iget-object v1, p0, Lcom/android/jrdsettings/ApnEditor$1;->this$0:Lcom/android/jrdsettings/ApnEditor;

    #calls: Lcom/android/jrdsettings/ApnEditor;->radioOffExit()V
    invoke-static {v1}, Lcom/android/jrdsettings/ApnEditor;->access$100(Lcom/android/jrdsettings/ApnEditor;)V

    goto/16 :goto_0

    .line 221
    :cond_4
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 223
    iget-object v1, p0, Lcom/android/jrdsettings/ApnEditor$1;->this$0:Lcom/android/jrdsettings/ApnEditor;

    #getter for: Lcom/android/jrdsettings/ApnEditor;->mSpn:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/jrdsettings/ApnEditor;->access$700(Lcom/android/jrdsettings/ApnEditor;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 224
    iget-object v1, p0, Lcom/android/jrdsettings/ApnEditor$1;->this$0:Lcom/android/jrdsettings/ApnEditor;

    iget-object v2, p0, Lcom/android/jrdsettings/ApnEditor$1;->this$0:Lcom/android/jrdsettings/ApnEditor;

    #getter for: Lcom/android/jrdsettings/ApnEditor;->mSlotId:I
    invoke-static {v2}, Lcom/android/jrdsettings/ApnEditor;->access$800(Lcom/android/jrdsettings/ApnEditor;)I

    move-result v2

    invoke-static {v2}, Lcom/mediatek/apn/ApnUtils;->getSpn(I)Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/android/jrdsettings/ApnEditor;->mSpn:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/jrdsettings/ApnEditor;->access$702(Lcom/android/jrdsettings/ApnEditor;Ljava/lang/String;)Ljava/lang/String;

    .line 226
    :cond_5
    iget-object v1, p0, Lcom/android/jrdsettings/ApnEditor$1;->this$0:Lcom/android/jrdsettings/ApnEditor;

    #getter for: Lcom/android/jrdsettings/ApnEditor;->mIMSI:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/jrdsettings/ApnEditor;->access$900(Lcom/android/jrdsettings/ApnEditor;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 227
    iget-object v1, p0, Lcom/android/jrdsettings/ApnEditor$1;->this$0:Lcom/android/jrdsettings/ApnEditor;

    iget-object v2, p0, Lcom/android/jrdsettings/ApnEditor$1;->this$0:Lcom/android/jrdsettings/ApnEditor;

    #getter for: Lcom/android/jrdsettings/ApnEditor;->mSlotId:I
    invoke-static {v2}, Lcom/android/jrdsettings/ApnEditor;->access$800(Lcom/android/jrdsettings/ApnEditor;)I

    move-result v2

    invoke-static {v2}, Lcom/mediatek/apn/ApnUtils;->getIMSI(I)Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/android/jrdsettings/ApnEditor;->mIMSI:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/jrdsettings/ApnEditor;->access$902(Lcom/android/jrdsettings/ApnEditor;Ljava/lang/String;)Ljava/lang/String;

    .line 229
    :cond_6
    iget-object v1, p0, Lcom/android/jrdsettings/ApnEditor$1;->this$0:Lcom/android/jrdsettings/ApnEditor;

    #getter for: Lcom/android/jrdsettings/ApnEditor;->mPnn:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/jrdsettings/ApnEditor;->access$1000(Lcom/android/jrdsettings/ApnEditor;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 230
    iget-object v1, p0, Lcom/android/jrdsettings/ApnEditor$1;->this$0:Lcom/android/jrdsettings/ApnEditor;

    iget-object v2, p0, Lcom/android/jrdsettings/ApnEditor$1;->this$0:Lcom/android/jrdsettings/ApnEditor;

    #getter for: Lcom/android/jrdsettings/ApnEditor;->mSlotId:I
    invoke-static {v2}, Lcom/android/jrdsettings/ApnEditor;->access$800(Lcom/android/jrdsettings/ApnEditor;)I

    move-result v2

    invoke-static {v2}, Lcom/mediatek/apn/ApnUtils;->getPnn(I)Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/android/jrdsettings/ApnEditor;->mPnn:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/jrdsettings/ApnEditor;->access$1002(Lcom/android/jrdsettings/ApnEditor;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 233
    :cond_7
    const-string v1, "android.intent.action.SIM_INFO_UPDATE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 236
    iget-object v1, p0, Lcom/android/jrdsettings/ApnEditor$1;->this$0:Lcom/android/jrdsettings/ApnEditor;

    #calls: Lcom/android/jrdsettings/ApnEditor;->dealWithSimHotSwap()V
    invoke-static {v1}, Lcom/android/jrdsettings/ApnEditor;->access$1100(Lcom/android/jrdsettings/ApnEditor;)V

    goto/16 :goto_0
.end method
