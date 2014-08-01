.class Lorg/apache/commons/collections/DoubleOrderedMap$5;
.super Ljava/util/AbstractCollection;
.source "DoubleOrderedMap.java"


# instance fields
.field private final this$0:Lorg/apache/commons/collections/DoubleOrderedMap;


# direct methods
.method constructor <init>(Lorg/apache/commons/collections/DoubleOrderedMap;)V
    .locals 0
    .parameter "this$0"

    .prologue
    .line 386
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/collections/DoubleOrderedMap$5;->this$0:Lorg/apache/commons/collections/DoubleOrderedMap;

    return-void
.end method

.method static access$600(Lorg/apache/commons/collections/DoubleOrderedMap$5;)Lorg/apache/commons/collections/DoubleOrderedMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 386
    iget-object v0, p0, Lorg/apache/commons/collections/DoubleOrderedMap$5;->this$0:Lorg/apache/commons/collections/DoubleOrderedMap;

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 387
    iget-object v0, p0, Lorg/apache/commons/collections/DoubleOrderedMap$5;->this$0:Lorg/apache/commons/collections/DoubleOrderedMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections/DoubleOrderedMap;->clear()V

    .line 388
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .parameter "o"

    .prologue
    .line 360
    iget-object v0, p0, Lorg/apache/commons/collections/DoubleOrderedMap$5;->this$0:Lorg/apache/commons/collections/DoubleOrderedMap;

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections/DoubleOrderedMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2

    .prologue
    .line 347
    new-instance v0, Lorg/apache/commons/collections/DoubleOrderedMap$6;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/collections/DoubleOrderedMap$6;-><init>(Lorg/apache/commons/collections/DoubleOrderedMap$5;I)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2
    .parameter "o"

    .prologue
    .line 365
    iget-object v1, p0, Lorg/apache/commons/collections/DoubleOrderedMap$5;->this$0:Lorg/apache/commons/collections/DoubleOrderedMap;

    invoke-static {v1}, Lorg/apache/commons/collections/DoubleOrderedMap;->access$500(Lorg/apache/commons/collections/DoubleOrderedMap;)I

    move-result v0

    .line 367
    .local v0, oldnodeCount:I
    iget-object v1, p0, Lorg/apache/commons/collections/DoubleOrderedMap$5;->this$0:Lorg/apache/commons/collections/DoubleOrderedMap;

    invoke-virtual {v1, p1}, Lorg/apache/commons/collections/DoubleOrderedMap;->removeValue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    iget-object v1, p0, Lorg/apache/commons/collections/DoubleOrderedMap$5;->this$0:Lorg/apache/commons/collections/DoubleOrderedMap;

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

.method public removeAll(Ljava/util/Collection;)Z
    .locals 4
    .parameter "c"

    .prologue
    .line 374
    const/4 v1, 0x0

    .line 375
    .local v1, modified:Z
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 377
    .local v0, iter:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 383
    return v1

    .line 378
    :cond_1
    iget-object v2, p0, Lorg/apache/commons/collections/DoubleOrderedMap$5;->this$0:Lorg/apache/commons/collections/DoubleOrderedMap;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/commons/collections/DoubleOrderedMap;->removeValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 379
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 356
    iget-object v0, p0, Lorg/apache/commons/collections/DoubleOrderedMap$5;->this$0:Lorg/apache/commons/collections/DoubleOrderedMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections/DoubleOrderedMap;->size()I

    move-result v0

    return v0
.end method
