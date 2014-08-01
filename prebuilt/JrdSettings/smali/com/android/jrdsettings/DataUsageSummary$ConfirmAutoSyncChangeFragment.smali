.class public Lcom/android/jrdsettings/DataUsageSummary$ConfirmAutoSyncChangeFragment;
.super Landroid/app/DialogFragment;
.source "DataUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/jrdsettings/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfirmAutoSyncChangeFragment"
.end annotation


# static fields
.field private static final SAVE_ENABLING:Ljava/lang/String; = "enabling"


# instance fields
.field private mEnabling:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2892
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$4600(Lcom/android/jrdsettings/DataUsageSummary$ConfirmAutoSyncChangeFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 2892
    iget-boolean v0, p0, Lcom/android/jrdsettings/DataUsageSummary$ConfirmAutoSyncChangeFragment;->mEnabling:Z

    return v0
.end method

.method public static show(Lcom/android/jrdsettings/DataUsageSummary;Z)V
    .locals 3
    .parameter "parent"
    .parameter "enabling"

    .prologue
    .line 2897
    invoke-virtual {p0}, Landroid/app/Fragment;->isAdded()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2903
    :goto_0
    return-void

    .line 2899
    :cond_0
    new-instance v0, Lcom/android/jrdsettings/DataUsageSummary$ConfirmAutoSyncChangeFragment;

    invoke-direct {v0}, Lcom/android/jrdsettings/DataUsageSummary$ConfirmAutoSyncChangeFragment;-><init>()V

    .line 2900
    .local v0, dialog:Lcom/android/jrdsettings/DataUsageSummary$ConfirmAutoSyncChangeFragment;
    iput-boolean p1, v0, Lcom/android/jrdsettings/DataUsageSummary$ConfirmAutoSyncChangeFragment;->mEnabling:Z

    .line 2901
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/app/Fragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 2902
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "confirmAutoSyncChange"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 2907
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 2908
    .local v1, context:Landroid/content/Context;
    if-eqz p1, :cond_0

    .line 2909
    const-string v2, "enabling"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/jrdsettings/DataUsageSummary$ConfirmAutoSyncChangeFragment;->mEnabling:Z

    .line 2912
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2913
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    iget-boolean v2, p0, Lcom/android/jrdsettings/DataUsageSummary$ConfirmAutoSyncChangeFragment;->mEnabling:Z

    if-nez v2, :cond_1

    .line 2914
    const v2, 0x7f090894

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2915
    const v2, 0x7f090895

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 2921
    :goto_0
    const v2, 0x104000a

    new-instance v3, Lcom/android/jrdsettings/DataUsageSummary$ConfirmAutoSyncChangeFragment$1;

    invoke-direct {v3, p0}, Lcom/android/jrdsettings/DataUsageSummary$ConfirmAutoSyncChangeFragment$1;-><init>(Lcom/android/jrdsettings/DataUsageSummary$ConfirmAutoSyncChangeFragment;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2927
    const/high16 v2, 0x104

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2929
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2

    .line 2917
    :cond_1
    const v2, 0x7f090892

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2918
    const v2, 0x7f090893

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 2934
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2935
    const-string v0, "enabling"

    iget-boolean v1, p0, Lcom/android/jrdsettings/DataUsageSummary$ConfirmAutoSyncChangeFragment;->mEnabling:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2936
    return-void
.end method
