.class Lcom/android/internal/telephony/gsm/SIMRecords$SIMBroadCastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SIMRecords.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/SIMRecords;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SIMBroadCastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/gsm/SIMRecords;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/gsm/SIMRecords;)V
    .locals 0
    .parameter

    .prologue
    .line 2989
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/SIMRecords$SIMBroadCastReceiver;->this$0:Lcom/android/internal/telephony/gsm/SIMRecords;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/gsm/SIMRecords;Lcom/android/internal/telephony/gsm/SIMRecords$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2989
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/SIMRecords$SIMBroadCastReceiver;-><init>(Lcom/android/internal/telephony/gsm/SIMRecords;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .parameter "content"
    .parameter "intent"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 2991
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2992
    .local v0, action:Ljava/lang/String;
    const-string v5, "com.mediatek.dm.LAWMO_WIPE"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2993
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords$SIMBroadCastReceiver;->this$0:Lcom/android/internal/telephony/gsm/SIMRecords;

    #calls: Lcom/android/internal/telephony/gsm/SIMRecords;->wipeAllSIMContacts()V
    invoke-static {v5}, Lcom/android/internal/telephony/gsm/SIMRecords;->access$800(Lcom/android/internal/telephony/gsm/SIMRecords;)V

    .line 3050
    :cond_0
    :goto_0
    return-void

    .line 2995
    :cond_1
    const-string v5, "action_pin_dismiss"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2996
    const-string/jumbo v5, "simslot"

    invoke-virtual {p2, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 2997
    .local v2, simId:I
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords$SIMBroadCastReceiver;->this$0:Lcom/android/internal/telephony/gsm/SIMRecords;

    #getter for: Lcom/android/internal/telephony/gsm/SIMRecords;->mSimId:I
    invoke-static {v5}, Lcom/android/internal/telephony/gsm/SIMRecords;->access$900(Lcom/android/internal/telephony/gsm/SIMRecords;)I

    move-result v5

    if-ne v2, v5, :cond_0

    .line 2998
    const-string v5, "GSM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SIMRecords receive pin dismiss intent for slot "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2999
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords$SIMBroadCastReceiver;->this$0:Lcom/android/internal/telephony/gsm/SIMRecords;

    invoke-virtual {v5, v9}, Lcom/android/internal/telephony/gsm/SIMRecords;->setDefaultNameForNewSIM(Ljava/lang/String;)V

    goto :goto_0

    .line 3001
    .end local v2           #simId:I
    :cond_2
    const-string v5, "action_melock_dismiss"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 3002
    const-string/jumbo v5, "simslot"

    invoke-virtual {p2, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 3003
    .restart local v2       #simId:I
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords$SIMBroadCastReceiver;->this$0:Lcom/android/internal/telephony/gsm/SIMRecords;

    #getter for: Lcom/android/internal/telephony/gsm/SIMRecords;->mSimId:I
    invoke-static {v5}, Lcom/android/internal/telephony/gsm/SIMRecords;->access$900(Lcom/android/internal/telephony/gsm/SIMRecords;)I

    move-result v5

    if-ne v2, v5, :cond_0

    .line 3004
    const-string v5, "GSM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SIMRecords receive SIM ME lock dismiss intent for slot "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3005
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords$SIMBroadCastReceiver;->this$0:Lcom/android/internal/telephony/gsm/SIMRecords;

    invoke-virtual {v5, v9}, Lcom/android/internal/telephony/gsm/SIMRecords;->setDefaultNameForNewSIM(Ljava/lang/String;)V

    goto :goto_0

    .line 3007
    .end local v2           #simId:I
    :cond_3
    const-string v5, "android.intent.action.ACTION_SHUTDOWN_IPO"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 3008
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords$SIMBroadCastReceiver;->this$0:Lcom/android/internal/telephony/gsm/SIMRecords;

    #calls: Lcom/android/internal/telephony/gsm/SIMRecords;->processShutdownIPO()V
    invoke-static {v5}, Lcom/android/internal/telephony/gsm/SIMRecords;->access$1000(Lcom/android/internal/telephony/gsm/SIMRecords;)V

    .line 3010
    const-string v5, "gsm.sim.operator.default-name"

    invoke-static {v5, v9}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3012
    const-string v5, "gsm.sim.operator.default-name.2"

    invoke-static {v5, v9}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3015
    const-string v5, "GSM"

    const-string/jumbo v6, "wipeAllSIMContacts ACTION_SHUTDOWN_IPO: reset mCspPlmnEnabled"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3016
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords$SIMBroadCastReceiver;->this$0:Lcom/android/internal/telephony/gsm/SIMRecords;

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/android/internal/telephony/gsm/SIMRecords;->mCspPlmnEnabled:Z

    .line 3019
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords$SIMBroadCastReceiver;->this$0:Lcom/android/internal/telephony/gsm/SIMRecords;

    #getter for: Lcom/android/internal/telephony/gsm/SIMRecords;->mTelephonyExt:Lcom/mediatek/common/telephony/ITelephonyExt;
    invoke-static {v5}, Lcom/android/internal/telephony/gsm/SIMRecords;->access$1100(Lcom/android/internal/telephony/gsm/SIMRecords;)Lcom/mediatek/common/telephony/ITelephonyExt;

    move-result-object v5

    invoke-interface {v5}, Lcom/mediatek/common/telephony/ITelephonyExt;->isSetLanguageBySIM()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 3020
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords$SIMBroadCastReceiver;->this$0:Lcom/android/internal/telephony/gsm/SIMRecords;

    #setter for: Lcom/android/internal/telephony/gsm/SIMRecords;->mEfRatLoaded:Z
    invoke-static {v5, v8}, Lcom/android/internal/telephony/gsm/SIMRecords;->access$1202(Lcom/android/internal/telephony/gsm/SIMRecords;Z)Z

    .line 3021
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords$SIMBroadCastReceiver;->this$0:Lcom/android/internal/telephony/gsm/SIMRecords;

    #setter for: Lcom/android/internal/telephony/gsm/SIMRecords;->mEfRat:[B
    invoke-static {v5, v9}, Lcom/android/internal/telephony/gsm/SIMRecords;->access$1302(Lcom/android/internal/telephony/gsm/SIMRecords;[B)[B

    .line 3024
    :cond_4
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords$SIMBroadCastReceiver;->this$0:Lcom/android/internal/telephony/gsm/SIMRecords;

    #getter for: Lcom/android/internal/telephony/gsm/SIMRecords;->adnCache:Lcom/android/internal/telephony/AdnRecordCache;
    invoke-static {v5}, Lcom/android/internal/telephony/gsm/SIMRecords;->access$1400(Lcom/android/internal/telephony/gsm/SIMRecords;)Lcom/android/internal/telephony/AdnRecordCache;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/AdnRecordCache;->reset()V

    .line 3025
    const-string v5, "GSM"

    const-string/jumbo v6, "wipeAllSIMContacts ACTION_SHUTDOWN_IPO"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3026
    :cond_5
    const-string v5, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 3027
    const-string v5, "GSM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SIMBroadCastReceiver action = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3028
    const-string v5, "gsm.sim.locale.waiting"

    const-string v6, "false"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3030
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords$SIMBroadCastReceiver;->this$0:Lcom/android/internal/telephony/gsm/SIMRecords;

    #calls: Lcom/android/internal/telephony/gsm/SIMRecords;->setDefaultNameByLocale()V
    invoke-static {v5}, Lcom/android/internal/telephony/gsm/SIMRecords;->access$1500(Lcom/android/internal/telephony/gsm/SIMRecords;)V

    goto/16 :goto_0

    .line 3031
    :cond_6
    const-string v5, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 3032
    const-string/jumbo v5, "reason"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3033
    .local v1, reasonExtra:Ljava/lang/String;
    const-string/jumbo v5, "simId"

    invoke-virtual {p2, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 3034
    .local v3, slot:I
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords$SIMBroadCastReceiver;->this$0:Lcom/android/internal/telephony/gsm/SIMRecords;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SIM_STATE_CHANGED: slot = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",reason = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 3035
    const-string v5, "PUK"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 3036
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords$SIMBroadCastReceiver;->this$0:Lcom/android/internal/telephony/gsm/SIMRecords;

    #getter for: Lcom/android/internal/telephony/gsm/SIMRecords;->mSimId:I
    invoke-static {v5}, Lcom/android/internal/telephony/gsm/SIMRecords;->access$900(Lcom/android/internal/telephony/gsm/SIMRecords;)I

    move-result v5

    if-ne v3, v5, :cond_0

    .line 3037
    const/4 v4, 0x0

    .line 3038
    .local v4, strPuk1Count:Ljava/lang/String;
    sget-object v5, Lcom/android/internal/telephony/gsm/SIMRecords;->SIMRECORD_PROPERTY_RIL_PUK1:[Ljava/lang/String;

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/SIMRecords$SIMBroadCastReceiver;->this$0:Lcom/android/internal/telephony/gsm/SIMRecords;

    #getter for: Lcom/android/internal/telephony/gsm/SIMRecords;->mSimId:I
    invoke-static {v6}, Lcom/android/internal/telephony/gsm/SIMRecords;->access$900(Lcom/android/internal/telephony/gsm/SIMRecords;)I

    move-result v6

    aget-object v5, v5, v6

    const-string v6, "0"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3039
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords$SIMBroadCastReceiver;->this$0:Lcom/android/internal/telephony/gsm/SIMRecords;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SIM_STATE_CHANGED: strPuk1Count = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/gsm/SIMRecords;->log(Ljava/lang/String;)V

    .line 3040
    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 3041
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords$SIMBroadCastReceiver;->this$0:Lcom/android/internal/telephony/gsm/SIMRecords;

    invoke-virtual {v5, v8}, Lcom/android/internal/telephony/gsm/SIMRecords;->setPhbReady(Z)V

    .line 3044
    :cond_7
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords$SIMBroadCastReceiver;->this$0:Lcom/android/internal/telephony/gsm/SIMRecords;

    const-string v6, ""

    #setter for: Lcom/android/internal/telephony/gsm/SIMRecords;->msisdn:Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/android/internal/telephony/gsm/SIMRecords;->access$1602(Lcom/android/internal/telephony/gsm/SIMRecords;Ljava/lang/String;)Ljava/lang/String;

    .line 3045
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/SIMRecords$SIMBroadCastReceiver;->this$0:Lcom/android/internal/telephony/gsm/SIMRecords;

    #calls: Lcom/android/internal/telephony/gsm/SIMRecords;->setNumberToSimInfo()V
    invoke-static {v5}, Lcom/android/internal/telephony/gsm/SIMRecords;->access$1700(Lcom/android/internal/telephony/gsm/SIMRecords;)V

    goto/16 :goto_0
.end method
