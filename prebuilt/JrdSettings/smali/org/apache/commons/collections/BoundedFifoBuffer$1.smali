.class Lorg/apache/commons/collections/BoundedFifoBuffer$1;
.super Ljava/lang/Object;
.source "BoundedFifoBuffer.java"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field private index:I

.field private isFirst:Z

.field private lastReturnedIndex:I

.field private final this$0:Lorg/apache/commons/collections/BoundedFifoBuffer;


# direct methods
.method constructor <init>(Lorg/apache/commons/collections/BoundedFifoBuffer;)V
    .locals 1
    .parameter "this$0"

    .prologue
    .line 278
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/collections/BoundedFifoBuffer$1;->this$0:Lorg/apache/commons/collections/BoundedFifoBuffer;

    .line 261
    iget-object v0, p0, Lorg/apache/commons/collections/BoundedFifoBuffer$1;->this$0:Lorg/apache/commons/collections/BoundedFifoBuffer;

    invoke-static {v0}, Lorg/apache/commons/collections/BoundedFifoBuffer;->access$000(Lorg/apache/commons/collections/BoundedFifoBuffer;)I

    move-result v0

    iput v0, p0, Lorg/apache/commons/collections/BoundedFifoBuffer$1;->index:I

    .line 262
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/commons/collections/BoundedFifoBuffer$1;->lastReturnedIndex:I

    .line 263
    iget-object v0, p0, Lorg/apache/commons/collections/BoundedFifoBuffer$1;->this$0:Lorg/apache/commons/collections/BoundedFifoBuffer;

    invoke-static {v0}, Lorg/apache/commons/collections/BoundedFifoBuffer;->access$100(Lorg/apache/commons/collections/BoundedFifoBuffer;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/commons/collections/BoundedFifoBuffer$1;->isFirst:Z

    .line 278
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .prologue
    .line 266
    iget-boolean v0, p0, Lorg/apache/commons/collections/BoundedFifoBuffer$1;->isFirst:Z

    if-nez v0, :cond_0

    iget v0, p0, Lorg/apache/commons/collections/BoundedFifoBuffer$1;->index:I

    iget-object v1, p0, Lorg/apache/commons/collections/BoundedFifoBuffer$1;->this$0:Lorg/apache/commons/collections/BoundedFifoBuffer;

    invoke-static {v1}, Lorg/apache/commons/collections/BoundedFifoBuffer;->access$200(Lorg/apache/commons/collections/BoundedFifoBuffer;)I

    move-result v1

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 271
    invoke-virtual {p0}, Lorg/apache/commons/collections/BoundedFifoBuffer$1;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 272
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/collections/BoundedFifoBuffer$1;->isFirst:Z

    .line 273
    iget v0, p0, Lorg/apache/commons/collections/BoundedFifoBuffer$1;->index:I

    iput v0, p0, Lorg/apache/commons/collections/BoundedFifoBuffer$1;->lastReturnedIndex:I

    .line 274
    iget-object v0, p0, Lorg/apache/commons/collections/BoundedFifoBuffer$1;->this$0:Lorg/apache/commons/collections/BoundedFifoBuffer;

    iget v1, p0, Lorg/apache/commons/collections/BoundedFifoBuffer$1;->index:I

    invoke-static {v0, v1}, Lorg/apache/commons/collections/BoundedFifoBuffer;->access$300(Lorg/apache/commons/collections/BoundedFifoBuffer;I)I

    move-result v0

    iput v0, p0, Lorg/apache/commons/collections/BoundedFifoBuffer$1;->index:I

    .line 275
    iget-object v0, p0, Lorg/apache/commons/collections/BoundedFifoBuffer$1;->this$0:Lorg/apache/commons/collections/BoundedFifoBuffer;

    invoke-static {v0}, Lorg/apache/commons/collections/BoundedFifoBuffer;->access$400(Lorg/apache/commons/collections/BoundedFifoBuffer;)[Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lorg/apache/commons/collections/BoundedFifoBuffer$1;->lastReturnedIndex:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public remove()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 279
    iget v1, p0, Lorg/apache/commons/collections/BoundedFifoBuffer$1;->lastReturnedIndex:I

    if-ne v1, v4, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 282
    :cond_0
    iget v1, p0, Lorg/apache/commons/collections/BoundedFifoBuffer$1;->lastReturnedIndex:I

    iget-object v2, p0, Lorg/apache/commons/collections/BoundedFifoBuffer$1;->this$0:Lorg/apache/commons/collections/BoundedFifoBuffer;

    invoke-static {v2}, Lorg/apache/commons/collections/BoundedFifoBuffer;->access$000(Lorg/apache/commons/collections/BoundedFifoBuffer;)I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 283
    iget-object v1, p0, Lorg/apache/commons/collections/BoundedFifoBuffer$1;->this$0:Lorg/apache/commons/collections/BoundedFifoBuffer;

    invoke-virtual {v1}, Lorg/apache/commons/collections/BoundedFifoBuffer;->remove()Ljava/lang/Object;

    .line 284
    iput v4, p0, Lorg/apache/commons/collections/BoundedFifoBuffer$1;->lastReturnedIndex:I

    .line 305
    :goto_0
    return-void

    .line 289
    :cond_1
    iget v1, p0, Lorg/apache/commons/collections/BoundedFifoBuffer$1;->lastReturnedIndex:I

    add-int/lit8 v0, v1, 0x1

    .line 290
    .local v0, i:I
    :goto_1
    iget-object v1, p0, Lorg/apache/commons/collections/BoundedFifoBuffer$1;->this$0:Lorg/apache/commons/collections/BoundedFifoBuffer;

    invoke-static {v1}, Lorg/apache/commons/collections/BoundedFifoBuffer;->access$200(Lorg/apache/commons/collections/BoundedFifoBuffer;)I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 300
    iput v4, p0, Lorg/apache/commons/collections/BoundedFifoBuffer$1;->lastReturnedIndex:I

    .line 301
    iget-object v1, p0, Lorg/apache/commons/collections/BoundedFifoBuffer$1;->this$0:Lorg/apache/commons/collections/BoundedFifoBuffer;

    iget-object v2, p0, Lorg/apache/commons/collections/BoundedFifoBuffer$1;->this$0:Lorg/apache/commons/collections/BoundedFifoBuffer;

    iget-object v3, p0, Lorg/apache/commons/collections/BoundedFifoBuffer$1;->this$0:Lorg/apache/commons/collections/BoundedFifoBuffer;

    invoke-static {v3}, Lorg/apache/commons/collections/BoundedFifoBuffer;->access$200(Lorg/apache/commons/collections/BoundedFifoBuffer;)I

    move-result v3

    invoke-static {v2, v3}, Lorg/apache/commons/collections/BoundedFifoBuffer;->access$600(Lorg/apache/commons/collections/BoundedFifoBuffer;I)I

    move-result v2

    invoke-static {v1, v2}, Lorg/apache/commons/collections/BoundedFifoBuffer;->access$202(Lorg/apache/commons/collections/BoundedFifoBuffer;I)I

    .line 302
    iget-object v1, p0, Lorg/apache/commons/collections/BoundedFifoBuffer$1;->this$0:Lorg/apache/commons/collections/BoundedFifoBuffer;

    invoke-static {v1}, Lorg/apache/commons/collections/BoundedFifoBuffer;->access$400(Lorg/apache/commons/collections/BoundedFifoBuffer;)[Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/collections/BoundedFifoBuffer$1;->this$0:Lorg/apache/commons/collections/BoundedFifoBuffer;

    invoke-static {v2}, Lorg/apache/commons/collections/BoundedFifoBuffer;->access$200(Lorg/apache/commons/collections/BoundedFifoBuffer;)I

    move-result v2

    const/4 v3, 0x0

    aput-object v3, v1, v2

    .line 303
    iget-object v1, p0, Lorg/apache/commons/collections/BoundedFifoBuffer$1;->this$0:Lorg/apache/commons/collections/BoundedFifoBuffer;

    invoke-static {v1, v5}, Lorg/apache/commons/collections/BoundedFifoBuffer;->access$102(Lorg/apache/commons/collections/BoundedFifoBuffer;Z)Z

    .line 304
    iget-object v1, p0, Lorg/apache/commons/collections/BoundedFifoBuffer$1;->this$0:Lorg/apache/commons/collections/BoundedFifoBuffer;

    iget v2, p0, Lorg/apache/commons/collections/BoundedFifoBuffer$1;->index:I

    invoke-static {v1, v2}, Lorg/apache/commons/collections/BoundedFifoBuffer;->access$600(Lorg/apache/commons/collections/BoundedFifoBuffer;I)I

    move-result v1

    iput v1, p0, Lorg/apache/commons/collections/BoundedFifoBuffer$1;->index:I

    goto :goto_0

    .line 291
    :cond_2
    iget-object v1, p0, Lorg/apache/commons/collections/BoundedFifoBuffer$1;->this$0:Lorg/apache/commons/collections/BoundedFifoBuffer;

    invoke-static {v1}, Lorg/apache/commons/collections/BoundedFifoBuffer;->access$500(Lorg/apache/commons/collections/BoundedFifoBuffer;)I

    move-result v1

    if-lt v0, v1, :cond_3

    .line 292
    iget-object v1, p0, Lorg/apache/commons/collections/BoundedFifoBuffer$1;->this$0:Lorg/apache/commons/collections/BoundedFifoBuffer;

    invoke-static {v1}, Lorg/apache/commons/collections/BoundedFifoBuffer;->access$400(Lorg/apache/commons/collections/BoundedFifoBuffer;)[Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v2, v0, -0x1

    iget-object v3, p0, Lorg/apache/commons/collections/BoundedFifoBuffer$1;->this$0:Lorg/apache/commons/collections/BoundedFifoBuffer;

    invoke-static {v3}, Lorg/apache/commons/collections/BoundedFifoBuffer;->access$400(Lorg/apache/commons/collections/BoundedFifoBuffer;)[Ljava/lang/Object;

    move-result-object v3

    aget-object v3, v3, v5

    aput-object v3, v1, v2

    .line 293
    const/4 v0, 0x0

    goto :goto_1

    .line 295
    :cond_3
    iget-object v1, p0, Lorg/apache/commons/collections/BoundedFifoBuffer$1;->this$0:Lorg/apache/commons/collections/BoundedFifoBuffer;

    invoke-static {v1}, Lorg/apache/commons/collections/BoundedFifoBuffer;->access$400(Lorg/apache/commons/collections/BoundedFifoBuffer;)[Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v2, v0, -0x1

    iget-object v3, p0, Lorg/apache/commons/collections/BoundedFifoBuffer$1;->this$0:Lorg/apache/commons/collections/BoundedFifoBuffer;

    invoke-static {v3}, Lorg/apache/commons/collections/BoundedFifoBuffer;->access$400(Lorg/apache/commons/collections/BoundedFifoBuffer;)[Ljava/lang/Object;

    move-result-object v3

    aget-object v3, v3, v0

    aput-object v3, v1, v2

    .line 296
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
