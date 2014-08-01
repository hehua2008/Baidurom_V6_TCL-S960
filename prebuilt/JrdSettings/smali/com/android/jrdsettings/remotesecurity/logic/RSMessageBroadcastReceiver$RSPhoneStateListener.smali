.class Lcom/android/jrdsettings/remotesecurity/logic/RSMessageBroadcastReceiver$RSPhoneStateListener;
.super Landroid/telephony/PhoneStateListener;
.source "RSMessageBroadcastReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/jrdsettings/remotesecurity/logic/RSMessageBroadcastReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RSPhoneStateListener"
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private simId:I

.field final synthetic this$0:Lcom/android/jrdsettings/remotesecurity/logic/RSMessageBroadcastReceiver;


# direct methods
.method private constructor <init>(Lcom/android/jrdsettings/remotesecurity/logic/RSMessageBroadcastReceiver;Landroid/content/Context;I)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter "simId"

    .prologue
    .line 642
    iput-object p1, p0, Lcom/android/jrdsettings/remotesecurity/logic/RSMessageBroadcastReceiver$RSPhoneStateListener;->this$0:Lcom/android/jrdsettings/remotesecurity/logic/RSMessageBroadcastReceiver;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    .line 643
    iput p3, p0, Lcom/android/jrdsettings/remotesecurity/logic/RSMessageBroadcastReceiver$RSPhoneStateListener;->simId:I

    .line 644
    iput-object p2, p0, Lcom/android/jrdsettings/remotesecurity/logic/RSMessageBroadcastReceiver$RSPhoneStateListener;->context:Landroid/content/Context;

    .line 645
    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 9
    .parameter "state"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 648
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    .line 649
    .local v3, serviceState:I
    const-string v4, "RSMessageBroadcastReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "serviceState="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/jrdsettings/remotesecurity/util/LogX;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 650
    new-instance v0, Lcom/android/jrdsettings/remotesecurity/logic/RSDBHelper;

    iget-object v4, p0, Lcom/android/jrdsettings/remotesecurity/logic/RSMessageBroadcastReceiver$RSPhoneStateListener;->context:Landroid/content/Context;

    invoke-direct {v0, v4}, Lcom/android/jrdsettings/remotesecurity/logic/RSDBHelper;-><init>(Landroid/content/Context;)V

    .line 651
    .local v0, dbRsdbHelper:Lcom/android/jrdsettings/remotesecurity/logic/RSDBHelper;
    const-string v4, "rs_state"

    invoke-virtual {v0, v4}, Lcom/android/jrdsettings/remotesecurity/logic/RSDBHelper;->getIntValue(Ljava/lang/String;)I

    move-result v1

    .line 652
    .local v1, rs_state:I
    const-string v4, "RSMessageBroadcastReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "rs_state ==== "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/jrdsettings/remotesecurity/util/LogX;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 653
    const-string v4, "sec_number"

    invoke-virtual {v0, v4}, Lcom/android/jrdsettings/remotesecurity/logic/RSDBHelper;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 654
    .local v2, sec_number:Ljava/lang/String;
    const-string v4, "RSMessageBroadcastReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sec_number ==== "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/jrdsettings/remotesecurity/util/LogX;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    if-eqz v1, :cond_0

    invoke-static {v2}, Lcom/android/jrdsettings/remotesecurity/util/CommonUtilities;->isValidString(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 672
    :cond_0
    :goto_0
    return-void

    .line 659
    :cond_1
    if-nez v3, :cond_0

    .line 660
    iget-object v4, p0, Lcom/android/jrdsettings/remotesecurity/logic/RSMessageBroadcastReceiver$RSPhoneStateListener;->this$0:Lcom/android/jrdsettings/remotesecurity/logic/RSMessageBroadcastReceiver;

    iget-object v5, p0, Lcom/android/jrdsettings/remotesecurity/logic/RSMessageBroadcastReceiver$RSPhoneStateListener;->context:Landroid/content/Context;

    iget v6, p0, Lcom/android/jrdsettings/remotesecurity/logic/RSMessageBroadcastReceiver$RSPhoneStateListener;->simId:I

    #calls: Lcom/android/jrdsettings/remotesecurity/logic/RSMessageBroadcastReceiver;->isNewSIM(Landroid/content/Context;I)Z
    invoke-static {v4, v5, v6}, Lcom/android/jrdsettings/remotesecurity/logic/RSMessageBroadcastReceiver;->access$200(Lcom/android/jrdsettings/remotesecurity/logic/RSMessageBroadcastReceiver;Landroid/content/Context;I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 662
    iget-object v4, p0, Lcom/android/jrdsettings/remotesecurity/logic/RSMessageBroadcastReceiver$RSPhoneStateListener;->this$0:Lcom/android/jrdsettings/remotesecurity/logic/RSMessageBroadcastReceiver;

    iget-object v5, p0, Lcom/android/jrdsettings/remotesecurity/logic/RSMessageBroadcastReceiver$RSPhoneStateListener;->context:Landroid/content/Context;

    iget v6, p0, Lcom/android/jrdsettings/remotesecurity/logic/RSMessageBroadcastReceiver$RSPhoneStateListener;->simId:I

    #calls: Lcom/android/jrdsettings/remotesecurity/logic/RSMessageBroadcastReceiver;->doSendSIMInfo(Landroid/content/Context;I)V
    invoke-static {v4, v5, v6}, Lcom/android/jrdsettings/remotesecurity/logic/RSMessageBroadcastReceiver;->access$300(Lcom/android/jrdsettings/remotesecurity/logic/RSMessageBroadcastReceiver;Landroid/content/Context;I)V

    goto :goto_0

    .line 664
    :cond_2
    iget v4, p0, Lcom/android/jrdsettings/remotesecurity/logic/RSMessageBroadcastReceiver$RSPhoneStateListener;->simId:I

    if-nez v4, :cond_3

    .line 665
    iget-object v4, p0, Lcom/android/jrdsettings/remotesecurity/logic/RSMessageBroadcastReceiver$RSPhoneStateListener;->this$0:Lcom/android/jrdsettings/remotesecurity/logic/RSMessageBroadcastReceiver;

    #getter for: Lcom/android/jrdsettings/remotesecurity/logic/RSMessageBroadcastReceiver;->mTelephonyManagerEx:Lcom/mediatek/telephony/TelephonyManagerEx;
    invoke-static {v4}, Lcom/android/jrdsettings/remotesecurity/logic/RSMessageBroadcastReceiver;->access$500(Lcom/android/jrdsettings/remotesecurity/logic/RSMessageBroadcastReceiver;)Lcom/mediatek/telephony/TelephonyManagerEx;

    move-result-object v4

    iget-object v5, p0, Lcom/android/jrdsettings/remotesecurity/logic/RSMessageBroadcastReceiver$RSPhoneStateListener;->this$0:Lcom/android/jrdsettings/remotesecurity/logic/RSMessageBroadcastReceiver;

    #getter for: Lcom/android/jrdsettings/remotesecurity/logic/RSMessageBroadcastReceiver;->mRSPhoneStateListener_SIM_1:Lcom/android/jrdsettings/remotesecurity/logic/RSMessageBroadcastReceiver$RSPhoneStateListener;
    invoke-static {v5}, Lcom/android/jrdsettings/remotesecurity/logic/RSMessageBroadcastReceiver;->access$400(Lcom/android/jrdsettings/remotesecurity/logic/RSMessageBroadcastReceiver;)Lcom/android/jrdsettings/remotesecurity/logic/RSMessageBroadcastReceiver$RSPhoneStateListener;

    move-result-object v5

    invoke-virtual {v4, v5, v7, v7}, Lcom/mediatek/telephony/TelephonyManagerEx;->listen(Landroid/telephony/PhoneStateListener;II)V

    .line 667
    :cond_3
    iget v4, p0, Lcom/android/jrdsettings/remotesecurity/logic/RSMessageBroadcastReceiver$RSPhoneStateListener;->simId:I

    if-ne v4, v8, :cond_0

    .line 668
    iget-object v4, p0, Lcom/android/jrdsettings/remotesecurity/logic/RSMessageBroadcastReceiver$RSPhoneStateListener;->this$0:Lcom/android/jrdsettings/remotesecurity/logic/RSMessageBroadcastReceiver;

    #getter for: Lcom/android/jrdsettings/remotesecurity/logic/RSMessageBroadcastReceiver;->mTelephonyManagerEx:Lcom/mediatek/telephony/TelephonyManagerEx;
    invoke-static {v4}, Lcom/android/jrdsettings/remotesecurity/logic/RSMessageBroadcastReceiver;->access$500(Lcom/android/jrdsettings/remotesecurity/logic/RSMessageBroadcastReceiver;)Lcom/mediatek/telephony/TelephonyManagerEx;

    move-result-object v4

    iget-object v5, p0, Lcom/android/jrdsettings/remotesecurity/logic/RSMessageBroadcastReceiver$RSPhoneStateListener;->this$0:Lcom/android/jrdsettings/remotesecurity/logic/RSMessageBroadcastReceiver;

    #getter for: Lcom/android/jrdsettings/remotesecurity/logic/RSMessageBroadcastReceiver;->mRSPhoneStateListener_SIM_2:Lcom/android/jrdsettings/remotesecurity/logic/RSMessageBroadcastReceiver$RSPhoneStateListener;
    invoke-static {v5}, Lcom/android/jrdsettings/remotesecurity/logic/RSMessageBroadcastReceiver;->access$600(Lcom/android/jrdsettings/remotesecurity/logic/RSMessageBroadcastReceiver;)Lcom/android/jrdsettings/remotesecurity/logic/RSMessageBroadcastReceiver$RSPhoneStateListener;

    move-result-object v5

    invoke-virtual {v4, v5, v7, v8}, Lcom/mediatek/telephony/TelephonyManagerEx;->listen(Landroid/telephony/PhoneStateListener;II)V

    goto :goto_0
.end method
