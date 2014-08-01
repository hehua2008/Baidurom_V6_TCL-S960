.class public final Lorg/apache/commons/collections/bidimap/UnmodifiableOrderedBidiMap;
.super Lorg/apache/commons/collections/bidimap/AbstractOrderedBidiMapDecorator;
.source "UnmodifiableOrderedBidiMap.java"

# interfaces
.implements Lorg/apache/commons/collections/Unmodifiable;


# instance fields
.field private inverse:Lorg/apache/commons/collections/bidimap/UnmodifiableOrderedBidiMap;


# direct methods
.method private constructor <init>(Lorg/apache/commons/collections/OrderedBidiMap;)V
    .locals 0
    .parameter "map"

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/bidimap/AbstractOrderedBidiMapDecorator;-><init>(Lorg/apache/commons/collections/OrderedBidiMap;)V

    .line 71
    return-void
.end method

.method public static decorate(Lorg/apache/commons/collections/OrderedBidiMap;)Lorg/apache/commons/collections/OrderedBidiMap;
    .locals 1
    .parameter "map"

    .prologue
    .line 56
    instance-of v0, p0, Lorg/apache/commons/collections/Unmodifiable;

    if-eqz v0, :cond_0

    .line 59
    .end local p0
    :goto_0
    return-object p0

    .restart local p0
    :cond_0
    new-instance v0, Lorg/apache/commons/collections/bidimap/UnmodifiableOrderedBidiMap;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/bidimap/UnmodifiableOrderedBidiMap;-><init>(Lorg/apache/commons/collections/OrderedBidiMap;)V

    move-object p0, v0

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 75
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 2

    .prologue
    .line 91
    invoke-super {p0}, Lorg/apache/commons/collections/map/AbstractMapDecorator;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 92
    .local v0, set:Ljava/util/Set;
    invoke-static {v0}, Lorg/apache/commons/collections/map/UnmodifiableEntrySet;->decorate(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    return-object v1
.end method

.method public inverseBidiMap()Lorg/apache/commons/collections/BidiMap;
    .locals 1

    .prologue
    .line 115
    invoke-virtual {p0}, Lorg/apache/commons/collections/bidimap/UnmodifiableOrderedBidiMap;->inverseOrderedBidiMap()Lorg/apache/commons/collections/OrderedBidiMap;

    move-result-object v0

    return-object v0
.end method

.method public inverseOrderedBidiMap()Lorg/apache/commons/collections/OrderedBidiMap;
    .locals 2

    .prologue
    .line 125
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/UnmodifiableOrderedBidiMap;->inverse:Lorg/apache/commons/collections/bidimap/UnmodifiableOrderedBidiMap;

    if-nez v0, :cond_0

    .line 126
    new-instance v0, Lorg/apache/commons/collections/bidimap/UnmodifiableOrderedBidiMap;

    invoke-virtual {p0}, Lorg/apache/commons/collections/bidimap/AbstractOrderedBidiMapDecorator;->getOrderedBidiMap()Lorg/apache/commons/collections/OrderedBidiMap;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/collections/OrderedBidiMap;->inverseOrderedBidiMap()Lorg/apache/commons/collections/OrderedBidiMap;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/collections/bidimap/UnmodifiableOrderedBidiMap;-><init>(Lorg/apache/commons/collections/OrderedBidiMap;)V

    iput-object v0, p0, Lorg/apache/commons/collections/bidimap/UnmodifiableOrderedBidiMap;->inverse:Lorg/apache/commons/collections/bidimap/UnmodifiableOrderedBidiMap;

    .line 127
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/UnmodifiableOrderedBidiMap;->inverse:Lorg/apache/commons/collections/bidimap/UnmodifiableOrderedBidiMap;

    iput-object p0, v0, Lorg/apache/commons/collections/bidimap/UnmodifiableOrderedBidiMap;->inverse:Lorg/apache/commons/collections/bidimap/UnmodifiableOrderedBidiMap;

    .line 129
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/UnmodifiableOrderedBidiMap;->inverse:Lorg/apache/commons/collections/bidimap/UnmodifiableOrderedBidiMap;

    return-object v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 2

    .prologue
    .line 96
    invoke-super {p0}, Lorg/apache/commons/collections/map/AbstractMapDecorator;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 97
    .local v0, set:Ljava/util/Set;
    invoke-static {v0}, Lorg/apache/commons/collections/set/UnmodifiableSet;->decorate(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    return-object v1
.end method

.method public mapIterator()Lorg/apache/commons/collections/MapIterator;
    .locals 1

    .prologue
    .line 111
    invoke-virtual {p0}, Lorg/apache/commons/collections/bidimap/UnmodifiableOrderedBidiMap;->orderedMapIterator()Lorg/apache/commons/collections/OrderedMapIterator;

    move-result-object v0

    return-object v0
.end method

.method public orderedMapIterator()Lorg/apache/commons/collections/OrderedMapIterator;
    .locals 2

    .prologue
    .line 120
    invoke-virtual {p0}, Lorg/apache/commons/collections/bidimap/AbstractOrderedBidiMapDecorator;->getOrderedBidiMap()Lorg/apache/commons/collections/OrderedBidiMap;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/collections/OrderedMap;->orderedMapIterator()Lorg/apache/commons/collections/OrderedMapIterator;

    move-result-object v0

    .line 121
    .local v0, it:Lorg/apache/commons/collections/OrderedMapIterator;
    invoke-static {v0}, Lorg/apache/commons/collections/iterators/UnmodifiableOrderedMapIterator;->decorate(Lorg/apache/commons/collections/OrderedMapIterator;)Lorg/apache/commons/collections/OrderedMapIterator;

    move-result-object v1

    return-object v1
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 79
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 1
    .parameter "mapToCopy"

    .prologue
    .line 83
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "key"

    .prologue
    .line 87
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public removeValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "value"

    .prologue
    .line 107
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public values()Ljava/util/Collection;
    .locals 2

    .prologue
    .line 101
    invoke-super {p0}, Lorg/apache/commons/collections/map/AbstractMapDecorator;->values()Ljava/util/Collection;

    move-result-object v0

    .line 102
    .local v0, coll:Ljava/util/Collection;
    invoke-static {v0}, Lorg/apache/commons/collections/collection/UnmodifiableCollection;->decorate(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v1

    return-object v1
.end method
