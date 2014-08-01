.class Lorg/apache/commons/collections/map/ListOrderedMap$2;
.super Lorg/apache/commons/collections/iterators/AbstractIteratorDecorator;
.source "ListOrderedMap.java"


# instance fields
.field private final this$0:Lorg/apache/commons/collections/map/ListOrderedMap$KeySetView;


# direct methods
.method constructor <init>(Lorg/apache/commons/collections/map/ListOrderedMap$KeySetView;Ljava/util/Iterator;)V
    .locals 0
    .parameter "this$0"
    .parameter "x0"

    .prologue
    .line 391
    invoke-direct {p0, p2}, Lorg/apache/commons/collections/iterators/AbstractIteratorDecorator;-><init>(Ljava/util/Iterator;)V

    iput-object p1, p0, Lorg/apache/commons/collections/map/ListOrderedMap$2;->this$0:Lorg/apache/commons/collections/map/ListOrderedMap$KeySetView;

    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 392
    invoke-super {p0}, Lorg/apache/commons/collections/iterators/AbstractIteratorDecorator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
