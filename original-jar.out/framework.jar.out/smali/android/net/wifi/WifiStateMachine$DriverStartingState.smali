.class Landroid/net/wifi/WifiStateMachine$DriverStartingState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DriverStartingState"
.end annotation


# instance fields
.field private mTries:I

.field final synthetic this$0:Landroid/net/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiStateMachine;)V
    .locals 0
    .parameter

    .prologue
    .line 3361
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine$DriverStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 5

    .prologue
    .line 3365
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$DriverStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/internal/util/State;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Landroid/net/wifi/WifiStateMachine;->access$800(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 3366
    const v0, 0xc365

    invoke-virtual {p0}, Lcom/android/internal/util/State;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 3368
    const/4 v0, 0x1

    iput v0, p0, Landroid/net/wifi/WifiStateMachine$DriverStartingState;->mTries:I

    .line 3370
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$DriverStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$DriverStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v2, 0x20013

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$DriverStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v3}, Landroid/net/wifi/WifiStateMachine;->access$9804(Landroid/net/wifi/WifiStateMachine;)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/internal/util/StateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/StateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    .line 3372
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 6
    .parameter "message"

    .prologue
    const/4 v1, 0x0

    .line 3375
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$DriverStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/internal/util/State;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/Message;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Landroid/net/wifi/WifiStateMachine;->access$800(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 3376
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 3426
    :goto_0
    return v1

    .line 3378
    :sswitch_0
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$DriverStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->handleSupplicantStateChange(Landroid/os/Message;)Landroid/net/wifi/SupplicantState;
    invoke-static {v1, p1}, Landroid/net/wifi/WifiStateMachine;->access$9900(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)Landroid/net/wifi/SupplicantState;

    move-result-object v0

    .line 3383
    .local v0, state:Landroid/net/wifi/SupplicantState;
    invoke-static {v0}, Landroid/net/wifi/SupplicantState;->isDriverActive(Landroid/net/wifi/SupplicantState;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3384
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$DriverStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$DriverStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mDriverStartedState:Lcom/android/internal/util/State;
    invoke-static {v2}, Landroid/net/wifi/WifiStateMachine;->access$6900(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v2

    #calls: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Landroid/net/wifi/WifiStateMachine;->access$10000(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    .line 3426
    .end local v0           #state:Landroid/net/wifi/SupplicantState;
    :cond_0
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    .line 3388
    :sswitch_1
    iget v2, p1, Landroid/os/Message;->arg1:I

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$DriverStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mDriverStartToken:I
    invoke-static {v3}, Landroid/net/wifi/WifiStateMachine;->access$9800(Landroid/net/wifi/WifiStateMachine;)I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 3389
    iget v2, p0, Landroid/net/wifi/WifiStateMachine$DriverStartingState;->mTries:I

    const/4 v3, 0x2

    if-lt v2, v3, :cond_1

    .line 3390
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$DriverStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to start driver after "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/net/wifi/WifiStateMachine$DriverStartingState;->mTries:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v1, v2}, Landroid/net/wifi/WifiStateMachine;->access$700(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 3391
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$DriverStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$DriverStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mDriverStoppedState:Lcom/android/internal/util/State;
    invoke-static {v2}, Landroid/net/wifi/WifiStateMachine;->access$10100(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v2

    #calls: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Landroid/net/wifi/WifiStateMachine;->access$10200(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 3393
    :cond_1
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$DriverStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string v3, "Driver start failed, retrying"

    #calls: Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v2, v3}, Landroid/net/wifi/WifiStateMachine;->access$700(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 3394
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$DriverStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v2}, Landroid/net/wifi/WifiStateMachine;->access$3200(Landroid/net/wifi/WifiStateMachine;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 3395
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$DriverStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v2}, Landroid/net/wifi/WifiStateMachine;->access$2200(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiNative;->startDriver()Z

    .line 3396
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$DriverStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v2}, Landroid/net/wifi/WifiStateMachine;->access$3200(Landroid/net/wifi/WifiStateMachine;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 3398
    iget v2, p0, Landroid/net/wifi/WifiStateMachine$DriverStartingState;->mTries:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/net/wifi/WifiStateMachine$DriverStartingState;->mTries:I

    .line 3400
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$DriverStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$DriverStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v4, 0x20013

    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$DriverStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v5}, Landroid/net/wifi/WifiStateMachine;->access$9804(Landroid/net/wifi/WifiStateMachine;)I

    move-result v5

    invoke-virtual {v3, v4, v5, v1}, Lcom/android/internal/util/StateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v3, 0x2710

    invoke-virtual {v2, v1, v3, v4}, Lcom/android/internal/util/StateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    goto :goto_1

    .line 3421
    :sswitch_2
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$DriverStartingState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v1, p1}, Landroid/net/wifi/WifiStateMachine;->access$10300(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V

    goto :goto_1

    .line 3376
    :sswitch_data_0
    .sparse-switch
        0x2000d -> :sswitch_2
        0x2000e -> :sswitch_2
        0x20013 -> :sswitch_1
        0x20047 -> :sswitch_2
        0x20049 -> :sswitch_2
        0x2004a -> :sswitch_2
        0x2004b -> :sswitch_2
        0x2004c -> :sswitch_2
        0x20050 -> :sswitch_2
        0x20054 -> :sswitch_2
        0x20055 -> :sswitch_2
        0x2005a -> :sswitch_2
        0x24003 -> :sswitch_2
        0x24004 -> :sswitch_2
        0x24006 -> :sswitch_0
        0x24007 -> :sswitch_2
        0x2400a -> :sswitch_2
    .end sparse-switch
.end method
