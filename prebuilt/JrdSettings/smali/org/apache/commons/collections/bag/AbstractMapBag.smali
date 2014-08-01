.class public abstract Lorg/apache/commons/collections/bag/AbstractMapBag;
.super Ljava/lang/Object;
.source "AbstractMapBag.java"

# interfaces
.implements Lorg/apache/commons/collections/Bag;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/collections/bag/AbstractMapBag$MutableInteger;,
        Lorg/apache/commons/collections/bag/AbstractMapBag$BagIterator;
    }
.end annotation


# instance fields
.field private transient map:Ljava/util/Map;

.field private transient modCount:I

.field private size:I

.field private transient uniqueSet:Ljava/util/Set;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    return-void
.end method

.method protected constructor <init>(Ljava/util/Map;)V
    .locals 0
    .parameter "map"

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lorg/apache/commons/collections/bag/AbstractMapBag;->map:Ljava/util/Map;

    .line 75
    return-void
.end method

.method static access$000(Lorg/apache/commons/collections/bag/AbstractMapBag;)Ljava/util/Map;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lorg/apache/commons/collections/bag/AbstractMapBag;->map:Ljava/util/Map;

    return-object v0
.end method

.method static access$100(Lorg/apache/commons/collections/bag/AbstractMapBag;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget v0, p0, Lorg/apache/commons/collections/bag/AbstractMapBag;->modCount:I

    return v0
.end method

.method static access$210(Lorg/apache/commons/collections/bag/AbstractMapBag;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 47
    iget v0, p0, Lorg/apache/commons/collections/bag/AbstractMapBag;->size:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lorg/apache/commons/collections/bag/AbstractMapBag;->size:I

    return v0
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 1
    .parameter "object"

    .prologue
    .line 242
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/collections/bag/AbstractMapBag;->add(Ljava/lang/Object;I)Z

    move-result v0

    return v0
.end method

.method public add(Ljava/lang/Object;I)Z
    .locals 3
    .parameter "object"
    .parameter "nCopies"

    .prologue
    const/4 v1, 0x0

    .line 253
    iget v2, p0, Lorg/apache/commons/collections/bag/AbstractMapBag;->modCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/apache/commons/collections/bag/AbstractMapBag;->modCount:I

    .line 254
    if-lez p2, :cond_0

    .line 255
    iget-object v2, p0, Lorg/apache/commons/collections/bag/AbstractMapBag;->map:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/collections/bag/AbstractMapBag$MutableInteger;

    .line 256
    .local v0, mut:Lorg/apache/commons/collections/bag/AbstractMapBag$MutableInteger;
    iget v2, p0, Lorg/apache/commons/collections/bag/AbstractMapBag;->size:I

    add-int/2addr v2, p2

    iput v2, p0, Lorg/apache/commons/collections/bag/AbstractMapBag;->size:I

    .line 257
    if-nez v0, :cond_1

    .line 258
    iget-object v1, p0, Lorg/apache/commons/collections/bag/AbstractMapBag;->map:Ljava/util/Map;

    new-instance v2, Lorg/apache/commons/collections/bag/AbstractMapBag$MutableInteger;

    invoke-direct {v2, p2}, Lorg/apache/commons/collections/bag/AbstractMapBag$MutableInteger;-><init>(I)V

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    const/4 v1, 0x1

    .line 265
    .end local v0           #mut:Lorg/apache/commons/collections/bag/AbstractMapBag$MutableInteger;
    :cond_0
    :goto_0
    return v1

    .line 261
    .restart local v0       #mut:Lorg/apache/commons/collections/bag/AbstractMapBag$MutableInteger;
    :cond_1
    iget v2, v0, Lorg/apache/commons/collections/bag/AbstractMapBag$MutableInteger;->value:I

    add-int/2addr v2, p2

    iput v2, v0, Lorg/apache/commons/collections/bag/AbstractMapBag$MutableInteger;->value:I

    goto :goto_0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 4
    .parameter "coll"

    .prologue
    .line 276
    const/4 v1, 0x0

    .line 277
    .local v1, changed:Z
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 278
    .local v2, i:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 282
    return v1

    .line 279
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/apache/commons/collections/bag/AbstractMapBag;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 280
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

.method public clear()V
    .locals 1

    .prologue
    .line 290
    iget v0, p0, Lorg/apache/commons/collections/bag/AbstractMapBag;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/collections/bag/AbstractMapBag;->modCount:I

    .line 291
    iget-object v0, p0, Lorg/apache/commons/collections/bag/AbstractMapBag;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 292
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/collections/bag/AbstractMapBag;->size:I

    .line 293
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .parameter "object"

    .prologue
    .line 130
    iget-object v0, p0, Lorg/apache/commons/collections/bag/AbstractMapBag;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1
    .parameter "coll"

    .prologue
    .line 140
    instance-of v0, p1, Lorg/apache/commons/collections/Bag;

    if-eqz v0, :cond_0

    .line 141
    check-cast p1, Lorg/apache/commons/collections/Bag;

    .end local p1
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/bag/AbstractMapBag;->containsAll(Lorg/apache/commons/collections/Bag;)Z

    move-result v0

    .line 143
    :goto_0
    return v0

    .restart local p1
    :cond_0
    new-instance v0, Lorg/apache/commons/collections/bag/HashBag;

    invoke-direct {v0, p1}, Lorg/apache/commons/collections/bag/HashBag;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/bag/AbstractMapBag;->containsAll(Lorg/apache/commons/collections/Bag;)Z

    move-result v0

    goto :goto_0
.end method

.method containsAll(Lorg/apache/commons/collections/Bag;)Z
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
    .local v2, it:Ljava/util/Iterator;
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
    invoke-virtual {p0, v1}, Lorg/apache/commons/collections/bag/AbstractMapBag;->getCount(Ljava/lang/Object;)I

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

.method protected doReadObject(Ljava/util/Map;Ljava/io/ObjectInputStream;)V
    .locals 5
    .parameter "map"
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 506
    iput-object p1, p0, Lorg/apache/commons/collections/bag/AbstractMapBag;->map:Ljava/util/Map;

    .line 507
    invoke-virtual {p2}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v1

    .line 508
    .local v1, entrySize:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-lt v2, v1, :cond_0

    .line 514
    return-void

    .line 509
    :cond_0
    invoke-virtual {p2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    .line 510
    .local v3, obj:Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    .line 511
    .local v0, count:I
    new-instance v4, Lorg/apache/commons/collections/bag/AbstractMapBag$MutableInteger;

    invoke-direct {v4, v0}, Lorg/apache/commons/collections/bag/AbstractMapBag$MutableInteger;-><init>(I)V

    invoke-interface {p1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 512
    iget v4, p0, Lorg/apache/commons/collections/bag/AbstractMapBag;->size:I

    add-int/2addr v4, v0

    iput v4, p0, Lorg/apache/commons/collections/bag/AbstractMapBag;->size:I

    .line 508
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method protected doWriteObject(Ljava/io/ObjectOutputStream;)V
    .locals 3
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 490
    iget-object v2, p0, Lorg/apache/commons/collections/bag/AbstractMapBag;->map:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 491
    iget-object v2, p0, Lorg/apache/commons/collections/bag/AbstractMapBag;->map:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, it:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 496
    return-void

    .line 492
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 493
    .local v0, entry:Ljava/util/Map$Entry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 494
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/collections/bag/AbstractMapBag$MutableInteger;

    iget v2, v2, Lorg/apache/commons/collections/bag/AbstractMapBag$MutableInteger;->value:I

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .parameter "object"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 526
    if-ne p1, p0, :cond_1

    .line 542
    :cond_0
    :goto_0
    return v3

    .line 529
    :cond_1
    instance-of v5, p1, Lorg/apache/commons/collections/Bag;

    if-nez v5, :cond_2

    move v3, v4

    .line 530
    goto :goto_0

    :cond_2
    move-object v2, p1

    .line 532
    check-cast v2, Lorg/apache/commons/collections/Bag;

    .line 533
    .local v2, other:Lorg/apache/commons/collections/Bag;
    invoke-interface {v2}, Lorg/apache/commons/collections/Bag;->size()I

    move-result v5

    invoke-virtual {p0}, Lorg/apache/commons/collections/bag/AbstractMapBag;->size()I

    move-result v6

    if-eq v5, v6, :cond_3

    move v3, v4

    .line 534
    goto :goto_0

    .line 536
    :cond_3
    iget-object v5, p0, Lorg/apache/commons/collections/bag/AbstractMapBag;->map:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, it:Ljava/util/Iterator;
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 537
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 538
    .local v0, element:Ljava/lang/Object;
    invoke-interface {v2, v0}, Lorg/apache/commons/collections/Bag;->getCount(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/bag/AbstractMapBag;->getCount(Ljava/lang/Object;)I

    move-result v6

    if-eq v5, v6, :cond_4

    move v3, v4

    .line 539
    goto :goto_0
.end method

.method public getCount(Ljava/lang/Object;)I
    .locals 2
    .parameter "object"

    .prologue
    .line 114
    iget-object v1, p0, Lorg/apache/commons/collections/bag/AbstractMapBag;->map:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/collections/bag/AbstractMapBag$MutableInteger;

    .line 115
    .local v0, count:Lorg/apache/commons/collections/bag/AbstractMapBag$MutableInteger;
    if-eqz v0, :cond_0

    .line 116
    iget v1, v0, Lorg/apache/commons/collections/bag/AbstractMapBag$MutableInteger;->value:I

    .line 118
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected getMap()Ljava/util/Map;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lorg/apache/commons/collections/bag/AbstractMapBag;->map:Ljava/util/Map;

    return-object v0
.end method

.method public hashCode()I
    .locals 7

    .prologue
    .line 555
    const/4 v4, 0x0

    .line 556
    .local v4, total:I
    iget-object v5, p0, Lorg/apache/commons/collections/bag/AbstractMapBag;->map:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, it:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_0

    .line 562
    return v4

    .line 557
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 558
    .local v2, entry:Ljava/util/Map$Entry;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 559
    .local v1, element:Ljava/lang/Object;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/collections/bag/AbstractMapBag$MutableInteger;

    .line 560
    .local v0, count:Lorg/apache/commons/collections/bag/AbstractMapBag$MutableInteger;
    if-nez v1, :cond_1

    const/4 v5, 0x0

    :goto_1
    iget v6, v0, Lorg/apache/commons/collections/bag/AbstractMapBag$MutableInteger;->value:I

    xor-int/2addr v5, v6

    add-int/2addr v4, v5

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v5

    goto :goto_1
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lorg/apache/commons/collections/bag/AbstractMapBag;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 172
    new-instance v0, Lorg/apache/commons/collections/bag/AbstractMapBag$BagIterator;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/bag/AbstractMapBag$BagIterator;-><init>(Lorg/apache/commons/collections/bag/AbstractMapBag;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 3
    .parameter "object"

    .prologue
    .line 302
    iget-object v1, p0, Lorg/apache/commons/collections/bag/AbstractMapBag;->map:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/collections/bag/AbstractMapBag$MutableInteger;

    .line 303
    .local v0, mut:Lorg/apache/commons/collections/bag/AbstractMapBag$MutableInteger;
    if-nez v0, :cond_0

    .line 304
    const/4 v1, 0x0

    .line 309
    :goto_0
    return v1

    .line 306
    :cond_0
    iget v1, p0, Lorg/apache/commons/collections/bag/AbstractMapBag;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/commons/collections/bag/AbstractMapBag;->modCount:I

    .line 307
    iget-object v1, p0, Lorg/apache/commons/collections/bag/AbstractMapBag;->map:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    iget v1, p0, Lorg/apache/commons/collections/bag/AbstractMapBag;->size:I

    iget v2, v0, Lorg/apache/commons/collections/bag/AbstractMapBag$MutableInteger;->value:I

    sub-int/2addr v1, v2

    iput v1, p0, Lorg/apache/commons/collections/bag/AbstractMapBag;->size:I

    .line 309
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public remove(Ljava/lang/Object;I)Z
    .locals 3
    .parameter "object"
    .parameter "nCopies"

    .prologue
    const/4 v1, 0x0

    .line 320
    iget-object v2, p0, Lorg/apache/commons/collections/bag/AbstractMapBag;->map:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/collections/bag/AbstractMapBag$MutableInteger;

    .line 321
    .local v0, mut:Lorg/apache/commons/collections/bag/AbstractMapBag$MutableInteger;
    if-nez v0, :cond_1

    .line 335
    :cond_0
    :goto_0
    return v1

    .line 324
    :cond_1
    if-lez p2, :cond_0

    .line 327
    iget v1, p0, Lorg/apache/commons/collections/bag/AbstractMapBag;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/commons/collections/bag/AbstractMapBag;->modCount:I

    .line 328
    iget v1, v0, Lorg/apache/commons/collections/bag/AbstractMapBag$MutableInteger;->value:I

    if-ge p2, v1, :cond_2

    .line 329
    iget v1, v0, Lorg/apache/commons/collections/bag/AbstractMapBag$MutableInteger;->value:I

    sub-int/2addr v1, p2

    iput v1, v0, Lorg/apache/commons/collections/bag/AbstractMapBag$MutableInteger;->value:I

    .line 330
    iget v1, p0, Lorg/apache/commons/collections/bag/AbstractMapBag;->size:I

    sub-int/2addr v1, p2

    iput v1, p0, Lorg/apache/commons/collections/bag/AbstractMapBag;->size:I

    .line 335
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    .line 332
    :cond_2
    iget-object v1, p0, Lorg/apache/commons/collections/bag/AbstractMapBag;->map:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    iget v1, p0, Lorg/apache/commons/collections/bag/AbstractMapBag;->size:I

    iget v2, v0, Lorg/apache/commons/collections/bag/AbstractMapBag$MutableInteger;->value:I

    sub-int/2addr v1, v2

    iput v1, p0, Lorg/apache/commons/collections/bag/AbstractMapBag;->size:I

    goto :goto_1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 5
    .parameter "coll"

    .prologue
    const/4 v3, 0x1

    .line 345
    const/4 v2, 0x0

    .line 346
    .local v2, result:Z
    if-eqz p1, :cond_0

    .line 347
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 348
    .local v1, i:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 353
    .end local v1           #i:Ljava/util/Iterator;
    :cond_0
    return v2

    .line 349
    .restart local v1       #i:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v4, v3}, Lorg/apache/commons/collections/bag/AbstractMapBag;->remove(Ljava/lang/Object;I)Z

    move-result v0

    .line 350
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
    .line 364
    instance-of v0, p1, Lorg/apache/commons/collections/Bag;

    if-eqz v0, :cond_0

    .line 365
    check-cast p1, Lorg/apache/commons/collections/Bag;

    .end local p1
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/bag/AbstractMapBag;->retainAll(Lorg/apache/commons/collections/Bag;)Z

    move-result v0

    .line 367
    :goto_0
    return v0

    .restart local p1
    :cond_0
    new-instance v0, Lorg/apache/commons/collections/bag/HashBag;

    invoke-direct {v0, p1}, Lorg/apache/commons/collections/bag/HashBag;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/bag/AbstractMapBag;->retainAll(Lorg/apache/commons/collections/Bag;)Z

    move-result v0

    goto :goto_0
.end method

.method retainAll(Lorg/apache/commons/collections/Bag;)Z
    .locals 7
    .parameter "other"

    .prologue
    .line 379
    const/4 v5, 0x0

    .line 380
    .local v5, result:Z
    new-instance v1, Lorg/apache/commons/collections/bag/HashBag;

    invoke-direct {v1}, Lorg/apache/commons/collections/bag/HashBag;-><init>()V

    .line 381
    .local v1, excess:Lorg/apache/commons/collections/Bag;
    invoke-virtual {p0}, Lorg/apache/commons/collections/bag/AbstractMapBag;->uniqueSet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 382
    .local v2, i:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_1

    .line 392
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 393
    invoke-virtual {p0, v1}, Lorg/apache/commons/collections/bag/AbstractMapBag;->removeAll(Ljava/util/Collection;)Z

    move-result v5

    .line 395
    :cond_0
    return v5

    .line 383
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 384
    .local v0, current:Ljava/lang/Object;
    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/bag/AbstractMapBag;->getCount(Ljava/lang/Object;)I

    move-result v3

    .line 385
    .local v3, myCount:I
    invoke-interface {p1, v0}, Lorg/apache/commons/collections/Bag;->getCount(Ljava/lang/Object;)I

    move-result v4

    .line 386
    .local v4, otherCount:I
    const/4 v6, 0x1

    if-gt v6, v4, :cond_2

    if-gt v4, v3, :cond_2

    .line 387
    sub-int v6, v3, v4

    invoke-interface {v1, v0, v6}, Lorg/apache/commons/collections/Bag;->add(Ljava/lang/Object;I)Z

    goto :goto_0

    .line 389
    :cond_2
    invoke-interface {v1, v0, v3}, Lorg/apache/commons/collections/Bag;->add(Ljava/lang/Object;I)Z

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Lorg/apache/commons/collections/bag/AbstractMapBag;->size:I

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 7

    .prologue
    .line 433
    invoke-virtual {p0}, Lorg/apache/commons/collections/bag/AbstractMapBag;->size()I

    move-result v6

    new-array v5, v6, [Ljava/lang/Object;

    .line 434
    .local v5, result:[Ljava/lang/Object;
    const/4 v1, 0x0

    .line 435
    .local v1, i:I
    iget-object v6, p0, Lorg/apache/commons/collections/bag/AbstractMapBag;->map:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 436
    .local v4, it:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_0

    .line 442
    return-object v5

    .line 437
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 438
    .local v0, current:Ljava/lang/Object;
    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/bag/AbstractMapBag;->getCount(Ljava/lang/Object;)I

    move-result v3

    .local v3, index:I
    move v2, v1

    .end local v1           #i:I
    .local v2, i:I
    :goto_1
    if-gtz v3, :cond_1

    move v1, v2

    .end local v2           #i:I
    .restart local v1       #i:I
    goto :goto_0

    .line 439
    .end local v1           #i:I
    .restart local v2       #i:I
    :cond_1
    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    aput-object v0, v5, v2

    .line 438
    add-int/lit8 v3, v3, -0x1

    move v2, v1

    .end local v1           #i:I
    .restart local v2       #i:I
    goto :goto_1
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 7
    .parameter "array"

    .prologue
    .line 452
    invoke-virtual {p0}, Lorg/apache/commons/collections/bag/AbstractMapBag;->size()I

    move-result v5

    .line 453
    .local v5, size:I
    array-length v6, p1

    if-ge v6, v5, :cond_0

    .line 454
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v6

    invoke-static {v6, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, [Ljava/lang/Object;

    .line 457
    .restart local p1
    :cond_0
    const/4 v1, 0x0

    .line 458
    .local v1, i:I
    iget-object v6, p0, Lorg/apache/commons/collections/bag/AbstractMapBag;->map:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 459
    .local v4, it:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_2

    .line 465
    array-length v6, p1

    if-le v6, v5, :cond_1

    .line 466
    const/4 v6, 0x0

    aput-object v6, p1, v5

    .line 468
    :cond_1
    return-object p1

    .line 460
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 461
    .local v0, current:Ljava/lang/Object;
    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/bag/AbstractMapBag;->getCount(Ljava/lang/Object;)I

    move-result v3

    .local v3, index:I
    move v2, v1

    .end local v1           #i:I
    .local v2, i:I
    :goto_1
    if-gtz v3, :cond_3

    move v1, v2

    .end local v2           #i:I
    .restart local v1       #i:I
    goto :goto_0

    .line 462
    .end local v1           #i:I
    .restart local v2       #i:I
    :cond_3
    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    aput-object v0, p1, v2

    .line 461
    add-int/lit8 v3, v3, -0x1

    move v2, v1

    .end local v1           #i:I
    .restart local v2       #i:I
    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 571
    invoke-virtual {p0}, Lorg/apache/commons/collections/bag/AbstractMapBag;->size()I

    move-result v4

    if-nez v4, :cond_0

    .line 572
    const-string v4, "[]"

    .line 588
    :goto_0
    return-object v4

    .line 574
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 575
    .local v0, buf:Ljava/lang/StringBuffer;
    const/16 v4, 0x5b

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 576
    invoke-virtual {p0}, Lorg/apache/commons/collections/bag/AbstractMapBag;->uniqueSet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 577
    .local v3, it:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2

    .line 587
    const/16 v4, 0x5d

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 588
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 578
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 579
    .local v2, current:Ljava/lang/Object;
    invoke-virtual {p0, v2}, Lorg/apache/commons/collections/bag/AbstractMapBag;->getCount(Ljava/lang/Object;)I

    move-result v1

    .line 580
    .local v1, count:I
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 581
    const/16 v4, 0x3a

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 582
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 583
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 584
    const/16 v4, 0x2c

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1
.end method

.method public uniqueSet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 477
    iget-object v0, p0, Lorg/apache/commons/collections/bag/AbstractMapBag;->uniqueSet:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 478
    iget-object v0, p0, Lorg/apache/commons/collections/bag/AbstractMapBag;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/collections/set/UnmodifiableSet;->decorate(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections/bag/AbstractMapBag;->uniqueSet:Ljava/util/Set;

    .line 480
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/bag/AbstractMapBag;->uniqueSet:Ljava/util/Set;

    return-object v0
.end method
