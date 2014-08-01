.class public Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$EntrySetIterator;
.super Lorg/apache/commons/collections/iterators/AbstractIteratorDecorator;
.source "AbstractDualBidiMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "EntrySetIterator"
.end annotation


# instance fields
.field protected canRemove:Z

.field protected last:Ljava/util/Map$Entry;

.field protected final parent:Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;


# direct methods
.method protected constructor <init>(Ljava/util/Iterator;Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;)V
    .locals 1
    .parameter "iterator"
    .parameter "parent"

    .prologue
    .line 586
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/iterators/AbstractIteratorDecorator;-><init>(Ljava/util/Iterator;)V

    .line 576
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$EntrySetIterator;->last:Ljava/util/Map$Entry;

    .line 578
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$EntrySetIterator;->canRemove:Z

    .line 587
    iput-object p2, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$EntrySetIterator;->parent:Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;

    .line 588
    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 591
    new-instance v1, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$MapEntry;

    invoke-super {p0}, Lorg/apache/commons/collections/iterators/AbstractIteratorDecorator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iget-object v2, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$EntrySetIterator;->parent:Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;

    invoke-direct {v1, v0, v2}, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$MapEntry;-><init>(Ljava/util/Map$Entry;Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;)V

    iput-object v1, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$EntrySetIterator;->last:Ljava/util/Map$Entry;

    .line 592
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$EntrySetIterator;->canRemove:Z

    .line 593
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$EntrySetIterator;->last:Ljava/util/Map$Entry;

    return-object v0
.end method

.method public remove()V
    .locals 3

    .prologue
    .line 597
    iget-boolean v1, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$EntrySetIterator;->canRemove:Z

    if-nez v1, :cond_0

    .line 598
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Iterator remove() can only be called once after next()"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 601
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$EntrySetIterator;->last:Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 602
    .local v0, value:Ljava/lang/Object;
    invoke-super {p0}, Lorg/apache/commons/collections/iterators/AbstractIteratorDecorator;->remove()V

    .line 603
    iget-object v1, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$EntrySetIterator;->parent:Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;

    iget-object v1, v1, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->maps:[Ljava/util/Map;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 604
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$EntrySetIterator;->last:Ljava/util/Map$Entry;

    .line 605
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$EntrySetIterator;->canRemove:Z

    .line 606
    return-void
.end method
