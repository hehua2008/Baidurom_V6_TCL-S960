.class Lcom/android/server/ConnectivityService$ConnectivityServiceReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectivityServiceReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ConnectivityService;


# direct methods
.method private constructor <init>(Lcom/android/server/ConnectivityService;)V
    .locals 0
    .parameter

    .prologue
    .line 4407
    iput-object p1, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceReceiver;->this$0:Lcom/android/server/ConnectivityService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/ConnectivityService;Lcom/android/server/ConnectivityService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4407
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService$ConnectivityServiceReceiver;-><init>(Lcom/android/server/ConnectivityService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 19
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 4409
    if-nez p2, :cond_0

    .line 4504
    :goto_0
    return-void

    .line 4410
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    .line 4411
    .local v8, action:Ljava/lang/String;
    const-string v3, "ConnectivityService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "received intent ==> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4412
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceReceiver;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mSynchronizedObject:Ljava/lang/Object;
    invoke-static {v3}, Lcom/android/server/ConnectivityService;->access$4500(Lcom/android/server/ConnectivityService;)Ljava/lang/Object;

    move-result-object v18

    monitor-enter v18

    .line 4413
    :try_start_0
    const-string v3, "android.intent.action.DATA_DEFAULT_SIM"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 4415
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceReceiver;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/ConnectivityService;->access$1300(Lcom/android/server/ConnectivityService;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "gprs_connection_setting"

    const/4 v5, -0x4

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    add-int/lit8 v12, v3, -0x1

    .line 4416
    .local v12, preSlotId:I
    const-string v3, "simid"

    const-wide/16 v4, -0x5

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    .line 4418
    .local v15, simId:Ljava/lang/Long;
    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_1

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, -0x5

    cmp-long v3, v3, v5

    if-nez v3, :cond_3

    .line 4419
    :cond_1
    const/16 v16, -0x1

    .line 4426
    .local v16, slotId:I
    :goto_1
    const/4 v3, -0x1

    move/from16 v0, v16

    if-eq v3, v0, :cond_4

    .line 4427
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 4428
    .local v2, callthisUid:I
    move/from16 v17, v16

    .line 4429
    .local v17, slot_id:I
    move v13, v12

    .line 4431
    .local v13, pre_slot_id:I
    const-string v3, "enable mobile data"

    new-instance v4, Lcom/android/server/ConnectivityService$ConnectivityServiceReceiver$1;

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v4, v0, v1, v13}, Lcom/android/server/ConnectivityService$ConnectivityServiceReceiver$1;-><init>(Lcom/android/server/ConnectivityService$ConnectivityServiceReceiver;II)V

    new-instance v5, Lcom/android/server/ConnectivityService$ConnectivityServiceReceiver$2;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/server/ConnectivityService$ConnectivityServiceReceiver$2;-><init>(Lcom/android/server/ConnectivityService$ConnectivityServiceReceiver;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceReceiver;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/server/ConnectivityService;->access$1300(Lcom/android/server/ConnectivityService;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x104008c

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Landroid/os/CTAManager;->directAsyncCheckIncludeSystem(ILjava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/CharSequence;I)V

    .line 4503
    .end local v2           #callthisUid:I
    .end local v12           #preSlotId:I
    .end local v13           #pre_slot_id:I
    .end local v15           #simId:Ljava/lang/Long;
    .end local v16           #slotId:I
    .end local v17           #slot_id:I
    :cond_2
    :goto_2
    monitor-exit v18

    goto/16 :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v18
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 4422
    .restart local v12       #preSlotId:I
    .restart local v15       #simId:Ljava/lang/Long;
    :cond_3
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceReceiver;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/ConnectivityService;->access$1300(Lcom/android/server/ConnectivityService;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Landroid/provider/Telephony$SIMInfo;->getSlotById(Landroid/content/Context;J)I

    move-result v16

    .restart local v16       #slotId:I
    goto :goto_1

    .line 4462
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceReceiver;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/ConnectivityService;->access$1300(Lcom/android/server/ConnectivityService;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "gprs_connection_setting"

    add-int/lit8 v5, v16, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 4463
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceReceiver;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/ConnectivityService;->access$1300(Lcom/android/server/ConnectivityService;)Landroid/content/Context;

    move-result-object v3

    move/from16 v0, v16

    invoke-static {v3, v0}, Landroid/provider/Telephony$SIMInfo;->getIdBySlot(Landroid/content/Context;I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    .line 4464
    .local v9, changeSimId:Ljava/lang/Long;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceReceiver;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/ConnectivityService;->access$1300(Lcom/android/server/ConnectivityService;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "gprs_connection_sim_setting"

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 4466
    const/4 v3, -0x1

    move/from16 v0, v16

    if-eq v0, v3, :cond_5

    .line 4467
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceReceiver;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/ConnectivityService;->access$1300(Lcom/android/server/ConnectivityService;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "mobile_data"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 4473
    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceReceiver;->this$0:Lcom/android/server/ConnectivityService;

    move/from16 v0, v16

    #calls: Lcom/android/server/ConnectivityService;->handleMobileDataConnectionChange(II)V
    invoke-static {v3, v12, v0}, Lcom/android/server/ConnectivityService;->access$3400(Lcom/android/server/ConnectivityService;II)V

    goto :goto_2

    .line 4470
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceReceiver;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/ConnectivityService;->access$1300(Lcom/android/server/ConnectivityService;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "mobile_data"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_3

    .line 4477
    .end local v9           #changeSimId:Ljava/lang/Long;
    .end local v12           #preSlotId:I
    .end local v15           #simId:Ljava/lang/Long;
    .end local v16           #slotId:I
    :cond_6
    const-string v3, "android.intent.action.TETHERING_CHANGED"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 4478
    const-string v3, "tethering_isconnected"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v10

    .line 4479
    .local v10, isConnected:Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceReceiver;->this$0:Lcom/android/server/ConnectivityService;

    invoke-virtual {v3, v10}, Lcom/android/server/ConnectivityService;->setUsbTethering(Z)I

    goto/16 :goto_2

    .line 4480
    .end local v10           #isConnected:Z
    :cond_7
    const-string v3, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 4481
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v11

    .line 4482
    .local v11, obtainBundle:Landroid/os/Bundle;
    if-eqz v11, :cond_9

    .line 4484
    invoke-static {v11}, Landroid/telephony/ServiceState;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/ServiceState;

    move-result-object v14

    .line 4485
    .local v14, serviceState:Landroid/telephony/ServiceState;
    invoke-virtual {v14}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    if-nez v3, :cond_2

    .line 4486
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceReceiver;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceReceiver;->this$0:Lcom/android/server/ConnectivityService;

    invoke-virtual {v3}, Lcom/android/server/ConnectivityService;->getMobileDataEnabled()Z

    move-result v3

    if-nez v3, :cond_8

    const/4 v3, 0x1

    :goto_4
    const/4 v5, 0x0

    #calls: Lcom/android/server/ConnectivityService;->setDataOffNotification(ZZ)V
    invoke-static {v4, v3, v5}, Lcom/android/server/ConnectivityService;->access$4600(Lcom/android/server/ConnectivityService;ZZ)V

    goto/16 :goto_2

    :cond_8
    const/4 v3, 0x0

    goto :goto_4

    .line 4491
    .end local v14           #serviceState:Landroid/telephony/ServiceState;
    :cond_9
    const-string v3, "get bundle error!!"

    #calls: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/server/ConnectivityService;->access$400(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 4493
    .end local v11           #obtainBundle:Landroid/os/Bundle;
    :cond_a
    const-string v3, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 4494
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceReceiver;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ConnectivityService$ConnectivityServiceReceiver;->this$0:Lcom/android/server/ConnectivityService;

    invoke-virtual {v3}, Lcom/android/server/ConnectivityService;->getMobileDataEnabled()Z

    move-result v3

    if-nez v3, :cond_b

    const/4 v3, 0x1

    :goto_5
    const/4 v5, 0x1

    #calls: Lcom/android/server/ConnectivityService;->setDataOffNotification(ZZ)V
    invoke-static {v4, v3, v5}, Lcom/android/server/ConnectivityService;->access$4600(Lcom/android/server/ConnectivityService;ZZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_2

    :cond_b
    const/4 v3, 0x0

    goto :goto_5
.end method
