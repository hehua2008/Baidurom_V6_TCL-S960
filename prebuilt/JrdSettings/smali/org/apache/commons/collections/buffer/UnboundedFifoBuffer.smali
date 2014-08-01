.class public Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;
.super Ljava/util/AbstractCollection;
.source "UnboundedFifoBuffer.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lorg/apache/commons/collections/Buffer;


# static fields
.field private static final serialVersionUID:J = -0x3055f5f8fc9939abL


# instance fields
.field protected transient buffer:[Ljava/lang/Object;

.field protected transient head:I

.field protected transient tail:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 82
    const/16 v0, 0x20

    invoke-direct {p0, v0}, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;-><init>(I)V

    .line 83
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .parameter "initialSize"

    .prologue
    const/4 v1, 0x0

    .line 92
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    .line 93
    if-gtz p1, :cond_0

    .line 94
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The size must be greater than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 96
    :cond_0
    add-int/lit8 v0, p1, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;->buffer:[Ljava/lang/Object;

    .line 97
    iput v1, p0, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;->head:I

    .line 98
    iput v1, p0, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;->tail:I

    .line 99
    return-void
.end method

.method static access$000(Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;->increment(I)I

    move-result v0

    return v0
.end method

.method static access$100(Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;->decrement(I)I

    move-result v0

    return v0
.end method

.method private decrement(I)I
    .locals 1
    .parameter "index"

    .prologue
    .line 261
    add-int/lit8 p1, p1, -0x1

    .line 262
    if-gez p1, :cond_0

    .line 263
    iget-object v0, p0, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;->buffer:[Ljava/lang/Object;

    array-length v0, v0

    add-int/lit8 p1, v0, -0x1

    .line 265
    :cond_0
    return p1
.end method

.method private increment(I)I
    .locals 1
    .parameter "index"

    .prologue
    .line 247
    add-int/lit8 p1, p1, 0x1

    .line 248
    iget-object v0, p0, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;->buffer:[Ljava/lang/Object;

    array-length v0, v0

    if-lt p1, v0, :cond_0

    .line 249
    const/4 p1, 0x0

    .line 251
    :cond_0
    return p1
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 4
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 124
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 125
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v1

    .line 126
    .local v1, size:I
    new-array v2, v1, [Ljava/lang/Object;

    iput-object v2, p0, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;->buffer:[Ljava/lang/Object;

    .line 127
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 130
    const/4 v2, 0x0

    iput v2, p0, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;->head:I

    .line 131
    iput v1, p0, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;->tail:I

    .line 132
    return-void

    .line 128
    :cond_0
    iget-object v2, p0, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;->buffer:[Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v0

    .line 127
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 2
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 109
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 110
    invoke-virtual {p0}, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 111
    invoke-virtual {p0}, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, it:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 114
    return-void

    .line 112
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 6
    .parameter "obj"

    .prologue
    const/4 v5, 0x0

    .line 169
    if-nez p1, :cond_0

    .line 170
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "Attempted to add null object to buffer"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 173
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;->size()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;->buffer:[Ljava/lang/Object;

    array-length v4, v4

    if-lt v3, v4, :cond_2

    .line 174
    iget-object v3, p0, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;->buffer:[Ljava/lang/Object;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x1

    new-array v2, v3, [Ljava/lang/Object;

    .line 176
    .local v2, tmp:[Ljava/lang/Object;
    const/4 v1, 0x0

    .line 177
    .local v1, j:I
    iget v0, p0, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;->head:I

    .local v0, i:I
    :cond_1
    :goto_0
    iget v3, p0, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;->tail:I

    if-ne v0, v3, :cond_4

    .line 188
    iput-object v2, p0, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;->buffer:[Ljava/lang/Object;

    .line 189
    iput v5, p0, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;->head:I

    .line 190
    iput v1, p0, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;->tail:I

    .line 193
    .end local v0           #i:I
    .end local v1           #j:I
    .end local v2           #tmp:[Ljava/lang/Object;
    :cond_2
    iget-object v3, p0, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;->buffer:[Ljava/lang/Object;

    iget v4, p0, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;->tail:I

    aput-object p1, v3, v4

    .line 194
    iget v3, p0, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;->tail:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;->tail:I

    .line 195
    iget v3, p0, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;->tail:I

    iget-object v4, p0, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;->buffer:[Ljava/lang/Object;

    array-length v4, v4

    if-lt v3, v4, :cond_3

    .line 196
    iput v5, p0, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;->tail:I

    .line 198
    :cond_3
    const/4 v3, 0x1

    return v3

    .line 178
    .restart local v0       #i:I
    .restart local v1       #j:I
    .restart local v2       #tmp:[Ljava/lang/Object;
    :cond_4
    iget-object v3, p0, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;->buffer:[Ljava/lang/Object;

    aget-object v3, v3, v0

    aput-object v3, v2, v1

    .line 179
    iget-object v3, p0, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;->buffer:[Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v4, v3, v0

    .line 181
    add-int/lit8 v1, v1, 0x1

    .line 182
    add-int/lit8 v0, v0, 0x1

    .line 183
    iget-object v3, p0, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;->buffer:[Ljava/lang/Object;

    array-length v3, v3

    if-ne v0, v3, :cond_1

    .line 184
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public get()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 208
    invoke-virtual {p0}, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    new-instance v0, Lorg/apache/commons/collections/BufferUnderflowException;

    const-string v1, "The buffer is already empty"

    invoke-direct {v0, v1}, Lorg/apache/commons/collections/BufferUnderflowException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 212
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;->buffer:[Ljava/lang/Object;

    iget v1, p0, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;->head:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 158
    invoke-virtual {p0}, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;->size()I

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
    .line 274
    new-instance v0, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer$1;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer$1;-><init>(Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;)V

    return-object v0
.end method

.method public remove()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 222
    invoke-virtual {p0}, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 223
    new-instance v1, Lorg/apache/commons/collections/BufferUnderflowException;

    const-string v2, "The buffer is already empty"

    invoke-direct {v1, v2}, Lorg/apache/commons/collections/BufferUnderflowException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 226
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;->buffer:[Ljava/lang/Object;

    iget v2, p0, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;->head:I

    aget-object v0, v1, v2

    .line 228
    .local v0, element:Ljava/lang/Object;
    if-eqz v0, :cond_1

    .line 229
    iget-object v1, p0, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;->buffer:[Ljava/lang/Object;

    iget v2, p0, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;->head:I

    const/4 v3, 0x0

    aput-object v3, v1, v2

    .line 231
    iget v1, p0, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;->head:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;->head:I

    .line 232
    iget v1, p0, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;->head:I

    iget-object v2, p0, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;->buffer:[Ljava/lang/Object;

    array-length v2, v2

    if-lt v1, v2, :cond_1

    .line 233
    const/4 v1, 0x0

    iput v1, p0, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;->head:I

    .line 237
    :cond_1
    return-object v0
.end method

.method public size()I
    .locals 3

    .prologue
    .line 141
    const/4 v0, 0x0

    .line 143
    .local v0, size:I
    iget v1, p0, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;->tail:I

    iget v2, p0, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;->head:I

    if-ge v1, v2, :cond_0

    .line 144
    iget-object v1, p0, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;->buffer:[Ljava/lang/Object;

    array-length v1, v1

    iget v2, p0, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;->head:I

    sub-int/2addr v1, v2

    iget v2, p0, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;->tail:I

    add-int v0, v1, v2

    .line 149
    :goto_0
    return v0

    .line 146
    :cond_0
    iget v1, p0, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;->tail:I

    iget v2, p0, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;->head:I

    sub-int v0, v1, v2

    goto :goto_0
.end method
