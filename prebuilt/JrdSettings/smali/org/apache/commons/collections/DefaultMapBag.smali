.class public abstract Lorg/apache/commons/collections/DefaultMapBag;
.super Ljava/lang/Object;
.source "DefaultMapBag.java"

# interfaces
.implements Lorg/apache/commons/collections/Bag;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/collections/DefaultMapBag$BagIterator;
    }
.end annotation


# instance fields
.field private _map:Ljava/util/Map;

.field private _mods:I

.field private _total:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/collections/DefaultMapBag;->_map:Ljava/util/Map;

    .line 49
    iput v1, p0, Lorg/apache/commons/collections/DefaultMapBag;->_total:I

    .line 50
    iput v1, p0, Lorg/apache/commons/collections/DefaultMapBag;->_mods:I

    .line 58
    return-void
.end method

.method protected constructor <init>(Ljava/util/Map;)V
    .locals 2
    .parameter "map"

    .prologue
    const/4 v1, 0x0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/collections/DefaultMapBag;->_map:Ljava/util/Map;

    .line 49
    iput v1, p0, Lorg/apache/commons/collections/DefaultMapBag;->_total:I

    .line 50
    iput v1, p0, Lorg/apache/commons/collections/DefaultMapBag;->_mods:I

    .line 67
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/DefaultMapBag;->setMap(Ljava/util/Map;)V

    .line 68
    return-void
.end method

