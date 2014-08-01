.class Lorg/apache/commons/collections/DoubleOrderedMap$4;
.super Lorg/apache/commons/collections/DoubleOrderedMap$DoubleOrderedMapIterator;
.source "DoubleOrderedMap.java"


# instance fields
.field private final this$1:Lorg/apache/commons/collections/DoubleOrderedMap$3;


# direct methods
.method constructor <init>(Lorg/apache/commons/collections/DoubleOrderedMap$3;I)V
    .locals 1
    .parameter "this$1"
    .parameter "x0"

    .prologue
    .line 290
    invoke-static {p1}, Lorg/apache/commons/collections/DoubleOrderedMap$3;->access$400(Lorg/apache/commons/collections/DoubleOrderedMap$3;)Lorg/apache/commons/collections/DoubleOrderedMap;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap$DoubleOrderedMapIterator;-><init>(Lorg/apache/commons/collections/DoubleOrderedMap;I)V

    iput-object p1, p0, Lorg/apache/commons/collections/DoubleOrderedMap$4;->this$1:Lorg/apache/commons/collections/DoubleOrderedMap$3;

    return-void
.end method


# virtual methods
.method protected doGetNext()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 291
    iget-object v0, p0, Lorg/apache/commons/collections/DoubleOrderedMap$DoubleOrderedMapIterator;->lastReturnedNode:Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$200(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Ljava/lang/Comparable;

    move-result-object v0

    return-object v0
.end method
