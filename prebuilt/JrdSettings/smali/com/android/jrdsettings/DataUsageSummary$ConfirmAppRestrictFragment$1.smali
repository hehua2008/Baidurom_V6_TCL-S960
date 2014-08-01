.class Lcom/android/jrdsettings/DataUsageSummary$ConfirmAppRestrictFragment$1;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/jrdsettings/DataUsageSummary$ConfirmAppRestrictFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/jrdsettings/DataUsageSummary$ConfirmAppRestrictFragment;


# direct methods
.method constructor <init>(Lcom/android/jrdsettings/DataUsageSummary$ConfirmAppRestrictFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 2874
    iput-object p1, p0, Lcom/android/jrdsettings/DataUsageSummary$ConfirmAppRestrictFragment$1;->this$0:Lcom/android/jrdsettings/DataUsageSummary$ConfirmAppRestrictFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 2877
    iget-object v1, p0, Lcom/android/jrdsettings/DataUsageSummary$ConfirmAppRestrictFragment$1;->this$0:Lcom/android/jrdsettings/DataUsageSummary$ConfirmAppRestrictFragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/jrdsettings/DataUsageSummary;

    .line 2878
    .local v0, target:Lcom/android/jrdsettings/DataUsageSummary;
    if-eqz v0, :cond_0

    .line 2879
    const/4 v1, 0x1

    #calls: Lcom/android/jrdsettings/DataUsageSummary;->setAppRestrictBackground(Z)V
    invoke-static {v0, v1}, Lcom/android/jrdsettings/DataUsageSummary;->access$2200(Lcom/android/jrdsettings/DataUsageSummary;Z)V

    .line 2881
    :cond_0
    return-void
.end method
