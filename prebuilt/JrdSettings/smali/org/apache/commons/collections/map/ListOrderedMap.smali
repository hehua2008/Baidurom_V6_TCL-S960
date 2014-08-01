.class public Lorg/apache/commons/collections/map/ListOrderedMap;
.super Lorg/apache/commons/collections/map/AbstractMapDecorator;
.source "ListOrderedMap.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lorg/apache/commons/collections/OrderedMap;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/collections/map/ListOrderedMap$ListOrderedMapIterator;,
        Lorg/apache/commons/collections/map/ListOrderedMap$ListOrderedMapEntry;,
        Lorg/apache/commons/collections/map/ListOrderedMap$ListOrderedIterator;,
        Lorg/apache/commons/collections/map/ListOrderedMap$EntrySetView;,
        Lorg/apache/commons/collections/map/ListOrderedMap$KeySetView;,
        Lorg/apache/commons/collections/map/ListOrderedMap$ValuesView;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x25dc6f35f733ef66L


# instance fields
.field protected final insertOrder:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 93
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, v0}, Lorg/apache/commons/collections/map/ListOrderedMap;-><init>(Ljava/util/Map;)V

    .line 94
    return-void
.end method

.method protected constructor <init>(Ljava/util/Map;)V
    .locals 2
    .parameter "map"

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/map/AbstractMapDecorator;-><init>(Ljava/util/Map;)V

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/collections/map/ListOrderedMap;->insertOrder:Ljava/util/List;

    .line 104
    iget-object v0, p0, Lorg/apache/commons/collections/map/ListOrderedMap;->insertOrder:Ljava/util/List;

    invoke-virtual {p0}, Lorg/apache/commons/collections/map/AbstractMapDecorator;->getMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 105
    return-void
.end method

.method public static decorate(Ljava/util/Map;)Lorg/apache/commons/collections/OrderedMap;
    .locals 1
    .parameter "map"

    .prologue
    .line 82
    new-instance v0, Lorg/apache/commons/collections/map/ListOrderedMap;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/map/ListOrderedMap;-><init>(Ljava/util/Map;)V

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
    .line 129
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 130
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lorg/apache/commons/collections/map/AbstractMapDecorator;->map:Ljava/util/Map;

    .line 131
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
    .line 116
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 117
    iget-object v0, p0, Lorg/apache/commons/collections/map/AbstractMapDecorator;->map:Ljava/util/Map;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 118
    return-void
.end method


