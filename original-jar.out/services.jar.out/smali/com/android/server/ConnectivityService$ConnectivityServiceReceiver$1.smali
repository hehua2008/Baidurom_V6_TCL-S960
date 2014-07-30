.class Lcom/android/server/ConnectivityService$ConnectivityServiceReceiver$1;
.super Ljava/lang/Object;
.source "ConnectivityService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/ConnectivityService$ConnectivityServiceReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceReceiver;

.field final synthetic val$pre_slot_id:I

.field final synthetic val$slot_id:I


# direct methods
.method constructor <init>(Lcom/android/server/ConnectivityService$ConnectivityServiceReceiver;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 4433
    iput-object p1, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceReceiver$1;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceReceiver;

    iput p2, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceReceiver$1;->val$slot_id:I

    iput p3, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceReceiver$1;->val$pre_slot_id:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 4436
    iget-object v1, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceReceiver$1;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceReceiver;

    iget-object v1, v1, Lcom/android/server/ConnectivityService$ConnectivityServiceReceiver;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/ConnectivityService;->access$1300(Lcom/android/server/ConnectivityService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "gprs_connection_setting"

    iget v3, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceReceiver$1;->val$slot_id:I

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 4437
    iget-object v1, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceReceiver$1;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceReceiver;

    iget-object v1, v1, Lcom/android/server/ConnectivityService$ConnectivityServiceReceiver;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/ConnectivityService;->access$1300(Lcom/android/server/ConnectivityService;)Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceReceiver$1;->val$slot_id:I

    invoke-static {v1, v2}, Landroid/provider/Telephony$SIMInfo;->getIdBySlot(Landroid/content/Context;I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 4438
    .local v0, changeSimId:Ljava/lang/Long;
    iget-object v1, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceReceiver$1;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceReceiver;

    iget-object v1, v1, Lcom/android/server/ConnectivityService$ConnectivityServiceReceiver;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/ConnectivityService;->access$1300(Lcom/android/server/ConnectivityService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "gprs_connection_sim_setting"

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 4440
    iget v1, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceReceiver$1;->val$slot_id:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 4441
    iget-object v1, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceReceiver$1;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceReceiver;

    iget-object v1, v1, Lcom/android/server/ConnectivityService$ConnectivityServiceReceiver;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/ConnectivityService;->access$1300(Lcom/android/server/ConnectivityService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "mobile_data"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 4447
    :goto_0
    iget-object v1, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceReceiver$1;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceReceiver;

    iget-object v1, v1, Lcom/android/server/ConnectivityService$ConnectivityServiceReceiver;->this$0:Lcom/android/server/ConnectivityService;

    iget v2, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceReceiver$1;->val$pre_slot_id:I

    iget v3, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceReceiver$1;->val$slot_id:I

    #calls: Lcom/android/server/ConnectivityService;->handleMobileDataConnectionChange(II)V
    invoke-static {v1, v2, v3}, Lcom/android/server/ConnectivityService;->access$3400(Lcom/android/server/ConnectivityService;II)V

    .line 4448
    return-void

    .line 4444
    :cond_0
    iget-object v1, p0, Lcom/android/server/ConnectivityService$ConnectivityServiceReceiver$1;->this$1:Lcom/android/server/ConnectivityService$ConnectivityServiceReceiver;

    iget-object v1, v1, Lcom/android/server/ConnectivityService$ConnectivityServiceReceiver;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/ConnectivityService;->access$1300(Lcom/android/server/ConnectivityService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "mobile_data"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method
