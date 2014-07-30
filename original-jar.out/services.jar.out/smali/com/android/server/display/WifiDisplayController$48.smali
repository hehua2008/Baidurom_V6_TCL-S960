.class Lcom/android/server/display/WifiDisplayController$48;
.super Ljava/lang/Object;
.source "WifiDisplayController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/WifiDisplayController;->promptDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/WifiDisplayController;


# direct methods
.method constructor <init>(Lcom/android/server/display/WifiDisplayController;)V
    .locals 0
    .parameter

    .prologue
    .line 3734
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController$48;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialogInterface"
    .parameter "which"

    .prologue
    .line 3737
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$48;->this$0:Lcom/android/server/display/WifiDisplayController;

    #getter for: Lcom/android/server/display/WifiDisplayController;->dialog_displayError:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->access$9900(Lcom/android/server/display/WifiDisplayController;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 3738
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$48;->this$0:Lcom/android/server/display/WifiDisplayController;

    const/4 v1, 0x0

    #setter for: Lcom/android/server/display/WifiDisplayController;->dialog_displayError:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/android/server/display/WifiDisplayController;->access$9902(Lcom/android/server/display/WifiDisplayController;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 3739
    return-void
.end method
