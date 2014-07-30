.class Landroid/inputmethodservice/InputMethodService$3;
.super Landroid/os/Handler;
.source "InputMethodService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/inputmethodservice/InputMethodService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/inputmethodservice/InputMethodService;


# direct methods
.method constructor <init>(Landroid/inputmethodservice/InputMethodService;)V
    .locals 0
    .parameter

    .prologue
    .line 594
    iput-object p1, p0, Landroid/inputmethodservice/InputMethodService$3;->this$0:Landroid/inputmethodservice/InputMethodService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    .line 596
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 615
    :cond_0
    :goto_0
    return-void

    .line 598
    :pswitch_0
    const-string v1, ""

    .line 599
    .local v1, text:Ljava/lang/String;
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v4, :cond_1

    .line 600
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 601
    :cond_1
    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 602
    .local v3, visibility:I
    iget-object v4, p0, Landroid/inputmethodservice/InputMethodService$3;->this$0:Landroid/inputmethodservice/InputMethodService;

    iget-object v4, v4, Landroid/inputmethodservice/InputMethodService;->mExtractView:Landroid/view/View;

    if-eqz v4, :cond_0

    .line 605
    const/4 v2, 0x0

    .line 606
    .local v2, textCounter:Landroid/widget/TextView;
    iget-object v4, p0, Landroid/inputmethodservice/InputMethodService$3;->this$0:Landroid/inputmethodservice/InputMethodService;

    iget-object v4, v4, Landroid/inputmethodservice/InputMethodService;->mExtractView:Landroid/view/View;

    const v5, 0x10202a1

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 608
    .local v0, inputExtractAccessories:Landroid/widget/FrameLayout;
    const v4, 0x10202a2

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .end local v2           #textCounter:Landroid/widget/TextView;
    check-cast v2, Landroid/widget/TextView;

    .line 610
    .restart local v2       #textCounter:Landroid/widget/TextView;
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 611
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 596
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
