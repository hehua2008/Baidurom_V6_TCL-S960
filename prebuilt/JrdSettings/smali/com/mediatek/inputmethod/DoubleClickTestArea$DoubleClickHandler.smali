.class Lcom/mediatek/inputmethod/DoubleClickTestArea$DoubleClickHandler;
.super Landroid/os/Handler;
.source "DoubleClickTestArea.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/inputmethod/DoubleClickTestArea;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DoubleClickHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/inputmethod/DoubleClickTestArea;


# direct methods
.method private constructor <init>(Lcom/mediatek/inputmethod/DoubleClickTestArea;)V
    .locals 0
    .parameter

    .prologue
    .line 103
    iput-object p1, p0, Lcom/mediatek/inputmethod/DoubleClickTestArea$DoubleClickHandler;->this$0:Lcom/mediatek/inputmethod/DoubleClickTestArea;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/inputmethod/DoubleClickTestArea;Lcom/mediatek/inputmethod/DoubleClickTestArea$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/mediatek/inputmethod/DoubleClickTestArea$DoubleClickHandler;-><init>(Lcom/mediatek/inputmethod/DoubleClickTestArea;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 106
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 115
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown message "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    :pswitch_0
    iget-object v0, p0, Lcom/mediatek/inputmethod/DoubleClickTestArea$DoubleClickHandler;->this$0:Lcom/mediatek/inputmethod/DoubleClickTestArea;

    const/4 v1, 0x0

    #setter for: Lcom/mediatek/inputmethod/DoubleClickTestArea;->mIsDoubleTapping:Z
    invoke-static {v0, v1}, Lcom/mediatek/inputmethod/DoubleClickTestArea;->access$102(Lcom/mediatek/inputmethod/DoubleClickTestArea;Z)Z

    .line 117
    return-void

    .line 106
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
