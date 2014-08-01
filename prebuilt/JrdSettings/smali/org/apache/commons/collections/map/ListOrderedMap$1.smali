.class Lorg/apache/commons/collections/map/ListOrderedMap$1;
.super Lorg/apache/commons/collections/iterators/AbstractIteratorDecorator;
.source "ListOrderedMap.java"


# instance fields
.field private final this$0:Lorg/apache/commons/collections/map/ListOrderedMap$ValuesView;


# direct methods
.method constructor <init>(Lorg/apache/commons/collections/map/ListOrderedMap$ValuesView;Ljava/util/Iterator;)V
    .locals 0
    .parameter "this$0"
    .parameter "x0"

    .prologue
    .line 361
    invoke-direct {p0, p2}, Lorg/apache/commons/collections/iterators/AbstractIteratorDecorator;-><init>(Ljava/util/Iterator;)V

    iput-object p1, p0, Lorg/apache/commons/collections/map/ListOrderedMap$1;->this$0:Lorg/apache/commons/collections/map/ListOrderedMap$ValuesView;

    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/AbstractIteratorDecorator;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
