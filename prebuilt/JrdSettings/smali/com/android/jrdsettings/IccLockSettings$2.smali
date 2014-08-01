.class Lcom/android/jrdsettings/IccLockSettings$2;
.super Landroid/content/BroadcastReceiver;
.source "IccLockSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/jrdsettings/IccLockSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/jrdsettings/IccLockSettings;


# direct methods
.method constructor <init>(Lcom/android/jrdsettings/IccLockSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 156
    iput-object p1, p0, Lcom/android/jrdsettings/IccLockSettings$2;->this$0:Lcom/android/jrdsettings/IccLockSettings;

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

    .line 158
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 159
    .local v0, action:Ljava/lang/String;
    const-string v3, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 160
    iget-object v3, p0, Lcom/android/jrdsettings/IccLockSettings$2;->this$0:Lcom/android/jrdsettings/IccLockSettings;

    #getter for: Lcom/android/jrdsettings/IccLockSettings;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/jrdsettings/IccLockSettings;->access$400(Lcom/android/jrdsettings/IccLockSettings;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/android/jrdsettings/IccLockSettings$2;->this$0:Lcom/android/jrdsettings/IccLockSettings;

    #getter for: Lcom/android/jrdsettings/IccLockSettings;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/jrdsettings/IccLockSettings;->access$400(Lcom/android/jrdsettings/IccLockSettings;)Landroid/os/Handler;

    move-result-object v4

    const/16 v5, 0x66

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 183
    :cond_0
    :goto_0
    return-void

    .line 161
    :cond_1
    const-string v3, "android.intent.action.SIM_INFO_UPDATE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 163
    const-string v3, "IccLockSettings"

    const-string v4, "receive ACTION_SIM_INFO_UPDATE"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    iget-object v3, p0, Lcom/android/jrdsettings/IccLockSettings$2;->this$0:Lcom/android/jrdsettings/IccLockSettings;

    invoke-static {v3}, Lcom/mediatek/telephony/SimInfoManager;->getInsertedSimInfoList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    .line 165
    .local v2, simList:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;>;"
    if-eqz v2, :cond_0

    .line 166
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_2

    .line 168
    const-string v3, "IccLockSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Hot swap_simList.size()="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    iget-object v3, p0, Lcom/android/jrdsettings/IccLockSettings$2;->this$0:Lcom/android/jrdsettings/IccLockSettings;

    invoke-static {v3}, Lcom/mediatek/gemini/GeminiUtils;->goBackSettings(Landroid/app/Activity;)V

    goto :goto_0

    .line 170
    :cond_2
    iget-object v3, p0, Lcom/android/jrdsettings/IccLockSettings$2;->this$0:Lcom/android/jrdsettings/IccLockSettings;

    #getter for: Lcom/android/jrdsettings/IccLockSettings;->mSlotId:I
    invoke-static {v3}, Lcom/android/jrdsettings/IccLockSettings;->access$500(Lcom/android/jrdsettings/IccLockSettings;)I

    move-result v3

    invoke-static {v3, v2}, Lcom/mediatek/gemini/GeminiUtils;->getSiminfoIdBySimSlotId(ILjava/util/List;)J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    .line 172
    iget-object v3, p0, Lcom/android/jrdsettings/IccLockSettings$2;->this$0:Lcom/android/jrdsettings/IccLockSettings;

    invoke-virtual {v3}, Lcom/android/jrdsettings/IccLockSettings;->finish()V

    goto :goto_0

    .line 175
    .end local v2           #simList:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;>;"
    :cond_3
    const-string v3, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 176
    const-string v3, "state"

    invoke-virtual {p2, v3, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 177
    .local v1, airplaneMode:Z
    if-eqz v1, :cond_0

    .line 178
    iget-object v3, p0, Lcom/android/jrdsettings/IccLockSettings$2;->this$0:Lcom/android/jrdsettings/IccLockSettings;

    #getter for: Lcom/android/jrdsettings/IccLockSettings;->mCellMgr:Lcom/mediatek/CellConnService/CellConnMgr;
    invoke-static {v3}, Lcom/android/jrdsettings/IccLockSettings;->access$600(Lcom/android/jrdsettings/IccLockSettings;)Lcom/mediatek/CellConnService/CellConnMgr;

    move-result-object v3

    iget-object v4, p0, Lcom/android/jrdsettings/IccLockSettings$2;->this$0:Lcom/android/jrdsettings/IccLockSettings;

    #getter for: Lcom/android/jrdsettings/IccLockSettings;->mSlotId:I
    invoke-static {v4}, Lcom/android/jrdsettings/IccLockSettings;->access$500(Lcom/android/jrdsettings/IccLockSettings;)I

    move-result v4

    const/16 v5, 0x12e

    invoke-virtual {v3, v4, v5}, Lcom/mediatek/CellConnService/CellConnMgr;->handleCellConn(II)I

    .line 179
    iget-object v3, p0, Lcom/android/jrdsettings/IccLockSettings$2;->this$0:Lcom/android/jrdsettings/IccLockSettings;

    #getter for: Lcom/android/jrdsettings/IccLockSettings;->mPinDialog:Lcom/android/jrdsettings/EditPinPreference;
    invoke-static {v3}, Lcom/android/jrdsettings/IccLockSettings;->access$700(Lcom/android/jrdsettings/IccLockSettings;)Lcom/android/jrdsettings/EditPinPreference;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/android/jrdsettings/EditPinPreference;->setEnabled(Z)V

    .line 180
    iget-object v3, p0, Lcom/android/jrdsettings/IccLockSettings$2;->this$0:Lcom/android/jrdsettings/IccLockSettings;

    #getter for: Lcom/android/jrdsettings/IccLockSettings;->mPinToggle:Landroid/preference/CheckBoxPreference;
    invoke-static {v3}, Lcom/android/jrdsettings/IccLockSettings;->access$800(Lcom/android/jrdsettings/IccLockSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto/16 :goto_0
.end method
