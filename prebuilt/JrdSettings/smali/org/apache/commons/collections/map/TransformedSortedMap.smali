.class public Lorg/apache/commons/collections/map/TransformedSortedMap;
.super Lorg/apache/commons/collections/map/TransformedMap;
.source "TransformedSortedMap.java"

# interfaces
.implements Ljava/util/SortedMap;


# static fields
.field private static final serialVersionUID:J = -0x797489f887c41572L


# direct methods
.method protected constructor <init>(Ljava/util/SortedMap;Lorg/apache/commons/collections/Transformer;Lorg/apache/commons/collections/Transformer;)V
    .locals 0
    .parameter "map"
    .parameter "keyTransformer"
    .parameter "valueTransformer"

    .prologue
    .line 73
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/collections/map/TransformedMap;-><init>(Ljava/util/Map;Lorg/apache/commons/collections/Transformer;Lorg/apache/commons/collections/Transformer;)V

    .line 74
    return-void
.end method

.method public static decorate(Ljava/util/SortedMap;Lorg/apache/commons/collections/Transformer;Lorg/apache/commons/collections/Transformer;)Ljava/util/SortedMap;
    .locals 1
    .parameter "map"
    .parameter "keyTransformer"
    .parameter "valueTransformer"

    .prologue
    .line 57
    new-instance v0, Lorg/apache/commons/collections/map/TransformedSortedMap;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/commons/collections/map/TransformedSortedMap;-><init>(Ljava/util/SortedMap;Lorg/apache/commons/collections/Transformer;Lorg/apache/commons/collections/Transformer;)V

    return-object v0
.end method


# virtual methods
.method public comparator()Ljava/util/Comparator;
    .locals 1

    .prologue
    .line 96
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/TransformedSortedMap;->getSortedMap()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public firstKey()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 88
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/TransformedSortedMap;->getSortedMap()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->firstKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected getSortedMap()Ljava/util/SortedMap;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lorg/apache/commons/collections/map/AbstractMapDecorator;->map:Ljava/util/Map;

    check-cast v0, Ljava/util/SortedMap;

    return-object v0
.end method

.method public headMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 4
    .parameter "toKey"

    .prologue
    .line 105
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/TransformedSortedMap;->getSortedMap()Ljava/util/SortedMap;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/SortedMap;->headMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v0

    .line 106
    .local v0, map:Ljava/util/SortedMap;
    new-instance v1, Lorg/apache/commons/collections/map/TransformedSortedMap;

    iget-object v2, p0, Lorg/apache/commons/collections/map/TransformedMap;->keyTransformer:Lorg/apache/commons/collections/Transformer;

    iget-object v3, p0, Lorg/apache/commons/collections/map/TransformedMap;->valueTransformer:Lorg/apache/commons/collections/Transformer;

    invoke-direct {v1, v0, v2, v3}, Lorg/apache/commons/collections/map/TransformedSortedMap;-><init>(Ljava/util/SortedMap;Lorg/apache/commons/collections/Transformer;Lorg/apache/commons/collections/Transformer;)V

    return-object v1
.end method

.method public lastKey()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 92
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/TransformedSortedMap;->getSortedMap()Ljava/util/SortedMap;

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
    .line 100
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/TransformedSortedMap;->getSortedMap()Ljava/util/SortedMap;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Ljava/util/SortedMap;->subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v0

    .line 101
    .local v0, map:Ljava/util/SortedMap;
    new-instance v1, Lorg/apache/commons/collections/map/TransformedSortedMap;

    iget-object v2, p0, Lorg/apache/commons/collections/map/TransformedMap;->keyTransformer:Lorg/apache/commons/collections/Transformer;

    iget-object v3, p0, Lorg/apache/commons/collections/map/TransformedMap;->valueTransformer:Lorg/apache/commons/collections/Transformer;

    invoke-direct {v1, v0, v2, v3}, Lorg/apache/commons/collections/map/TransformedSortedMap;-><init>(Ljava/util/SortedMap;Lorg/apache/commons/collections/Transformer;Lorg/apache/commons/collections/Transformer;)V

    return-object v1
.end method

.method public tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 4
    .parameter "fromKey"

    .prologue
    .line 110
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/TransformedSortedMap;->getSortedMap()Ljava/util/SortedMap;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/SortedMap;->tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v0

    .line 111
    .local v0, map:Ljava/util/SortedMap;
    new-instance v1, Lorg/apache/commons/collections/map/TransformedSortedMap;

    iget-object v2, p0, Lorg/apache/commons/collections/map/TransformedMap;->keyTransformer:Lorg/apache/commons/collections/Transformer;

    iget-object v3, p0, Lorg/apache/commons/collections/map/TransformedMap;->valueTransformer:Lorg/apache/commons/collections/Transformer;

    invoke-direct {v1, v0, v2, v3}, Lorg/apache/commons/collections/map/TransformedSortedMap;-><init>(Ljava/util/SortedMap;Lorg/apache/commons/collections/Transformer;Lorg/apache/commons/collections/Transformer;)V

    return-object v1
.end method
