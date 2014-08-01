.class public Lorg/apache/commons/collections/UnboundedFifoBuffer;
.super Ljava/util/AbstractCollection;
.source "UnboundedFifoBuffer.java"

# interfaces
.implements Lorg/apache/commons/collections/Buffer;


# instance fields
.field protected m_buffer:[Ljava/lang/Object;

.field protected m_head:I

.field protected m_tail:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 68
    const/16 v0, 0x20

    invoke-direct {p0, v0}, Lorg/apache/commons/collections/UnboundedFifoBuffer;-><init>(I)V

    .line 69
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .parameter "initialSize"

    .prologue
    const/4 v1, 0x0

    .line 78
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    .line 79
    if-gtz p1, :cond_0

    .line 80
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The size must be greater than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_0
    add-int/lit8 v0, p1, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lorg/apache/commons/collections/UnboundedFifoBuffer;->m_buffer:[Ljava/lang/Object;

    .line 83
    iput v1, p0, Lorg/apache/commons/collections/UnboundedFifoBuffer;->m_head:I

    .line 84
    iput v1, p0, Lorg/apache/commons/collections/UnboundedFifoBuffer;->m_tail:I

    .line 85
    return-void
.end method

.method static access$000(Lorg/apache/commons/collections/UnboundedFifoBuffer;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/UnboundedFifoBuffer;->increment(I)I

    move-result v0

    return v0
.end method

.method static access$100(Lorg/apache/commons/collections/UnboundedFifoBuffer;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/UnboundedFifoBuffer;->decrement(I)I

    move-result v0

    return v0
.end method

.method private decrement(I)I
    .locals 1
    .parameter "index"

    .prologue
    .line 214
    add-int/lit8 p1, p1, -0x1

    .line 215
    if-gez p1, :cond_0

    .line 216
    iget-object v0, p0, Lorg/apache/commons/collections/UnboundedFifoBuffer;->m_buffer:[Ljava/lang/Object;

    array-length v0, v0

    add-int/lit8 p1, v0, -0x1

    .line 218
    :cond_0
    return p1
.end method

.method private increment(I)I
    .locals 1
    .parameter "index"

    .prologue
    .line 200
    add-int/lit8 p1, p1, 0x1

    .line 201
    iget-object v0, p0, Lorg/apache/commons/collections/UnboundedFifoBuffer;->m_buffer:[Ljava/lang/Object;

    array-length v0, v0

    if-lt p1, v0, :cond_0

    .line 202
    const/4 p1, 0x0

    .line 204
    :cond_0
    return p1
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 6
    .parameter "obj"

    .prologue
    const/4 v5, 0x0

    .line 122
    if-nez p1, :cond_0

    .line 123
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "Attempted to add null object to buffer"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 126
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/collections/UnboundedFifoBuffer;->size()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Lorg/apache/commons/collections/UnboundedFifoBuffer;->m_buffer:[Ljava/lang/Object;

    array-length v4, v4

    if-lt v3, v4, :cond_2

    .line 127
    iget-object v3, p0, Lorg/apache/commons/collections/UnboundedFifoBuffer;->m_buffer:[Ljava/lang/Object;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x1

    new-array v2, v3, [Ljava/lang/Object;

    .line 129
    .local v2, tmp:[Ljava/lang/Object;
    const/4 v1, 0x0

    .line 130
    .local v1, j:I
    iget v0, p0, Lorg/apache/commons/collections/UnboundedFifoBuffer;->m_head:I

    .local v0, i:I
    :cond_1
    :goto_0
    iget v3, p0, Lorg/apache/commons/collections/UnboundedFifoBuffer;->m_tail:I

    if-ne v0, v3, :cond_4

    .line 141
    iput-object v2, p0, Lorg/apache/commons/collections/UnboundedFifoBuffer;->m_buffer:[Ljava/lang/Object;

    .line 142
    iput v5, p0, Lorg/apache/commons/collections/UnboundedFifoBuffer;->m_head:I

    .line 143
    iput v1, p0, Lorg/apache/commons/collections/UnboundedFifoBuffer;->m_tail:I

    .line 146
    .end local v0           #i:I
    .end local v1           #j:I
    .end local v2           #tmp:[Ljava/lang/Object;
    :cond_2
    iget-object v3, p0, Lorg/apache/commons/collections/UnboundedFifoBuffer;->m_buffer:[Ljava/lang/Object;

    iget v4, p0, Lorg/apache/commons/collections/UnboundedFifoBuffer;->m_tail:I

    aput-object p1, v3, v4

    .line 147
    iget v3, p0, Lorg/apache/commons/collections/UnboundedFifoBuffer;->m_tail:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/apache/commons/collections/UnboundedFifoBuffer;->m_tail:I

    .line 148
    iget v3, p0, Lorg/apache/commons/collections/UnboundedFifoBuffer;->m_tail:I

    iget-object v4, p0, Lorg/apache/commons/collections/UnboundedFifoBuffer;->m_buffer:[Ljava/lang/Object;

    array-length v4, v4

    if-lt v3, v4, :cond_3

    .line 149
    iput v5, p0, Lorg/apache/commons/collections/UnboundedFifoBuffer;->m_tail:I

    .line 151
    :cond_3
    const/4 v3, 0x1

    return v3

    .line 131
    .restart local v0       #i:I
    .restart local v1       #j:I
    .restart local v2       #tmp:[Ljava/lang/Object;
    :cond_4
    iget-object v3, p0, Lorg/apache/commons/collections/UnboundedFifoBuffer;->m_buffer:[Ljava/lang/Object;

    aget-object v3, v3, v0

    aput-object v3, v2, v1

    .line 132
    iget-object v3, p0, Lorg/apache/commons/collections/UnboundedFifoBuffer;->m_buffer:[Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v4, v3, v0

    .line 134
    add-int/lit8 v1, v1, 0x1

    .line 135
    add-int/lit8 v0, v0, 0x1

    .line 136
    iget-object v3, p0, Lorg/apache/commons/collections/UnboundedFifoBuffer;->m_buffer:[Ljava/lang/Object;

    array-length v3, v3

    if-ne v0, v3, :cond_1

    .line 137
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public get()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 161
    invoke-virtual {p0}, Lorg/apache/commons/collections/UnboundedFifoBuffer;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    new-instance v0, Lorg/apache/commons/collections/BufferUnderflowException;

    const-string v1, "The buffer is already empty"

    invoke-direct {v0, v1}, Lorg/apache/commons/collections/BufferUnderflowException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 165
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/UnboundedFifoBuffer;->m_buffer:[Ljava/lang/Object;

    iget v1, p0, Lorg/apache/commons/collections/UnboundedFifoBuffer;->m_head:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 110
    invoke-virtual {p0}, Lorg/apache/commons/collections/UnboundedFifoBuffer;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 227
    new-instance v0, Lorg/apache/commons/collections/UnboundedFifoBuffer$1;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/UnboundedFifoBuffer$1;-><init>(Lorg/apache/commons/collections/UnboundedFifoBuffer;)V

    return-object v0
.end method

.method public remove()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 175
    invoke-virtual {p0}, Lorg/apache/commons/collections/UnboundedFifoBuffer;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 176
    new-instance v1, Lorg/apache/commons/collections/BufferUnderflowException;

    const-string v2, "The buffer is already empty"

    invoke-direct {v1, v2}, Lorg/apache/commons/collections/BufferUnderflowException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 179
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/collections/UnboundedFifoBuffer;->m_buffer:[Ljava/lang/Object;

    iget v2, p0, Lorg/apache/commons/collections/UnboundedFifoBuffer;->m_head:I

    aget-object v0, v1, v2

    .line 181
    .local v0, element:Ljava/lang/Object;
    if-eqz v0, :cond_1

    .line 182
    iget-object v1, p0, Lorg/apache/commons/collections/UnboundedFifoBuffer;->m_buffer:[Ljava/lang/Object;

    iget v2, p0, Lorg/apache/commons/collections/UnboundedFifoBuffer;->m_head:I

    const/4 v3, 0x0

    aput-object v3, v1, v2

    .line 184
    iget v1, p0, Lorg/apache/commons/collections/UnboundedFifoBuffer;->m_head:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/commons/collections/UnboundedFifoBuffer;->m_head:I

    .line 185
    iget v1, p0, Lorg/apache/commons/collections/UnboundedFifoBuffer;->m_head:I

    iget-object v2, p0, Lorg/apache/commons/collections/UnboundedFifoBuffer;->m_buffer:[Ljava/lang/Object;

    array-length v2, v2

    if-lt v1, v2, :cond_1

    .line 186
    const/4 v1, 0x0

    iput v1, p0, Lorg/apache/commons/collections/UnboundedFifoBuffer;->m_head:I

    .line 190
    :cond_1
    return-object v0
.end method

.method public size()I
    .locals 3

    .prologue
    .line 93
    const/4 v0, 0x0

    .line 95
    .local v0, size:I
    iget v1, p0, Lorg/apache/commons/collections/UnboundedFifoBuffer;->m_tail:I

    iget v2, p0, Lorg/apache/commons/collections/UnboundedFifoBuffer;->m_head:I

    if-ge v1, v2, :cond_0

    .line 96
    iget-object v1, p0, Lorg/apache/commons/collections/UnboundedFifoBuffer;->m_buffer:[Ljava/lang/Object;

    array-length v1, v1

    iget v2, p0, Lorg/apache/commons/collections/UnboundedFifoBuffer;->m_head:I

    sub-int/2addr v1, v2

    iget v2, p0, Lorg/apache/commons/collections/UnboundedFifoBuffer;->m_tail:I

    add-int v0, v1, v2

    .line 101
    :goto_0
    return v0

    .line 98
    :cond_0
    iget v1, p0, Lorg/apache/commons/collections/UnboundedFifoBuffer;->m_tail:I

    iget v2, p0, Lorg/apache/commons/collections/UnboundedFifoBuffer;->m_head:I

    sub-int v0, v1, v2

    goto :goto_0
.end method
