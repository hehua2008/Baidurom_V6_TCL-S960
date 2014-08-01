.class Lcom/android/jrdsettings/KeyguardOrderGrid$1;
.super Ljava/lang/Object;
.source "KeyguardOrderGrid.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/jrdsettings/KeyguardOrderGrid;->setOnItemLongClickListener(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/jrdsettings/KeyguardOrderGrid;


# direct methods
.method constructor <init>(Lcom/android/jrdsettings/KeyguardOrderGrid;)V
    .locals 0
    .parameter

    .prologue
    .line 77
    iput-object p1, p0, Lcom/android/jrdsettings/KeyguardOrderGrid$1;->this$0:Lcom/android/jrdsettings/KeyguardOrderGrid;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 9
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v4, -0x1

    .line 82
    iget-object v3, p0, Lcom/android/jrdsettings/KeyguardOrderGrid$1;->this$0:Lcom/android/jrdsettings/KeyguardOrderGrid;

    iget-object v5, p0, Lcom/android/jrdsettings/KeyguardOrderGrid$1;->this$0:Lcom/android/jrdsettings/KeyguardOrderGrid;

    #getter for: Lcom/android/jrdsettings/KeyguardOrderGrid;->touchX:I
    invoke-static {v5}, Lcom/android/jrdsettings/KeyguardOrderGrid;->access$100(Lcom/android/jrdsettings/KeyguardOrderGrid;)I

    move-result v5

    #setter for: Lcom/android/jrdsettings/KeyguardOrderGrid;->mLastX:I
    invoke-static {v3, v5}, Lcom/android/jrdsettings/KeyguardOrderGrid;->access$002(Lcom/android/jrdsettings/KeyguardOrderGrid;I)I

    .line 83
    iget-object v3, p0, Lcom/android/jrdsettings/KeyguardOrderGrid$1;->this$0:Lcom/android/jrdsettings/KeyguardOrderGrid;

    iget-object v5, p0, Lcom/android/jrdsettings/KeyguardOrderGrid$1;->this$0:Lcom/android/jrdsettings/KeyguardOrderGrid;

    #getter for: Lcom/android/jrdsettings/KeyguardOrderGrid;->touchY:I
    invoke-static {v5}, Lcom/android/jrdsettings/KeyguardOrderGrid;->access$300(Lcom/android/jrdsettings/KeyguardOrderGrid;)I

    move-result v5

    #setter for: Lcom/android/jrdsettings/KeyguardOrderGrid;->mLastY:I
    invoke-static {v3, v5}, Lcom/android/jrdsettings/KeyguardOrderGrid;->access$202(Lcom/android/jrdsettings/KeyguardOrderGrid;I)I

    .line 84
    iget-object v3, p0, Lcom/android/jrdsettings/KeyguardOrderGrid$1;->this$0:Lcom/android/jrdsettings/KeyguardOrderGrid;

    iget-object v5, p0, Lcom/android/jrdsettings/KeyguardOrderGrid$1;->this$0:Lcom/android/jrdsettings/KeyguardOrderGrid;

    iget-object v6, p0, Lcom/android/jrdsettings/KeyguardOrderGrid$1;->this$0:Lcom/android/jrdsettings/KeyguardOrderGrid;

    #setter for: Lcom/android/jrdsettings/KeyguardOrderGrid;->dropPosition:I
    invoke-static {v6, p3}, Lcom/android/jrdsettings/KeyguardOrderGrid;->access$602(Lcom/android/jrdsettings/KeyguardOrderGrid;I)I

    move-result v6

    #setter for: Lcom/android/jrdsettings/KeyguardOrderGrid;->dragPosition:I
    invoke-static {v5, v6}, Lcom/android/jrdsettings/KeyguardOrderGrid;->access$502(Lcom/android/jrdsettings/KeyguardOrderGrid;I)I

    move-result v5

    #setter for: Lcom/android/jrdsettings/KeyguardOrderGrid;->startPosition:I
    invoke-static {v3, v5}, Lcom/android/jrdsettings/KeyguardOrderGrid;->access$402(Lcom/android/jrdsettings/KeyguardOrderGrid;I)I

    .line 85
    iget-object v3, p0, Lcom/android/jrdsettings/KeyguardOrderGrid$1;->this$0:Lcom/android/jrdsettings/KeyguardOrderGrid;

    #getter for: Lcom/android/jrdsettings/KeyguardOrderGrid;->dragPosition:I
    invoke-static {v3}, Lcom/android/jrdsettings/KeyguardOrderGrid;->access$500(Lcom/android/jrdsettings/KeyguardOrderGrid;)I

    move-result v3

    if-ne v3, v4, :cond_0

    .line 88
    :cond_0
    iget-object v3, p0, Lcom/android/jrdsettings/KeyguardOrderGrid$1;->this$0:Lcom/android/jrdsettings/KeyguardOrderGrid;

    iget-object v5, p0, Lcom/android/jrdsettings/KeyguardOrderGrid$1;->this$0:Lcom/android/jrdsettings/KeyguardOrderGrid;

    #getter for: Lcom/android/jrdsettings/KeyguardOrderGrid;->dragPosition:I
    invoke-static {v5}, Lcom/android/jrdsettings/KeyguardOrderGrid;->access$500(Lcom/android/jrdsettings/KeyguardOrderGrid;)I

    move-result v5

    iget-object v6, p0, Lcom/android/jrdsettings/KeyguardOrderGrid$1;->this$0:Lcom/android/jrdsettings/KeyguardOrderGrid;

    invoke-virtual {v6}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 91
    .local v1, itemView:Landroid/view/ViewGroup;
    iget-object v3, p0, Lcom/android/jrdsettings/KeyguardOrderGrid$1;->this$0:Lcom/android/jrdsettings/KeyguardOrderGrid;

    iget-object v5, p0, Lcom/android/jrdsettings/KeyguardOrderGrid$1;->this$0:Lcom/android/jrdsettings/KeyguardOrderGrid;

    #getter for: Lcom/android/jrdsettings/KeyguardOrderGrid;->touchX:I
    invoke-static {v5}, Lcom/android/jrdsettings/KeyguardOrderGrid;->access$100(Lcom/android/jrdsettings/KeyguardOrderGrid;)I

    move-result v5

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v6

    sub-int/2addr v5, v6

    #setter for: Lcom/android/jrdsettings/KeyguardOrderGrid;->dragPointX:I
    invoke-static {v3, v5}, Lcom/android/jrdsettings/KeyguardOrderGrid;->access$702(Lcom/android/jrdsettings/KeyguardOrderGrid;I)I

    .line 92
    iget-object v3, p0, Lcom/android/jrdsettings/KeyguardOrderGrid$1;->this$0:Lcom/android/jrdsettings/KeyguardOrderGrid;

    iget-object v5, p0, Lcom/android/jrdsettings/KeyguardOrderGrid$1;->this$0:Lcom/android/jrdsettings/KeyguardOrderGrid;

    #getter for: Lcom/android/jrdsettings/KeyguardOrderGrid;->touchY:I
    invoke-static {v5}, Lcom/android/jrdsettings/KeyguardOrderGrid;->access$300(Lcom/android/jrdsettings/KeyguardOrderGrid;)I

    move-result v5

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v6

    sub-int/2addr v5, v6

    #setter for: Lcom/android/jrdsettings/KeyguardOrderGrid;->dragPointY:I
    invoke-static {v3, v5}, Lcom/android/jrdsettings/KeyguardOrderGrid;->access$802(Lcom/android/jrdsettings/KeyguardOrderGrid;I)I

    .line 94
    iget-object v3, p0, Lcom/android/jrdsettings/KeyguardOrderGrid$1;->this$0:Lcom/android/jrdsettings/KeyguardOrderGrid;

    #getter for: Lcom/android/jrdsettings/KeyguardOrderGrid;->isCountXY:Z
    invoke-static {v3}, Lcom/android/jrdsettings/KeyguardOrderGrid;->access$900(Lcom/android/jrdsettings/KeyguardOrderGrid;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 95
    iget-object v3, p0, Lcom/android/jrdsettings/KeyguardOrderGrid$1;->this$0:Lcom/android/jrdsettings/KeyguardOrderGrid;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    #setter for: Lcom/android/jrdsettings/KeyguardOrderGrid;->halfItemWidth:I
    invoke-static {v3, v5}, Lcom/android/jrdsettings/KeyguardOrderGrid;->access$1002(Lcom/android/jrdsettings/KeyguardOrderGrid;I)I

    .line 97
    iget-object v3, p0, Lcom/android/jrdsettings/KeyguardOrderGrid$1;->this$0:Lcom/android/jrdsettings/KeyguardOrderGrid;

    iget-object v5, p0, Lcom/android/jrdsettings/KeyguardOrderGrid$1;->this$0:Lcom/android/jrdsettings/KeyguardOrderGrid;

    invoke-virtual {v5}, Landroid/widget/AdapterView;->getCount()I

    move-result v5

    #setter for: Lcom/android/jrdsettings/KeyguardOrderGrid;->itemTotalCount:I
    invoke-static {v3, v5}, Lcom/android/jrdsettings/KeyguardOrderGrid;->access$1102(Lcom/android/jrdsettings/KeyguardOrderGrid;I)I

    .line 98
    iget-object v3, p0, Lcom/android/jrdsettings/KeyguardOrderGrid$1;->this$0:Lcom/android/jrdsettings/KeyguardOrderGrid;

    #getter for: Lcom/android/jrdsettings/KeyguardOrderGrid;->itemTotalCount:I
    invoke-static {v3}, Lcom/android/jrdsettings/KeyguardOrderGrid;->access$1100(Lcom/android/jrdsettings/KeyguardOrderGrid;)I

    move-result v3

    iget-object v5, p0, Lcom/android/jrdsettings/KeyguardOrderGrid$1;->this$0:Lcom/android/jrdsettings/KeyguardOrderGrid;

    #getter for: Lcom/android/jrdsettings/KeyguardOrderGrid;->nColumns:I
    invoke-static {v5}, Lcom/android/jrdsettings/KeyguardOrderGrid;->access$1200(Lcom/android/jrdsettings/KeyguardOrderGrid;)I

    move-result v5

    div-int v2, v3, v5

    .line 99
    .local v2, rows:I
    iget-object v3, p0, Lcom/android/jrdsettings/KeyguardOrderGrid$1;->this$0:Lcom/android/jrdsettings/KeyguardOrderGrid;

    iget-object v5, p0, Lcom/android/jrdsettings/KeyguardOrderGrid$1;->this$0:Lcom/android/jrdsettings/KeyguardOrderGrid;

    #getter for: Lcom/android/jrdsettings/KeyguardOrderGrid;->itemTotalCount:I
    invoke-static {v5}, Lcom/android/jrdsettings/KeyguardOrderGrid;->access$1100(Lcom/android/jrdsettings/KeyguardOrderGrid;)I

    move-result v5

    iget-object v6, p0, Lcom/android/jrdsettings/KeyguardOrderGrid$1;->this$0:Lcom/android/jrdsettings/KeyguardOrderGrid;

    #getter for: Lcom/android/jrdsettings/KeyguardOrderGrid;->nColumns:I
    invoke-static {v6}, Lcom/android/jrdsettings/KeyguardOrderGrid;->access$1200(Lcom/android/jrdsettings/KeyguardOrderGrid;)I

    move-result v6

    rem-int/2addr v5, v6

    #setter for: Lcom/android/jrdsettings/KeyguardOrderGrid;->Remainder:I
    invoke-static {v3, v5}, Lcom/android/jrdsettings/KeyguardOrderGrid;->access$1302(Lcom/android/jrdsettings/KeyguardOrderGrid;I)I

    .line 100
    iget-object v3, p0, Lcom/android/jrdsettings/KeyguardOrderGrid$1;->this$0:Lcom/android/jrdsettings/KeyguardOrderGrid;

    iget-object v5, p0, Lcom/android/jrdsettings/KeyguardOrderGrid$1;->this$0:Lcom/android/jrdsettings/KeyguardOrderGrid;

    #getter for: Lcom/android/jrdsettings/KeyguardOrderGrid;->Remainder:I
    invoke-static {v5}, Lcom/android/jrdsettings/KeyguardOrderGrid;->access$1300(Lcom/android/jrdsettings/KeyguardOrderGrid;)I

    move-result v5

    if-nez v5, :cond_6

    .end local v2           #rows:I
    :goto_0
    #setter for: Lcom/android/jrdsettings/KeyguardOrderGrid;->nRows:I
    invoke-static {v3, v2}, Lcom/android/jrdsettings/KeyguardOrderGrid;->access$1402(Lcom/android/jrdsettings/KeyguardOrderGrid;I)I

    .line 101
    iget-object v3, p0, Lcom/android/jrdsettings/KeyguardOrderGrid$1;->this$0:Lcom/android/jrdsettings/KeyguardOrderGrid;

    iget-object v5, p0, Lcom/android/jrdsettings/KeyguardOrderGrid$1;->this$0:Lcom/android/jrdsettings/KeyguardOrderGrid;

    #getter for: Lcom/android/jrdsettings/KeyguardOrderGrid;->itemTotalCount:I
    invoke-static {v5}, Lcom/android/jrdsettings/KeyguardOrderGrid;->access$1100(Lcom/android/jrdsettings/KeyguardOrderGrid;)I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    iget-object v6, p0, Lcom/android/jrdsettings/KeyguardOrderGrid$1;->this$0:Lcom/android/jrdsettings/KeyguardOrderGrid;

    #getter for: Lcom/android/jrdsettings/KeyguardOrderGrid;->Remainder:I
    invoke-static {v6}, Lcom/android/jrdsettings/KeyguardOrderGrid;->access$1300(Lcom/android/jrdsettings/KeyguardOrderGrid;)I

    move-result v6

    sub-int/2addr v5, v6

    #setter for: Lcom/android/jrdsettings/KeyguardOrderGrid;->specialPosition:I
    invoke-static {v3, v5}, Lcom/android/jrdsettings/KeyguardOrderGrid;->access$1502(Lcom/android/jrdsettings/KeyguardOrderGrid;I)I

    .line 102
    iget-object v3, p0, Lcom/android/jrdsettings/KeyguardOrderGrid$1;->this$0:Lcom/android/jrdsettings/KeyguardOrderGrid;

    #getter for: Lcom/android/jrdsettings/KeyguardOrderGrid;->Remainder:I
    invoke-static {v3}, Lcom/android/jrdsettings/KeyguardOrderGrid;->access$1300(Lcom/android/jrdsettings/KeyguardOrderGrid;)I

    move-result v3

    if-eq v3, v7, :cond_1

    .line 103
    iget-object v3, p0, Lcom/android/jrdsettings/KeyguardOrderGrid$1;->this$0:Lcom/android/jrdsettings/KeyguardOrderGrid;

    iget-object v5, p0, Lcom/android/jrdsettings/KeyguardOrderGrid$1;->this$0:Lcom/android/jrdsettings/KeyguardOrderGrid;

    #getter for: Lcom/android/jrdsettings/KeyguardOrderGrid;->nColumns:I
    invoke-static {v5}, Lcom/android/jrdsettings/KeyguardOrderGrid;->access$1200(Lcom/android/jrdsettings/KeyguardOrderGrid;)I

    move-result v5

    iget-object v6, p0, Lcom/android/jrdsettings/KeyguardOrderGrid$1;->this$0:Lcom/android/jrdsettings/KeyguardOrderGrid;

    #getter for: Lcom/android/jrdsettings/KeyguardOrderGrid;->nRows:I
    invoke-static {v6}, Lcom/android/jrdsettings/KeyguardOrderGrid;->access$1400(Lcom/android/jrdsettings/KeyguardOrderGrid;)I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    mul-int/2addr v5, v6

    #setter for: Lcom/android/jrdsettings/KeyguardOrderGrid;->leftBottomPosition:I
    invoke-static {v3, v5}, Lcom/android/jrdsettings/KeyguardOrderGrid;->access$1602(Lcom/android/jrdsettings/KeyguardOrderGrid;I)I

    .line 104
    :cond_1
    iget-object v3, p0, Lcom/android/jrdsettings/KeyguardOrderGrid$1;->this$0:Lcom/android/jrdsettings/KeyguardOrderGrid;

    #getter for: Lcom/android/jrdsettings/KeyguardOrderGrid;->Remainder:I
    invoke-static {v3}, Lcom/android/jrdsettings/KeyguardOrderGrid;->access$1300(Lcom/android/jrdsettings/KeyguardOrderGrid;)I

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/jrdsettings/KeyguardOrderGrid$1;->this$0:Lcom/android/jrdsettings/KeyguardOrderGrid;

    #getter for: Lcom/android/jrdsettings/KeyguardOrderGrid;->nRows:I
    invoke-static {v3}, Lcom/android/jrdsettings/KeyguardOrderGrid;->access$1400(Lcom/android/jrdsettings/KeyguardOrderGrid;)I

    move-result v3

    if-ne v3, v7, :cond_3

    .line 105
    :cond_2
    iget-object v3, p0, Lcom/android/jrdsettings/KeyguardOrderGrid$1;->this$0:Lcom/android/jrdsettings/KeyguardOrderGrid;

    #setter for: Lcom/android/jrdsettings/KeyguardOrderGrid;->specialPosition:I
    invoke-static {v3, v4}, Lcom/android/jrdsettings/KeyguardOrderGrid;->access$1502(Lcom/android/jrdsettings/KeyguardOrderGrid;I)I

    .line 106
    :cond_3
    iget-object v3, p0, Lcom/android/jrdsettings/KeyguardOrderGrid$1;->this$0:Lcom/android/jrdsettings/KeyguardOrderGrid;

    #setter for: Lcom/android/jrdsettings/KeyguardOrderGrid;->isCountXY:Z
    invoke-static {v3, v7}, Lcom/android/jrdsettings/KeyguardOrderGrid;->access$902(Lcom/android/jrdsettings/KeyguardOrderGrid;Z)Z

    .line 108
    :cond_4
    iget-object v3, p0, Lcom/android/jrdsettings/KeyguardOrderGrid$1;->this$0:Lcom/android/jrdsettings/KeyguardOrderGrid;

    #getter for: Lcom/android/jrdsettings/KeyguardOrderGrid;->specialPosition:I
    invoke-static {v3}, Lcom/android/jrdsettings/KeyguardOrderGrid;->access$1500(Lcom/android/jrdsettings/KeyguardOrderGrid;)I

    move-result v3

    iget-object v5, p0, Lcom/android/jrdsettings/KeyguardOrderGrid$1;->this$0:Lcom/android/jrdsettings/KeyguardOrderGrid;

    #getter for: Lcom/android/jrdsettings/KeyguardOrderGrid;->dragPosition:I
    invoke-static {v5}, Lcom/android/jrdsettings/KeyguardOrderGrid;->access$500(Lcom/android/jrdsettings/KeyguardOrderGrid;)I

    move-result v5

    if-eq v3, v5, :cond_8

    iget-object v3, p0, Lcom/android/jrdsettings/KeyguardOrderGrid$1;->this$0:Lcom/android/jrdsettings/KeyguardOrderGrid;

    #getter for: Lcom/android/jrdsettings/KeyguardOrderGrid;->dragPosition:I
    invoke-static {v3}, Lcom/android/jrdsettings/KeyguardOrderGrid;->access$500(Lcom/android/jrdsettings/KeyguardOrderGrid;)I

    move-result v3

    if-eq v3, v4, :cond_8

    .line 109
    iget-object v5, p0, Lcom/android/jrdsettings/KeyguardOrderGrid$1;->this$0:Lcom/android/jrdsettings/KeyguardOrderGrid;

    iget-object v3, p0, Lcom/android/jrdsettings/KeyguardOrderGrid$1;->this$0:Lcom/android/jrdsettings/KeyguardOrderGrid;

    iget-object v6, p0, Lcom/android/jrdsettings/KeyguardOrderGrid$1;->this$0:Lcom/android/jrdsettings/KeyguardOrderGrid;

    #getter for: Lcom/android/jrdsettings/KeyguardOrderGrid;->specialPosition:I
    invoke-static {v6}, Lcom/android/jrdsettings/KeyguardOrderGrid;->access$1500(Lcom/android/jrdsettings/KeyguardOrderGrid;)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/jrdsettings/KeyguardOrderGrid$1;->this$0:Lcom/android/jrdsettings/KeyguardOrderGrid;

    iget-object v6, p0, Lcom/android/jrdsettings/KeyguardOrderGrid$1;->this$0:Lcom/android/jrdsettings/KeyguardOrderGrid;

    #getter for: Lcom/android/jrdsettings/KeyguardOrderGrid;->specialPosition:I
    invoke-static {v6}, Lcom/android/jrdsettings/KeyguardOrderGrid;->access$1500(Lcom/android/jrdsettings/KeyguardOrderGrid;)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    :goto_1
    #setter for: Lcom/android/jrdsettings/KeyguardOrderGrid;->specialItemY:I
    invoke-static {v5, v3}, Lcom/android/jrdsettings/KeyguardOrderGrid;->access$1702(Lcom/android/jrdsettings/KeyguardOrderGrid;I)I

    .line 113
    :goto_2
    iget-object v3, p0, Lcom/android/jrdsettings/KeyguardOrderGrid$1;->this$0:Lcom/android/jrdsettings/KeyguardOrderGrid;

    #getter for: Lcom/android/jrdsettings/KeyguardOrderGrid;->leftBottomPosition:I
    invoke-static {v3}, Lcom/android/jrdsettings/KeyguardOrderGrid;->access$1600(Lcom/android/jrdsettings/KeyguardOrderGrid;)I

    move-result v3

    iget-object v5, p0, Lcom/android/jrdsettings/KeyguardOrderGrid$1;->this$0:Lcom/android/jrdsettings/KeyguardOrderGrid;

    #getter for: Lcom/android/jrdsettings/KeyguardOrderGrid;->dragPosition:I
    invoke-static {v5}, Lcom/android/jrdsettings/KeyguardOrderGrid;->access$500(Lcom/android/jrdsettings/KeyguardOrderGrid;)I

    move-result v5

    if-eq v3, v5, :cond_9

    iget-object v3, p0, Lcom/android/jrdsettings/KeyguardOrderGrid$1;->this$0:Lcom/android/jrdsettings/KeyguardOrderGrid;

    #getter for: Lcom/android/jrdsettings/KeyguardOrderGrid;->dragPosition:I
    invoke-static {v3}, Lcom/android/jrdsettings/KeyguardOrderGrid;->access$500(Lcom/android/jrdsettings/KeyguardOrderGrid;)I

    move-result v3

    if-eq v3, v4, :cond_9

    .line 114
    iget-object v3, p0, Lcom/android/jrdsettings/KeyguardOrderGrid$1;->this$0:Lcom/android/jrdsettings/KeyguardOrderGrid;

    iget-object v5, p0, Lcom/android/jrdsettings/KeyguardOrderGrid$1;->this$0:Lcom/android/jrdsettings/KeyguardOrderGrid;

    iget-object v6, p0, Lcom/android/jrdsettings/KeyguardOrderGrid$1;->this$0:Lcom/android/jrdsettings/KeyguardOrderGrid;

    #getter for: Lcom/android/jrdsettings/KeyguardOrderGrid;->leftBottomPosition:I
    invoke-static {v6}, Lcom/android/jrdsettings/KeyguardOrderGrid;->access$1600(Lcom/android/jrdsettings/KeyguardOrderGrid;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_5

    iget-object v4, p0, Lcom/android/jrdsettings/KeyguardOrderGrid$1;->this$0:Lcom/android/jrdsettings/KeyguardOrderGrid;

    iget-object v5, p0, Lcom/android/jrdsettings/KeyguardOrderGrid$1;->this$0:Lcom/android/jrdsettings/KeyguardOrderGrid;

    #getter for: Lcom/android/jrdsettings/KeyguardOrderGrid;->leftBottomPosition:I
    invoke-static {v5}, Lcom/android/jrdsettings/KeyguardOrderGrid;->access$1600(Lcom/android/jrdsettings/KeyguardOrderGrid;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    :cond_5
    #setter for: Lcom/android/jrdsettings/KeyguardOrderGrid;->leftBtmItemY:I
    invoke-static {v3, v4}, Lcom/android/jrdsettings/KeyguardOrderGrid;->access$1802(Lcom/android/jrdsettings/KeyguardOrderGrid;I)I

    .line 120
    :goto_3
    iget-object v3, p0, Lcom/android/jrdsettings/KeyguardOrderGrid$1;->this$0:Lcom/android/jrdsettings/KeyguardOrderGrid;

    #setter for: Lcom/android/jrdsettings/KeyguardOrderGrid;->dragItemView:Landroid/view/ViewGroup;
    invoke-static {v3, v1}, Lcom/android/jrdsettings/KeyguardOrderGrid;->access$1902(Lcom/android/jrdsettings/KeyguardOrderGrid;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    .line 121
    invoke-virtual {v1}, Landroid/view/View;->destroyDrawingCache()V

    .line 122
    invoke-virtual {v1, v7}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 123
    invoke-virtual {v1}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 124
    .local v0, bm:Landroid/graphics/Bitmap;
    iget-object v3, p0, Lcom/android/jrdsettings/KeyguardOrderGrid$1;->this$0:Lcom/android/jrdsettings/KeyguardOrderGrid;

    iget-object v4, p0, Lcom/android/jrdsettings/KeyguardOrderGrid$1;->this$0:Lcom/android/jrdsettings/KeyguardOrderGrid;

    #calls: Lcom/android/jrdsettings/KeyguardOrderGrid;->getScaleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    invoke-static {v4, v0}, Lcom/android/jrdsettings/KeyguardOrderGrid;->access$2000(Lcom/android/jrdsettings/KeyguardOrderGrid;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v4

    iget-object v5, p0, Lcom/android/jrdsettings/KeyguardOrderGrid$1;->this$0:Lcom/android/jrdsettings/KeyguardOrderGrid;

    #getter for: Lcom/android/jrdsettings/KeyguardOrderGrid;->touchX:I
    invoke-static {v5}, Lcom/android/jrdsettings/KeyguardOrderGrid;->access$100(Lcom/android/jrdsettings/KeyguardOrderGrid;)I

    move-result v5

    iget-object v6, p0, Lcom/android/jrdsettings/KeyguardOrderGrid$1;->this$0:Lcom/android/jrdsettings/KeyguardOrderGrid;

    #getter for: Lcom/android/jrdsettings/KeyguardOrderGrid;->touchY:I
    invoke-static {v6}, Lcom/android/jrdsettings/KeyguardOrderGrid;->access$300(Lcom/android/jrdsettings/KeyguardOrderGrid;)I

    move-result v6

    #calls: Lcom/android/jrdsettings/KeyguardOrderGrid;->startDrag(Landroid/graphics/Bitmap;II)V
    invoke-static {v3, v4, v5, v6}, Lcom/android/jrdsettings/KeyguardOrderGrid;->access$2100(Lcom/android/jrdsettings/KeyguardOrderGrid;Landroid/graphics/Bitmap;II)V

    .line 125
    iget-object v3, p0, Lcom/android/jrdsettings/KeyguardOrderGrid$1;->this$0:Lcom/android/jrdsettings/KeyguardOrderGrid;

    #calls: Lcom/android/jrdsettings/KeyguardOrderGrid;->hideDropItem()V
    invoke-static {v3}, Lcom/android/jrdsettings/KeyguardOrderGrid;->access$2200(Lcom/android/jrdsettings/KeyguardOrderGrid;)V

    .line 126
    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 127
    iget-object v3, p0, Lcom/android/jrdsettings/KeyguardOrderGrid$1;->this$0:Lcom/android/jrdsettings/KeyguardOrderGrid;

    #setter for: Lcom/android/jrdsettings/KeyguardOrderGrid;->isMoving:Z
    invoke-static {v3, v8}, Lcom/android/jrdsettings/KeyguardOrderGrid;->access$2302(Lcom/android/jrdsettings/KeyguardOrderGrid;Z)Z

    .line 128
    return v8

    .line 100
    .end local v0           #bm:Landroid/graphics/Bitmap;
    .restart local v2       #rows:I
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .end local v2           #rows:I
    :cond_7
    move v3, v4

    .line 109
    goto :goto_1

    .line 111
    :cond_8
    iget-object v3, p0, Lcom/android/jrdsettings/KeyguardOrderGrid$1;->this$0:Lcom/android/jrdsettings/KeyguardOrderGrid;

    #setter for: Lcom/android/jrdsettings/KeyguardOrderGrid;->specialItemY:I
    invoke-static {v3, v4}, Lcom/android/jrdsettings/KeyguardOrderGrid;->access$1702(Lcom/android/jrdsettings/KeyguardOrderGrid;I)I

    goto :goto_2

    .line 118
    :cond_9
    iget-object v3, p0, Lcom/android/jrdsettings/KeyguardOrderGrid$1;->this$0:Lcom/android/jrdsettings/KeyguardOrderGrid;

    #setter for: Lcom/android/jrdsettings/KeyguardOrderGrid;->leftBtmItemY:I
    invoke-static {v3, v4}, Lcom/android/jrdsettings/KeyguardOrderGrid;->access$1802(Lcom/android/jrdsettings/KeyguardOrderGrid;I)I

    goto :goto_3
.end method
