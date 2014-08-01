.class public final Lorg/apache/commons/collections/map/UnmodifiableSortedMap;
.super Lorg/apache/commons/collections/map/AbstractSortedMapDecorator;
.source "UnmodifiableSortedMap.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lorg/apache/commons/collections/Unmodifiable;


# static fields
.field private static final serialVersionUID:J = 0x5090b9d3fdc558e8L


# direct methods
.method private constructor <init>(Ljava/util/SortedMap;)V
    .locals 0
    .parameter "map"

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/map/AbstractSortedMapDecorator;-><init>(Ljava/util/SortedMap;)V

    .line 71
    return-void
.end method

.method public static decorate(Ljava/util/SortedMap;)Ljava/util/SortedMap;
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
    new-instance v0, Lorg/apache/commons/collections/map/UnmodifiableSortedMap;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/map/UnmodifiableSortedMap;-><init>(Ljava/util/SortedMap;)V

    move-object p0, v0

    goto :goto_0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 95
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 96
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lorg/apache/commons/collections/map/AbstractMapDecorator;->map:Ljava/util/Map;

    .line 97
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 82
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 83
    iget-object v0, p0, Lorg/apache/commons/collections/map/AbstractMapDecorator;->map:Ljava/util/Map;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 84
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 101
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public comparator()Ljava/util/Comparator;
    .locals 1

    .prologue
    .line 141
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/AbstractSortedMapDecorator;->getSortedMap()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 2

    .prologue
    .line 117
    invoke-super {p0}, Lorg/apache/commons/collections/map/AbstractMapDecorator;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 118
    .local v0, set:Ljava/util/Set;
    invoke-static {v0}, Lorg/apache/commons/collections/map/UnmodifiableEntrySet;->decorate(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    return-object v1
.end method

.method public firstKey()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 133
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/AbstractSortedMapDecorator;->getSortedMap()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->firstKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public headMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 2
    .parameter "toKey"

    .prologue
    .line 150
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/AbstractSortedMapDecorator;->getSortedMap()Ljava/util/SortedMap;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/SortedMap;->headMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v0

    .line 151
    .local v0, map:Ljava/util/SortedMap;
    new-instance v1, Lorg/apache/commons/collections/map/UnmodifiableSortedMap;

    invoke-direct {v1, v0}, Lorg/apache/commons/collections/map/UnmodifiableSortedMap;-><init>(Ljava/util/SortedMap;)V

    return-object v1
.end method

.method public keySet()Ljava/util/Set;
    .locals 2

    .prologue
    .line 122
    invoke-super {p0}, Lorg/apache/commons/collections/map/AbstractMapDecorator;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 123
    .local v0, set:Ljava/util/Set;
    invoke-static {v0}, Lorg/apache/commons/collections/set/UnmodifiableSet;->decorate(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    return-object v1
.end method

.method public lastKey()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 137
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/AbstractSortedMapDecorator;->getSortedMap()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->lastKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 105
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 1
    .parameter "mapToCopy"

    .prologue
    .line 109
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "key"

    .prologue
    .line 113
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 2
    .parameter "fromKey"
    .parameter "toKey"

    .prologue
    .line 145
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/AbstractSortedMapDecorator;->getSortedMap()Ljava/util/SortedMap;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Ljava/util/SortedMap;->subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v0

    .line 146
    .local v0, map:Ljava/util/SortedMap;
    new-instance v1, Lorg/apache/commons/collections/map/UnmodifiableSortedMap;

    invoke-direct {v1, v0}, Lorg/apache/commons/collections/map/UnmodifiableSortedMap;-><init>(Ljava/util/SortedMap;)V

    return-object v1
.end method

.method public tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 2
    .parameter "fromKey"

    .prologue
    .line 155
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/AbstractSortedMapDecorator;->getSortedMap()Ljava/util/SortedMap;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/SortedMap;->tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v0

    .line 156
    .local v0, map:Ljava/util/SortedMap;
    new-instance v1, Lorg/apache/commons/collections/map/UnmodifiableSortedMap;

    invoke-direct {v1, v0}, Lorg/apache/commons/collections/map/UnmodifiableSortedMap;-><init>(Ljava/util/SortedMap;)V

    return-object v1
.end method

.method public values()Ljava/util/Collection;
    .locals 2

    .prologue
    .line 127
    invoke-super {p0}, Lorg/apache/commons/collections/map/AbstractMapDecorator;->values()Ljava/util/Collection;

    move-result-object v0

    .line 128
    .local v0, coll:Ljava/util/Collection;
    invoke-static {v0}, Lorg/apache/commons/collections/collection/UnmodifiableCollection;->decorate(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v1

    return-object v1
.end method
