.class public Lorg/apache/commons/collections/BoundedFifoBuffer;
.super Ljava/util/AbstractCollection;
.source "BoundedFifoBuffer.java"

# interfaces
.implements Lorg/apache/commons/collections/BoundedCollection;
.implements Lorg/apache/commons/collections/Buffer;


# instance fields
.field private final m_elements:[Ljava/lang/Object;

.field private m_end:I

.field private m_full:Z

.field private m_start:I

.field private final maxElements:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 68
    const/16 v0, 0x20

    invoke-direct {p0, v0}, Lorg/apache/commons/collections/BoundedFifoBuffer;-><init>(I)V

    .line 69
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .parameter "size"

    .prologue
    const/4 v0, 0x0

    .line 78
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    .line 58
    iput v0, p0, Lorg/apache/commons/collections/BoundedFifoBuffer;->m_start:I

    .line 59
    iput v0, p0, Lorg/apache/commons/collections/BoundedFifoBuffer;->m_end:I

    .line 60
    iput-boolean v0, p0, Lorg/apache/commons/collections/BoundedFifoBuffer;->m_full:Z

    .line 79
    if-gtz p1, :cond_0

    .line 80
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The size must be greater than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_0
    new-array v0, p1, [Ljava/lang/Object;

    iput-object v0, p0, Lorg/apache/commons/collections/BoundedFifoBuffer;->m_elements:[Ljava/lang/Object;

    .line 83
    iget-object v0, p0, Lorg/apache/commons/collections/BoundedFifoBuffer;->m_elements:[Ljava/lang/Object;

    array-length v0, v0

    iput v0, p0, Lorg/apache/commons/collections/BoundedFifoBuffer;->maxElements:I

    .line 84
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 1
    .parameter "coll"

    .prologue
    .line 95
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/apache/commons/collections/BoundedFifoBuffer;-><init>(I)V

    .line 96
    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 97
    return-void
.end method

.method static access$000(Lorg/apache/commons/collections/BoundedFifoBuffer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget v0, p0, Lorg/apache/commons/collections/BoundedFifoBuffer;->m_start:I

    return v0
.end method

.method static access$100(Lorg/apache/commons/collections/BoundedFifoBuffer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-boolean v0, p0, Lorg/apache/commons/collections/BoundedFifoBuffer;->m_full:Z

    return v0
.end method

.method static access$102(Lorg/apache/commons/collections/BoundedFifoBuffer;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-boolean p1, p0, Lorg/apache/commons/collections/BoundedFifoBuffer;->m_full:Z

    return p1
.end method

.method static access$200(Lorg/apache/commons/collections/BoundedFifoBuffer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget v0, p0, Lorg/apache/commons/collections/BoundedFifoBuffer;->m_end:I

    return v0
.end method

.method static access$202(Lorg/apache/commons/collections/BoundedFifoBuffer;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput p1, p0, Lorg/apache/commons/collections/BoundedFifoBuffer;->m_end:I

    return p1
.end method

.method static access$300(Lorg/apache/commons/collections/BoundedFifoBuffer;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/BoundedFifoBuffer;->increment(I)I

    move-result v0

    return v0
.end method

.method static access$400(Lorg/apache/commons/collections/BoundedFifoBuffer;)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lorg/apache/commons/collections/BoundedFifoBuffer;->m_elements:[Ljava/lang/Object;

    return-object v0
.end method

.method static access$500(Lorg/apache/commons/collections/BoundedFifoBuffer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget v0, p0, Lorg/apache/commons/collections/BoundedFifoBuffer;->maxElements:I

    return v0
.end method

.method static access$600(Lorg/apache/commons/collections/BoundedFifoBuffer;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/BoundedFifoBuffer;->decrement(I)I

    move-result v0

    return v0
.end method

.method private decrement(I)I
    .locals 1
    .parameter "index"

    .prologue
    .line 246
    add-int/lit8 p1, p1, -0x1

    .line 247
    if-gez p1, :cond_0

    .line 248
    iget v0, p0, Lorg/apache/commons/collections/BoundedFifoBuffer;->maxElements:I

    add-int/lit8 p1, v0, -0x1

    .line 250
    :cond_0
    return p1
.end method

.method private increment(I)I
    .locals 1
    .parameter "index"

    .prologue
    .line 232
    add-int/lit8 p1, p1, 0x1

    .line 233
    iget v0, p0, Lorg/apache/commons/collections/BoundedFifoBuffer;->maxElements:I

    if-lt p1, v0, :cond_0

    .line 234
    const/4 p1, 0x0

    .line 236
    :cond_0
    return p1
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 4
    .parameter "element"

    .prologue
    const/4 v3, 0x1

    .line 164
    if-nez p1, :cond_0

    .line 165
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Attempted to add null object to buffer"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 168
    :cond_0
    iget-boolean v0, p0, Lorg/apache/commons/collections/BoundedFifoBuffer;->m_full:Z

    if-eqz v0, :cond_1

    .line 169
    new-instance v0, Lorg/apache/commons/collections/BufferOverflowException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "The buffer cannot hold more than "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lorg/apache/commons/collections/BoundedFifoBuffer;->maxElements:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " objects."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/collections/BufferOverflowException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 172
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/collections/BoundedFifoBuffer;->m_elements:[Ljava/lang/Object;

    iget v1, p0, Lorg/apache/commons/collections/BoundedFifoBuffer;->m_end:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/commons/collections/BoundedFifoBuffer;->m_end:I

    aput-object p1, v0, v1

    .line 174
    iget v0, p0, Lorg/apache/commons/collections/BoundedFifoBuffer;->m_end:I

    iget v1, p0, Lorg/apache/commons/collections/BoundedFifoBuffer;->maxElements:I

    if-lt v0, v1, :cond_2

    .line 175
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/collections/BoundedFifoBuffer;->m_end:I

    .line 178
    :cond_2
    iget v0, p0, Lorg/apache/commons/collections/BoundedFifoBuffer;->m_end:I

    iget v1, p0, Lorg/apache/commons/collections/BoundedFifoBuffer;->m_start:I

    if-ne v0, v1, :cond_3

    .line 179
    iput-boolean v3, p0, Lorg/apache/commons/collections/BoundedFifoBuffer;->m_full:Z

    .line 182
    :cond_3
    return v3
.end method

.method public clear()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 149
    iput-boolean v0, p0, Lorg/apache/commons/collections/BoundedFifoBuffer;->m_full:Z

    .line 150
    iput v0, p0, Lorg/apache/commons/collections/BoundedFifoBuffer;->m_start:I

    .line 151
    iput v0, p0, Lorg/apache/commons/collections/BoundedFifoBuffer;->m_end:I

    .line 152
    iget-object v0, p0, Lorg/apache/commons/collections/BoundedFifoBuffer;->m_elements:[Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 153
    return-void
.end method

.method public get()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 192
    invoke-virtual {p0}, Lorg/apache/commons/collections/BoundedFifoBuffer;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    new-instance v0, Lorg/apache/commons/collections/BufferUnderflowException;

    const-string v1, "The buffer is already empty"

    invoke-direct {v0, v1}, Lorg/apache/commons/collections/BufferUnderflowException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 196
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/BoundedFifoBuffer;->m_elements:[Ljava/lang/Object;

    iget v1, p0, Lorg/apache/commons/collections/BoundedFifoBuffer;->m_start:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 124
    invoke-virtual {p0}, Lorg/apache/commons/collections/BoundedFifoBuffer;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFull()Z
    .locals 2

    .prologue
    .line 133
    invoke-virtual {p0}, Lorg/apache/commons/collections/BoundedFifoBuffer;->size()I

    move-result v0

    iget v1, p0, Lorg/apache/commons/collections/BoundedFifoBuffer;->maxElements:I

    if-ne v0, v1, :cond_0

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
    .line 259
    new-instance v0, Lorg/apache/commons/collections/BoundedFifoBuffer$1;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/BoundedFifoBuffer$1;-><init>(Lorg/apache/commons/collections/BoundedFifoBuffer;)V

    return-object v0
.end method

.method public maxSize()I
    .locals 1

    .prologue
    .line 142
    iget v0, p0, Lorg/apache/commons/collections/BoundedFifoBuffer;->maxElements:I

    return v0
.end method

.method public remove()Ljava/lang/Object;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 206
    invoke-virtual {p0}, Lorg/apache/commons/collections/BoundedFifoBuffer;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 207
    new-instance v1, Lorg/apache/commons/collections/BufferUnderflowException;

    const-string v2, "The buffer is already empty"

    invoke-direct {v1, v2}, Lorg/apache/commons/collections/BufferUnderflowException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 210
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/collections/BoundedFifoBuffer;->m_elements:[Ljava/lang/Object;

    iget v2, p0, Lorg/apache/commons/collections/BoundedFifoBuffer;->m_start:I

    aget-object v0, v1, v2

    .line 212
    .local v0, element:Ljava/lang/Object;
    if-eqz v0, :cond_2

    .line 213
    iget-object v1, p0, Lorg/apache/commons/collections/BoundedFifoBuffer;->m_elements:[Ljava/lang/Object;

    iget v2, p0, Lorg/apache/commons/collections/BoundedFifoBuffer;->m_start:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/apache/commons/collections/BoundedFifoBuffer;->m_start:I

    const/4 v3, 0x0

    aput-object v3, v1, v2

    .line 215
    iget v1, p0, Lorg/apache/commons/collections/BoundedFifoBuffer;->m_start:I

    iget v2, p0, Lorg/apache/commons/collections/BoundedFifoBuffer;->maxElements:I

    if-lt v1, v2, :cond_1

    .line 216
    iput v4, p0, Lorg/apache/commons/collections/BoundedFifoBuffer;->m_start:I

    .line 219
    :cond_1
    iput-boolean v4, p0, Lorg/apache/commons/collections/BoundedFifoBuffer;->m_full:Z

    .line 222
    :cond_2
    return-object v0
.end method

.method public size()I
    .locals 3

    .prologue
    .line 105
    const/4 v0, 0x0

    .line 107
    .local v0, size:I
    iget v1, p0, Lorg/apache/commons/collections/BoundedFifoBuffer;->m_end:I

    iget v2, p0, Lorg/apache/commons/collections/BoundedFifoBuffer;->m_start:I

    if-ge v1, v2, :cond_0

    .line 108
    iget v1, p0, Lorg/apache/commons/collections/BoundedFifoBuffer;->maxElements:I

    iget v2, p0, Lorg/apache/commons/collections/BoundedFifoBuffer;->m_start:I

    sub-int/2addr v1, v2

    iget v2, p0, Lorg/apache/commons/collections/BoundedFifoBuffer;->m_end:I

    add-int v0, v1, v2

    .line 115
    :goto_0
    return v0

    .line 109
    :cond_0
    iget v1, p0, Lorg/apache/commons/collections/BoundedFifoBuffer;->m_end:I

    iget v2, p0, Lorg/apache/commons/collections/BoundedFifoBuffer;->m_start:I

    if-ne v1, v2, :cond_2

    .line 110
    iget-boolean v1, p0, Lorg/apache/commons/collections/BoundedFifoBuffer;->m_full:Z

    if-eqz v1, :cond_1

    iget v0, p0, Lorg/apache/commons/collections/BoundedFifoBuffer;->maxElements:I

    :goto_1
    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 112
    :cond_2
    iget v1, p0, Lorg/apache/commons/collections/BoundedFifoBuffer;->m_end:I

    iget v2, p0, Lorg/apache/commons/collections/BoundedFifoBuffer;->m_start:I

    sub-int v0, v1, v2

    goto :goto_0
.end method
