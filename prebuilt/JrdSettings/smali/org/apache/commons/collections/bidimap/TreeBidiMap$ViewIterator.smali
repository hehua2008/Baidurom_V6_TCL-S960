.class Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewIterator;
.super Ljava/lang/Object;
.source "TreeBidiMap.java"

# interfaces
.implements Lorg/apache/commons/collections/OrderedIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections/bidimap/TreeBidiMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewIterator"
.end annotation


# instance fields
.field protected final dataType:I

.field private expectedModifications:I

.field protected lastReturnedNode:Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

.field protected final main:Lorg/apache/commons/collections/bidimap/TreeBidiMap;

.field protected nextNode:Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

.field protected final orderType:I

.field protected previousNode:Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;


# direct methods
.method constructor <init>(Lorg/apache/commons/collections/bidimap/TreeBidiMap;II)V
    .locals 2
    .parameter "main"
    .parameter "orderType"
    .parameter "dataType"

    .prologue
    const/4 v1, 0x0

    .line 1539
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1540
    iput-object p1, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewIterator;->main:Lorg/apache/commons/collections/bidimap/TreeBidiMap;

    .line 1541
    iput p2, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewIterator;->orderType:I

    .line 1542
    iput p3, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewIterator;->dataType:I

    .line 1543
    invoke-static {p1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->access$1600(Lorg/apache/commons/collections/bidimap/TreeBidiMap;)I

    move-result v0

    iput v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewIterator;->expectedModifications:I

    .line 1544
    invoke-static {p1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->access$1700(Lorg/apache/commons/collections/bidimap/TreeBidiMap;)[Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v0

    aget-object v0, v0, p2

    invoke-static {v0, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->access$1800(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewIterator;->nextNode:Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    .line 1545
    iput-object v1, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewIterator;->lastReturnedNode:Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    .line 1546
    iput-object v1, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewIterator;->previousNode:Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    .line 1547
    return-void
.end method


# virtual methods
.method protected doGetData()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 1591
    iget v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewIterator;->dataType:I

    packed-switch v0, :pswitch_data_0

    .line 1601
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 1593
    :pswitch_0
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewIterator;->lastReturnedNode:Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    invoke-virtual {v0}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->getKey()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 1595
    :pswitch_1
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewIterator;->lastReturnedNode:Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    invoke-virtual {v0}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->getValue()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 1597
    :pswitch_2
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewIterator;->lastReturnedNode:Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    goto :goto_0

    .line 1599
    :pswitch_3
    new-instance v0, Lorg/apache/commons/collections/keyvalue/UnmodifiableMapEntry;

    iget-object v1, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewIterator;->lastReturnedNode:Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    invoke-virtual {v1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->getValue()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewIterator;->lastReturnedNode:Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    invoke-virtual {v2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/collections/keyvalue/UnmodifiableMapEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 1591
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public final hasNext()Z
    .locals 1

    .prologue
    .line 1550
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewIterator;->nextNode:Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPrevious()Z
    .locals 1

    .prologue
    .line 1567
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewIterator;->previousNode:Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final next()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 1554
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewIterator;->nextNode:Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    if-nez v0, :cond_0

    .line 1555
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 1557
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewIterator;->main:Lorg/apache/commons/collections/bidimap/TreeBidiMap;

    invoke-static {v0}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->access$1600(Lorg/apache/commons/collections/bidimap/TreeBidiMap;)I

    move-result v0

    iget v1, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewIterator;->expectedModifications:I

    if-eq v0, v1, :cond_1

    .line 1558
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 1560
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewIterator;->nextNode:Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    iput-object v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewIterator;->lastReturnedNode:Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    .line 1561
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewIterator;->nextNode:Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    iput-object v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewIterator;->previousNode:Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    .line 1562
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewIterator;->main:Lorg/apache/commons/collections/bidimap/TreeBidiMap;

    iget-object v1, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewIterator;->nextNode:Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    iget v2, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewIterator;->orderType:I

    invoke-static {v0, v1, v2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->access$1900(Lorg/apache/commons/collections/bidimap/TreeBidiMap;Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewIterator;->nextNode:Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    .line 1563
    invoke-virtual {p0}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewIterator;->doGetData()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public previous()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 1571
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewIterator;->previousNode:Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    if-nez v0, :cond_0

    .line 1572
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 1574
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewIterator;->main:Lorg/apache/commons/collections/bidimap/TreeBidiMap;

    invoke-static {v0}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->access$1600(Lorg/apache/commons/collections/bidimap/TreeBidiMap;)I

    move-result v0

    iget v1, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewIterator;->expectedModifications:I

    if-eq v0, v1, :cond_1

    .line 1575
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 1577
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewIterator;->lastReturnedNode:Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    iput-object v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewIterator;->nextNode:Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    .line 1578
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewIterator;->nextNode:Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    if-nez v0, :cond_2

    .line 1579
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewIterator;->main:Lorg/apache/commons/collections/bidimap/TreeBidiMap;

    iget-object v1, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewIterator;->previousNode:Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    iget v2, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewIterator;->orderType:I

    invoke-static {v0, v1, v2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->access$1900(Lorg/apache/commons/collections/bidimap/TreeBidiMap;Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewIterator;->nextNode:Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    .line 1581
    :cond_2
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewIterator;->previousNode:Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    iput-object v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewIterator;->lastReturnedNode:Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    .line 1582
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewIterator;->main:Lorg/apache/commons/collections/bidimap/TreeBidiMap;

    iget-object v1, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewIterator;->previousNode:Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    iget v2, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewIterator;->orderType:I

    invoke-static {v0, v1, v2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->access$2000(Lorg/apache/commons/collections/bidimap/TreeBidiMap;Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewIterator;->previousNode:Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    .line 1583
    invoke-virtual {p0}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewIterator;->doGetData()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final remove()V
    .locals 3

    .prologue
    .line 1605
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewIterator;->lastReturnedNode:Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    if-nez v0, :cond_0

    .line 1606
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 1608
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewIterator;->main:Lorg/apache/commons/collections/bidimap/TreeBidiMap;

    invoke-static {v0}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->access$1600(Lorg/apache/commons/collections/bidimap/TreeBidiMap;)I

    move-result v0

    iget v1, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewIterator;->expectedModifications:I

    if-eq v0, v1, :cond_1

    .line 1609
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 1611
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewIterator;->main:Lorg/apache/commons/collections/bidimap/TreeBidiMap;

    iget-object v1, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewIterator;->lastReturnedNode:Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    invoke-static {v0, v1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->access$2100(Lorg/apache/commons/collections/bidimap/TreeBidiMap;Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;)V

    .line 1612
    iget v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewIterator;->expectedModifications:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewIterator;->expectedModifications:I

    .line 1613
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewIterator;->lastReturnedNode:Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    .line 1614
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewIterator;->nextNode:Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    if-nez v0, :cond_2

    .line 1615
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewIterator;->main:Lorg/apache/commons/collections/bidimap/TreeBidiMap;

    invoke-static {v0}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->access$1700(Lorg/apache/commons/collections/bidimap/TreeBidiMap;)[Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v0

    iget v1, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewIterator;->orderType:I

    aget-object v0, v0, v1

    iget v1, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewIterator;->orderType:I

    invoke-static {v0, v1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->access$2200(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewIterator;->previousNode:Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    .line 1619
    :goto_0
    return-void

    .line 1617
    :cond_2
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewIterator;->main:Lorg/apache/commons/collections/bidimap/TreeBidiMap;

    iget-object v1, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewIterator;->nextNode:Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    iget v2, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewIterator;->orderType:I

    invoke-static {v0, v1, v2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->access$2000(Lorg/apache/commons/collections/bidimap/TreeBidiMap;Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewIterator;->previousNode:Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    goto :goto_0
.end method
