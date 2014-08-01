.class Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewMapIterator;
.super Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewIterator;
.source "TreeBidiMap.java"

# interfaces
.implements Lorg/apache/commons/collections/OrderedMapIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections/bidimap/TreeBidiMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewMapIterator"
.end annotation


# instance fields
.field private final oppositeType:I


# direct methods
.method constructor <init>(Lorg/apache/commons/collections/bidimap/TreeBidiMap;I)V
    .locals 1
    .parameter "main"
    .parameter "orderType"

    .prologue
    .line 1637
    invoke-direct {p0, p1, p2, p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewIterator;-><init>(Lorg/apache/commons/collections/bidimap/TreeBidiMap;II)V

    .line 1638
    iget v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewIterator;->dataType:I

    invoke-static {v0}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->access$2300(I)I

    move-result v0

    iput v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewMapIterator;->oppositeType:I

    .line 1639
    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1642
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewIterator;->lastReturnedNode:Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    if-nez v0, :cond_0

    .line 1643
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Iterator getKey() can only be called after next() and before remove()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1645
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewIterator;->lastReturnedNode:Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    iget v1, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewIterator;->dataType:I

    invoke-static {v0, v1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$000(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Ljava/lang/Comparable;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1649
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewIterator;->lastReturnedNode:Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    if-nez v0, :cond_0

    .line 1650
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Iterator getValue() can only be called after next() and before remove()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1652
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewIterator;->lastReturnedNode:Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    iget v1, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewMapIterator;->oppositeType:I

    invoke-static {v0, v1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$000(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Ljava/lang/Comparable;

    move-result-object v0

    return-object v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "obj"

    .prologue
    .line 1656
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
