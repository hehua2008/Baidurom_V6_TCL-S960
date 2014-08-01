.class public Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$BidiMapIterator;
.super Ljava/lang/Object;
.source "AbstractDualBidiMap.java"

# interfaces
.implements Lorg/apache/commons/collections/MapIterator;
.implements Lorg/apache/commons/collections/ResettableIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "BidiMapIterator"
.end annotation


# instance fields
.field protected canRemove:Z

.field protected iterator:Ljava/util/Iterator;

.field protected last:Ljava/util/Map$Entry;

.field protected final parent:Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;


# direct methods
.method protected constructor <init>(Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;)V
    .locals 2
    .parameter "parent"

    .prologue
    const/4 v1, 0x0

    .line 658
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 649
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$BidiMapIterator;->last:Ljava/util/Map$Entry;

    .line 651
    iput-boolean v1, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$BidiMapIterator;->canRemove:Z

    .line 659
    iput-object p1, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$BidiMapIterator;->parent:Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;

    .line 660
    iget-object v0, p1, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->maps:[Ljava/util/Map;

    aget-object v0, v0, v1

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$BidiMapIterator;->iterator:Ljava/util/Iterator;

    .line 661
    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 686
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$BidiMapIterator;->last:Ljava/util/Map$Entry;

    if-nez v0, :cond_0

    .line 687
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Iterator getKey() can only be called after next() and before remove()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 689
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$BidiMapIterator;->last:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 693
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$BidiMapIterator;->last:Ljava/util/Map$Entry;

    if-nez v0, :cond_0

    .line 694
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Iterator getValue() can only be called after next() and before remove()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 696
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$BidiMapIterator;->last:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public hasNext()Z
    .locals 1

    .prologue
    .line 664
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$BidiMapIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 668
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$BidiMapIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iput-object v0, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$BidiMapIterator;->last:Ljava/util/Map$Entry;

    .line 669
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$BidiMapIterator;->canRemove:Z

    .line 670
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$BidiMapIterator;->last:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 3

    .prologue
    .line 674
    iget-boolean v1, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$BidiMapIterator;->canRemove:Z

    if-nez v1, :cond_0

    .line 675
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Iterator remove() can only be called once after next()"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 678
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$BidiMapIterator;->last:Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 679
    .local v0, value:Ljava/lang/Object;
    iget-object v1, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$BidiMapIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 680
    iget-object v1, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$BidiMapIterator;->parent:Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;

    iget-object v1, v1, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->maps:[Ljava/util/Map;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 681
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$BidiMapIterator;->last:Ljava/util/Map$Entry;

    .line 682
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$BidiMapIterator;->canRemove:Z

    .line 683
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 711
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$BidiMapIterator;->parent:Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;

    iget-object v0, v0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->maps:[Ljava/util/Map;

    aget-object v0, v0, v1

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$BidiMapIterator;->iterator:Ljava/util/Iterator;

    .line 712
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$BidiMapIterator;->last:Ljava/util/Map$Entry;

    .line 713
    iput-boolean v1, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$BidiMapIterator;->canRemove:Z

    .line 714
    return-void
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "value"

    .prologue
    const/4 v1, 0x1

    .line 700
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$BidiMapIterator;->last:Ljava/util/Map$Entry;

    if-nez v0, :cond_0

    .line 701
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Iterator setValue() can only be called after next() and before remove()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 703
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$BidiMapIterator;->parent:Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;

    iget-object v0, v0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->maps:[Ljava/util/Map;

    aget-object v0, v0, v1

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$BidiMapIterator;->parent:Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;

    iget-object v0, v0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->maps:[Ljava/util/Map;

    aget-object v0, v0, v1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$BidiMapIterator;->last:Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 705
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot use setValue() when the object being set is already in the map"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 707
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$BidiMapIterator;->parent:Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;

    iget-object v1, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$BidiMapIterator;->last:Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 717
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$BidiMapIterator;->last:Ljava/util/Map$Entry;

    if-eqz v0, :cond_0

    .line 718
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "MapIterator["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$BidiMapIterator;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$BidiMapIterator;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 720
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "MapIterator[]"

    goto :goto_0
.end method
