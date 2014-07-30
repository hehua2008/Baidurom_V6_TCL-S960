.class Lcom/android/server/CTAManagerService$AThread$1$1;
.super Ljava/lang/Object;
.source "CTAManagerService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

.field final synthetic val$mcheckbox:Landroid/widget/CheckBox;

.field final synthetic val$uid:I

.field final synthetic val$worker:Lcom/android/server/CTAManagerService$CheckWorker;


# direct methods
.method constructor <init>(Lcom/android/server/CTAManagerService$AThread$1;Lcom/android/server/CTAManagerService$CheckWorker;Landroid/widget/CheckBox;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 424
    iput-object p1, p0, Lcom/android/server/CTAManagerService$AThread$1$1;->this$1:Lcom/android/server/CTAManagerService$AThread$1;

    iput-object p2, p0, Lcom/android/server/CTAManagerService$AThread$1$1;->val$worker:Lcom/android/server/CTAManagerService$CheckWorker;

    iput-object p3, p0, Lcom/android/server/CTAManagerService$AThread$1$1;->val$mcheckbox:Landroid/widget/CheckBox;

    iput p4, p0, Lcom/android/server/CTAManagerService$AThread$1$1;->val$uid:I

    iput-object p5, p0, Lcom/android/server/CTAManagerService$AThread$1$1;->val$api:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 427
    iget-object v0, p0, Lcom/android/server/CTAManagerService$AThread$1$1;->val$worker:Lcom/android/server/CTAManagerService$CheckWorker;

    iget-object v1, p0, Lcom/android/server/CTAManagerService$AThread$1$1;->val$mcheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/CTAManagerService$CheckWorker;->setChooseAlways(Z)V

    .line 428
    iget-object v0, p0, Lcom/android/server/CTAManagerService$AThread$1$1;->val$worker:Lcom/android/server/CTAManagerService$CheckWorker;

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/server/CTAManagerService$AThread$1$1;->val$uid:I

    iget-object v3, p0, Lcom/android/server/CTAManagerService$AThread$1$1;->val$api:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/CTAManagerService$CheckWorker;->doWork(ZILjava/lang/String;)V

    .line 429
    const-string v0, "CTAMANAGERSERVICE"

    const-string v1, "no"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    return-void
.end method
