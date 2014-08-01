.class Lorg/apache/commons/collections/UnboundedFifoBuffer$1;
.super Ljava/lang/Object;
.source "UnboundedFifoBuffer.java"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field private index:I

.field private lastReturnedIndex:I

.field private final this$0:Lorg/apache/commons/collections/UnboundedFifoBuffer;


# direct methods
.method constructor <init>(Lorg/apache/commons/collections/UnboundedFifoBuffer;)V
    .locals 1
    .parameter "this$0"

    .prologue
    .line 245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/collections/UnboundedFifoBuffer$1;->this$0:Lorg/apache/commons/collections/UnboundedFifoBuffer;

    .line 229
    iget-object v0, p0, Lorg/apache/commons/collections/UnboundedFifoBuffer$1;->this$0:Lorg/apache/commons/collections/UnboundedFifoBuffer;

    iget v0, v0, Lorg/apache/commons/collections/UnboundedFifoBuffer;->m_head:I

    iput v0, p0, Lorg/apache/commons/collections/UnboundedFifoBuffer$1;->index:I

    .line 230
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/commons/collections/UnboundedFifoBuffer$1;->lastReturnedIndex:I

    .line 245
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .prologue
    .line 233
    iget v0, p0, Lorg/apache/commons/collections/UnboundedFifoBuffer$1;->index:I

    iget-object v1, p0, Lorg/apache/commons/collections/UnboundedFifoBuffer$1;->this$0:Lorg/apache/commons/collections/UnboundedFifoBuffer;

    iget v1, v1, Lorg/apache/commons/collections/UnboundedFifoBuffer;->m_tail:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 238
    invoke-virtual {p0}, Lorg/apache/commons/collections/UnboundedFifoBuffer$1;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 239
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 240
    :cond_0
    iget v0, p0, Lorg/apache/commons/collections/UnboundedFifoBuffer$1;->index:I

    iput v0, p0, Lorg/apache/commons/collections/UnboundedFifoBuffer$1;->lastReturnedIndex:I

    .line 241
    iget-object v0, p0, Lorg/apache/commons/collections/UnboundedFifoBuffer$1;->this$0:Lorg/apache/commons/collections/UnboundedFifoBuffer;

    iget v1, p0, Lorg/apache/commons/collections/UnboundedFifoBuffer$1;->index:I

    invoke-static {v0, v1}, Lorg/apache/commons/collections/UnboundedFifoBuffer;->access$000(Lorg/apache/commons/collections/UnboundedFifoBuffer;I)I

    move-result v0

    iput v0, p0, Lorg/apache/commons/collections/UnboundedFifoBuffer$1;->index:I

    .line 242
    iget-object v0, p0, Lorg/apache/commons/collections/UnboundedFifoBuffer$1;->this$0:Lorg/apache/commons/collections/UnboundedFifoBuffer;

    iget-object v0, v0, Lorg/apache/commons/collections/UnboundedFifoBuffer;->m_buffer:[Ljava/lang/Object;

    iget v1, p0, Lorg/apache/commons/collections/UnboundedFifoBuffer$1;->lastReturnedIndex:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public remove()V
    .locals 6

    .prologue
    const/4 v5, -0x1

    .line 246
    iget v1, p0, Lorg/apache/commons/collections/UnboundedFifoBuffer$1;->lastReturnedIndex:I

    if-ne v1, v5, :cond_0

    .line 247
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 250
    :cond_0
    iget v1, p0, Lorg/apache/commons/collections/UnboundedFifoBuffer$1;->lastReturnedIndex:I

    iget-object v2, p0, Lorg/apache/commons/collections/UnboundedFifoBuffer$1;->this$0:Lorg/apache/commons/collections/UnboundedFifoBuffer;

    iget v2, v2, Lorg/apache/commons/collections/UnboundedFifoBuffer;->m_head:I

    if-ne v1, v2, :cond_1

    .line 251
    iget-object v1, p0, Lorg/apache/commons/collections/UnboundedFifoBuffer$1;->this$0:Lorg/apache/commons/collections/UnboundedFifoBuffer;

    invoke-virtual {v1}, Lorg/apache/commons/collections/UnboundedFifoBuffer;->remove()Ljava/lang/Object;

    .line 252
    iput v5, p0, Lorg/apache/commons/collections/UnboundedFifoBuffer$1;->lastReturnedIndex:I

    .line 272
    :goto_0
    return-void

    .line 257
    :cond_1
    iget v1, p0, Lorg/apache/commons/collections/UnboundedFifoBuffer$1;->lastReturnedIndex:I

    add-int/lit8 v0, v1, 0x1

    .line 258
    .local v0, i:I
    :goto_1
    iget-object v1, p0, Lorg/apache/commons/collections/UnboundedFifoBuffer$1;->this$0:Lorg/apache/commons/collections/UnboundedFifoBuffer;

    iget v1, v1, Lorg/apache/commons/collections/UnboundedFifoBuffer;->m_tail:I

    if-ne v0, v1, :cond_2

    .line 268
    iput v5, p0, Lorg/apache/commons/collections/UnboundedFifoBuffer$1;->lastReturnedIndex:I

    .line 269
    iget-object v1, p0, Lorg/apache/commons/collections/UnboundedFifoBuffer$1;->this$0:Lorg/apache/commons/collections/UnboundedFifoBuffer;

    iget-object v2, p0, Lorg/apache/commons/collections/UnboundedFifoBuffer$1;->this$0:Lorg/apache/commons/collections/UnboundedFifoBuffer;

    iget-object v3, p0, Lorg/apache/commons/collections/UnboundedFifoBuffer$1;->this$0:Lorg/apache/commons/collections/UnboundedFifoBuffer;

    iget v3, v3, Lorg/apache/commons/collections/UnboundedFifoBuffer;->m_tail:I

    invoke-static {v2, v3}, Lorg/apache/commons/collections/UnboundedFifoBuffer;->access$100(Lorg/apache/commons/collections/UnboundedFifoBuffer;I)I

    move-result v2

    iput v2, v1, Lorg/apache/commons/collections/UnboundedFifoBuffer;->m_tail:I

    .line 270
    iget-object v1, p0, Lorg/apache/commons/collections/UnboundedFifoBuffer$1;->this$0:Lorg/apache/commons/collections/UnboundedFifoBuffer;

    iget-object v1, v1, Lorg/apache/commons/collections/UnboundedFifoBuffer;->m_buffer:[Ljava/lang/Object;

    iget-object v2, p0, Lorg/apache/commons/collections/UnboundedFifoBuffer$1;->this$0:Lorg/apache/commons/collections/UnboundedFifoBuffer;

    iget v2, v2, Lorg/apache/commons/collections/UnboundedFifoBuffer;->m_tail:I

    const/4 v3, 0x0

    aput-object v3, v1, v2

    .line 271
    iget-object v1, p0, Lorg/apache/commons/collections/UnboundedFifoBuffer$1;->this$0:Lorg/apache/commons/collections/UnboundedFifoBuffer;

    iget v2, p0, Lorg/apache/commons/collections/UnboundedFifoBuffer$1;->index:I

    invoke-static {v1, v2}, Lorg/apache/commons/collections/UnboundedFifoBuffer;->access$100(Lorg/apache/commons/collections/UnboundedFifoBuffer;I)I

    move-result v1

    iput v1, p0, Lorg/apache/commons/collections/UnboundedFifoBuffer$1;->index:I

    goto :goto_0

    .line 259
    :cond_2
    iget-object v1, p0, Lorg/apache/commons/collections/UnboundedFifoBuffer$1;->this$0:Lorg/apache/commons/collections/UnboundedFifoBuffer;

    iget-object v1, v1, Lorg/apache/commons/collections/UnboundedFifoBuffer;->m_buffer:[Ljava/lang/Object;

    array-length v1, v1

    if-lt v0, v1, :cond_3

    .line 260
    iget-object v1, p0, Lorg/apache/commons/collections/UnboundedFifoBuffer$1;->this$0:Lorg/apache/commons/collections/UnboundedFifoBuffer;

    iget-object v1, v1, Lorg/apache/commons/collections/UnboundedFifoBuffer;->m_buffer:[Ljava/lang/Object;

    add-int/lit8 v2, v0, -0x1

    iget-object v3, p0, Lorg/apache/commons/collections/UnboundedFifoBuffer$1;->this$0:Lorg/apache/commons/collections/UnboundedFifoBuffer;

    iget-object v3, v3, Lorg/apache/commons/collections/UnboundedFifoBuffer;->m_buffer:[Ljava/lang/Object;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    aput-object v3, v1, v2

    .line 261
    const/4 v0, 0x0

    goto :goto_1

    .line 263
    :cond_3
    iget-object v1, p0, Lorg/apache/commons/collections/UnboundedFifoBuffer$1;->this$0:Lorg/apache/commons/collections/UnboundedFifoBuffer;

    iget-object v1, v1, Lorg/apache/commons/collections/UnboundedFifoBuffer;->m_buffer:[Ljava/lang/Object;

    add-int/lit8 v2, v0, -0x1

    iget-object v3, p0, Lorg/apache/commons/collections/UnboundedFifoBuffer$1;->this$0:Lorg/apache/commons/collections/UnboundedFifoBuffer;

    iget-object v3, v3, Lorg/apache/commons/collections/UnboundedFifoBuffer;->m_buffer:[Ljava/lang/Object;

    aget-object v3, v3, v0

    aput-object v3, v1, v2

    .line 264
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
