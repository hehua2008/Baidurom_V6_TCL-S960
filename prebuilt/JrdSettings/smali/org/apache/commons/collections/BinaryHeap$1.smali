.class Lorg/apache/commons/collections/BinaryHeap$1;
.super Ljava/lang/Object;
.source "BinaryHeap.java"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field private index:I

.field private lastReturnedIndex:I

.field private final this$0:Lorg/apache/commons/collections/BinaryHeap;


# direct methods
.method constructor <init>(Lorg/apache/commons/collections/BinaryHeap;)V
    .locals 1
    .parameter "this$0"

    .prologue
    .line 481
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/collections/BinaryHeap$1;->this$0:Lorg/apache/commons/collections/BinaryHeap;

    .line 467
    const/4 v0, 0x1

    iput v0, p0, Lorg/apache/commons/collections/BinaryHeap$1;->index:I

    .line 468
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/commons/collections/BinaryHeap$1;->lastReturnedIndex:I

    .line 481
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .prologue
    .line 471
    iget v0, p0, Lorg/apache/commons/collections/BinaryHeap$1;->index:I

    iget-object v1, p0, Lorg/apache/commons/collections/BinaryHeap$1;->this$0:Lorg/apache/commons/collections/BinaryHeap;

    iget v1, v1, Lorg/apache/commons/collections/BinaryHeap;->m_size:I

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
    .line 475
    invoke-virtual {p0}, Lorg/apache/commons/collections/BinaryHeap$1;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 476
    :cond_0
    iget v0, p0, Lorg/apache/commons/collections/BinaryHeap$1;->index:I

    iput v0, p0, Lorg/apache/commons/collections/BinaryHeap$1;->lastReturnedIndex:I

    .line 477
    iget v0, p0, Lorg/apache/commons/collections/BinaryHeap$1;->index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/collections/BinaryHeap$1;->index:I

    .line 478
    iget-object v0, p0, Lorg/apache/commons/collections/BinaryHeap$1;->this$0:Lorg/apache/commons/collections/BinaryHeap;

    iget-object v0, v0, Lorg/apache/commons/collections/BinaryHeap;->m_elements:[Ljava/lang/Object;

    iget v1, p0, Lorg/apache/commons/collections/BinaryHeap$1;->lastReturnedIndex:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public remove()V
    .locals 7

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x1

    .line 482
    iget v1, p0, Lorg/apache/commons/collections/BinaryHeap$1;->lastReturnedIndex:I

    if-ne v1, v6, :cond_0

    .line 483
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 485
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/collections/BinaryHeap$1;->this$0:Lorg/apache/commons/collections/BinaryHeap;

    iget-object v1, v1, Lorg/apache/commons/collections/BinaryHeap;->m_elements:[Ljava/lang/Object;

    iget v2, p0, Lorg/apache/commons/collections/BinaryHeap$1;->lastReturnedIndex:I

    iget-object v3, p0, Lorg/apache/commons/collections/BinaryHeap$1;->this$0:Lorg/apache/commons/collections/BinaryHeap;

    iget-object v3, v3, Lorg/apache/commons/collections/BinaryHeap;->m_elements:[Ljava/lang/Object;

    iget-object v4, p0, Lorg/apache/commons/collections/BinaryHeap$1;->this$0:Lorg/apache/commons/collections/BinaryHeap;

    iget v4, v4, Lorg/apache/commons/collections/BinaryHeap;->m_size:I

    aget-object v3, v3, v4

    aput-object v3, v1, v2

    .line 486
    iget-object v1, p0, Lorg/apache/commons/collections/BinaryHeap$1;->this$0:Lorg/apache/commons/collections/BinaryHeap;

    iget-object v1, v1, Lorg/apache/commons/collections/BinaryHeap;->m_elements:[Ljava/lang/Object;

    iget-object v2, p0, Lorg/apache/commons/collections/BinaryHeap$1;->this$0:Lorg/apache/commons/collections/BinaryHeap;

    iget v2, v2, Lorg/apache/commons/collections/BinaryHeap;->m_size:I

    const/4 v3, 0x0

    aput-object v3, v1, v2

    .line 487
    iget-object v1, p0, Lorg/apache/commons/collections/BinaryHeap$1;->this$0:Lorg/apache/commons/collections/BinaryHeap;

    iget v2, v1, Lorg/apache/commons/collections/BinaryHeap;->m_size:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Lorg/apache/commons/collections/BinaryHeap;->m_size:I

    .line 488
    iget-object v1, p0, Lorg/apache/commons/collections/BinaryHeap$1;->this$0:Lorg/apache/commons/collections/BinaryHeap;

    iget v1, v1, Lorg/apache/commons/collections/BinaryHeap;->m_size:I

    if-eqz v1, :cond_2

    iget v1, p0, Lorg/apache/commons/collections/BinaryHeap$1;->lastReturnedIndex:I

    iget-object v2, p0, Lorg/apache/commons/collections/BinaryHeap$1;->this$0:Lorg/apache/commons/collections/BinaryHeap;

    iget v2, v2, Lorg/apache/commons/collections/BinaryHeap;->m_size:I

    if-gt v1, v2, :cond_2

    .line 489
    const/4 v0, 0x0

    .line 490
    .local v0, compareToParent:I
    iget v1, p0, Lorg/apache/commons/collections/BinaryHeap$1;->lastReturnedIndex:I

    if-le v1, v5, :cond_1

    .line 491
    iget-object v1, p0, Lorg/apache/commons/collections/BinaryHeap$1;->this$0:Lorg/apache/commons/collections/BinaryHeap;

    iget-object v2, p0, Lorg/apache/commons/collections/BinaryHeap$1;->this$0:Lorg/apache/commons/collections/BinaryHeap;

    iget-object v2, v2, Lorg/apache/commons/collections/BinaryHeap;->m_elements:[Ljava/lang/Object;

    iget v3, p0, Lorg/apache/commons/collections/BinaryHeap$1;->lastReturnedIndex:I

    aget-object v2, v2, v3

    iget-object v3, p0, Lorg/apache/commons/collections/BinaryHeap$1;->this$0:Lorg/apache/commons/collections/BinaryHeap;

    iget-object v3, v3, Lorg/apache/commons/collections/BinaryHeap;->m_elements:[Ljava/lang/Object;

    iget v4, p0, Lorg/apache/commons/collections/BinaryHeap$1;->lastReturnedIndex:I

    div-int/lit8 v4, v4, 0x2

    aget-object v3, v3, v4

    invoke-static {v1, v2, v3}, Lorg/apache/commons/collections/BinaryHeap;->access$000(Lorg/apache/commons/collections/BinaryHeap;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 494
    :cond_1
    iget-object v1, p0, Lorg/apache/commons/collections/BinaryHeap$1;->this$0:Lorg/apache/commons/collections/BinaryHeap;

    iget-boolean v1, v1, Lorg/apache/commons/collections/BinaryHeap;->m_isMinHeap:Z

    if-eqz v1, :cond_4

    .line 495
    iget v1, p0, Lorg/apache/commons/collections/BinaryHeap$1;->lastReturnedIndex:I

    if-le v1, v5, :cond_3

    if-gez v0, :cond_3

    .line 496
    iget-object v1, p0, Lorg/apache/commons/collections/BinaryHeap$1;->this$0:Lorg/apache/commons/collections/BinaryHeap;

    iget v2, p0, Lorg/apache/commons/collections/BinaryHeap$1;->lastReturnedIndex:I

    invoke-virtual {v1, v2}, Lorg/apache/commons/collections/BinaryHeap;->percolateUpMinHeap(I)V

    .line 508
    .end local v0           #compareToParent:I
    :cond_2
    :goto_0
    iget v1, p0, Lorg/apache/commons/collections/BinaryHeap$1;->index:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/apache/commons/collections/BinaryHeap$1;->index:I

    .line 509
    iput v6, p0, Lorg/apache/commons/collections/BinaryHeap$1;->lastReturnedIndex:I

    .line 510
    return-void

    .line 498
    .restart local v0       #compareToParent:I
    :cond_3
    iget-object v1, p0, Lorg/apache/commons/collections/BinaryHeap$1;->this$0:Lorg/apache/commons/collections/BinaryHeap;

    iget v2, p0, Lorg/apache/commons/collections/BinaryHeap$1;->lastReturnedIndex:I

    invoke-virtual {v1, v2}, Lorg/apache/commons/collections/BinaryHeap;->percolateDownMinHeap(I)V

    goto :goto_0

    .line 501
    :cond_4
    iget v1, p0, Lorg/apache/commons/collections/BinaryHeap$1;->lastReturnedIndex:I

    if-le v1, v5, :cond_5

    if-lez v0, :cond_5

    .line 502
    iget-object v1, p0, Lorg/apache/commons/collections/BinaryHeap$1;->this$0:Lorg/apache/commons/collections/BinaryHeap;

    iget v2, p0, Lorg/apache/commons/collections/BinaryHeap$1;->lastReturnedIndex:I

    invoke-virtual {v1, v2}, Lorg/apache/commons/collections/BinaryHeap;->percolateUpMaxHeap(I)V

    goto :goto_0

    .line 504
    :cond_5
    iget-object v1, p0, Lorg/apache/commons/collections/BinaryHeap$1;->this$0:Lorg/apache/commons/collections/BinaryHeap;

    iget v2, p0, Lorg/apache/commons/collections/BinaryHeap$1;->lastReturnedIndex:I

    invoke-virtual {v1, v2}, Lorg/apache/commons/collections/BinaryHeap;->percolateDownMaxHeap(I)V

    goto :goto_0
.end method
