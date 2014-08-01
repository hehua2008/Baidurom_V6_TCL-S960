.class Lcom/android/jrdsettings/DataUsageSummary$4;
.super Landroid/content/BroadcastReceiver;
.source "DataUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/jrdsettings/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/jrdsettings/DataUsageSummary;


# direct methods
.method constructor <init>(Lcom/android/jrdsettings/DataUsageSummary;)V
    .locals 0
    .parameter

    .prologue
    .line 395
    iput-object p1, p0, Lcom/android/jrdsettings/DataUsageSummary$4;->this$0:Lcom/android/jrdsettings/DataUsageSummary;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 400
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 401
    .local v0, action:Ljava/lang/String;
    const-string v8, "DataUsage"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Receive broadcast , action =  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    const/4 v2, 0x0

    .line 405
    .local v2, needUpdate:Z
    const-string v8, "android.intent.action.SIM_INDICATOR_STATE_CHANGED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 406
    const-string v8, "slotId"

    const/4 v9, -0x1

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 407
    .local v5, slotId:I
    const-string v8, "state"

    const/4 v9, -0x1

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 408
    .local v4, simStatus:I
    const-string v8, "DataUsage"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "receive notification: state of sim slot "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    if-ltz v5, :cond_0

    if-ltz v4, :cond_0

    .line 410
    const/4 v2, 0x1

    .line 412
    iget-object v8, p0, Lcom/android/jrdsettings/DataUsageSummary$4;->this$0:Lcom/android/jrdsettings/DataUsageSummary;

    iget-object v9, p0, Lcom/android/jrdsettings/DataUsageSummary$4;->this$0:Lcom/android/jrdsettings/DataUsageSummary;

    #getter for: Lcom/android/jrdsettings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;
    invoke-static {v9}, Lcom/android/jrdsettings/DataUsageSummary;->access$200(Lcom/android/jrdsettings/DataUsageSummary;)Landroid/widget/TabHost;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v9

    #setter for: Lcom/android/jrdsettings/DataUsageSummary;->mSavedCurrentTab:Ljava/lang/String;
    invoke-static {v8, v9}, Lcom/android/jrdsettings/DataUsageSummary;->access$102(Lcom/android/jrdsettings/DataUsageSummary;Ljava/lang/String;)Ljava/lang/String;

    .line 413
    const-string v8, "DataUsage"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "set mSavedCurrentTab = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/jrdsettings/DataUsageSummary$4;->this$0:Lcom/android/jrdsettings/DataUsageSummary;

    #getter for: Lcom/android/jrdsettings/DataUsageSummary;->mSavedCurrentTab:Ljava/lang/String;
    invoke-static {v10}, Lcom/android/jrdsettings/DataUsageSummary;->access$100(Lcom/android/jrdsettings/DataUsageSummary;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    iget-object v8, p0, Lcom/android/jrdsettings/DataUsageSummary$4;->this$0:Lcom/android/jrdsettings/DataUsageSummary;

    #calls: Lcom/android/jrdsettings/DataUsageSummary;->updateTabs()V
    invoke-static {v8}, Lcom/android/jrdsettings/DataUsageSummary;->access$600(Lcom/android/jrdsettings/DataUsageSummary;)V

    .line 480
    .end local v4           #simStatus:I
    .end local v5           #slotId:I
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    .line 481
    iget-object v8, p0, Lcom/android/jrdsettings/DataUsageSummary$4;->this$0:Lcom/android/jrdsettings/DataUsageSummary;

    iget-object v9, p0, Lcom/android/jrdsettings/DataUsageSummary$4;->this$0:Lcom/android/jrdsettings/DataUsageSummary;

    #getter for: Lcom/android/jrdsettings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;
    invoke-static {v9}, Lcom/android/jrdsettings/DataUsageSummary;->access$200(Lcom/android/jrdsettings/DataUsageSummary;)Landroid/widget/TabHost;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v9

    #setter for: Lcom/android/jrdsettings/DataUsageSummary;->mSavedCurrentTab:Ljava/lang/String;
    invoke-static {v8, v9}, Lcom/android/jrdsettings/DataUsageSummary;->access$102(Lcom/android/jrdsettings/DataUsageSummary;Ljava/lang/String;)Ljava/lang/String;

    .line 482
    const-string v8, "DataUsage"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "set mSavedCurrentTab = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/jrdsettings/DataUsageSummary$4;->this$0:Lcom/android/jrdsettings/DataUsageSummary;

    #getter for: Lcom/android/jrdsettings/DataUsageSummary;->mSavedCurrentTab:Ljava/lang/String;
    invoke-static {v10}, Lcom/android/jrdsettings/DataUsageSummary;->access$100(Lcom/android/jrdsettings/DataUsageSummary;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    iget-object v8, p0, Lcom/android/jrdsettings/DataUsageSummary$4;->this$0:Lcom/android/jrdsettings/DataUsageSummary;

    #calls: Lcom/android/jrdsettings/DataUsageSummary;->updateBody()V
    invoke-static {v8}, Lcom/android/jrdsettings/DataUsageSummary;->access$300(Lcom/android/jrdsettings/DataUsageSummary;)V

    .line 485
    :cond_1
    return-void

    .line 421
    :cond_2
    const-string v8, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 422
    iget-object v8, p0, Lcom/android/jrdsettings/DataUsageSummary$4;->this$0:Lcom/android/jrdsettings/DataUsageSummary;

    iget-object v9, p0, Lcom/android/jrdsettings/DataUsageSummary$4;->this$0:Lcom/android/jrdsettings/DataUsageSummary;

    iget-object v10, p0, Lcom/android/jrdsettings/DataUsageSummary$4;->this$0:Lcom/android/jrdsettings/DataUsageSummary;

    invoke-virtual {v10}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/jrdsettings/DataUsageSummary;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v9

    #setter for: Lcom/android/jrdsettings/DataUsageSummary;->mIsAirplaneModeOn:Z
    invoke-static {v8, v9}, Lcom/android/jrdsettings/DataUsageSummary;->access$702(Lcom/android/jrdsettings/DataUsageSummary;Z)Z

    .line 423
    const/4 v2, 0x1

    goto :goto_0

    .line 424
    :cond_3
    const-string v8, "com.mediatek.server.action.ACTION_POLICY_CREATED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 425
    iget-object v8, p0, Lcom/android/jrdsettings/DataUsageSummary$4;->this$0:Lcom/android/jrdsettings/DataUsageSummary;

    #getter for: Lcom/android/jrdsettings/DataUsageSummary;->mPolicyEditor:Lcom/android/jrdsettings/net/NetworkPolicyEditor;
    invoke-static {v8}, Lcom/android/jrdsettings/DataUsageSummary;->access$800(Lcom/android/jrdsettings/DataUsageSummary;)Lcom/android/jrdsettings/net/NetworkPolicyEditor;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/jrdsettings/net/NetworkPolicyEditor;->read()V

    .line 426
    iget-object v8, p0, Lcom/android/jrdsettings/DataUsageSummary$4;->this$0:Lcom/android/jrdsettings/DataUsageSummary;

    #getter for: Lcom/android/jrdsettings/DataUsageSummary;->mCycleAdapter:Lcom/android/jrdsettings/DataUsageSummary$CycleAdapter;
    invoke-static {v8}, Lcom/android/jrdsettings/DataUsageSummary;->access$900(Lcom/android/jrdsettings/DataUsageSummary;)Lcom/android/jrdsettings/DataUsageSummary$CycleAdapter;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 427
    iget-object v8, p0, Lcom/android/jrdsettings/DataUsageSummary$4;->this$0:Lcom/android/jrdsettings/DataUsageSummary;

    const/4 v9, 0x1

    #calls: Lcom/android/jrdsettings/DataUsageSummary;->updatePolicy(Z)V
    invoke-static {v8, v9}, Lcom/android/jrdsettings/DataUsageSummary;->access$500(Lcom/android/jrdsettings/DataUsageSummary;Z)V

    goto :goto_0

    .line 430
    :cond_4
    const-string v8, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 431
    const-string v8, "apnType"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 433
    .local v1, apnTypeList:Ljava/lang/String;
    const-string v8, "state"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 434
    .local v7, str:Ljava/lang/String;
    if-eqz v7, :cond_8

    .line 435
    const-class v8, Lcom/android/internal/telephony/PhoneConstants$DataState;

    invoke-static {v8, v7}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/PhoneConstants$DataState;

    .line 439
    .local v6, state:Lcom/android/internal/telephony/PhoneConstants$DataState;
    :goto_1
    const-string v8, "simId"

    const/4 v9, -0x1

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 441
    .local v3, simId:I
    const-string v8, "default"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    sget-object v8, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    if-ne v6, v8, :cond_6

    invoke-static {}, Lcom/android/jrdsettings/DataUsageSummary;->access$1000()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 443
    iget-object v8, p0, Lcom/android/jrdsettings/DataUsageSummary$4;->this$0:Lcom/android/jrdsettings/DataUsageSummary;

    #getter for: Lcom/android/jrdsettings/DataUsageSummary;->mTimerHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/jrdsettings/DataUsageSummary;->access$1100(Lcom/android/jrdsettings/DataUsageSummary;)Landroid/os/Handler;

    move-result-object v8

    const/16 v9, 0x7d1

    invoke-virtual {v8, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 444
    const/4 v8, 0x0

    invoke-static {v8}, Lcom/android/jrdsettings/DataUsageSummary;->access$1002(Z)Z

    .line 445
    iget-object v8, p0, Lcom/android/jrdsettings/DataUsageSummary$4;->this$0:Lcom/android/jrdsettings/DataUsageSummary;

    #getter for: Lcom/android/jrdsettings/DataUsageSummary;->mDataEnabled:Landroid/widget/Switch;
    invoke-static {v8}, Lcom/android/jrdsettings/DataUsageSummary;->access$1200(Lcom/android/jrdsettings/DataUsageSummary;)Landroid/widget/Switch;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 446
    iget-object v8, p0, Lcom/android/jrdsettings/DataUsageSummary$4;->this$0:Lcom/android/jrdsettings/DataUsageSummary;

    #getter for: Lcom/android/jrdsettings/DataUsageSummary;->mCycleAdapter:Lcom/android/jrdsettings/DataUsageSummary$CycleAdapter;
    invoke-static {v8}, Lcom/android/jrdsettings/DataUsageSummary;->access$900(Lcom/android/jrdsettings/DataUsageSummary;)Lcom/android/jrdsettings/DataUsageSummary$CycleAdapter;

    move-result-object v8

    if-eqz v8, :cond_5

    .line 447
    iget-object v8, p0, Lcom/android/jrdsettings/DataUsageSummary$4;->this$0:Lcom/android/jrdsettings/DataUsageSummary;

    const/4 v9, 0x1

    #calls: Lcom/android/jrdsettings/DataUsageSummary;->updatePolicy(Z)V
    invoke-static {v8, v9}, Lcom/android/jrdsettings/DataUsageSummary;->access$500(Lcom/android/jrdsettings/DataUsageSummary;Z)V

    .line 449
    :cond_5
    const-string v8, "DataUsage"

    const-string v9, "attach over"

    invoke-static {v8, v9}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    :cond_6
    const-string v8, "default"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    sget-object v8, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    if-ne v6, v8, :cond_0

    invoke-static {}, Lcom/android/jrdsettings/DataUsageSummary;->access$1000()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 453
    iget-object v8, p0, Lcom/android/jrdsettings/DataUsageSummary$4;->this$0:Lcom/android/jrdsettings/DataUsageSummary;

    #getter for: Lcom/android/jrdsettings/DataUsageSummary;->mTimerHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/jrdsettings/DataUsageSummary;->access$1100(Lcom/android/jrdsettings/DataUsageSummary;)Landroid/os/Handler;

    move-result-object v8

    const/16 v9, 0x7d0

    invoke-virtual {v8, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 454
    const/4 v8, 0x0

    invoke-static {v8}, Lcom/android/jrdsettings/DataUsageSummary;->access$1002(Z)Z

    .line 455
    iget-object v8, p0, Lcom/android/jrdsettings/DataUsageSummary$4;->this$0:Lcom/android/jrdsettings/DataUsageSummary;

    #getter for: Lcom/android/jrdsettings/DataUsageSummary;->mDataEnabled:Landroid/widget/Switch;
    invoke-static {v8}, Lcom/android/jrdsettings/DataUsageSummary;->access$1200(Lcom/android/jrdsettings/DataUsageSummary;)Landroid/widget/Switch;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 456
    iget-object v8, p0, Lcom/android/jrdsettings/DataUsageSummary$4;->this$0:Lcom/android/jrdsettings/DataUsageSummary;

    #getter for: Lcom/android/jrdsettings/DataUsageSummary;->mCycleAdapter:Lcom/android/jrdsettings/DataUsageSummary$CycleAdapter;
    invoke-static {v8}, Lcom/android/jrdsettings/DataUsageSummary;->access$900(Lcom/android/jrdsettings/DataUsageSummary;)Lcom/android/jrdsettings/DataUsageSummary$CycleAdapter;

    move-result-object v8

    if-eqz v8, :cond_7

    .line 457
    iget-object v8, p0, Lcom/android/jrdsettings/DataUsageSummary$4;->this$0:Lcom/android/jrdsettings/DataUsageSummary;

    const/4 v9, 0x1

    #calls: Lcom/android/jrdsettings/DataUsageSummary;->updatePolicy(Z)V
    invoke-static {v8, v9}, Lcom/android/jrdsettings/DataUsageSummary;->access$500(Lcom/android/jrdsettings/DataUsageSummary;Z)V

    .line 459
    :cond_7
    const-string v8, "DataUsage"

    const-string v9, "detach over"

    invoke-static {v8, v9}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 437
    .end local v3           #simId:I
    .end local v6           #state:Lcom/android/internal/telephony/PhoneConstants$DataState;
    :cond_8
    sget-object v6, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    .restart local v6       #state:Lcom/android/internal/telephony/PhoneConstants$DataState;
    goto/16 :goto_1

    .line 462
    .end local v1           #apnTypeList:Ljava/lang/String;
    .end local v6           #state:Lcom/android/internal/telephony/PhoneConstants$DataState;
    .end local v7           #str:Ljava/lang/String;
    :cond_9
    const-string v8, "android.intent.action.SIM_INFO_UPDATE"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 463
    iget-object v8, p0, Lcom/android/jrdsettings/DataUsageSummary$4;->this$0:Lcom/android/jrdsettings/DataUsageSummary;

    iget-object v9, p0, Lcom/android/jrdsettings/DataUsageSummary$4;->this$0:Lcom/android/jrdsettings/DataUsageSummary;

    #getter for: Lcom/android/jrdsettings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;
    invoke-static {v9}, Lcom/android/jrdsettings/DataUsageSummary;->access$200(Lcom/android/jrdsettings/DataUsageSummary;)Landroid/widget/TabHost;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v9

    #setter for: Lcom/android/jrdsettings/DataUsageSummary;->mSavedCurrentTab:Ljava/lang/String;
    invoke-static {v8, v9}, Lcom/android/jrdsettings/DataUsageSummary;->access$102(Lcom/android/jrdsettings/DataUsageSummary;Ljava/lang/String;)Ljava/lang/String;

    .line 465
    iget-object v8, p0, Lcom/android/jrdsettings/DataUsageSummary$4;->this$0:Lcom/android/jrdsettings/DataUsageSummary;

    iget-object v9, p0, Lcom/android/jrdsettings/DataUsageSummary$4;->this$0:Lcom/android/jrdsettings/DataUsageSummary;

    #getter for: Lcom/android/jrdsettings/DataUsageSummary;->mSavedCurrentTab:Ljava/lang/String;
    invoke-static {v9}, Lcom/android/jrdsettings/DataUsageSummary;->access$100(Lcom/android/jrdsettings/DataUsageSummary;)Ljava/lang/String;

    move-result-object v9

    #calls: Lcom/android/jrdsettings/DataUsageSummary;->isRemainInserted(Ljava/lang/String;)Z
    invoke-static {v8, v9}, Lcom/android/jrdsettings/DataUsageSummary;->access$1300(Lcom/android/jrdsettings/DataUsageSummary;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 466
    const-string v8, "DataUsage"

    const-string v9, "set mSavedCurrentTab null when sim hotswap for gemini"

    invoke-static {v8, v9}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    iget-object v8, p0, Lcom/android/jrdsettings/DataUsageSummary$4;->this$0:Lcom/android/jrdsettings/DataUsageSummary;

    const/4 v9, 0x0

    #setter for: Lcom/android/jrdsettings/DataUsageSummary;->mSavedCurrentTab:Ljava/lang/String;
    invoke-static {v8, v9}, Lcom/android/jrdsettings/DataUsageSummary;->access$102(Lcom/android/jrdsettings/DataUsageSummary;Ljava/lang/String;)Ljava/lang/String;

    .line 476
    :cond_a
    iget-object v8, p0, Lcom/android/jrdsettings/DataUsageSummary$4;->this$0:Lcom/android/jrdsettings/DataUsageSummary;

    #calls: Lcom/android/jrdsettings/DataUsageSummary;->updateTabs()V
    invoke-static {v8}, Lcom/android/jrdsettings/DataUsageSummary;->access$600(Lcom/android/jrdsettings/DataUsageSummary;)V

    .line 477
    iget-object v8, p0, Lcom/android/jrdsettings/DataUsageSummary$4;->this$0:Lcom/android/jrdsettings/DataUsageSummary;

    #calls: Lcom/android/jrdsettings/DataUsageSummary;->updateBody()V
    invoke-static {v8}, Lcom/android/jrdsettings/DataUsageSummary;->access$300(Lcom/android/jrdsettings/DataUsageSummary;)V

    goto/16 :goto_0
.end method
