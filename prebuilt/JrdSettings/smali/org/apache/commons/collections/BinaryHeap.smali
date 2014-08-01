.class public final Lorg/apache/commons/collections/BinaryHeap;
.super Ljava/util/AbstractCollection;
.source "BinaryHeap.java"

# interfaces
.implements Lorg/apache/commons/collections/Buffer;
.implements Lorg/apache/commons/collections/PriorityQueue;


# static fields
.field private static final DEFAULT_CAPACITY:I = 0xd


# instance fields
.field m_comparator:Ljava/util/Comparator;

.field m_elements:[Ljava/lang/Object;

.field m_isMinHeap:Z

.field m_size:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 92
    const/16 v0, 0xd

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/collections/BinaryHeap;-><init>(IZ)V

    .line 93
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "capacity"

    .prologue
    .line 116
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/collections/BinaryHeap;-><init>(IZ)V

    .line 117
    return-void
.end method

.method public constructor <init>(ILjava/util/Comparator;)V
    .locals 0
    .parameter "capacity"
    .parameter "comparator"

    .prologue
    .line 129
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/BinaryHeap;-><init>(I)V

    .line 130
    iput-object p2, p0, Lorg/apache/commons/collections/BinaryHeap;->m_comparator:Ljava/util/Comparator;

    .line 131
    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 2
    .parameter "capacity"
    .parameter "isMinHeap"

    .prologue
    .line 167
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    .line 168
    if-gtz p1, :cond_0

    .line 169
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid capacity"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 171
    :cond_0
    iput-boolean p2, p0, Lorg/apache/commons/collections/BinaryHeap;->m_isMinHeap:Z

    .line 174
    add-int/lit8 v0, p1, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lorg/apache/commons/collections/BinaryHeap;->m_elements:[Ljava/lang/Object;

    .line 175
    return-void
.end method

.method public constructor <init>(IZLjava/util/Comparator;)V
    .locals 0
    .parameter "capacity"
    .parameter "isMinHeap"
    .parameter "comparator"

    .prologue
    .line 189
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections/BinaryHeap;-><init>(IZ)V

    .line 190
    iput-object p3, p0, Lorg/apache/commons/collections/BinaryHeap;->m_comparator:Ljava/util/Comparator;

    .line 191
    return-void
.end method

.method public constructor <init>(Ljava/util/Comparator;)V
    .locals 0
    .parameter "comparator"

    .prologue
    .line 103
    invoke-direct {p0}, Lorg/apache/commons/collections/BinaryHeap;-><init>()V

    .line 104
    iput-object p1, p0, Lorg/apache/commons/collections/BinaryHeap;->m_comparator:Ljava/util/Comparator;

    .line 105
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .parameter "isMinHeap"

    .prologue
    .line 140
    const/16 v0, 0xd

    invoke-direct {p0, v0, p1}, Lorg/apache/commons/collections/BinaryHeap;-><init>(IZ)V

    .line 141
    return-void
.end method

.method public constructor <init>(ZLjava/util/Comparator;)V
    .locals 0
    .parameter "isMinHeap"
    .parameter "comparator"

    .prologue
    .line 152
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/BinaryHeap;-><init>(Z)V

    .line 153
    iput-object p2, p0, Lorg/apache/commons/collections/BinaryHeap;->m_comparator:Ljava/util/Comparator;

    .line 154
    return-void
.end method

.method static access$000(Lorg/apache/commons/collections/BinaryHeap;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections/BinaryHeap;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method private compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "a"
    .parameter "b"

    .prologue
    .line 419
    iget-object v0, p0, Lorg/apache/commons/collections/BinaryHeap;->m_comparator:Ljava/util/Comparator;

    if-eqz v0, :cond_0

    .line 420
    iget-object v0, p0, Lorg/apache/commons/collections/BinaryHeap;->m_comparator:Ljava/util/Comparator;

    invoke-interface {v0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 422
    .end local p1
    :goto_0
    return v0

    .restart local p1
    :cond_0
    check-cast p1, Ljava/lang/Comparable;

    .end local p1
    invoke-interface {p1, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 1
    .parameter "object"

    .prologue
    .line 523
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/BinaryHeap;->insert(Ljava/lang/Object;)V

    .line 524
    const/4 v0, 0x1

    return v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lorg/apache/commons/collections/BinaryHeap;->m_elements:[Ljava/lang/Object;

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lorg/apache/commons/collections/BinaryHeap;->m_elements:[Ljava/lang/Object;

    .line 199
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/collections/BinaryHeap;->m_size:I

    .line 200
    return-void
.end method

.method public get()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 535
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/collections/BinaryHeap;->peek()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 537
    :catch_0
    move-exception v0

    .local v0, e:Ljava/util/NoSuchElementException;
    new-instance v1, Lorg/apache/commons/collections/BufferUnderflowException;

    invoke-direct {v1}, Lorg/apache/commons/collections/BufferUnderflowException;-><init>()V

    throw v1
.end method

.method protected grow()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 430
    iget-object v1, p0, Lorg/apache/commons/collections/BinaryHeap;->m_elements:[Ljava/lang/Object;

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    new-array v0, v1, [Ljava/lang/Object;

    .line 431
    .local v0, elements:[Ljava/lang/Object;
    iget-object v1, p0, Lorg/apache/commons/collections/BinaryHeap;->m_elements:[Ljava/lang/Object;

    iget-object v2, p0, Lorg/apache/commons/collections/BinaryHeap;->m_elements:[Ljava/lang/Object;

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 432
    iput-object v0, p0, Lorg/apache/commons/collections/BinaryHeap;->m_elements:[Ljava/lang/Object;

    .line 433
    return-void
.end method

.method public insert(Ljava/lang/Object;)V
    .locals 1
    .parameter "element"

    .prologue
    .line 229
    invoke-virtual {p0}, Lorg/apache/commons/collections/BinaryHeap;->isFull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 230
    invoke-virtual {p0}, Lorg/apache/commons/collections/BinaryHeap;->grow()V

    .line 233
    :cond_0
    iget-boolean v0, p0, Lorg/apache/commons/collections/BinaryHeap;->m_isMinHeap:Z

    if-eqz v0, :cond_1

    .line 234
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/BinaryHeap;->percolateUpMinHeap(Ljava/lang/Object;)V

    .line 238
    :goto_0
    return-void

    .line 236
    :cond_1
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/BinaryHeap;->percolateUpMaxHeap(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 209
    iget v0, p0, Lorg/apache/commons/collections/BinaryHeap;->m_size:I

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
    .line 220
    iget-object v0, p0, Lorg/apache/commons/collections/BinaryHeap;->m_elements:[Ljava/lang/Object;

    array-length v0, v0

    iget v1, p0, Lorg/apache/commons/collections/BinaryHeap;->m_size:I

    add-int/lit8 v1, v1, 0x1

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
    .line 465
    new-instance v0, Lorg/apache/commons/collections/BinaryHeap$1;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/BinaryHeap$1;-><init>(Lorg/apache/commons/collections/BinaryHeap;)V

    return-object v0
.end method

.method public peek()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/NoSuchElementException;
        }
    .end annotation

    .prologue
    .line 247
    invoke-virtual {p0}, Lorg/apache/commons/collections/BinaryHeap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 248
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 250
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/BinaryHeap;->m_elements:[Ljava/lang/Object;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method protected percolateDownMaxHeap(I)V
    .locals 5
    .parameter "index"

    .prologue
    .line 320
    iget-object v3, p0, Lorg/apache/commons/collections/BinaryHeap;->m_elements:[Ljava/lang/Object;

    aget-object v1, v3, p1

    .line 321
    .local v1, element:Ljava/lang/Object;
    move v2, p1

    .line 323
    .local v2, hole:I
    :goto_0
    mul-int/lit8 v3, v2, 0x2

    iget v4, p0, Lorg/apache/commons/collections/BinaryHeap;->m_size:I

    if-le v3, v4, :cond_1

    .line 341
    :cond_0
    iget-object v3, p0, Lorg/apache/commons/collections/BinaryHeap;->m_elements:[Ljava/lang/Object;

    aput-object v1, v3, v2

    .line 342
    return-void

    .line 324
    :cond_1
    mul-int/lit8 v0, v2, 0x2

    .line 328
    .local v0, child:I
    iget v3, p0, Lorg/apache/commons/collections/BinaryHeap;->m_size:I

    if-eq v0, v3, :cond_2

    iget-object v3, p0, Lorg/apache/commons/collections/BinaryHeap;->m_elements:[Ljava/lang/Object;

    add-int/lit8 v4, v0, 0x1

    aget-object v3, v3, v4

    iget-object v4, p0, Lorg/apache/commons/collections/BinaryHeap;->m_elements:[Ljava/lang/Object;

    aget-object v4, v4, v0

    invoke-direct {p0, v3, v4}, Lorg/apache/commons/collections/BinaryHeap;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-lez v3, :cond_2

    .line 329
    add-int/lit8 v0, v0, 0x1

    .line 333
    :cond_2
    iget-object v3, p0, Lorg/apache/commons/collections/BinaryHeap;->m_elements:[Ljava/lang/Object;

    aget-object v3, v3, v0

    invoke-direct {p0, v3, v1}, Lorg/apache/commons/collections/BinaryHeap;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-lez v3, :cond_0

    .line 337
    iget-object v3, p0, Lorg/apache/commons/collections/BinaryHeap;->m_elements:[Ljava/lang/Object;

    iget-object v4, p0, Lorg/apache/commons/collections/BinaryHeap;->m_elements:[Ljava/lang/Object;

    aget-object v4, v4, v0

    aput-object v4, v3, v2

    .line 338
    move v2, v0

    goto :goto_0
.end method

.method protected percolateDownMinHeap(I)V
    .locals 5
    .parameter "index"

    .prologue
    .line 288
    iget-object v3, p0, Lorg/apache/commons/collections/BinaryHeap;->m_elements:[Ljava/lang/Object;

    aget-object v1, v3, p1

    .line 289
    .local v1, element:Ljava/lang/Object;
    move v2, p1

    .line 291
    .local v2, hole:I
    :goto_0
    mul-int/lit8 v3, v2, 0x2

    iget v4, p0, Lorg/apache/commons/collections/BinaryHeap;->m_size:I

    if-le v3, v4, :cond_1

    .line 309
    :cond_0
    iget-object v3, p0, Lorg/apache/commons/collections/BinaryHeap;->m_elements:[Ljava/lang/Object;

    aput-object v1, v3, v2

    .line 310
    return-void

    .line 292
    :cond_1
    mul-int/lit8 v0, v2, 0x2

    .line 296
    .local v0, child:I
    iget v3, p0, Lorg/apache/commons/collections/BinaryHeap;->m_size:I

    if-eq v0, v3, :cond_2

    iget-object v3, p0, Lorg/apache/commons/collections/BinaryHeap;->m_elements:[Ljava/lang/Object;

    add-int/lit8 v4, v0, 0x1

    aget-object v3, v3, v4

    iget-object v4, p0, Lorg/apache/commons/collections/BinaryHeap;->m_elements:[Ljava/lang/Object;

    aget-object v4, v4, v0

    invoke-direct {p0, v3, v4}, Lorg/apache/commons/collections/BinaryHeap;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-gez v3, :cond_2

    .line 297
    add-int/lit8 v0, v0, 0x1

    .line 301
    :cond_2
    iget-object v3, p0, Lorg/apache/commons/collections/BinaryHeap;->m_elements:[Ljava/lang/Object;

    aget-object v3, v3, v0

    invoke-direct {p0, v3, v1}, Lorg/apache/commons/collections/BinaryHeap;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-gez v3, :cond_0

    .line 305
    iget-object v3, p0, Lorg/apache/commons/collections/BinaryHeap;->m_elements:[Ljava/lang/Object;

    iget-object v4, p0, Lorg/apache/commons/collections/BinaryHeap;->m_elements:[Ljava/lang/Object;

    aget-object v4, v4, v0

    aput-object v4, v3, v2

    .line 306
    move v2, v0

    goto :goto_0
.end method

.method protected percolateUpMaxHeap(I)V
    .locals 5
    .parameter "index"

    .prologue
    .line 384
    move v1, p1

    .line 385
    .local v1, hole:I
    iget-object v3, p0, Lorg/apache/commons/collections/BinaryHeap;->m_elements:[Ljava/lang/Object;

    aget-object v0, v3, v1

    .line 387
    .local v0, element:Ljava/lang/Object;
    :goto_0
    const/4 v3, 0x1

    if-le v1, v3, :cond_0

    iget-object v3, p0, Lorg/apache/commons/collections/BinaryHeap;->m_elements:[Ljava/lang/Object;

    div-int/lit8 v4, v1, 0x2

    aget-object v3, v3, v4

    invoke-direct {p0, v0, v3}, Lorg/apache/commons/collections/BinaryHeap;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-gtz v3, :cond_1

    .line 395
    :cond_0
    iget-object v3, p0, Lorg/apache/commons/collections/BinaryHeap;->m_elements:[Ljava/lang/Object;

    aput-object v0, v3, v1

    .line 396
    return-void

    .line 390
    :cond_1
    div-int/lit8 v2, v1, 0x2

    .line 391
    .local v2, next:I
    iget-object v3, p0, Lorg/apache/commons/collections/BinaryHeap;->m_elements:[Ljava/lang/Object;

    iget-object v4, p0, Lorg/apache/commons/collections/BinaryHeap;->m_elements:[Ljava/lang/Object;

    aget-object v4, v4, v2

    aput-object v4, v3, v1

    .line 392
    move v1, v2

    goto :goto_0
.end method

.method protected percolateUpMaxHeap(Ljava/lang/Object;)V
    .locals 2
    .parameter "element"

    .prologue
    .line 406
    iget-object v0, p0, Lorg/apache/commons/collections/BinaryHeap;->m_elements:[Ljava/lang/Object;

    iget v1, p0, Lorg/apache/commons/collections/BinaryHeap;->m_size:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/commons/collections/BinaryHeap;->m_size:I

    aput-object p1, v0, v1

    .line 407
    iget v0, p0, Lorg/apache/commons/collections/BinaryHeap;->m_size:I

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/BinaryHeap;->percolateUpMaxHeap(I)V

    .line 408
    return-void
.end method

.method protected percolateUpMinHeap(I)V
    .locals 5
    .parameter "index"

    .prologue
    .line 352
    move v1, p1

    .line 353
    .local v1, hole:I
    iget-object v3, p0, Lorg/apache/commons/collections/BinaryHeap;->m_elements:[Ljava/lang/Object;

    aget-object v0, v3, v1

    .line 354
    .local v0, element:Ljava/lang/Object;
    :goto_0
    const/4 v3, 0x1

    if-le v1, v3, :cond_0

    iget-object v3, p0, Lorg/apache/commons/collections/BinaryHeap;->m_elements:[Ljava/lang/Object;

    div-int/lit8 v4, v1, 0x2

    aget-object v3, v3, v4

    invoke-direct {p0, v0, v3}, Lorg/apache/commons/collections/BinaryHeap;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-ltz v3, :cond_1

    .line 361
    :cond_0
    iget-object v3, p0, Lorg/apache/commons/collections/BinaryHeap;->m_elements:[Ljava/lang/Object;

    aput-object v0, v3, v1

    .line 362
    return-void

    .line 357
    :cond_1
    div-int/lit8 v2, v1, 0x2

    .line 358
    .local v2, next:I
    iget-object v3, p0, Lorg/apache/commons/collections/BinaryHeap;->m_elements:[Ljava/lang/Object;

    iget-object v4, p0, Lorg/apache/commons/collections/BinaryHeap;->m_elements:[Ljava/lang/Object;

    aget-object v4, v4, v2

    aput-object v4, v3, v1

    .line 359
    move v1, v2

    goto :goto_0
.end method

.method protected percolateUpMinHeap(Ljava/lang/Object;)V
    .locals 2
    .parameter "element"

    .prologue
    .line 372
    iget-object v0, p0, Lorg/apache/commons/collections/BinaryHeap;->m_elements:[Ljava/lang/Object;

    iget v1, p0, Lorg/apache/commons/collections/BinaryHeap;->m_size:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/commons/collections/BinaryHeap;->m_size:I

    aput-object p1, v0, v1

    .line 373
    iget v0, p0, Lorg/apache/commons/collections/BinaryHeap;->m_size:I

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/BinaryHeap;->percolateUpMinHeap(I)V

    .line 374
    return-void
.end method

.method public pop()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/NoSuchElementException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 261
    invoke-virtual {p0}, Lorg/apache/commons/collections/BinaryHeap;->peek()Ljava/lang/Object;

    move-result-object v0

    .line 262
    .local v0, result:Ljava/lang/Object;
    iget-object v1, p0, Lorg/apache/commons/collections/BinaryHeap;->m_elements:[Ljava/lang/Object;

    iget-object v2, p0, Lorg/apache/commons/collections/BinaryHeap;->m_elements:[Ljava/lang/Object;

    iget v3, p0, Lorg/apache/commons/collections/BinaryHeap;->m_size:I

    add-int/lit8 v4, v3, -0x1

    iput v4, p0, Lorg/apache/commons/collections/BinaryHeap;->m_size:I

    aget-object v2, v2, v3

    aput-object v2, v1, v5

    .line 266
    iget-object v1, p0, Lorg/apache/commons/collections/BinaryHeap;->m_elements:[Ljava/lang/Object;

    iget v2, p0, Lorg/apache/commons/collections/BinaryHeap;->m_size:I

    add-int/lit8 v2, v2, 0x1

    const/4 v3, 0x0

    aput-object v3, v1, v2

    .line 268
    iget v1, p0, Lorg/apache/commons/collections/BinaryHeap;->m_size:I

    if-eqz v1, :cond_0

    .line 270
    iget-boolean v1, p0, Lorg/apache/commons/collections/BinaryHeap;->m_isMinHeap:Z

    if-eqz v1, :cond_1

    .line 271
    invoke-virtual {p0, v5}, Lorg/apache/commons/collections/BinaryHeap;->percolateDownMinHeap(I)V

    .line 277
    :cond_0
    :goto_0
    return-object v0

    .line 273
    :cond_1
    invoke-virtual {p0, v5}, Lorg/apache/commons/collections/BinaryHeap;->percolateDownMaxHeap(I)V

    goto :goto_0
.end method

.method public remove()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 549
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/collections/BinaryHeap;->pop()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 551
    :catch_0
    move-exception v0

    .local v0, e:Ljava/util/NoSuchElementException;
    new-instance v1, Lorg/apache/commons/collections/BufferUnderflowException;

    invoke-direct {v1}, Lorg/apache/commons/collections/BufferUnderflowException;-><init>()V

    throw v1
.end method

.method public size()I
    .locals 1

    .prologue
    .line 561
    iget v0, p0, Lorg/apache/commons/collections/BinaryHeap;->m_size:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 442
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 444
    .local v1, sb:Ljava/lang/StringBuffer;
    const-string v2, "[ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 446
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    iget v2, p0, Lorg/apache/commons/collections/BinaryHeap;->m_size:I

    add-int/lit8 v2, v2, 0x1

    if-lt v0, v2, :cond_0

    .line 453
    const-string v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 455
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 447
    :cond_0
    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    .line 448
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 450
    :cond_1
    iget-object v2, p0, Lorg/apache/commons/collections/BinaryHeap;->m_elements:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 446
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