# virtual methods
.method public asList()Ljava/util/List;
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Lorg/apache/commons/collections/map/ListOrderedMap;->insertOrder:Ljava/util/List;

    invoke-static {v0}, Lorg/apache/commons/collections/list/UnmodifiableList;->decorate(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 226
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/AbstractMapDecorator;->getMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 227
    iget-object v0, p0, Lorg/apache/commons/collections/map/ListOrderedMap;->insertOrder:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 228
    return-void
.end method

.method public entrySet()Ljava/util/Set;
    .locals 2

    .prologue
    .line 240
    new-instance v0, Lorg/apache/commons/collections/map/ListOrderedMap$EntrySetView;

    iget-object v1, p0, Lorg/apache/commons/collections/map/ListOrderedMap;->insertOrder:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/collections/map/ListOrderedMap$EntrySetView;-><init>(Lorg/apache/commons/collections/map/ListOrderedMap;Ljava/util/List;)V

    return-object v0
.end method

.method public firstKey()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 150
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/AbstractMapDecorator;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 151
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "Map is empty"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 153
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/map/ListOrderedMap;->insertOrder:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1
    .parameter "index"

    .prologue
    .line 283
    iget-object v0, p0, Lorg/apache/commons/collections/map/ListOrderedMap;->insertOrder:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getValue(I)Ljava/lang/Object;
    .locals 1
    .parameter "index"

    .prologue
    .line 294
    iget-object v0, p0, Lorg/apache/commons/collections/map/ListOrderedMap;->insertOrder:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/map/AbstractMapDecorator;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 1
    .parameter "key"

    .prologue
    .line 304
    iget-object v0, p0, Lorg/apache/commons/collections/map/ListOrderedMap;->insertOrder:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 232
    new-instance v0, Lorg/apache/commons/collections/map/ListOrderedMap$KeySetView;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/map/ListOrderedMap$KeySetView;-><init>(Lorg/apache/commons/collections/map/ListOrderedMap;)V

    return-object v0
.end method

.method public lastKey()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 163
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/AbstractMapDecorator;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 164
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "Map is empty"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 166
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/map/ListOrderedMap;->insertOrder:Ljava/util/List;

    invoke-virtual {p0}, Lorg/apache/commons/collections/map/AbstractMapDecorator;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public mapIterator()Lorg/apache/commons/collections/MapIterator;
    .locals 1

    .prologue
    .line 136
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/ListOrderedMap;->orderedMapIterator()Lorg/apache/commons/collections/OrderedMapIterator;

    move-result-object v0

    return-object v0
.end method

.method public nextKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter "key"

    .prologue
    .line 177
    iget-object v1, p0, Lorg/apache/commons/collections/map/ListOrderedMap;->insertOrder:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 178
    .local v0, index:I
    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/collections/map/AbstractMapDecorator;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 179
    iget-object v1, p0, Lorg/apache/commons/collections/map/ListOrderedMap;->insertOrder:Ljava/util/List;

    add-int/lit8 v2, v0, 0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 181
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public orderedMapIterator()Lorg/apache/commons/collections/OrderedMapIterator;
    .locals 1

    .prologue
    .line 140
    new-instance v0, Lorg/apache/commons/collections/map/ListOrderedMap$ListOrderedMapIterator;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/map/ListOrderedMap$ListOrderedMapIterator;-><init>(Lorg/apache/commons/collections/map/ListOrderedMap;)V

    return-object v0
.end method

.method public previousKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter "key"

    .prologue
    .line 192
    iget-object v1, p0, Lorg/apache/commons/collections/map/ListOrderedMap;->insertOrder:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 193
    .local v0, index:I
    if-lez v0, :cond_0

    .line 194
    iget-object v1, p0, Lorg/apache/commons/collections/map/ListOrderedMap;->insertOrder:Ljava/util/List;

    add-int/lit8 v2, v0, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 196
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "key"
    .parameter "value"

    .prologue
    .line 201
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/AbstractMapDecorator;->getMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 203
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/AbstractMapDecorator;->getMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 208
    :goto_0
    return-object v0

    .line 206
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/AbstractMapDecorator;->getMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 207
    .local v0, result:Ljava/lang/Object;
    iget-object v1, p0, Lorg/apache/commons/collections/map/ListOrderedMap;->insertOrder:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 4
    .parameter "map"

    .prologue
    .line 213
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, it:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 217
    return-void

    .line 214
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 215
    .local v0, entry:Ljava/util/Map$Entry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lorg/apache/commons/collections/map/ListOrderedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 1
    .parameter "index"

    .prologue
    .line 316
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/map/ListOrderedMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/map/ListOrderedMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "key"

    .prologue
    .line 220
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/AbstractMapDecorator;->getMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 221
    .local v0, result:Ljava/lang/Object;
    iget-object v1, p0, Lorg/apache/commons/collections/map/ListOrderedMap;->insertOrder:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 222
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 250
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/AbstractMapDecorator;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 251
    const-string v6, "{}"

    .line 271
    :goto_0
    return-object v6

    .line 253
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 254
    .local v0, buf:Ljava/lang/StringBuffer;
    const/16 v6, 0x7b

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 255
    const/4 v2, 0x1

    .line 256
    .local v2, first:Z
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/ListOrderedMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 257
    .local v3, it:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_1

    .line 270
    const/16 v6, 0x7d

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 271
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 258
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 259
    .local v1, entry:Ljava/util/Map$Entry;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    .line 260
    .local v4, key:Ljava/lang/Object;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    .line 261
    .local v5, value:Ljava/lang/Object;
    if-eqz v2, :cond_4

    .line 262
    const/4 v2, 0x0

    .line 266
    :goto_2
    if-ne v4, p0, :cond_2

    const-string v4, "(this Map)"

    .end local v4           #key:Ljava/lang/Object;
    :cond_2
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 267
    const/16 v6, 0x3d

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 268
    if-ne v5, p0, :cond_3

    const-string v5, "(this Map)"

    .end local v5           #value:Ljava/lang/Object;
    :cond_3
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 264
    .restart local v4       #key:Ljava/lang/Object;
    .restart local v5       #value:Ljava/lang/Object;
    :cond_4
    const-string v6, ", "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2
.end method

.method public values()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 236
    new-instance v0, Lorg/apache/commons/collections/map/ListOrderedMap$ValuesView;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/map/ListOrderedMap$ValuesView;-><init>(Lorg/apache/commons/collections/map/ListOrderedMap;)V

    return-object v0
.end method
