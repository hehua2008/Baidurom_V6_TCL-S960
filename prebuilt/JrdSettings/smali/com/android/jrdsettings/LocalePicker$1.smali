.class Lcom/android/jrdsettings/LocalePicker$1;
.super Ljava/lang/Object;
.source "LocalePicker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/jrdsettings/LocalePicker;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/jrdsettings/LocalePicker;

.field final synthetic val$dialogId:I


# direct methods
.method constructor <init>(Lcom/android/jrdsettings/LocalePicker;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 96
    iput-object p1, p0, Lcom/android/jrdsettings/LocalePicker$1;->this$0:Lcom/android/jrdsettings/LocalePicker;

    iput p2, p0, Lcom/android/jrdsettings/LocalePicker$1;->val$dialogId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/jrdsettings/LocalePicker$1;->this$0:Lcom/android/jrdsettings/LocalePicker;

    iget v1, p0, Lcom/android/jrdsettings/LocalePicker$1;->val$dialogId:I

    invoke-virtual {v0, v1}, Lcom/android/jrdsettings/LocalePicker;->removeDialog(I)V

    .line 99
    iget-object v0, p0, Lcom/android/jrdsettings/LocalePicker$1;->this$0:Lcom/android/jrdsettings/LocalePicker;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 100
    iget-object v0, p0, Lcom/android/jrdsettings/LocalePicker$1;->this$0:Lcom/android/jrdsettings/LocalePicker;

    #getter for: Lcom/android/jrdsettings/LocalePicker;->mTargetLocale:Ljava/util/Locale;
    invoke-static {v0}, Lcom/android/jrdsettings/LocalePicker;->access$000(Lcom/android/jrdsettings/LocalePicker;)Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Lcom/android/jrdsettings/LocalePicker;->updateLocale(Ljava/util/Locale;)V

    .line 101
    return-void
.end method
