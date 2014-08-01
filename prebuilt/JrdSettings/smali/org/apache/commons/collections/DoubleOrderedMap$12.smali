.class Lorg/apache/commons/collections/DoubleOrderedMap$12;
.super Lorg/apache/commons/collections/DoubleOrderedMap$DoubleOrderedMapIterator;
.source "DoubleOrderedMap.java"


# instance fields
.field private final this$1:Lorg/apache/commons/collections/DoubleOrderedMap$11;


# direct methods
.method constructor <init>(Lorg/apache/commons/collections/DoubleOrderedMap$11;I)V
    .locals 1
    .parameter "this$1"
    .parameter "x0"

    .prologue
    .line 1593
    invoke-static {p1}, Lorg/apache/commons/collections/DoubleOrderedMap$11;->access$2100(Lorg/apache/commons/collections/DoubleOrderedMap$11;)Lorg/apache/commons/collections/DoubleOrderedMap;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap$DoubleOrderedMapIterator;-><init>(Lorg/apache/commons/collections/DoubleOrderedMap;I)V

    iput-object p1, p0, Lorg/apache/commons/collections/DoubleOrderedMap$12;->this$1:Lorg/apache/commons/collections/DoubleOrderedMap$11;

    return-void
.end method


# virtual methods
.method protected doGetNext()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1594
    iget-object v0, p0, Lorg/apache/commons/collections/DoubleOrderedMap$DoubleOrderedMapIterator;->lastReturnedNode:Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    return-object v0
.end method
