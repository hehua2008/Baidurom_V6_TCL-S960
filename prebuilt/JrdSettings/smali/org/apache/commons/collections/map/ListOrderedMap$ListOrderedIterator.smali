.class Lorg/apache/commons/collections/map/ListOrderedMap$ListOrderedIterator;
.super Lorg/apache/commons/collections/iterators/AbstractIteratorDecorator;
.source "ListOrderedMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections/map/ListOrderedMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ListOrderedIterator"
.end annotation


# instance fields
.field private last:Ljava/lang/Object;

.field private final parent:Lorg/apache/commons/collections/map/ListOrderedMap;


# direct methods
.method constructor <init>(Lorg/apache/commons/collections/map/ListOrderedMap;Ljava/util/List;)V
    .locals 1
    .parameter "parent"
    .parameter "insertOrder"

    .prologue
    .line 474
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/commons/collections/iterators/AbstractIteratorDecorator;-><init>(Ljava/util/Iterator;)V

    .line 471
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/collections/map/ListOrderedMap$ListOrderedIterator;->last:Ljava/lang/Object;

    .line 475
    iput-object p1, p0, Lorg/apache/commons/collections/map/ListOrderedMap$ListOrderedIterator;->parent:Lorg/apache/commons/collections/map/ListOrderedMap;

    .line 476
    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 479
    invoke-super {p0}, Lorg/apache/commons/collections/iterators/AbstractIteratorDecorator;->next()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections/map/ListOrderedMap$ListOrderedIterator;->last:Ljava/lang/Object;

    .line 480
    new-instance v0, Lorg/apache/commons/collections/map/ListOrderedMap$ListOrderedMapEntry;

    iget-object v1, p0, Lorg/apache/commons/collections/map/ListOrderedMap$ListOrderedIterator;->parent:Lorg/apache/commons/collections/map/ListOrderedMap;

    iget-object v2, p0, Lorg/apache/commons/collections/map/ListOrderedMap$ListOrderedIterator;->last:Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/collections/map/ListOrderedMap$ListOrderedMapEntry;-><init>(Lorg/apache/commons/collections/map/ListOrderedMap;Ljava/lang/Object;)V

    return-object v0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 484
    invoke-super {p0}, Lorg/apache/commons/collections/iterators/AbstractIteratorDecorator;->remove()V

    .line 485
    iget-object v0, p0, Lorg/apache/commons/collections/map/ListOrderedMap$ListOrderedIterator;->parent:Lorg/apache/commons/collections/map/ListOrderedMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections/map/AbstractMapDecorator;->getMap()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/collections/map/ListOrderedMap$ListOrderedIterator;->last:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 486
    return-void
.end method
