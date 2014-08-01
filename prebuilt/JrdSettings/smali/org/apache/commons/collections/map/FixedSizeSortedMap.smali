.class public Lorg/apache/commons/collections/map/FixedSizeSortedMap;
.super Lorg/apache/commons/collections/map/AbstractSortedMapDecorator;
.source "FixedSizeSortedMap.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/util/SortedMap;
.implements Lorg/apache/commons/collections/BoundedMap;


# static fields
.field private static final serialVersionUID:J = 0x2b61da493feb3c45L


# direct methods
.method protected constructor <init>(Ljava/util/SortedMap;)V
    .locals 0
    .parameter "map"

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/map/AbstractSortedMapDecorator;-><init>(Ljava/util/SortedMap;)V

    .line 79
    return-void
.end method

.method public static decorate(Ljava/util/SortedMap;)Ljava/util/SortedMap;
    .locals 1
    .parameter "map"

    .prologue
    .line 67
    new-instance v0, Lorg/apache/commons/collections/map/FixedSizeSortedMap;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/map/FixedSizeSortedMap;-><init>(Ljava/util/SortedMap;)V

    return-object v0
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
    .line 103
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 104
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lorg/apache/commons/collections/map/AbstractMapDecorator;->map:Ljava/util/Map;

    .line 105
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
    .line 95
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 96
    iget-object v0, p0, Lorg/apache/commons/collections/map/AbstractMapDecorator;->map:Ljava/util/Map;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 97
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    .line 125
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Map is fixed size"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 2

    .prologue
    .line 133
    iget-object v1, p0, Lorg/apache/commons/collections/map/AbstractMapDecorator;->map:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 134
    .local v0, set:Ljava/util/Set;
    invoke-static {v0}, Lorg/apache/commons/collections/set/UnmodifiableSet;->decorate(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    return-object v1
.end method

.method protected getSortedMap()Ljava/util/SortedMap;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lorg/apache/commons/collections/map/AbstractMapDecorator;->map:Ljava/util/Map;

    check-cast v0, Ljava/util/SortedMap;

    return-object v0
.end method

.method public headMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 2
    .parameter "toKey"

    .prologue
    .line 154
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/FixedSizeSortedMap;->getSortedMap()Ljava/util/SortedMap;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/SortedMap;->headMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v0

    .line 155
    .local v0, map:Ljava/util/SortedMap;
    new-instance v1, Lorg/apache/commons/collections/map/FixedSizeSortedMap;

    invoke-direct {v1, v0}, Lorg/apache/commons/collections/map/FixedSizeSortedMap;-><init>(Ljava/util/SortedMap;)V

    return-object v1
.end method

.method public isFull()Z
    .locals 1

    .prologue
    .line 164
    const/4 v0, 0x1

    return v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 2

    .prologue
    .line 138
    iget-object v1, p0, Lorg/apache/commons/collections/map/AbstractMapDecorator;->map:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 139
    .local v0, set:Ljava/util/Set;
    invoke-static {v0}, Lorg/apache/commons/collections/set/UnmodifiableSet;->decorate(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    return-object v1
.end method

.method public maxSize()I
    .locals 1

    .prologue
    .line 168
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/AbstractMapDecorator;->size()I

    move-result v0

    return v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "key"
    .parameter "value"

    .prologue
    .line 109
    iget-object v0, p0, Lorg/apache/commons/collections/map/AbstractMapDecorator;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 110
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot put new key/value pair - Map is fixed size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 112
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/map/AbstractMapDecorator;->map:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 3
    .parameter "mapToCopy"

    .prologue
    .line 116
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, it:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 121
    iget-object v1, p0, Lorg/apache/commons/collections/map/AbstractMapDecorator;->map:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 122
    return-void

    .line 117
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 118
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Cannot put new key/value pair - Map is fixed size"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "key"

    .prologue
    .line 129
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Map is fixed size"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 2
    .parameter "fromKey"
    .parameter "toKey"

    .prologue
    .line 149
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/FixedSizeSortedMap;->getSortedMap()Ljava/util/SortedMap;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Ljava/util/SortedMap;->subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v0

    .line 150
    .local v0, map:Ljava/util/SortedMap;
    new-instance v1, Lorg/apache/commons/collections/map/FixedSizeSortedMap;

    invoke-direct {v1, v0}, Lorg/apache/commons/collections/map/FixedSizeSortedMap;-><init>(Ljava/util/SortedMap;)V

    return-object v1
.end method

.method public tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 2
    .parameter "fromKey"

    .prologue
    .line 159
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/FixedSizeSortedMap;->getSortedMap()Ljava/util/SortedMap;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/SortedMap;->tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v0

    .line 160
    .local v0, map:Ljava/util/SortedMap;
    new-instance v1, Lorg/apache/commons/collections/map/FixedSizeSortedMap;

    invoke-direct {v1, v0}, Lorg/apache/commons/collections/map/FixedSizeSortedMap;-><init>(Ljava/util/SortedMap;)V

    return-object v1
.end method

.method public values()Ljava/util/Collection;
    .locals 2

    .prologue
    .line 143
    iget-object v1, p0, Lorg/apache/commons/collections/map/AbstractMapDecorator;->map:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    .line 144
    .local v0, coll:Ljava/util/Collection;
    invoke-static {v0}, Lorg/apache/commons/collections/collection/UnmodifiableCollection;->decorate(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v1

    return-object v1
.end method
