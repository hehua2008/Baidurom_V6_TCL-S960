.class Lcom/android/jrdsettings/DataUsageSummary$ConfirmAutoSyncChangeFragment$1;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/jrdsettings/DataUsageSummary$ConfirmAutoSyncChangeFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/jrdsettings/DataUsageSummary$ConfirmAutoSyncChangeFragment;


# direct methods
.method constructor <init>(Lcom/android/jrdsettings/DataUsageSummary$ConfirmAutoSyncChangeFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 2921
    iput-object p1, p0, Lcom/android/jrdsettings/DataUsageSummary$ConfirmAutoSyncChangeFragment$1;->this$0:Lcom/android/jrdsettings/DataUsageSummary$ConfirmAutoSyncChangeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 2924
    iget-object v0, p0, Lcom/android/jrdsettings/DataUsageSummary$ConfirmAutoSyncChangeFragment$1;->this$0:Lcom/android/jrdsettings/DataUsageSummary$ConfirmAutoSyncChangeFragment;

    #getter for: Lcom/android/jrdsettings/DataUsageSummary$ConfirmAutoSyncChangeFragment;->mEnabling:Z
    invoke-static {v0}, Lcom/android/jrdsettings/DataUsageSummary$ConfirmAutoSyncChangeFragment;->access$4600(Lcom/android/jrdsettings/DataUsageSummary$ConfirmAutoSyncChangeFragment;)Z

    move-result v0

    invoke-static {v0}, Landroid/content/ContentResolver;->setMasterSyncAutomatically(Z)V

    .line 2925
    return-void
.end method