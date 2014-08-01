.class public final Lorg/apache/commons/collections/bidimap/UnmodifiableSortedBidiMap;
.super Lorg/apache/commons/collections/bidimap/AbstractSortedBidiMapDecorator;
.source "UnmodifiableSortedBidiMap.java"

# interfaces
.implements Lorg/apache/commons/collections/Unmodifiable;


# instance fields
.field private inverse:Lorg/apache/commons/collections/bidimap/UnmodifiableSortedBidiMap;


# direct methods
.method private constructor <init>(Lorg/apache/commons/collections/SortedBidiMap;)V
    .locals 0
    .parameter "map"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/bidimap/AbstractSortedBidiMapDecorator;-><init>(Lorg/apache/commons/collections/SortedBidiMap;)V

    .line 74
    return-void
.end method

.method public static decorate(Lorg/apache/commons/collections/SortedBidiMap;)Lorg/apache/commons/collections/SortedBidiMap;
    .locals 1
    .parameter "map"

    .prologue
    .line 59
    instance-of v0, p0, Lorg/apache/commons/collections/Unmodifiable;

    if-eqz v0, :cond_0

    .line 62
    .end local p0
    :goto_0
    return-object p0

    .restart local p0
    :cond_0
    new-instance v0, Lorg/apache/commons/collections/bidimap/UnmodifiableSortedBidiMap;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/bidimap/UnmodifiableSortedBidiMap;-><init>(Lorg/apache/commons/collections/SortedBidiMap;)V

    move-object p0, v0

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 78
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 2

    .prologue
    .line 94
    invoke-super {p0}, Lorg/apache/commons/collections/map/AbstractMapDecorator;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 95
    .local v0, set:Ljava/util/Set;
    invoke-static {v0}, Lorg/apache/commons/collections/map/UnmodifiableEntrySet;->decorate(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    return-object v1
.end method

.method public headMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 2
    .parameter "toKey"

    .prologue
    .line 146
    invoke-virtual {p0}, Lorg/apache/commons/collections/bidimap/AbstractSortedBidiMapDecorator;->getSortedBidiMap()Lorg/apache/commons/collections/SortedBidiMap;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/SortedMap;->headMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v0

    .line 147
    .local v0, sm:Ljava/util/SortedMap;
    invoke-static {v0}, Lorg/apache/commons/collections/map/UnmodifiableSortedMap;->decorate(Ljava/util/SortedMap;)Ljava/util/SortedMap;

    move-result-object v1

    return-object v1
.end method

.method public inverseBidiMap()Lorg/apache/commons/collections/BidiMap;
    .locals 1

    .prologue
    .line 118
    invoke-virtual {p0}, Lorg/apache/commons/collections/bidimap/UnmodifiableSortedBidiMap;->inverseSortedBidiMap()Lorg/apache/commons/collections/SortedBidiMap;

    move-result-object v0

    return-object v0
.end method

.method public inverseOrderedBidiMap()Lorg/apache/commons/collections/OrderedBidiMap;
    .locals 1

    .prologue
    .line 128
    invoke-virtual {p0}, Lorg/apache/commons/collections/bidimap/UnmodifiableSortedBidiMap;->inverseSortedBidiMap()Lorg/apache/commons/collections/SortedBidiMap;

    move-result-object v0

    return-object v0
.end method

.method public inverseSortedBidiMap()Lorg/apache/commons/collections/SortedBidiMap;
    .locals 2

    .prologue
    .line 133
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/UnmodifiableSortedBidiMap;->inverse:Lorg/apache/commons/collections/bidimap/UnmodifiableSortedBidiMap;

    if-nez v0, :cond_0

    .line 134
    new-instance v0, Lorg/apache/commons/collections/bidimap/UnmodifiableSortedBidiMap;

    invoke-virtual {p0}, Lorg/apache/commons/collections/bidimap/AbstractSortedBidiMapDecorator;->getSortedBidiMap()Lorg/apache/commons/collections/SortedBidiMap;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/collections/SortedBidiMap;->inverseSortedBidiMap()Lorg/apache/commons/collections/SortedBidiMap;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/collections/bidimap/UnmodifiableSortedBidiMap;-><init>(Lorg/apache/commons/collections/SortedBidiMap;)V

    iput-object v0, p0, Lorg/apache/commons/collections/bidimap/UnmodifiableSortedBidiMap;->inverse:Lorg/apache/commons/collections/bidimap/UnmodifiableSortedBidiMap;

    .line 135
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/UnmodifiableSortedBidiMap;->inverse:Lorg/apache/commons/collections/bidimap/UnmodifiableSortedBidiMap;

    iput-object p0, v0, Lorg/apache/commons/collections/bidimap/UnmodifiableSortedBidiMap;->inverse:Lorg/apache/commons/collections/bidimap/UnmodifiableSortedBidiMap;

    .line 137
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/UnmodifiableSortedBidiMap;->inverse:Lorg/apache/commons/collections/bidimap/UnmodifiableSortedBidiMap;

    return-object v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 2

    .prologue
    .line 99
    invoke-super {p0}, Lorg/apache/commons/collections/map/AbstractMapDecorator;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 100
    .local v0, set:Ljava/util/Set;
    invoke-static {v0}, Lorg/apache/commons/collections/set/UnmodifiableSet;->decorate(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    return-object v1
.end method

.method public mapIterator()Lorg/apache/commons/collections/MapIterator;
    .locals 1

    .prologue
    .line 114
    invoke-virtual {p0}, Lorg/apache/commons/collections/bidimap/UnmodifiableSortedBidiMap;->orderedMapIterator()Lorg/apache/commons/collections/OrderedMapIterator;

    move-result-object v0

    return-object v0
.end method

.method public orderedMapIterator()Lorg/apache/commons/collections/OrderedMapIterator;
    .locals 2

    .prologue
    .line 123
    invoke-virtual {p0}, Lorg/apache/commons/collections/bidimap/AbstractSortedBidiMapDecorator;->getSortedBidiMap()Lorg/apache/commons/collections/SortedBidiMap;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/collections/OrderedMap;->orderedMapIterator()Lorg/apache/commons/collections/OrderedMapIterator;

    move-result-object v0

    .line 124
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
    .line 82
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 1
    .parameter "mapToCopy"

    .prologue
    .line 86
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "key"

    .prologue
    .line 90
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public removeValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "value"

    .prologue
    .line 110
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 2
    .parameter "fromKey"
    .parameter "toKey"

    .prologue
    .line 141
    invoke-virtual {p0}, Lorg/apache/commons/collections/bidimap/AbstractSortedBidiMapDecorator;->getSortedBidiMap()Lorg/apache/commons/collections/SortedBidiMap;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Ljava/util/SortedMap;->subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v0

    .line 142
    .local v0, sm:Ljava/util/SortedMap;
    invoke-static {v0}, Lorg/apache/commons/collections/map/UnmodifiableSortedMap;->decorate(Ljava/util/SortedMap;)Ljava/util/SortedMap;

    move-result-object v1

    return-object v1
.end method

.method public tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 2
    .parameter "fromKey"

    .prologue
    .line 151
    invoke-virtual {p0}, Lorg/apache/commons/collections/bidimap/AbstractSortedBidiMapDecorator;->getSortedBidiMap()Lorg/apache/commons/collections/SortedBidiMap;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/SortedMap;->tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v0

    .line 152
    .local v0, sm:Ljava/util/SortedMap;
    invoke-static {v0}, Lorg/apache/commons/collections/map/UnmodifiableSortedMap;->decorate(Ljava/util/SortedMap;)Ljava/util/SortedMap;

    move-result-object v1

    return-object v1
.end method

.method public values()Ljava/util/Collection;
    .locals 2

    .prologue
    .line 104
    invoke-super {p0}, Lorg/apache/commons/collections/map/AbstractMapDecorator;->values()Ljava/util/Collection;

    move-result-object v0

    .line 105
    .local v0, coll:Ljava/util/Collection;
    invoke-static {v0}, Lorg/apache/commons/collections/collection/UnmodifiableCollection;->decorate(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v1

    return-object v1
.end method
