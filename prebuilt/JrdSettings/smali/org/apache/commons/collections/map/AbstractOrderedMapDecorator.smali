.class public abstract Lorg/apache/commons/collections/map/AbstractOrderedMapDecorator;
.super Lorg/apache/commons/collections/map/AbstractMapDecorator;
.source "AbstractOrderedMapDecorator.java"

# interfaces
.implements Lorg/apache/commons/collections/OrderedMap;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lorg/apache/commons/collections/map/AbstractMapDecorator;-><init>()V

    .line 48
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/collections/OrderedMap;)V
    .locals 0
    .parameter "map"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/map/AbstractMapDecorator;-><init>(Ljava/util/Map;)V

    .line 58
    return-void
.end method


# virtual methods
.method public firstKey()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 71
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/AbstractOrderedMapDecorator;->getOrderedMap()Lorg/apache/commons/collections/OrderedMap;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/collections/OrderedMap;->firstKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected getOrderedMap()Lorg/apache/commons/collections/OrderedMap;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lorg/apache/commons/collections/map/AbstractMapDecorator;->map:Ljava/util/Map;

    check-cast v0, Lorg/apache/commons/collections/OrderedMap;

    return-object v0
.end method

.method public lastKey()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 75
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/AbstractOrderedMapDecorator;->getOrderedMap()Lorg/apache/commons/collections/OrderedMap;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/collections/OrderedMap;->lastKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public mapIterator()Lorg/apache/commons/collections/MapIterator;
    .locals 1

    .prologue
    .line 87
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/AbstractOrderedMapDecorator;->getOrderedMap()Lorg/apache/commons/collections/OrderedMap;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/collections/IterableMap;->mapIterator()Lorg/apache/commons/collections/MapIterator;

    move-result-object v0

    return-object v0
.end method

.method public nextKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "key"

    .prologue
    .line 79
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/AbstractOrderedMapDecorator;->getOrderedMap()Lorg/apache/commons/collections/OrderedMap;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/commons/collections/OrderedMap;->nextKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public orderedMapIterator()Lorg/apache/commons/collections/OrderedMapIterator;
    .locals 1

    .prologue
    .line 91
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/AbstractOrderedMapDecorator;->getOrderedMap()Lorg/apache/commons/collections/OrderedMap;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/collections/OrderedMap;->orderedMapIterator()Lorg/apache/commons/collections/OrderedMapIterator;

    move-result-object v0

    return-object v0
.end method

.method public previousKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "key"

    .prologue
    .line 83
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/AbstractOrderedMapDecorator;->getOrderedMap()Lorg/apache/commons/collections/OrderedMap;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/commons/collections/OrderedMap;->previousKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
