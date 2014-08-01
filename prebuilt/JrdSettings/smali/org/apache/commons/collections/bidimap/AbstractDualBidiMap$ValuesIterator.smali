.class public Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$ValuesIterator;
.super Lorg/apache/commons/collections/iterators/AbstractIteratorDecorator;
.source "AbstractDualBidiMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ValuesIterator"
.end annotation


# instance fields
.field protected canRemove:Z

.field protected lastValue:Ljava/lang/Object;

.field protected final parent:Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;


# direct methods
.method protected constructor <init>(Ljava/util/Iterator;Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;)V
    .locals 1
    .parameter "iterator"
    .parameter "parent"

    .prologue
    .line 510
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/iterators/AbstractIteratorDecorator;-><init>(Ljava/util/Iterator;)V

    .line 500
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$ValuesIterator;->lastValue:Ljava/lang/Object;

    .line 502
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$ValuesIterator;->canRemove:Z

    .line 511
    iput-object p2, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$ValuesIterator;->parent:Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;

    .line 512
    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 515
    invoke-super {p0}, Lorg/apache/commons/collections/iterators/AbstractIteratorDecorator;->next()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$ValuesIterator;->lastValue:Ljava/lang/Object;

    .line 516
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$ValuesIterator;->canRemove:Z

    .line 517
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$ValuesIterator;->lastValue:Ljava/lang/Object;

    return-object v0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 521
    iget-boolean v0, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$ValuesIterator;->canRemove:Z

    if-nez v0, :cond_0

    .line 522
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Iterator remove() can only be called once after next()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 524
    :cond_0
    invoke-super {p0}, Lorg/apache/commons/collections/iterators/AbstractIteratorDecorator;->remove()V

    .line 525
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$ValuesIterator;->parent:Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;

    iget-object v0, v0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->maps:[Ljava/util/Map;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iget-object v1, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$ValuesIterator;->lastValue:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 526
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$ValuesIterator;->lastValue:Ljava/lang/Object;

    .line 527
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$ValuesIterator;->canRemove:Z

    .line 528
    return-void
.end method
