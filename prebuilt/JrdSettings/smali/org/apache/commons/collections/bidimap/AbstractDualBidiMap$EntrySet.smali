.class public Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$EntrySet;
.super Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$View;
.source "AbstractDualBidiMap.java"

# interfaces
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "EntrySet"
.end annotation


# direct methods
.method protected constructor <init>(Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;)V
    .locals 2
    .parameter "parent"

    .prologue
    .line 543
    iget-object v0, p1, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->maps:[Ljava/util/Map;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$View;-><init>(Ljava/util/Collection;Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;)V

    .line 544
    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 2

    .prologue
    .line 547
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$View;->parent:Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;

    invoke-super {p0}, Lorg/apache/commons/collections/collection/AbstractCollectionDecorator;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->createEntrySetIterator(Ljava/util/Iterator;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 6
    .parameter "obj"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 551
    instance-of v5, p1, Ljava/util/Map$Entry;

    if-nez v5, :cond_1

    .line 564
    :cond_0
    :goto_0
    return v3

    :cond_1
    move-object v0, p1

    .line 554
    check-cast v0, Ljava/util/Map$Entry;

    .line 555
    .local v0, entry:Ljava/util/Map$Entry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 556
    .local v1, key:Ljava/lang/Object;
    iget-object v5, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$View;->parent:Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;

    invoke-virtual {v5, v1}, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 557
    iget-object v5, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$View;->parent:Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;

    iget-object v5, v5, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->maps:[Ljava/util/Map;

    aget-object v5, v5, v3

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 558
    .local v2, value:Ljava/lang/Object;
    if-nez v2, :cond_3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_2

    move v5, v4

    :goto_1
    if-eqz v5, :cond_0

    .line 559
    iget-object v5, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$View;->parent:Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;

    iget-object v5, v5, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->maps:[Ljava/util/Map;

    aget-object v3, v5, v3

    invoke-interface {v3, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 560
    iget-object v3, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$View;->parent:Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;

    iget-object v3, v3, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->maps:[Ljava/util/Map;

    aget-object v3, v3, v4

    invoke-interface {v3, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move v3, v4

    .line 561
    goto :goto_0

    :cond_2
    move v5, v3

    .line 558
    goto :goto_1

    :cond_3
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    goto :goto_1
.end method
