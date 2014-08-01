.class Lorg/apache/commons/collections/DoubleOrderedMap$1;
.super Ljava/util/AbstractSet;
.source "DoubleOrderedMap.java"


# instance fields
.field private final this$0:Lorg/apache/commons/collections/DoubleOrderedMap;


# direct methods
.method constructor <init>(Lorg/apache/commons/collections/DoubleOrderedMap;)V
    .locals 0
    .parameter "this$0"

    .prologue
    .line 254
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/collections/DoubleOrderedMap$1;->this$0:Lorg/apache/commons/collections/DoubleOrderedMap;

    return-void
.end method

.method static access$000(Lorg/apache/commons/collections/DoubleOrderedMap$1;)Lorg/apache/commons/collections/DoubleOrderedMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 254
    iget-object v0, p0, Lorg/apache/commons/collections/DoubleOrderedMap$1;->this$0:Lorg/apache/commons/collections/DoubleOrderedMap;

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lorg/apache/commons/collections/DoubleOrderedMap$1;->this$0:Lorg/apache/commons/collections/DoubleOrderedMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections/DoubleOrderedMap;->clear()V

    .line 256
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 7
    .parameter "o"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 218
    instance-of v3, p1, Ljava/util/Map$Entry;

    if-nez v3, :cond_0

    .line 227
    :goto_0
    return v5

    :cond_0
    move-object v0, p1

    .line 222
    check-cast v0, Ljava/util/Map$Entry;

    .line 223
    .local v0, entry:Ljava/util/Map$Entry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 224
    .local v1, key:Ljava/lang/Object;
    iget-object v6, p0, Lorg/apache/commons/collections/DoubleOrderedMap$1;->this$0:Lorg/apache/commons/collections/DoubleOrderedMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Comparable;

    invoke-static {v6, v3, v4}, Lorg/apache/commons/collections/DoubleOrderedMap;->access$100(Lorg/apache/commons/collections/DoubleOrderedMap;Ljava/lang/Comparable;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v2

    .line 227
    .local v2, node:Lorg/apache/commons/collections/DoubleOrderedMap$Node;
    if-eqz v2, :cond_1

    invoke-static {v2, v5}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$200(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Ljava/lang/Comparable;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

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
    .line 208
    new-instance v0, Lorg/apache/commons/collections/DoubleOrderedMap$2;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/collections/DoubleOrderedMap$2;-><init>(Lorg/apache/commons/collections/DoubleOrderedMap$1;I)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 7
    .parameter "o"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 232
    instance-of v3, p1, Ljava/util/Map$Entry;

    if-nez v3, :cond_0

    move v3, v4

    .line 247
    :goto_0
    return v3

    :cond_0
    move-object v0, p1

    .line 236
    check-cast v0, Ljava/util/Map$Entry;

    .line 237
    .local v0, entry:Ljava/util/Map$Entry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 238
    .local v1, key:Ljava/lang/Object;
    iget-object v6, p0, Lorg/apache/commons/collections/DoubleOrderedMap$1;->this$0:Lorg/apache/commons/collections/DoubleOrderedMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Comparable;

    invoke-static {v6, v3, v5}, Lorg/apache/commons/collections/DoubleOrderedMap;->access$100(Lorg/apache/commons/collections/DoubleOrderedMap;Ljava/lang/Comparable;I)Lorg/apache/commons/collections/DoubleOrderedMap$Node;

    move-result-object v2

    .line 241
    .local v2, node:Lorg/apache/commons/collections/DoubleOrderedMap$Node;
    if-eqz v2, :cond_1

    invoke-static {v2, v4}, Lorg/apache/commons/collections/DoubleOrderedMap$Node;->access$200(Lorg/apache/commons/collections/DoubleOrderedMap$Node;I)Ljava/lang/Comparable;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 242
    iget-object v3, p0, Lorg/apache/commons/collections/DoubleOrderedMap$1;->this$0:Lorg/apache/commons/collections/DoubleOrderedMap;

    invoke-static {v3, v2}, Lorg/apache/commons/collections/DoubleOrderedMap;->access$300(Lorg/apache/commons/collections/DoubleOrderedMap;Lorg/apache/commons/collections/DoubleOrderedMap$Node;)V

    move v3, v5

    .line 244
    goto :goto_0

    :cond_1
    move v3, v4

    .line 247
    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lorg/apache/commons/collections/DoubleOrderedMap$1;->this$0:Lorg/apache/commons/collections/DoubleOrderedMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections/DoubleOrderedMap;->size()I

    move-result v0

    return v0
.end method
