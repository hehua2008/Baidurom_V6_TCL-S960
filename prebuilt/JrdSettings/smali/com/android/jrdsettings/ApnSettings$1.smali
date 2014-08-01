.class Lcom/android/jrdsettings/ApnSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "ApnSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/jrdsettings/ApnSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/jrdsettings/ApnSettings;


# direct methods
.method constructor <init>(Lcom/android/jrdsettings/ApnSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 132
    iput-object p1, p0, Lcom/android/jrdsettings/ApnSettings$1;->this$0:Lcom/android/jrdsettings/ApnSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 135
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 136
    .local v0, action:Ljava/lang/String;
    const-string v3, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 137
    #calls: Lcom/android/jrdsettings/ApnSettings;->getMobileDataState(Landroid/content/Intent;)Lcom/android/internal/telephony/PhoneConstants$DataState;
    invoke-static {p2}, Lcom/android/jrdsettings/ApnSettings;->access$000(Landroid/content/Intent;)Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v2

    .line 138
    .local v2, state:Lcom/android/internal/telephony/PhoneConstants$DataState;
    sget-object v3, Lcom/android/jrdsettings/ApnSettings$5;->$SwitchMap$com$android$internal$telephony$PhoneConstants$DataState:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 173
    .end local v2           #state:Lcom/android/internal/telephony/PhoneConstants$DataState;
    :cond_0
    :goto_0
    return-void

    .line 140
    .restart local v2       #state:Lcom/android/internal/telephony/PhoneConstants$DataState;
    :pswitch_0
    const-string v3, "simId"

    const/4 v4, -0x1

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 141
    .local v1, simId:I
    const-string v3, "ApnSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Get sim Id in broadcast received is:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mSlotId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/jrdsettings/ApnSettings$1;->this$0:Lcom/android/jrdsettings/ApnSettings;

    #getter for: Lcom/android/jrdsettings/ApnSettings;->mSlotId:I
    invoke-static {v5}, Lcom/android/jrdsettings/ApnSettings;->access$100(Lcom/android/jrdsettings/ApnSettings;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    iget-object v3, p0, Lcom/android/jrdsettings/ApnSettings$1;->this$0:Lcom/android/jrdsettings/ApnSettings;

    #getter for: Lcom/android/jrdsettings/ApnSettings;->mSlotId:I
    invoke-static {v3}, Lcom/android/jrdsettings/ApnSettings;->access$100(Lcom/android/jrdsettings/ApnSettings;)I

    move-result v3

    if-ne v1, v3, :cond_0

    .line 143
    iget-object v3, p0, Lcom/android/jrdsettings/ApnSettings$1;->this$0:Lcom/android/jrdsettings/ApnSettings;

    #calls: Lcom/android/jrdsettings/ApnSettings;->fillList()V
    invoke-static {v3}, Lcom/android/jrdsettings/ApnSettings;->access$200(Lcom/android/jrdsettings/ApnSettings;)V

    goto :goto_0

    .line 149
    .end local v1           #simId:I
    .end local v2           #state:Lcom/android/internal/telephony/PhoneConstants$DataState;
    :cond_1
    const-string v3, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "com.android.mms.transaction.STOP"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "android.intent.action.DUAL_SIM_MODE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "android.intent.action.SIM_INDICATOR_STATE_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 153
    :cond_2
    iget-object v3, p0, Lcom/android/jrdsettings/ApnSettings$1;->this$0:Lcom/android/jrdsettings/ApnSettings;

    invoke-virtual {v3}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/android/jrdsettings/ApnSettings$1;->this$0:Lcom/android/jrdsettings/ApnSettings;

    #getter for: Lcom/android/jrdsettings/ApnSettings;->mExt:Lcom/mediatek/settings/ext/IApnSettingsExt;
    invoke-static {v4}, Lcom/android/jrdsettings/ApnSettings;->access$300(Lcom/android/jrdsettings/ApnSettings;)Lcom/mediatek/settings/ext/IApnSettingsExt;

    move-result-object v4

    iget-object v5, p0, Lcom/android/jrdsettings/ApnSettings$1;->this$0:Lcom/android/jrdsettings/ApnSettings;

    #getter for: Lcom/android/jrdsettings/ApnSettings;->mSlotId:I
    invoke-static {v5}, Lcom/android/jrdsettings/ApnSettings;->access$100(Lcom/android/jrdsettings/ApnSettings;)I

    move-result v5

    iget-object v6, p0, Lcom/android/jrdsettings/ApnSettings$1;->this$0:Lcom/android/jrdsettings/ApnSettings;

    invoke-interface {v4, v5, v6}, Lcom/mediatek/settings/ext/IApnSettingsExt;->getScreenEnableState(ILandroid/app/Activity;)Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    goto :goto_0

    .line 154
    :cond_3
    const-string v3, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 155
    const-string v3, "ApnSettings"

    const-string v4, "receiver: ACTION_SIM_STATE_CHANGED in ApnSettings"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iget-object v3, p0, Lcom/android/jrdsettings/ApnSettings$1;->this$0:Lcom/android/jrdsettings/ApnSettings;

    #getter for: Lcom/android/jrdsettings/ApnSettings;->mNumeric:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/jrdsettings/ApnSettings;->access$400(Lcom/android/jrdsettings/ApnSettings;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/jrdsettings/ApnSettings$1;->this$0:Lcom/android/jrdsettings/ApnSettings;

    #getter for: Lcom/android/jrdsettings/ApnSettings;->mNumeric:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/jrdsettings/ApnSettings;->access$400(Lcom/android/jrdsettings/ApnSettings;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "-1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    :cond_4
    iget-object v3, p0, Lcom/android/jrdsettings/ApnSettings$1;->this$0:Lcom/android/jrdsettings/ApnSettings;

    #getter for: Lcom/android/jrdsettings/ApnSettings;->mSpn:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/jrdsettings/ApnSettings;->access$500(Lcom/android/jrdsettings/ApnSettings;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/jrdsettings/ApnSettings$1;->this$0:Lcom/android/jrdsettings/ApnSettings;

    #getter for: Lcom/android/jrdsettings/ApnSettings;->mIMSI:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/jrdsettings/ApnSettings;->access$600(Lcom/android/jrdsettings/ApnSettings;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/jrdsettings/ApnSettings$1;->this$0:Lcom/android/jrdsettings/ApnSettings;

    #getter for: Lcom/android/jrdsettings/ApnSettings;->mPnn:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/jrdsettings/ApnSettings;->access$700(Lcom/android/jrdsettings/ApnSettings;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 159
    :cond_5
    iget-object v3, p0, Lcom/android/jrdsettings/ApnSettings$1;->this$0:Lcom/android/jrdsettings/ApnSettings;

    #calls: Lcom/android/jrdsettings/ApnSettings;->initSimState()V
    invoke-static {v3}, Lcom/android/jrdsettings/ApnSettings;->access$800(Lcom/android/jrdsettings/ApnSettings;)V

    .line 160
    invoke-static {}, Lcom/android/jrdsettings/ApnSettings;->access$900()Z

    move-result v3

    if-nez v3, :cond_0

    .line 161
    iget-object v3, p0, Lcom/android/jrdsettings/ApnSettings$1;->this$0:Lcom/android/jrdsettings/ApnSettings;

    #calls: Lcom/android/jrdsettings/ApnSettings;->fillList()V
    invoke-static {v3}, Lcom/android/jrdsettings/ApnSettings;->access$200(Lcom/android/jrdsettings/ApnSettings;)V

    goto/16 :goto_0

    .line 164
    :cond_6
    const-string v3, "com.android.mms.transaction.START"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 165
    const-string v3, "ApnSettings"

    const-string v4, "receiver: TRANSACTION_START in ApnSettings"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    iget-object v3, p0, Lcom/android/jrdsettings/ApnSettings$1;->this$0:Lcom/android/jrdsettings/ApnSettings;

    invoke-virtual {v3}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    goto/16 :goto_0

    .line 167
    :cond_7
    const-string v3, "android.intent.action.SIM_INFO_UPDATE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 169
    const-string v3, "ApnSettings"

    const-string v4, "receiver: ACTION_SIM_INFO_UPDATE , to deal with sim hot swap"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    iget-object v3, p0, Lcom/android/jrdsettings/ApnSettings$1;->this$0:Lcom/android/jrdsettings/ApnSettings;

    #calls: Lcom/android/jrdsettings/ApnSettings;->dealWithSimHotSwap()V
    invoke-static {v3}, Lcom/android/jrdsettings/ApnSettings;->access$1000(Lcom/android/jrdsettings/ApnSettings;)V

    goto/16 :goto_0

    .line 138
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
