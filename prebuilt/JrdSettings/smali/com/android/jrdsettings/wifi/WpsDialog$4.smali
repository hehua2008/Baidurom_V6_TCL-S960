.class Lcom/android/jrdsettings/wifi/WpsDialog$4;
.super Ljava/lang/Object;
.source "WpsDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/jrdsettings/wifi/WpsDialog;->updateDialog(Lcom/android/jrdsettings/wifi/WpsDialog$DialogState;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/jrdsettings/wifi/WpsDialog;

.field final synthetic val$msg:Ljava/lang/String;

.field final synthetic val$state:Lcom/android/jrdsettings/wifi/WpsDialog$DialogState;


# direct methods
.method constructor <init>(Lcom/android/jrdsettings/wifi/WpsDialog;Lcom/android/jrdsettings/wifi/WpsDialog$DialogState;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 220
    iput-object p1, p0, Lcom/android/jrdsettings/wifi/WpsDialog$4;->this$0:Lcom/android/jrdsettings/wifi/WpsDialog;

    iput-object p2, p0, Lcom/android/jrdsettings/wifi/WpsDialog$4;->val$state:Lcom/android/jrdsettings/wifi/WpsDialog$DialogState;

    iput-object p3, p0, Lcom/android/jrdsettings/wifi/WpsDialog$4;->val$msg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 223
    sget-object v0, Lcom/android/jrdsettings/wifi/WpsDialog$5;->$SwitchMap$com$android$settings$wifi$WpsDialog$DialogState:[I

    iget-object v1, p0, Lcom/android/jrdsettings/wifi/WpsDialog$4;->val$state:Lcom/android/jrdsettings/wifi/WpsDialog$DialogState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 239
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/jrdsettings/wifi/WpsDialog$4;->this$0:Lcom/android/jrdsettings/wifi/WpsDialog;

    #getter for: Lcom/android/jrdsettings/wifi/WpsDialog;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/jrdsettings/wifi/WpsDialog;->access$800(Lcom/android/jrdsettings/wifi/WpsDialog;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/jrdsettings/wifi/WpsDialog$4;->val$msg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 240
    return-void

    .line 225
    :pswitch_0
    iget-object v0, p0, Lcom/android/jrdsettings/wifi/WpsDialog$4;->this$0:Lcom/android/jrdsettings/wifi/WpsDialog;

    #getter for: Lcom/android/jrdsettings/wifi/WpsDialog;->mTimeoutBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/android/jrdsettings/wifi/WpsDialog;->access$300(Lcom/android/jrdsettings/wifi/WpsDialog;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 226
    iget-object v0, p0, Lcom/android/jrdsettings/wifi/WpsDialog$4;->this$0:Lcom/android/jrdsettings/wifi/WpsDialog;

    #getter for: Lcom/android/jrdsettings/wifi/WpsDialog;->mProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/android/jrdsettings/wifi/WpsDialog;->access$500(Lcom/android/jrdsettings/wifi/WpsDialog;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 230
    :pswitch_1
    iget-object v0, p0, Lcom/android/jrdsettings/wifi/WpsDialog$4;->this$0:Lcom/android/jrdsettings/wifi/WpsDialog;

    #getter for: Lcom/android/jrdsettings/wifi/WpsDialog;->mButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/jrdsettings/wifi/WpsDialog;->access$600(Lcom/android/jrdsettings/wifi/WpsDialog;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/android/jrdsettings/wifi/WpsDialog$4;->this$0:Lcom/android/jrdsettings/wifi/WpsDialog;

    #getter for: Lcom/android/jrdsettings/wifi/WpsDialog;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/jrdsettings/wifi/WpsDialog;->access$000(Lcom/android/jrdsettings/wifi/WpsDialog;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f090645

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 231
    iget-object v0, p0, Lcom/android/jrdsettings/wifi/WpsDialog$4;->this$0:Lcom/android/jrdsettings/wifi/WpsDialog;

    #getter for: Lcom/android/jrdsettings/wifi/WpsDialog;->mTimeoutBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/android/jrdsettings/wifi/WpsDialog;->access$300(Lcom/android/jrdsettings/wifi/WpsDialog;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 232
    iget-object v0, p0, Lcom/android/jrdsettings/wifi/WpsDialog$4;->this$0:Lcom/android/jrdsettings/wifi/WpsDialog;

    #getter for: Lcom/android/jrdsettings/wifi/WpsDialog;->mProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/android/jrdsettings/wifi/WpsDialog;->access$500(Lcom/android/jrdsettings/wifi/WpsDialog;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 233
    iget-object v0, p0, Lcom/android/jrdsettings/wifi/WpsDialog$4;->this$0:Lcom/android/jrdsettings/wifi/WpsDialog;

    #getter for: Lcom/android/jrdsettings/wifi/WpsDialog;->mReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v0}, Lcom/android/jrdsettings/wifi/WpsDialog;->access$700(Lcom/android/jrdsettings/wifi/WpsDialog;)Landroid/content/BroadcastReceiver;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/android/jrdsettings/wifi/WpsDialog$4;->this$0:Lcom/android/jrdsettings/wifi/WpsDialog;

    #getter for: Lcom/android/jrdsettings/wifi/WpsDialog;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/jrdsettings/wifi/WpsDialog;->access$000(Lcom/android/jrdsettings/wifi/WpsDialog;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/jrdsettings/wifi/WpsDialog$4;->this$0:Lcom/android/jrdsettings/wifi/WpsDialog;

    #getter for: Lcom/android/jrdsettings/wifi/WpsDialog;->mReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v1}, Lcom/android/jrdsettings/wifi/WpsDialog;->access$700(Lcom/android/jrdsettings/wifi/WpsDialog;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 235
    iget-object v0, p0, Lcom/android/jrdsettings/wifi/WpsDialog$4;->this$0:Lcom/android/jrdsettings/wifi/WpsDialog;

    const/4 v1, 0x0

    #setter for: Lcom/android/jrdsettings/wifi/WpsDialog;->mReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v0, v1}, Lcom/android/jrdsettings/wifi/WpsDialog;->access$702(Lcom/android/jrdsettings/wifi/WpsDialog;Landroid/content/BroadcastReceiver;)Landroid/content/BroadcastReceiver;

    goto :goto_0

    .line 223
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
