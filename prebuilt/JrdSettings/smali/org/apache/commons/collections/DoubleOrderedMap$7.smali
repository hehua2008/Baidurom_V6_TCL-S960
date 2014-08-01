.class Lorg/apache/commons/collections/DoubleOrderedMap$7;
.super Ljava/util/AbstractSet;
.source "DoubleOrderedMap.java"


# instance fields
.field private final this$0:Lorg/apache/commons/collections/DoubleOrderedMap;


# direct methods
.method constructor <init>(Lorg/apache/commons/collections/DoubleOrderedMap;)V
    .locals 0
    .parameter "this$0"

    .prologue
    .line 1491
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/collections/DoubleOrderedMap$7;->this$0:Lorg/apache/commons/collections/DoubleOrderedMap;

    return-void
.end method

.method static access$1900(Lorg/apache/commons/collections/DoubleOrderedMap$7;)Lorg/apache/commons/collections/DoubleOrderedMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1491
    iget-object v0, p0, Lorg/apache/commons/collections/DoubleOrderedMap$7;->this$0:Lorg/apache/commons/collections/DoubleOrderedMap;

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 1492
    iget-object v0, p0, Lorg/apache/commons/collections/DoubleOrderedMap$7;->this$0:Lorg/apache/commons/collections/DoubleOrderedMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections/DoubleOrderedMap;->clear()V

    .line 1493
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .parameter "o"

    .prologue
    .line 1479
    iget-object v0, p0, Lorg/apache/commons/collections/DoubleOrderedMap$7;->this$0:Lorg/apache/commons/collections/DoubleOrderedMap;

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections/DoubleOrderedMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2

    .prologue
    .line 1466
    new-instance v0, Lorg/apache/commons/collections/DoubleOrderedMap$8;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/collections/DoubleOrderedMap$8;-><init>(Lorg/apache/commons/collections/DoubleOrderedMap$7;I)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2
    .parameter "o"

    .prologue
    .line 1484
    iget-object v1, p0, Lorg/apache/commons/collections/DoubleOrderedMap$7;->this$0:Lorg/apache/commons/collections/DoubleOrderedMap;

    invoke-static {v1}, Lorg/apache/commons/collections/DoubleOrderedMap;->access$500(Lorg/apache/commons/collections/DoubleOrderedMap;)I

    move-result v0

    .line 1486
    .local v0, oldNodeCount:I
    iget-object v1, p0, Lorg/apache/commons/collections/DoubleOrderedMap$7;->this$0:Lorg/apache/commons/collections/DoubleOrderedMap;

    invoke-virtual {v1, p1}, Lorg/apache/commons/collections/DoubleOrderedMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1488
    iget-object v1, p0, Lorg/apache/commons/collections/DoubleOrderedMap$7;->this$0:Lorg/apache/commons/collections/DoubleOrderedMap;

    invoke-static {v1}, Lorg/apache/commons/collections/DoubleOrderedMap;->access$500(Lorg/apache/commons/collections/DoubleOrderedMap;)I

    move-result v1

    if-eq v1, v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 1475
    iget-object v0, p0, Lorg/apache/commons/collections/DoubleOrderedMap$7;->this$0:Lorg/apache/commons/collections/DoubleOrderedMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections/DoubleOrderedMap;->size()I

    move-result v0

    return v0
.end method
