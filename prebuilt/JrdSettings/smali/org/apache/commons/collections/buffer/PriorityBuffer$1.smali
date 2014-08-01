.class Lorg/apache/commons/collections/buffer/PriorityBuffer$1;
.super Ljava/lang/Object;
.source "PriorityBuffer.java"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field private index:I

.field private lastReturnedIndex:I

.field private final this$0:Lorg/apache/commons/collections/buffer/PriorityBuffer;


# direct methods
.method constructor <init>(Lorg/apache/commons/collections/buffer/PriorityBuffer;)V
    .locals 1
    .parameter "this$0"

    .prologue
    .line 480
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer$1;->this$0:Lorg/apache/commons/collections/buffer/PriorityBuffer;

    .line 464
    const/4 v0, 0x1

    iput v0, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer$1;->index:I

    .line 465
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer$1;->lastReturnedIndex:I

    .line 480
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .prologue
    .line 468
    iget v0, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer$1;->index:I

    iget-object v1, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer$1;->this$0:Lorg/apache/commons/collections/buffer/PriorityBuffer;

    iget v1, v1, Lorg/apache/commons/collections/buffer/PriorityBuffer;->size:I

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 472
    invoke-virtual {p0}, Lorg/apache/commons/collections/buffer/PriorityBuffer$1;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 473
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 475
    :cond_0
    iget v0, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer$1;->index:I

    iput v0, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer$1;->lastReturnedIndex:I

    .line 476
    iget v0, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer$1;->index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer$1;->index:I

    .line 477
    iget-object v0, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer$1;->this$0:Lorg/apache/commons/collections/buffer/PriorityBuffer;

    iget-object v0, v0, Lorg/apache/commons/collections/buffer/PriorityBuffer;->elements:[Ljava/lang/Object;

    iget v1, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer$1;->lastReturnedIndex:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public remove()V
    .locals 7

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x1

    .line 481
    iget v1, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer$1;->lastReturnedIndex:I

    if-ne v1, v6, :cond_0

    .line 482
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 484
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer$1;->this$0:Lorg/apache/commons/collections/buffer/PriorityBuffer;

    iget-object v1, v1, Lorg/apache/commons/collections/buffer/PriorityBuffer;->elements:[Ljava/lang/Object;

    iget v2, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer$1;->lastReturnedIndex:I

    iget-object v3, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer$1;->this$0:Lorg/apache/commons/collections/buffer/PriorityBuffer;

    iget-object v3, v3, Lorg/apache/commons/collections/buffer/PriorityBuffer;->elements:[Ljava/lang/Object;

    iget-object v4, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer$1;->this$0:Lorg/apache/commons/collections/buffer/PriorityBuffer;

    iget v4, v4, Lorg/apache/commons/collections/buffer/PriorityBuffer;->size:I

    aget-object v3, v3, v4

    aput-object v3, v1, v2

    .line 485
    iget-object v1, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer$1;->this$0:Lorg/apache/commons/collections/buffer/PriorityBuffer;

    iget-object v1, v1, Lorg/apache/commons/collections/buffer/PriorityBuffer;->elements:[Ljava/lang/Object;

    iget-object v2, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer$1;->this$0:Lorg/apache/commons/collections/buffer/PriorityBuffer;

    iget v2, v2, Lorg/apache/commons/collections/buffer/PriorityBuffer;->size:I

    const/4 v3, 0x0

    aput-object v3, v1, v2

    .line 486
    iget-object v1, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer$1;->this$0:Lorg/apache/commons/collections/buffer/PriorityBuffer;

    iget v2, v1, Lorg/apache/commons/collections/buffer/PriorityBuffer;->size:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Lorg/apache/commons/collections/buffer/PriorityBuffer;->size:I

    .line 487
    iget-object v1, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer$1;->this$0:Lorg/apache/commons/collections/buffer/PriorityBuffer;

    iget v1, v1, Lorg/apache/commons/collections/buffer/PriorityBuffer;->size:I

    if-eqz v1, :cond_2

    iget v1, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer$1;->lastReturnedIndex:I

    iget-object v2, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer$1;->this$0:Lorg/apache/commons/collections/buffer/PriorityBuffer;

    iget v2, v2, Lorg/apache/commons/collections/buffer/PriorityBuffer;->size:I

    if-gt v1, v2, :cond_2

    .line 488
    const/4 v0, 0x0

    .line 489
    .local v0, compareToParent:I
    iget v1, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer$1;->lastReturnedIndex:I

    if-le v1, v5, :cond_1

    .line 490
    iget-object v1, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer$1;->this$0:Lorg/apache/commons/collections/buffer/PriorityBuffer;

    iget-object v2, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer$1;->this$0:Lorg/apache/commons/collections/buffer/PriorityBuffer;

    iget-object v2, v2, Lorg/apache/commons/collections/buffer/PriorityBuffer;->elements:[Ljava/lang/Object;

    iget v3, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer$1;->lastReturnedIndex:I

    aget-object v2, v2, v3

    iget-object v3, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer$1;->this$0:Lorg/apache/commons/collections/buffer/PriorityBuffer;

    iget-object v3, v3, Lorg/apache/commons/collections/buffer/PriorityBuffer;->elements:[Ljava/lang/Object;

    iget v4, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer$1;->lastReturnedIndex:I

    div-int/lit8 v4, v4, 0x2

    aget-object v3, v3, v4

    invoke-virtual {v1, v2, v3}, Lorg/apache/commons/collections/buffer/PriorityBuffer;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 493
    :cond_1
    iget-object v1, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer$1;->this$0:Lorg/apache/commons/collections/buffer/PriorityBuffer;

    iget-boolean v1, v1, Lorg/apache/commons/collections/buffer/PriorityBuffer;->ascendingOrder:Z

    if-eqz v1, :cond_4

    .line 494
    iget v1, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer$1;->lastReturnedIndex:I

    if-le v1, v5, :cond_3

    if-gez v0, :cond_3

    .line 495
    iget-object v1, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer$1;->this$0:Lorg/apache/commons/collections/buffer/PriorityBuffer;

    iget v2, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer$1;->lastReturnedIndex:I

    invoke-virtual {v1, v2}, Lorg/apache/commons/collections/buffer/PriorityBuffer;->percolateUpMinHeap(I)V

    .line 507
    .end local v0           #compareToParent:I
    :cond_2
    :goto_0
    iget v1, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer$1;->index:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer$1;->index:I

    .line 508
    iput v6, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer$1;->lastReturnedIndex:I

    .line 509
    return-void

    .line 497
    .restart local v0       #compareToParent:I
    :cond_3
    iget-object v1, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer$1;->this$0:Lorg/apache/commons/collections/buffer/PriorityBuffer;

    iget v2, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer$1;->lastReturnedIndex:I

    invoke-virtual {v1, v2}, Lorg/apache/commons/collections/buffer/PriorityBuffer;->percolateDownMinHeap(I)V

    goto :goto_0

    .line 500
    :cond_4
    iget v1, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer$1;->lastReturnedIndex:I

    if-le v1, v5, :cond_5

    if-lez v0, :cond_5

    .line 501
    iget-object v1, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer$1;->this$0:Lorg/apache/commons/collections/buffer/PriorityBuffer;

    iget v2, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer$1;->lastReturnedIndex:I

    invoke-virtual {v1, v2}, Lorg/apache/commons/collections/buffer/PriorityBuffer;->percolateUpMaxHeap(I)V

    goto :goto_0

    .line 503
    :cond_5
    iget-object v1, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer$1;->this$0:Lorg/apache/commons/collections/buffer/PriorityBuffer;

    iget v2, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer$1;->lastReturnedIndex:I

    invoke-virtual {v1, v2}, Lorg/apache/commons/collections/buffer/PriorityBuffer;->percolateDownMaxHeap(I)V

    goto :goto_0
.end method
