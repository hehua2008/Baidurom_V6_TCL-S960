.class public Lorg/apache/commons/collections/map/PredicatedSortedMap;
.super Lorg/apache/commons/collections/map/PredicatedMap;
.source "PredicatedSortedMap.java"

# interfaces
.implements Ljava/util/SortedMap;


# static fields
.field private static final serialVersionUID:J = 0x2ea0924bb894128cL


# direct methods
.method protected constructor <init>(Ljava/util/SortedMap;Lorg/apache/commons/collections/Predicate;Lorg/apache/commons/collections/Predicate;)V
    .locals 0
    .parameter "map"
    .parameter "keyPredicate"
    .parameter "valuePredicate"

    .prologue
    .line 74
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/collections/map/PredicatedMap;-><init>(Ljava/util/Map;Lorg/apache/commons/collections/Predicate;Lorg/apache/commons/collections/Predicate;)V

    .line 75
    return-void
.end method

.method public static decorate(Ljava/util/SortedMap;Lorg/apache/commons/collections/Predicate;Lorg/apache/commons/collections/Predicate;)Ljava/util/SortedMap;
    .locals 1
    .parameter "map"
    .parameter "keyPredicate"
    .parameter "valuePredicate"

    .prologue
    .line 61
    new-instance v0, Lorg/apache/commons/collections/map/PredicatedSortedMap;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/commons/collections/map/PredicatedSortedMap;-><init>(Ljava/util/SortedMap;Lorg/apache/commons/collections/Predicate;Lorg/apache/commons/collections/Predicate;)V

    return-object v0
.end method


# virtual methods
.method public comparator()Ljava/util/Comparator;
    .locals 1

    .prologue
    .line 97
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/PredicatedSortedMap;->getSortedMap()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public firstKey()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 89
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/PredicatedSortedMap;->getSortedMap()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->firstKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected getSortedMap()Ljava/util/SortedMap;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lorg/apache/commons/collections/map/AbstractMapDecorator;->map:Ljava/util/Map;

    check-cast v0, Ljava/util/SortedMap;

    return-object v0
.end method

.method public headMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 4
    .parameter "toKey"

    .prologue
    .line 106
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/PredicatedSortedMap;->getSortedMap()Ljava/util/SortedMap;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/SortedMap;->headMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v0

    .line 107
    .local v0, map:Ljava/util/SortedMap;
    new-instance v1, Lorg/apache/commons/collections/map/PredicatedSortedMap;

    iget-object v2, p0, Lorg/apache/commons/collections/map/PredicatedMap;->keyPredicate:Lorg/apache/commons/collections/Predicate;

    iget-object v3, p0, Lorg/apache/commons/collections/map/PredicatedMap;->valuePredicate:Lorg/apache/commons/collections/Predicate;

    invoke-direct {v1, v0, v2, v3}, Lorg/apache/commons/collections/map/PredicatedSortedMap;-><init>(Ljava/util/SortedMap;Lorg/apache/commons/collections/Predicate;Lorg/apache/commons/collections/Predicate;)V

    return-object v1
.end method

.method public lastKey()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 93
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/PredicatedSortedMap;->getSortedMap()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->lastKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 4
    .parameter "fromKey"
    .parameter "toKey"

    .prologue
    .line 101
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/PredicatedSortedMap;->getSortedMap()Ljava/util/SortedMap;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Ljava/util/SortedMap;->subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v0

    .line 102
    .local v0, map:Ljava/util/SortedMap;
    new-instance v1, Lorg/apache/commons/collections/map/PredicatedSortedMap;

    iget-object v2, p0, Lorg/apache/commons/collections/map/PredicatedMap;->keyPredicate:Lorg/apache/commons/collections/Predicate;

    iget-object v3, p0, Lorg/apache/commons/collections/map/PredicatedMap;->valuePredicate:Lorg/apache/commons/collections/Predicate;

    invoke-direct {v1, v0, v2, v3}, Lorg/apache/commons/collections/map/PredicatedSortedMap;-><init>(Ljava/util/SortedMap;Lorg/apache/commons/collections/Predicate;Lorg/apache/commons/collections/Predicate;)V

    return-object v1
.end method

.method public tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 4
    .parameter "fromKey"

    .prologue
    .line 111
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/PredicatedSortedMap;->getSortedMap()Ljava/util/SortedMap;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/SortedMap;->tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v0

    .line 112
    .local v0, map:Ljava/util/SortedMap;
    new-instance v1, Lorg/apache/commons/collections/map/PredicatedSortedMap;

    iget-object v2, p0, Lorg/apache/commons/collections/map/PredicatedMap;->keyPredicate:Lorg/apache/commons/collections/Predicate;

    iget-object v3, p0, Lorg/apache/commons/collections/map/PredicatedMap;->valuePredicate:Lorg/apache/commons/collections/Predicate;

    invoke-direct {v1, v0, v2, v3}, Lorg/apache/commons/collections/map/PredicatedSortedMap;-><init>(Ljava/util/SortedMap;Lorg/apache/commons/collections/Predicate;Lorg/apache/commons/collections/Predicate;)V

    return-object v1
.end method
