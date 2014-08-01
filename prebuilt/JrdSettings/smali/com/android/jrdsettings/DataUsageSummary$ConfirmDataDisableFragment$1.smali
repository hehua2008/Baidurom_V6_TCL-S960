.class Lcom/android/jrdsettings/DataUsageSummary$ConfirmDataDisableFragment$1;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/jrdsettings/DataUsageSummary$ConfirmDataDisableFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/jrdsettings/DataUsageSummary$ConfirmDataDisableFragment;


# direct methods
.method constructor <init>(Lcom/android/jrdsettings/DataUsageSummary$ConfirmDataDisableFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 2689
    iput-object p1, p0, Lcom/android/jrdsettings/DataUsageSummary$ConfirmDataDisableFragment$1;->this$0:Lcom/android/jrdsettings/DataUsageSummary$ConfirmDataDisableFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v3, 0x0

    .line 2692
    iget-object v2, p0, Lcom/android/jrdsettings/DataUsageSummary$ConfirmDataDisableFragment$1;->this$0:Lcom/android/jrdsettings/DataUsageSummary$ConfirmDataDisableFragment;

    invoke-virtual {v2}, Landroid/app/Fragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/android/jrdsettings/DataUsageSummary;

    .line 2694
    .local v1, target:Lcom/android/jrdsettings/DataUsageSummary;
    iget-object v2, p0, Lcom/android/jrdsettings/DataUsageSummary$ConfirmDataDisableFragment$1;->this$0:Lcom/android/jrdsettings/DataUsageSummary$ConfirmDataDisableFragment;

    invoke-virtual {v2}, Landroid/app/Fragment;->getTargetRequestCode()I

    move-result v0

    .line 2695
    .local v0, slotId:I
    if-eqz v1, :cond_0

    .line 2697
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 2698
    #calls: Lcom/android/jrdsettings/DataUsageSummary;->setMobileDataEnabled(IZ)V
    invoke-static {v1, v0, v3}, Lcom/android/jrdsettings/DataUsageSummary;->access$4000(Lcom/android/jrdsettings/DataUsageSummary;IZ)V

    .line 2704
    :cond_0
    :goto_0
    return-void

    .line 2700
    :cond_1
    #calls: Lcom/android/jrdsettings/DataUsageSummary;->setMobileDataEnabled(Z)V
    invoke-static {v1, v3}, Lcom/android/jrdsettings/DataUsageSummary;->access$4100(Lcom/android/jrdsettings/DataUsageSummary;Z)V

    goto :goto_0
.end method
