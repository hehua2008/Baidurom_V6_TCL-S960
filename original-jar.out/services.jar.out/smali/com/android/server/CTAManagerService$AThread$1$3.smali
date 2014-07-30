.class Lcom/android/server/CTAManagerService$AThread$1$3;
.super Ljava/lang/Object;
.source "CTAManagerService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/CTAManagerService$AThread$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/CTAManagerService$AThread$1;

.field final synthetic val$api:Ljava/lang/String;

.field final synthetic val$uid:I

.field final synthetic val$worker:Lcom/android/server/CTAManagerService$CheckWorker;


# direct methods
.method constructor <init>(Lcom/android/server/CTAManagerService$AThread$1;Ljava/lang/String;ILcom/android/server/CTAManagerService$CheckWorker;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 434
    iput-object p1, p0, Lcom/android/server/CTAManagerService$AThread$1$3;->this$1:Lcom/android/server/CTAManagerService$AThread$1;

    iput-object p2, p0, Lcom/android/server/CTAManagerService$AThread$1$3;->val$api:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/CTAManagerService$AThread$1$3;->val$uid:I

    iput-object p4, p0, Lcom/android/server/CTAManagerService$AThread$1$3;->val$worker:Lcom/android/server/CTAManagerService$CheckWorker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 4
    .parameter "dialog"

    .prologue
    .line 436
    const-string v0, "UNCECK"

    invoke-static {}, Lcom/android/server/CTAManagerService;->access$200()Ljava/util/HashMap;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/server/CTAManagerService$AThread$1$3;->val$api:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/CTAManagerService$AThread$1$3;->val$uid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 437
    iget-object v0, p0, Lcom/android/server/CTAManagerService$AThread$1$3;->val$worker:Lcom/android/server/CTAManagerService$CheckWorker;

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/server/CTAManagerService$AThread$1$3;->val$uid:I

    iget-object v3, p0, Lcom/android/server/CTAManagerService$AThread$1$3;->val$api:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/CTAManagerService$CheckWorker;->doWork(ZILjava/lang/String;)V

    .line 438
    const-string v0, "CTAMANAGERSERVICE"

    const-string v1, "dismiss"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    :cond_0
    return-void
.end method
