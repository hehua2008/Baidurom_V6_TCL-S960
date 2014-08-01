.class public abstract Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;
.super Ljava/lang/Object;
.source "AbstractDualBidiMap.java"

# interfaces
.implements Lorg/apache/commons/collections/BidiMap;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$BidiMapIterator;,
        Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$MapEntry;,
        Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$EntrySetIterator;,
        Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$EntrySet;,
        Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$ValuesIterator;,
        Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$Values;,
        Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$KeySetIterator;,
        Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$KeySet;,
        Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$View;
    }
.end annotation


# instance fields
.field protected transient entrySet:Ljava/util/Set;

.field protected transient inverseBidiMap:Lorg/apache/commons/collections/BidiMap;

.field protected transient keySet:Ljava/util/Set;

.field protected final transient maps:[Ljava/util/Map;

.field protected transient values:Ljava/util/Collection;


# direct methods
.method protected constructor <init>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/util/Map;

    iput-object v0, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->maps:[Ljava/util/Map;

    .line 54
    iput-object v1, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->inverseBidiMap:Lorg/apache/commons/collections/BidiMap;

    .line 58
    iput-object v1, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->keySet:Ljava/util/Set;

    .line 62
    iput-object v1, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->values:Ljava/util/Collection;

    .line 66
    iput-object v1, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->entrySet:Ljava/util/Set;

    .line 77
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->maps:[Ljava/util/Map;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->createMap()Ljava/util/Map;

    move-result-object v2

    aput-object v2, v0, v1

    .line 78
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->maps:[Ljava/util/Map;

    const/4 v1, 0x1

    invoke-virtual {p0}, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->createMap()Ljava/util/Map;

    move-result-object v2

    aput-object v2, v0, v1

    .line 79
    return-void
.end method

.method protected constructor <init>(Ljava/util/Map;Ljava/util/Map;)V
    .locals 2
    .parameter "normalMap"
    .parameter "reverseMap"

    .prologue
    const/4 v1, 0x0

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/util/Map;

    iput-object v0, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->maps:[Ljava/util/Map;

    .line 54
    iput-object v1, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->inverseBidiMap:Lorg/apache/commons/collections/BidiMap;

    .line 58
    iput-object v1, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->keySet:Ljava/util/Set;

    .line 62
    iput-object v1, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->values:Ljava/util/Collection;

    .line 66
    iput-object v1, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->entrySet:Ljava/util/Set;

    .line 97
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->maps:[Ljava/util/Map;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 98
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->maps:[Ljava/util/Map;

    const/4 v1, 0x1

    aput-object p2, v0, v1

    .line 99
    return-void
.end method

.method protected constructor <init>(Ljava/util/Map;Ljava/util/Map;Lorg/apache/commons/collections/BidiMap;)V
    .locals 2
    .parameter "normalMap"
    .parameter "reverseMap"
    .parameter "inverseBidiMap"

    .prologue
    const/4 v1, 0x0

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/util/Map;

    iput-object v0, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->maps:[Ljava/util/Map;

    .line 54
    iput-object v1, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->inverseBidiMap:Lorg/apache/commons/collections/BidiMap;

    .line 58
    iput-object v1, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->keySet:Ljava/util/Set;

    .line 62
    iput-object v1, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->values:Ljava/util/Collection;

    .line 66
    iput-object v1, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->entrySet:Ljava/util/Set;

    .line 111
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->maps:[Ljava/util/Map;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 112
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->maps:[Ljava/util/Map;

    const/4 v1, 0x1

    aput-object p2, v0, v1

    .line 113
    iput-object p3, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->inverseBidiMap:Lorg/apache/commons/collections/BidiMap;

    .line 114
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    .line 201
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->maps:[Ljava/util/Map;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 202
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->maps:[Ljava/util/Map;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 203
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 2
    .parameter "key"

    .prologue
    .line 155
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->maps:[Ljava/util/Map;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 2
    .parameter "value"

    .prologue
    .line 206
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->maps:[Ljava/util/Map;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected abstract createBidiMap(Ljava/util/Map;Ljava/util/Map;Lorg/apache/commons/collections/BidiMap;)Lorg/apache/commons/collections/BidiMap;
.end method

.method protected createEntrySetIterator(Ljava/util/Iterator;)Ljava/util/Iterator;
    .locals 1
    .parameter "iterator"

    .prologue
    .line 324
    new-instance v0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$EntrySetIterator;

    invoke-direct {v0, p1, p0}, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$EntrySetIterator;-><init>(Ljava/util/Iterator;Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;)V

    return-object v0
.end method

.method protected createKeySetIterator(Ljava/util/Iterator;)Ljava/util/Iterator;
    .locals 1
    .parameter "iterator"

    .prologue
    .line 270
    new-instance v0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$KeySetIterator;

    invoke-direct {v0, p1, p0}, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$KeySetIterator;-><init>(Ljava/util/Iterator;Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;)V

    return-object v0
.end method

.method protected createMap()Ljava/util/Map;
    .locals 1

    .prologue
    .line 127
    const/4 v0, 0x0

    return-object v0
.end method

.method protected createValuesIterator(Ljava/util/Iterator;)Ljava/util/Iterator;
    .locals 1
    .parameter "iterator"

    .prologue
    .line 295
    new-instance v0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$ValuesIterator;

    invoke-direct {v0, p1, p0}, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$ValuesIterator;-><init>(Ljava/util/Iterator;Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;)V

    return-object v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->entrySet:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 311
    new-instance v0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$EntrySet;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$EntrySet;-><init>(Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;)V

    iput-object v0, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->entrySet:Ljava/util/Set;

    .line 313
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->entrySet:Ljava/util/Set;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter "obj"

    .prologue
    .line 159
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->maps:[Ljava/util/Map;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {v0, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "key"

    .prologue
    .line 143
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->maps:[Ljava/util/Map;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "value"

    .prologue
    .line 227
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->maps:[Ljava/util/Map;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 163
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->maps:[Ljava/util/Map;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    move-result v0

    return v0
.end method

.method public inverseBidiMap()Lorg/apache/commons/collections/BidiMap;
    .locals 3

    .prologue
    .line 240
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->inverseBidiMap:Lorg/apache/commons/collections/BidiMap;

    if-nez v0, :cond_0

    .line 241
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->maps:[Ljava/util/Map;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iget-object v1, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->maps:[Ljava/util/Map;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {p0, v0, v1, p0}, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->createBidiMap(Ljava/util/Map;Ljava/util/Map;Lorg/apache/commons/collections/BidiMap;)Lorg/apache/commons/collections/BidiMap;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->inverseBidiMap:Lorg/apache/commons/collections/BidiMap;

    .line 243
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->inverseBidiMap:Lorg/apache/commons/collections/BidiMap;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .line 151
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->maps:[Ljava/util/Map;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->keySet:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 257
    new-instance v0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$KeySet;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$KeySet;-><init>(Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;)V

    iput-object v0, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->keySet:Ljava/util/Set;

    .line 259
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->keySet:Ljava/util/Set;

    return-object v0
.end method

.method public mapIterator()Lorg/apache/commons/collections/MapIterator;
    .locals 1

    .prologue
    .line 223
    new-instance v0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$BidiMapIterator;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$BidiMapIterator;-><init>(Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;)V

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .parameter "key"
    .parameter "value"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 173
    iget-object v1, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->maps:[Ljava/util/Map;

    aget-object v1, v1, v3

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 174
    iget-object v1, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->maps:[Ljava/util/Map;

    aget-object v1, v1, v4

    iget-object v2, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->maps:[Ljava/util/Map;

    aget-object v2, v2, v3

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->maps:[Ljava/util/Map;

    aget-object v1, v1, v4

    invoke-interface {v1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 177
    iget-object v1, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->maps:[Ljava/util/Map;

    aget-object v1, v1, v3

    iget-object v2, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->maps:[Ljava/util/Map;

    aget-object v2, v2, v4

    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    :cond_1
    iget-object v1, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->maps:[Ljava/util/Map;

    aget-object v1, v1, v3

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 180
    .local v0, obj:Ljava/lang/Object;
    iget-object v1, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->maps:[Ljava/util/Map;

    aget-object v1, v1, v4

    invoke-interface {v1, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    return-object v0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 4
    .parameter "map"

    .prologue
    .line 185
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, it:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 189
    return-void

    .line 186
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 187
    .local v0, entry:Ljava/util/Map$Entry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter "key"

    .prologue
    const/4 v2, 0x0

    .line 192
    const/4 v0, 0x0

    .line 193
    .local v0, value:Ljava/lang/Object;
    iget-object v1, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->maps:[Ljava/util/Map;

    aget-object v1, v1, v2

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 194
    iget-object v1, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->maps:[Ljava/util/Map;

    aget-object v1, v1, v2

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 195
    iget-object v1, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->maps:[Ljava/util/Map;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    .end local v0           #value:Ljava/lang/Object;
    :cond_0
    return-object v0
.end method

.method public removeValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter "value"

    .prologue
    const/4 v2, 0x1

    .line 231
    const/4 v0, 0x0

    .line 232
    .local v0, key:Ljava/lang/Object;
    iget-object v1, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->maps:[Ljava/util/Map;

    aget-object v1, v1, v2

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 233
    iget-object v1, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->maps:[Ljava/util/Map;

    aget-object v1, v1, v2

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 234
    iget-object v1, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->maps:[Ljava/util/Map;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    .end local v0           #key:Ljava/lang/Object;
    :cond_0
    return-object v0
.end method

.method public size()I
    .locals 2

    .prologue
    .line 147
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->maps:[Ljava/util/Map;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 167
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->maps:[Ljava/util/Map;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public values()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->values:Ljava/util/Collection;

    if-nez v0, :cond_0

    .line 282
    new-instance v0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$Values;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$Values;-><init>(Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;)V

    iput-object v0, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->values:Ljava/util/Collection;

    .line 284
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->values:Ljava/util/Collection;

    return-object v0
.end method
