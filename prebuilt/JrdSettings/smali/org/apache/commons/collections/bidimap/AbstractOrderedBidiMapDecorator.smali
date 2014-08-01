.class public abstract Lorg/apache/commons/collections/bidimap/AbstractOrderedBidiMapDecorator;
.super Lorg/apache/commons/collections/bidimap/AbstractBidiMapDecorator;
.source "AbstractOrderedBidiMapDecorator.java"

# interfaces
.implements Lorg/apache/commons/collections/OrderedBidiMap;


# direct methods
.method protected constructor <init>(Lorg/apache/commons/collections/OrderedBidiMap;)V
    .locals 0
    .parameter "map"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/bidimap/AbstractBidiMapDecorator;-><init>(Lorg/apache/commons/collections/BidiMap;)V

    .line 49
    return-void
.end method


# virtual methods
.method public firstKey()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 66
    invoke-virtual {p0}, Lorg/apache/commons/collections/bidimap/AbstractOrderedBidiMapDecorator;->getOrderedBidiMap()Lorg/apache/commons/collections/OrderedBidiMap;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/collections/OrderedMap;->firstKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected getOrderedBidiMap()Lorg/apache/commons/collections/OrderedBidiMap;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lorg/apache/commons/collections/map/AbstractMapDecorator;->map:Ljava/util/Map;

    check-cast v0, Lorg/apache/commons/collections/OrderedBidiMap;

    return-object v0
.end method

.method public inverseOrderedBidiMap()Lorg/apache/commons/collections/OrderedBidiMap;
    .locals 1

    .prologue
    .line 82
    invoke-virtual {p0}, Lorg/apache/commons/collections/bidimap/AbstractOrderedBidiMapDecorator;->getOrderedBidiMap()Lorg/apache/commons/collections/OrderedBidiMap;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/collections/OrderedBidiMap;->inverseOrderedBidiMap()Lorg/apache/commons/collections/OrderedBidiMap;

    move-result-object v0

    return-object v0
.end method

.method public lastKey()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 70
    invoke-virtual {p0}, Lorg/apache/commons/collections/bidimap/AbstractOrderedBidiMapDecorator;->getOrderedBidiMap()Lorg/apache/commons/collections/OrderedBidiMap;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/collections/OrderedMap;->lastKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public nextKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "key"

    .prologue
    .line 74
    invoke-virtual {p0}, Lorg/apache/commons/collections/bidimap/AbstractOrderedBidiMapDecorator;->getOrderedBidiMap()Lorg/apache/commons/collections/OrderedBidiMap;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/commons/collections/OrderedMap;->nextKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public orderedMapIterator()Lorg/apache/commons/collections/OrderedMapIterator;
    .locals 1

    .prologue
    .line 62
    invoke-virtual {p0}, Lorg/apache/commons/collections/bidimap/AbstractOrderedBidiMapDecorator;->getOrderedBidiMap()Lorg/apache/commons/collections/OrderedBidiMap;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/collections/OrderedMap;->orderedMapIterator()Lorg/apache/commons/collections/OrderedMapIterator;

    move-result-object v0

    return-object v0
.end method

.method public previousKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "key"

    .prologue
    .line 78
    invoke-virtual {p0}, Lorg/apache/commons/collections/bidimap/AbstractOrderedBidiMapDecorator;->getOrderedBidiMap()Lorg/apache/commons/collections/OrderedBidiMap;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/commons/collections/OrderedMap;->previousKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
