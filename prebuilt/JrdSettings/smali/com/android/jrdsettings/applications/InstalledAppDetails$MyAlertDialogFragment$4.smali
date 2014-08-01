.class Lcom/android/jrdsettings/applications/InstalledAppDetails$MyAlertDialogFragment$4;
.super Ljava/lang/Object;
.source "InstalledAppDetails.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/jrdsettings/applications/InstalledAppDetails$MyAlertDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/jrdsettings/applications/InstalledAppDetails$MyAlertDialogFragment;


# direct methods
.method constructor <init>(Lcom/android/jrdsettings/applications/InstalledAppDetails$MyAlertDialogFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1336
    iput-object p1, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails$MyAlertDialogFragment$4;->this$0:Lcom/android/jrdsettings/applications/InstalledAppDetails$MyAlertDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v2, 0x0

    .line 1338
    iget-object v0, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails$MyAlertDialogFragment$4;->this$0:Lcom/android/jrdsettings/applications/InstalledAppDetails$MyAlertDialogFragment;

    invoke-virtual {v0}, Lcom/android/jrdsettings/applications/InstalledAppDetails$MyAlertDialogFragment;->getOwner()Lcom/android/jrdsettings/applications/InstalledAppDetails;

    move-result-object v0

    #getter for: Lcom/android/jrdsettings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/jrdsettings/applications/InstalledAppDetails;->access$900(Lcom/android/jrdsettings/applications/InstalledAppDetails;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1340
    const-string v0, "InstalledAppDetails"

    const-string v1, "cannot clear data "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1341
    iget-object v0, p0, Lcom/android/jrdsettings/applications/InstalledAppDetails$MyAlertDialogFragment$4;->this$0:Lcom/android/jrdsettings/applications/InstalledAppDetails$MyAlertDialogFragment;

    invoke-virtual {v0}, Lcom/android/jrdsettings/applications/InstalledAppDetails$MyAlertDialogFragment;->getOwner()Lcom/android/jrdsettings/applications/InstalledAppDetails;

    move-result-object v0

    #calls: Lcom/android/jrdsettings/applications/InstalledAppDetails;->setIntentAndFinish(ZZ)V
    invoke-static {v0, v2, v2}, Lcom/android/jrdsettings/applications/InstalledAppDetails;->access$800(Lcom/android/jrdsettings/applications/InstalledAppDetails;ZZ)V

    .line 1342
    return-void
.end method
