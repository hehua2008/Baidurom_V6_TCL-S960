.class Lorg/apache/commons/collections/map/ListOrderedMap$EntrySetView;
.super Ljava/util/AbstractSet;
.source "ListOrderedMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections/map/ListOrderedMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "EntrySetView"
.end annotation


# instance fields
.field private entrySet:Ljava/util/Set;

.field private final insertOrder:Ljava/util/List;

.field private final parent:Lorg/apache/commons/collections/map/ListOrderedMap;


# direct methods
.method public constructor <init>(Lorg/apache/commons/collections/map/ListOrderedMap;Ljava/util/List;)V
    .locals 0
    .parameter "parent"
    .parameter "insertOrder"

    .prologue
    .line 405
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 406
    iput-object p1, p0, Lorg/apache/commons/collections/map/ListOrderedMap$EntrySetView;->parent:Lorg/apache/commons/collections/map/ListOrderedMap;

    .line 407
    iput-object p2, p0, Lorg/apache/commons/collections/map/ListOrderedMap$EntrySetView;->insertOrder:Ljava/util/List;

    .line 408
    return-void
.end method

.method private getEntrySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 411
    iget-object v0, p0, Lorg/apache/commons/collections/map/ListOrderedMap$EntrySetView;->entrySet:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 412
    iget-object v0, p0, Lorg/apache/commons/collections/map/ListOrderedMap$EntrySetView;->parent:Lorg/apache/commons/collections/map/ListOrderedMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections/map/AbstractMapDecorator;->getMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections/map/ListOrderedMap$EntrySetView;->entrySet:Ljava/util/Set;

    .line 414
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/map/ListOrderedMap$EntrySetView;->entrySet:Ljava/util/Set;

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 445
    iget-object v0, p0, Lorg/apache/commons/collections/map/ListOrderedMap$EntrySetView;->parent:Lorg/apache/commons/collections/map/ListOrderedMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections/map/ListOrderedMap;->clear()V

    .line 446
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .parameter "obj"

    .prologue
    .line 425
    invoke-direct {p0}, Lorg/apache/commons/collections/map/ListOrderedMap$EntrySetView;->getEntrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1
    .parameter "coll"

    .prologue
    .line 429
    invoke-direct {p0}, Lorg/apache/commons/collections/map/ListOrderedMap$EntrySetView;->getEntrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .parameter "obj"

    .prologue
    .line 449
    if-ne p1, p0, :cond_0

    .line 450
    const/4 v0, 0x1

    .line 452
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lorg/apache/commons/collections/map/ListOrderedMap$EntrySetView;->getEntrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 456
    invoke-direct {p0}, Lorg/apache/commons/collections/map/ListOrderedMap$EntrySetView;->getEntrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 421
    iget-object v0, p0, Lorg/apache/commons/collections/map/ListOrderedMap$EntrySetView;->parent:Lorg/apache/commons/collections/map/ListOrderedMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections/map/AbstractMapDecorator;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 3

    .prologue
    .line 464
    new-instance v0, Lorg/apache/commons/collections/map/ListOrderedMap$ListOrderedIterator;

    iget-object v1, p0, Lorg/apache/commons/collections/map/ListOrderedMap$EntrySetView;->parent:Lorg/apache/commons/collections/map/ListOrderedMap;

    iget-object v2, p0, Lorg/apache/commons/collections/map/ListOrderedMap$EntrySetView;->insertOrder:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/collections/map/ListOrderedMap$ListOrderedIterator;-><init>(Lorg/apache/commons/collections/map/ListOrderedMap;Ljava/util/List;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 3
    .parameter "obj"

    .prologue
    const/4 v1, 0x0

    .line 433
    instance-of v2, p1, Ljava/util/Map$Entry;

    if-nez v2, :cond_1

    .line 441
    .end local p1
    :cond_0
    :goto_0
    return v1

    .line 436
    .restart local p1
    :cond_1
    invoke-direct {p0}, Lorg/apache/commons/collections/map/ListOrderedMap$EntrySetView;->getEntrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 437
    check-cast p1, Ljava/util/Map$Entry;

    .end local p1
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    .line 438
    .local v0, key:Ljava/lang/Object;
    iget-object v1, p0, Lorg/apache/commons/collections/map/ListOrderedMap$EntrySetView;->parent:Lorg/apache/commons/collections/map/ListOrderedMap;

    invoke-virtual {v1, v0}, Lorg/apache/commons/collections/map/ListOrderedMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 439
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 418
    iget-object v0, p0, Lorg/apache/commons/collections/map/ListOrderedMap$EntrySetView;->parent:Lorg/apache/commons/collections/map/ListOrderedMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections/map/AbstractMapDecorator;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 460
    invoke-direct {p0}, Lorg/apache/commons/collections/map/ListOrderedMap$EntrySetView;->getEntrySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