.method static access$000(Lorg/apache/commons/collections/DefaultMapBag;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Lorg/apache/commons/collections/DefaultMapBag;->modCount()I

    move-result v0

    return v0
.end method

.method private extractList()Ljava/util/List;
    .locals 5

    .prologue
    .line 411
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 412
    .local v3, result:Ljava/util/List;
    invoke-virtual {p0}, Lorg/apache/commons/collections/DefaultMapBag;->uniqueSet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 413
    .local v1, i:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 419
    return-object v3

    .line 414
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 415
    .local v0, current:Ljava/lang/Object;
    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/DefaultMapBag;->getCount(Ljava/lang/Object;)I

    move-result v2

    .local v2, index:I
    :goto_0
    if-lez v2, :cond_0

    .line 416
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 415
    add-int/lit8 v2, v2, -0x1

    goto :goto_0
.end method

.method private modCount()I
    .locals 1

    .prologue
    .line 428
    iget v0, p0, Lorg/apache/commons/collections/DefaultMapBag;->_mods:I

    return v0
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 1
    .parameter "object"

    .prologue
    .line 78
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/collections/DefaultMapBag;->add(Ljava/lang/Object;I)Z

    move-result v0

    return v0
.end method

.method public add(Ljava/lang/Object;I)Z
    .locals 4
    .parameter "object"
    .parameter "nCopies"

    .prologue
    const/4 v1, 0x0

    .line 89
    iget v2, p0, Lorg/apache/commons/collections/DefaultMapBag;->_mods:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/apache/commons/collections/DefaultMapBag;->_mods:I

    .line 90
    if-lez p2, :cond_0

    .line 91
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/DefaultMapBag;->getCount(Ljava/lang/Object;)I

    move-result v2

    add-int v0, p2, v2

    .line 92
    .local v0, count:I
    iget-object v2, p0, Lorg/apache/commons/collections/DefaultMapBag;->_map:Ljava/util/Map;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    iget v2, p0, Lorg/apache/commons/collections/DefaultMapBag;->_total:I

    add-int/2addr v2, p2

    iput v2, p0, Lorg/apache/commons/collections/DefaultMapBag;->_total:I

    .line 94
    if-ne v0, p2, :cond_0

    const/4 v1, 0x1

    .line 96
    .end local v0           #count:I
    :cond_0
    return v1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 4
    .parameter "coll"

    .prologue
    .line 107
    const/4 v1, 0x0

    .line 108
    .local v1, changed:Z
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 109
    .local v2, i:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 113
    return v1

    .line 110
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/apache/commons/collections/DefaultMapBag;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 111
    .local v0, added:Z
    if-nez v1, :cond_1

    if-eqz v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :goto_1
    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method protected calcTotalSize()I
    .locals 1

    .prologue
    .line 382
    invoke-direct {p0}, Lorg/apache/commons/collections/DefaultMapBag;->extractList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lorg/apache/commons/collections/DefaultMapBag;->_total:I

    .line 383
    iget v0, p0, Lorg/apache/commons/collections/DefaultMapBag;->_total:I

    return v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 120
    iget v0, p0, Lorg/apache/commons/collections/DefaultMapBag;->_mods:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/collections/DefaultMapBag;->_mods:I

    .line 121
    iget-object v0, p0, Lorg/apache/commons/collections/DefaultMapBag;->_map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 122
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/collections/DefaultMapBag;->_total:I

    .line 123
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .parameter "object"

    .prologue
    .line 133
    iget-object v0, p0, Lorg/apache/commons/collections/DefaultMapBag;->_map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1
    .parameter "coll"

    .prologue
    .line 143
    new-instance v0, Lorg/apache/commons/collections/HashBag;

    invoke-direct {v0, p1}, Lorg/apache/commons/collections/HashBag;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/DefaultMapBag;->containsAll(Lorg/apache/commons/collections/Bag;)Z

    move-result v0

    return v0
.end method

.method public containsAll(Lorg/apache/commons/collections/Bag;)Z
    .locals 8
    .parameter "other"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 154
    const/4 v3, 0x1

    .line 155
    .local v3, result:Z
    invoke-interface {p1}, Lorg/apache/commons/collections/Bag;->uniqueSet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 156
    .local v2, i:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_0

    .line 161
    return v3

    .line 157
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 158
    .local v1, current:Ljava/lang/Object;
    invoke-virtual {p0, v1}, Lorg/apache/commons/collections/DefaultMapBag;->getCount(Ljava/lang/Object;)I

    move-result v6

    invoke-interface {p1, v1}, Lorg/apache/commons/collections/Bag;->getCount(Ljava/lang/Object;)I

    move-result v7

    if-lt v6, v7, :cond_1

    move v0, v4

    .line 159
    .local v0, contains:Z
    :goto_1
    if-eqz v3, :cond_2

    if-eqz v0, :cond_2

    move v3, v4

    :goto_2
    goto :goto_0

    .end local v0           #contains:Z
    :cond_1
    move v0, v5

    .line 158
    goto :goto_1

    .restart local v0       #contains:Z
    :cond_2
    move v3, v5

    .line 159
    goto :goto_2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .parameter "object"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 173
    if-ne p1, p0, :cond_1

    .line 189
    :cond_0
    :goto_0
    return v3

    .line 176
    :cond_1
    instance-of v5, p1, Lorg/apache/commons/collections/Bag;

    if-nez v5, :cond_2

    move v3, v4

    .line 177
    goto :goto_0

    :cond_2
    move-object v2, p1

    .line 179
    check-cast v2, Lorg/apache/commons/collections/Bag;

    .line 180
    .local v2, other:Lorg/apache/commons/collections/Bag;
    invoke-interface {v2}, Lorg/apache/commons/collections/Bag;->size()I

    move-result v5

    invoke-virtual {p0}, Lorg/apache/commons/collections/DefaultMapBag;->size()I

    move-result v6

    if-eq v5, v6, :cond_3

    move v3, v4

    .line 181
    goto :goto_0

    .line 183
    :cond_3
    iget-object v5, p0, Lorg/apache/commons/collections/DefaultMapBag;->_map:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, it:Ljava/util/Iterator;
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 184
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 185
    .local v0, element:Ljava/lang/Object;
    invoke-interface {v2, v0}, Lorg/apache/commons/collections/Bag;->getCount(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/DefaultMapBag;->getCount(Ljava/lang/Object;)I

    move-result v6

    if-eq v5, v6, :cond_4

    move v3, v4

    .line 186
    goto :goto_0
.end method

.method public getCount(Ljava/lang/Object;)I
    .locals 3
    .parameter "object"

    .prologue
    .line 349
    const/4 v1, 0x0

    .line 350
    .local v1, result:I
    iget-object v2, p0, Lorg/apache/commons/collections/DefaultMapBag;->_map:Ljava/util/Map;

    invoke-static {v2, p1}, Lorg/apache/commons/collections/MapUtils;->getInteger(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    .line 351
    .local v0, count:Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 352
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 354
    :cond_0
    return v1
.end method

.method protected getMap()Ljava/util/Map;
    .locals 1

    .prologue
    .line 404
    iget-object v0, p0, Lorg/apache/commons/collections/DefaultMapBag;->_map:Ljava/util/Map;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lorg/apache/commons/collections/DefaultMapBag;->_map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lorg/apache/commons/collections/DefaultMapBag;->_map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2

    .prologue
    .line 211
    new-instance v0, Lorg/apache/commons/collections/DefaultMapBag$BagIterator;

    invoke-direct {p0}, Lorg/apache/commons/collections/DefaultMapBag;->extractList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/collections/DefaultMapBag$BagIterator;-><init>(Lorg/apache/commons/collections/DefaultMapBag;Ljava/util/Iterator;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .parameter "object"

    .prologue
    .line 250
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/DefaultMapBag;->getCount(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/collections/DefaultMapBag;->remove(Ljava/lang/Object;I)Z

    move-result v0

    return v0
.end method

.method public remove(Ljava/lang/Object;I)Z
    .locals 5
    .parameter "object"
    .parameter "nCopies"

    .prologue
    .line 254
    iget v2, p0, Lorg/apache/commons/collections/DefaultMapBag;->_mods:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/apache/commons/collections/DefaultMapBag;->_mods:I

    .line 255
    const/4 v1, 0x0

    .line 256
    .local v1, result:Z
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/DefaultMapBag;->getCount(Ljava/lang/Object;)I

    move-result v0

    .line 257
    .local v0, count:I
    if-gtz p2, :cond_0

    .line 258
    const/4 v1, 0x0

    .line 268
    :goto_0
    return v1

    .line 259
    :cond_0
    if-le v0, p2, :cond_1

    .line 260
    iget-object v2, p0, Lorg/apache/commons/collections/DefaultMapBag;->_map:Ljava/util/Map;

    new-instance v3, Ljava/lang/Integer;

    sub-int v4, v0, p2

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    const/4 v1, 0x1

    .line 262
    iget v2, p0, Lorg/apache/commons/collections/DefaultMapBag;->_total:I

    sub-int/2addr v2, p2

    iput v2, p0, Lorg/apache/commons/collections/DefaultMapBag;->_total:I

    goto :goto_0

    .line 265
    :cond_1
    iget-object v2, p0, Lorg/apache/commons/collections/DefaultMapBag;->_map:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    const/4 v1, 0x1

    .line 266
    :goto_1
    iget v2, p0, Lorg/apache/commons/collections/DefaultMapBag;->_total:I

    sub-int/2addr v2, v0

    iput v2, p0, Lorg/apache/commons/collections/DefaultMapBag;->_total:I

    goto :goto_0

    .line 265
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 5
    .parameter "coll"

    .prologue
    const/4 v3, 0x1

    .line 272
    const/4 v2, 0x0

    .line 273
    .local v2, result:Z
    if-eqz p1, :cond_0

    .line 274
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 275
    .local v1, i:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 280
    .end local v1           #i:Ljava/util/Iterator;
    :cond_0
    return v2

    .line 276
    .restart local v1       #i:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v4, v3}, Lorg/apache/commons/collections/DefaultMapBag;->remove(Ljava/lang/Object;I)Z

    move-result v0

    .line 277
    .local v0, changed:Z
    if-nez v2, :cond_2

    if-eqz v0, :cond_3

    :cond_2
    move v2, v3

    :goto_1
    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 1
    .parameter "coll"

    .prologue
    .line 291
    new-instance v0, Lorg/apache/commons/collections/HashBag;

    invoke-direct {v0, p1}, Lorg/apache/commons/collections/HashBag;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/DefaultMapBag;->retainAll(Lorg/apache/commons/collections/Bag;)Z

    move-result v0

    return v0
.end method

.method public retainAll(Lorg/apache/commons/collections/Bag;)Z
    .locals 7
    .parameter "other"

    .prologue
    .line 303
    const/4 v5, 0x0

    .line 304
    .local v5, result:Z
    new-instance v1, Lorg/apache/commons/collections/HashBag;

    invoke-direct {v1}, Lorg/apache/commons/collections/HashBag;-><init>()V

    .line 305
    .local v1, excess:Lorg/apache/commons/collections/Bag;
    invoke-virtual {p0}, Lorg/apache/commons/collections/DefaultMapBag;->uniqueSet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 306
    .local v2, i:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_1

    .line 316
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 317
    invoke-virtual {p0, v1}, Lorg/apache/commons/collections/DefaultMapBag;->removeAll(Ljava/util/Collection;)Z

    move-result v5

    .line 319
    :cond_0
    return v5

    .line 307
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 308
    .local v0, current:Ljava/lang/Object;
    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/DefaultMapBag;->getCount(Ljava/lang/Object;)I

    move-result v3

    .line 309
    .local v3, myCount:I
    invoke-interface {p1, v0}, Lorg/apache/commons/collections/Bag;->getCount(Ljava/lang/Object;)I

    move-result v4

    .line 310
    .local v4, otherCount:I
    const/4 v6, 0x1

    if-gt v6, v4, :cond_2

    if-gt v4, v3, :cond_2

    .line 311
    sub-int v6, v3, v4

    invoke-interface {v1, v0, v6}, Lorg/apache/commons/collections/Bag;->add(Ljava/lang/Object;I)Z

    goto :goto_0

    .line 313
    :cond_2
    invoke-interface {v1, v0, v3}, Lorg/apache/commons/collections/Bag;->add(Ljava/lang/Object;I)Z

    goto :goto_0
.end method

.method protected setMap(Ljava/util/Map;)V
    .locals 2
    .parameter "map"

    .prologue
    .line 392
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 393
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The map must be non-null and empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 395
    :cond_1
    iput-object p1, p0, Lorg/apache/commons/collections/DefaultMapBag;->_map:Ljava/util/Map;

    .line 396
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 372
    iget v0, p0, Lorg/apache/commons/collections/DefaultMapBag;->_total:I

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 328
    invoke-direct {p0}, Lorg/apache/commons/collections/DefaultMapBag;->extractList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .parameter "array"

    .prologue
    .line 338
    invoke-direct {p0}, Lorg/apache/commons/collections/DefaultMapBag;->extractList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 437
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 438
    .local v0, buf:Ljava/lang/StringBuffer;
    const-string v4, "["

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 439
    invoke-virtual {p0}, Lorg/apache/commons/collections/DefaultMapBag;->uniqueSet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 440
    .local v3, i:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 450
    const-string v4, "]"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 451
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 441
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 442
    .local v2, current:Ljava/lang/Object;
    invoke-virtual {p0, v2}, Lorg/apache/commons/collections/DefaultMapBag;->getCount(Ljava/lang/Object;)I

    move-result v1

    .line 443
    .local v1, count:I
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 444
    const-string v4, ":"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 445
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 446
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 447
    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public uniqueSet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 363
    iget-object v0, p0, Lorg/apache/commons/collections/DefaultMapBag;->_map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/collections/set/UnmodifiableSet;->decorate(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
