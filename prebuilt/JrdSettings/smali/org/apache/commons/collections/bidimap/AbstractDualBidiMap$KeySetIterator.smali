.class public Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$KeySetIterator;
.super Lorg/apache/commons/collections/iterators/AbstractIteratorDecorator;
.source "AbstractDualBidiMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "KeySetIterator"
.end annotation


# instance fields
.field protected canRemove:Z

.field protected lastKey:Ljava/lang/Object;

.field protected final parent:Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;


# direct methods
.method protected constructor <init>(Ljava/util/Iterator;Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;)V
    .locals 1
    .parameter "iterator"
    .parameter "parent"

    .prologue
    .line 437
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/iterators/AbstractIteratorDecorator;-><init>(Ljava/util/Iterator;)V

    .line 427
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$KeySetIterator;->lastKey:Ljava/lang/Object;

    .line 429
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$KeySetIterator;->canRemove:Z

    .line 438
    iput-object p2, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$KeySetIterator;->parent:Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;

    .line 439
    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 442
    invoke-super {p0}, Lorg/apache/commons/collections/iterators/AbstractIteratorDecorator;->next()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$KeySetIterator;->lastKey:Ljava/lang/Object;

    .line 443
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$KeySetIterator;->canRemove:Z

    .line 444
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$KeySetIterator;->lastKey:Ljava/lang/Object;

    return-object v0
.end method

.method public remove()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 448
    iget-boolean v1, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$KeySetIterator;->canRemove:Z

    if-nez v1, :cond_0

    .line 449
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Iterator remove() can only be called once after next()"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 451
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$KeySetIterator;->parent:Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;

    iget-object v1, v1, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->maps:[Ljava/util/Map;

    aget-object v1, v1, v3

    iget-object v2, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$KeySetIterator;->lastKey:Ljava/lang/Object;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 452
    .local v0, value:Ljava/lang/Object;
    invoke-super {p0}, Lorg/apache/commons/collections/iterators/AbstractIteratorDecorator;->remove()V

    .line 453
    iget-object v1, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$KeySetIterator;->parent:Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;

    iget-object v1, v1, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->maps:[Ljava/util/Map;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$KeySetIterator;->lastKey:Ljava/lang/Object;

    .line 455
    iput-boolean v3, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$KeySetIterator;->canRemove:Z

    .line 456
    return-void
.end method
