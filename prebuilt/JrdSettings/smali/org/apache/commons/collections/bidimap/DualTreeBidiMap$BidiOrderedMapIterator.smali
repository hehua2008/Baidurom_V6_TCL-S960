.class public Lorg/apache/commons/collections/bidimap/DualTreeBidiMap$BidiOrderedMapIterator;
.super Ljava/lang/Object;
.source "DualTreeBidiMap.java"

# interfaces
.implements Lorg/apache/commons/collections/OrderedMapIterator;
.implements Lorg/apache/commons/collections/ResettableIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections/bidimap/DualTreeBidiMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "BidiOrderedMapIterator"
.end annotation


# instance fields
.field protected iterator:Ljava/util/ListIterator;

.field private last:Ljava/util/Map$Entry;

.field protected final parent:Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;


# direct methods
.method protected constructor <init>(Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;)V
    .locals 2
    .parameter "parent"

    .prologue
    .line 265
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 258
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/collections/bidimap/DualTreeBidiMap$BidiOrderedMapIterator;->last:Ljava/util/Map$Entry;

    .line 266
    iput-object p1, p0, Lorg/apache/commons/collections/bidimap/DualTreeBidiMap$BidiOrderedMapIterator;->parent:Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;

    .line 267
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/AbstractList;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections/bidimap/DualTreeBidiMap$BidiOrderedMapIterator;->iterator:Ljava/util/ListIterator;

    .line 268
    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 295
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/DualTreeBidiMap$BidiOrderedMapIterator;->last:Ljava/util/Map$Entry;

    if-nez v0, :cond_0

    .line 296
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Iterator getKey() can only be called after next() and before remove()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 298
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/DualTreeBidiMap$BidiOrderedMapIterator;->last:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 302
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/DualTreeBidiMap$BidiOrderedMapIterator;->last:Ljava/util/Map$Entry;

    if-nez v0, :cond_0

    .line 303
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Iterator getValue() can only be called after next() and before remove()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 305
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/DualTreeBidiMap$BidiOrderedMapIterator;->last:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public hasNext()Z
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/DualTreeBidiMap$BidiOrderedMapIterator;->iterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public hasPrevious()Z
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/DualTreeBidiMap$BidiOrderedMapIterator;->iterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/DualTreeBidiMap$BidiOrderedMapIterator;->iterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iput-object v0, p0, Lorg/apache/commons/collections/bidimap/DualTreeBidiMap$BidiOrderedMapIterator;->last:Ljava/util/Map$Entry;

    .line 276
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/DualTreeBidiMap$BidiOrderedMapIterator;->last:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public previous()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/DualTreeBidiMap$BidiOrderedMapIterator;->iterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iput-object v0, p0, Lorg/apache/commons/collections/bidimap/DualTreeBidiMap$BidiOrderedMapIterator;->last:Ljava/util/Map$Entry;

    .line 285
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/DualTreeBidiMap$BidiOrderedMapIterator;->last:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 289
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/DualTreeBidiMap$BidiOrderedMapIterator;->iterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->remove()V

    .line 290
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/DualTreeBidiMap$BidiOrderedMapIterator;->parent:Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;

    iget-object v1, p0, Lorg/apache/commons/collections/bidimap/DualTreeBidiMap$BidiOrderedMapIterator;->last:Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/collections/bidimap/DualTreeBidiMap$BidiOrderedMapIterator;->last:Ljava/util/Map$Entry;

    .line 292
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 320
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/apache/commons/collections/bidimap/DualTreeBidiMap$BidiOrderedMapIterator;->parent:Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;

    invoke-virtual {v1}, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/AbstractList;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections/bidimap/DualTreeBidiMap$BidiOrderedMapIterator;->iterator:Ljava/util/ListIterator;

    .line 321
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/collections/bidimap/DualTreeBidiMap$BidiOrderedMapIterator;->last:Ljava/util/Map$Entry;

    .line 322
    return-void
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "value"

    .prologue
    const/4 v1, 0x1

    .line 309
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/DualTreeBidiMap$BidiOrderedMapIterator;->last:Ljava/util/Map$Entry;

    if-nez v0, :cond_0

    .line 310
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Iterator setValue() can only be called after next() and before remove()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 312
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/DualTreeBidiMap$BidiOrderedMapIterator;->parent:Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;

    iget-object v0, v0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->maps:[Ljava/util/Map;

    aget-object v0, v0, v1

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/DualTreeBidiMap$BidiOrderedMapIterator;->parent:Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;

    iget-object v0, v0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->maps:[Ljava/util/Map;

    aget-object v0, v0, v1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/collections/bidimap/DualTreeBidiMap$BidiOrderedMapIterator;->last:Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 314
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot use setValue() when the object being set is already in the map"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 316
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/DualTreeBidiMap$BidiOrderedMapIterator;->parent:Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;

    iget-object v1, p0, Lorg/apache/commons/collections/bidimap/DualTreeBidiMap$BidiOrderedMapIterator;->last:Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 325
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/DualTreeBidiMap$BidiOrderedMapIterator;->last:Ljava/util/Map$Entry;

    if-eqz v0, :cond_0

    .line 326
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "MapIterator["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/commons/collections/bidimap/DualTreeBidiMap$BidiOrderedMapIterator;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/commons/collections/bidimap/DualTreeBidiMap$BidiOrderedMapIterator;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 328
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "MapIterator[]"

    goto :goto_0
.end method
