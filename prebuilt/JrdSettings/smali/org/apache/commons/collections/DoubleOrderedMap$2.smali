.class Lorg/apache/commons/collections/DoubleOrderedMap$2;
.super Lorg/apache/commons/collections/DoubleOrderedMap$DoubleOrderedMapIterator;
.source "DoubleOrderedMap.java"


# instance fields
.field private final this$1:Lorg/apache/commons/collections/DoubleOrderedMap$1;


# direct methods
.method constructor <init>(Lorg/apache/commons/collections/DoubleOrderedMap$1;I)V
    .locals 1
    .parameter "this$1"
    .parameter "x0"

    .prologue
    .line 210
    invoke-static {p1}, Lorg/apache/commons/collections/DoubleOrderedMap$1;->access$000(Lorg/apache/commons/collections/DoubleOrderedMap$1;)Lorg/apache/commons/collections/DoubleOrderedMap;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/apache/commons/collections/DoubleOrderedMap$DoubleOrderedMapIterator;-><init>(Lorg/apache/commons/collections/DoubleOrderedMap;I)V

    iput-object p1, p0, Lorg/apache/commons/collections/DoubleOrderedMap$2;->this$1:Lorg/apache/commons/collections/DoubleOrderedMap$1;

    return-void
.end method


# virtual methods
.method protected doGetNext()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lorg/apache/commons/collections/DoubleOrderedMap$DoubleOrderedMapIterator;->lastReturnedNode:Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    return-object v0
.end method
