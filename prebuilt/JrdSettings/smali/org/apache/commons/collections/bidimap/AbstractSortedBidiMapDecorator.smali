.class public abstract Lorg/apache/commons/collections/bidimap/AbstractSortedBidiMapDecorator;
.super Lorg/apache/commons/collections/bidimap/AbstractOrderedBidiMapDecorator;
.source "AbstractSortedBidiMapDecorator.java"

# interfaces
.implements Lorg/apache/commons/collections/SortedBidiMap;


# direct methods
.method public constructor <init>(Lorg/apache/commons/collections/SortedBidiMap;)V
    .locals 0
    .parameter "map"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/bidimap/AbstractOrderedBidiMapDecorator;-><init>(Lorg/apache/commons/collections/OrderedBidiMap;)V

    .line 51
    return-void
.end method


# virtual methods
.method public comparator()Ljava/util/Comparator;
    .locals 1

    .prologue
    .line 68
    invoke-virtual {p0}, Lorg/apache/commons/collections/bidimap/AbstractSortedBidiMapDecorator;->getSortedBidiMap()Lorg/apache/commons/collections/SortedBidiMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method protected getSortedBidiMap()Lorg/apache/commons/collections/SortedBidiMap;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lorg/apache/commons/collections/map/AbstractMapDecorator;->map:Ljava/util/Map;

    check-cast v0, Lorg/apache/commons/collections/SortedBidiMap;

    return-object v0
.end method

.method public headMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 1
    .parameter "toKey"

    .prologue
    .line 76
    invoke-virtual {p0}, Lorg/apache/commons/collections/bidimap/AbstractSortedBidiMapDecorator;->getSortedBidiMap()Lorg/apache/commons/collections/SortedBidiMap;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/SortedMap;->headMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method public inverseSortedBidiMap()Lorg/apache/commons/collections/SortedBidiMap;
    .locals 1

    .prologue
    .line 64
    invoke-virtual {p0}, Lorg/apache/commons/collections/bidimap/AbstractSortedBidiMapDecorator;->getSortedBidiMap()Lorg/apache/commons/collections/SortedBidiMap;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/collections/SortedBidiMap;->inverseSortedBidiMap()Lorg/apache/commons/collections/SortedBidiMap;

    move-result-object v0

    return-object v0
.end method

.method public subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 1
    .parameter "fromKey"
    .parameter "toKey"

    .prologue
    .line 72
    invoke-virtual {p0}, Lorg/apache/commons/collections/bidimap/AbstractSortedBidiMapDecorator;->getSortedBidiMap()Lorg/apache/commons/collections/SortedBidiMap;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/SortedMap;->subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method public tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 1
    .parameter "fromKey"

    .prologue
    .line 80
    invoke-virtual {p0}, Lorg/apache/commons/collections/bidimap/AbstractSortedBidiMapDecorator;->getSortedBidiMap()Lorg/apache/commons/collections/SortedBidiMap;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/SortedMap;->tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method
