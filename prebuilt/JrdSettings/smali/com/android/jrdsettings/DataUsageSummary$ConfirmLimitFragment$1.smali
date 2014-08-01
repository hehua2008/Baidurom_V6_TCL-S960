.class Lcom/android/jrdsettings/DataUsageSummary$ConfirmLimitFragment$1;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/jrdsettings/DataUsageSummary$ConfirmLimitFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/jrdsettings/DataUsageSummary$ConfirmLimitFragment;

.field final synthetic val$limitBytes:J


# direct methods
.method constructor <init>(Lcom/android/jrdsettings/DataUsageSummary$ConfirmLimitFragment;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2453
    iput-object p1, p0, Lcom/android/jrdsettings/DataUsageSummary$ConfirmLimitFragment$1;->this$0:Lcom/android/jrdsettings/DataUsageSummary$ConfirmLimitFragment;

    iput-wide p2, p0, Lcom/android/jrdsettings/DataUsageSummary$ConfirmLimitFragment$1;->val$limitBytes:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 2456
    iget-object v1, p0, Lcom/android/jrdsettings/DataUsageSummary$ConfirmLimitFragment$1;->this$0:Lcom/android/jrdsettings/DataUsageSummary$ConfirmLimitFragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/jrdsettings/DataUsageSummary;

    .line 2457
    .local v0, target:Lcom/android/jrdsettings/DataUsageSummary;
    if-eqz v0, :cond_0

    .line 2460
    const/4 v1, 0x1

    #setter for: Lcom/android/jrdsettings/DataUsageSummary;->mIsLimitChangeToChecked:Z
    invoke-static {v0, v1}, Lcom/android/jrdsettings/DataUsageSummary;->access$3902(Lcom/android/jrdsettings/DataUsageSummary;Z)Z

    .line 2463
    iget-wide v1, p0, Lcom/android/jrdsettings/DataUsageSummary$ConfirmLimitFragment$1;->val$limitBytes:J

    #calls: Lcom/android/jrdsettings/DataUsageSummary;->setPolicyLimitBytes(J)V
    invoke-static {v0, v1, v2}, Lcom/android/jrdsettings/DataUsageSummary;->access$2000(Lcom/android/jrdsettings/DataUsageSummary;J)V

    .line 2465
    :cond_0
    return-void
.end method
