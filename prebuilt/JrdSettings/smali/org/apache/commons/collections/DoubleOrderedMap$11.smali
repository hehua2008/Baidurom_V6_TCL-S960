.class Lorg/apache/commons/collections/DoubleOrderedMap$11;
.super Ljava/util/AbstractSet;
.source "DoubleOrderedMap.java"


# instance fields
.field private final this$0:Lorg/apache/commons/collections/DoubleOrderedMap;


# direct methods
.method constructor <init>(Lorg/apache/commons/collections/DoubleOrderedMap;)V
    .locals 0
    .parameter "this$0"

    .prologue
    .line 1638
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/collections/DoubleOrderedMap$11;->this$0:Lorg/apache/commons/collections/DoubleOrderedMap;

    return-void
.end method

.method static access$2100(Lorg/apache/commons/collections/DoubleOrderedMap$11;)Lorg/apache/commons/collections/DoubleOrderedMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1638
    iget-object v0, p0, Lorg/apache/commons/collections/DoubleOrderedMap$11;->this$0:Lorg/apache/commons/collections/DoubleOrderedMap;

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 1639
    iget-object v0, p0, Lorg/apache/commons/collections/DoubleOrderedMap$11;->this$0:Lorg/apache/commons/collections/DoubleOrderedMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections/DoubleOrderedMap;->clear()V

    .line 1640
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 7
    .parameter "o"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1601
    instance-of v3, p1, Ljava/util/Map$Entry;

    if-nez v3, :cond_0

    .line 1610
    :goto_0
    return v5

    :cond_0
    move-object v0, p1

    .line 1605
    check-cast v0, Ljava/util/Map$Entry;

    .line 1606
    .local v0, entry:Ljava/util/Map$Entry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 1607
    .local v2, value:Ljava/lang/Object;
    iget-object v6, p0, Lorg/apache/commons/collections/DoubleOrderedMap$11;->this$0:Lorg/apache/commons/collections/DoubleOrderedMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Comparable;

    invoke-static {v6, v3, v5}, Lorg/apache/commons/collections/DoubleOrderedMap;->access$100(Lorg/apache/commons/collections/DoubleOrderedMap;Ljava/lang/Comparable;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v1

    .line 1610
    .local v1, node:Lorg/apache/commons/collections/DoubleOrderedMap$Node;
    if-eqz v1, :cond_1

    invoke-static {v1, v4}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$200(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Ljava/lang/Comparable;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v4

    :goto_1
    move v5, v3

    goto :goto_0

    :cond_1
    move v3, v5

    goto :goto_1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2

    .prologue
    .line 1591
    new-instance v0, Lorg/apache/commons/collections/DoubleOrderedMap$12;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/collections/DoubleOrderedMap$12;-><init>(Lorg/apache/commons/collections/DoubleOrderedMap$11;I)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 7
    .parameter "o"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1616
    instance-of v3, p1, Ljava/util/Map$Entry;

    if-nez v3, :cond_0

    move v3, v4

    .line 1631
    :goto_0
    return v3

    :cond_0
    move-object v0, p1

    .line 1620
    check-cast v0, Ljava/util/Map$Entry;

    .line 1621
    .local v0, entry:Ljava/util/Map$Entry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 1622
    .local v2, value:Ljava/lang/Object;
    iget-object v6, p0, Lorg/apache/commons/collections/DoubleOrderedMap$11;->this$0:Lorg/apache/commons/collections/DoubleOrderedMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Comparable;

    invoke-static {v6, v3, v4}, Lorg/apache/commons/collections/DoubleOrderedMap;->access$100(Lorg/apache/commons/collections/DoubleOrderedMap;Ljava/lang/Comparable;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v1

    .line 1625
    .local v1, node:Lorg/apache/commons/collections/DoubleOrderedMap$Node;
    if-eqz v1, :cond_1

    invoke-static {v1, v5}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$200(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Ljava/lang/Comparable;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1626
    iget-object v3, p0, Lorg/apache/commons/collections/DoubleOrderedMap$11;->this$0:Lorg/apache/commons/collections/DoubleOrderedMap;

    invoke-static {v3, v1}, Lorg/apache/commons/collections/DoubleOrderedMap;->access$300(Lorg/apache/commons/collections/DoubleOrderedMap;Lorg/apache/commons/collections/DoubleOrderedMap$Node;)V

    move v3, v5

    .line 1628
    goto :goto_0

    :cond_1
    move v3, v4

    .line 1631
    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 1635
    iget-object v0, p0, Lorg/apache/commons/collections/DoubleOrderedMap$11;->this$0:Lorg/apache/commons/collections/DoubleOrderedMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections/DoubleOrderedMap;->size()I

    move-result v0

    return v0
.end method
