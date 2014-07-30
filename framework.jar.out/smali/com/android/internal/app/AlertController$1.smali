.class Lcom/android/internal/app/AlertController$1;
.super Ljava/lang/Object;
.source "AlertController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/AlertController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/AlertController;


# direct methods
.method constructor <init>(Lcom/android/internal/app/AlertController;)V
    .locals 0
    .parameter

    .prologue
    .line 132
    iput-object p1, p0, Lcom/android/internal/app/AlertController$1;->this$0:Lcom/android/internal/app/AlertController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 134
    const/4 v0, 0x0

    .line 135
    .local v0, m:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/app/AlertController$1;->this$0:Lcom/android/internal/app/AlertController;

    #getter for: Lcom/android/internal/app/AlertController;->mButtonPositive:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/internal/app/AlertController;->access$000(Lcom/android/internal/app/AlertController;)Landroid/widget/Button;

    move-result-object v1

    if-ne p1, v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/app/AlertController$1;->this$0:Lcom/android/internal/app/AlertController;

    #getter for: Lcom/android/internal/app/AlertController;->mButtonPositiveMessage:Landroid/os/Message;
    invoke-static {v1}, Lcom/android/internal/app/AlertController;->access$100(Lcom/android/internal/app/AlertController;)Landroid/os/Message;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 136
    iget-object v1, p0, Lcom/android/internal/app/AlertController$1;->this$0:Lcom/android/internal/app/AlertController;

    #getter for: Lcom/android/internal/app/AlertController;->mButtonPositiveMessage:Landroid/os/Message;
    invoke-static {v1}, Lcom/android/internal/app/AlertController;->access$100(Lcom/android/internal/app/AlertController;)Landroid/os/Message;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    .line 142
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 143
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 151
    :cond_1
    iget-object v1, p0, Lcom/android/internal/app/AlertController$1;->this$0:Lcom/android/internal/app/AlertController;

    #getter for: Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/internal/app/AlertController;->access$400(Lcom/android/internal/app/AlertController;)Landroid/widget/Button;

    move-result-object v1

    if-ne p1, v1, :cond_4

    iget-object v1, p0, Lcom/android/internal/app/AlertController$1;->this$0:Lcom/android/internal/app/AlertController;

    #getter for: Lcom/android/internal/app/AlertController;->mButtonNeutralMessage:Landroid/os/Message;
    invoke-static {v1}, Lcom/android/internal/app/AlertController;->access$500(Lcom/android/internal/app/AlertController;)Landroid/os/Message;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/internal/app/AlertController$1;->this$0:Lcom/android/internal/app/AlertController;

    #getter for: Lcom/android/internal/app/AlertController;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/internal/app/AlertController;->access$600(Lcom/android/internal/app/AlertController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x104058e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/app/AlertController$1;->this$0:Lcom/android/internal/app/AlertController;

    #getter for: Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;
    invoke-static {v2}, Lcom/android/internal/app/AlertController;->access$400(Lcom/android/internal/app/AlertController;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 162
    :goto_1
    return-void

    .line 137
    :cond_2
    iget-object v1, p0, Lcom/android/internal/app/AlertController$1;->this$0:Lcom/android/internal/app/AlertController;

    #getter for: Lcom/android/internal/app/AlertController;->mButtonNegative:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/internal/app/AlertController;->access$200(Lcom/android/internal/app/AlertController;)Landroid/widget/Button;

    move-result-object v1

    if-ne p1, v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/app/AlertController$1;->this$0:Lcom/android/internal/app/AlertController;

    #getter for: Lcom/android/internal/app/AlertController;->mButtonNegativeMessage:Landroid/os/Message;
    invoke-static {v1}, Lcom/android/internal/app/AlertController;->access$300(Lcom/android/internal/app/AlertController;)Landroid/os/Message;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 138
    iget-object v1, p0, Lcom/android/internal/app/AlertController$1;->this$0:Lcom/android/internal/app/AlertController;

    #getter for: Lcom/android/internal/app/AlertController;->mButtonNegativeMessage:Landroid/os/Message;
    invoke-static {v1}, Lcom/android/internal/app/AlertController;->access$300(Lcom/android/internal/app/AlertController;)Landroid/os/Message;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    goto :goto_0

    .line 139
    :cond_3
    iget-object v1, p0, Lcom/android/internal/app/AlertController$1;->this$0:Lcom/android/internal/app/AlertController;

    #getter for: Lcom/android/internal/app/AlertController;->mButtonNeutral:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/internal/app/AlertController;->access$400(Lcom/android/internal/app/AlertController;)Landroid/widget/Button;

    move-result-object v1

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/app/AlertController$1;->this$0:Lcom/android/internal/app/AlertController;

    #getter for: Lcom/android/internal/app/AlertController;->mButtonNeutralMessage:Landroid/os/Message;
    invoke-static {v1}, Lcom/android/internal/app/AlertController;->access$500(Lcom/android/internal/app/AlertController;)Landroid/os/Message;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 140
    iget-object v1, p0, Lcom/android/internal/app/AlertController$1;->this$0:Lcom/android/internal/app/AlertController;

    #getter for: Lcom/android/internal/app/AlertController;->mButtonNeutralMessage:Landroid/os/Message;
    invoke-static {v1}, Lcom/android/internal/app/AlertController;->access$500(Lcom/android/internal/app/AlertController;)Landroid/os/Message;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    goto :goto_0

    .line 160
    :cond_4
    iget-object v1, p0, Lcom/android/internal/app/AlertController$1;->this$0:Lcom/android/internal/app/AlertController;

    #getter for: Lcom/android/internal/app/AlertController;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/internal/app/AlertController;->access$800(Lcom/android/internal/app/AlertController;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/internal/app/AlertController$1;->this$0:Lcom/android/internal/app/AlertController;

    #getter for: Lcom/android/internal/app/AlertController;->mDialogInterface:Landroid/content/DialogInterface;
    invoke-static {v3}, Lcom/android/internal/app/AlertController;->access$700(Lcom/android/internal/app/AlertController;)Landroid/content/DialogInterface;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1
.end method
