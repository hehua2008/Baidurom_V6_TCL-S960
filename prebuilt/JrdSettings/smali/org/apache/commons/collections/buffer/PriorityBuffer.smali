.class public Lorg/apache/commons/collections/buffer/PriorityBuffer;
.super Ljava/util/AbstractCollection;
.source "PriorityBuffer.java"

# interfaces
.implements Lorg/apache/commons/collections/Buffer;


# static fields
.field private static final DEFAULT_CAPACITY:I = 0xd


# instance fields
.field protected ascendingOrder:Z

.field protected comparator:Ljava/util/Comparator;

.field protected elements:[Ljava/lang/Object;

.field protected size:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 93
    const/16 v0, 0xd

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/commons/collections/buffer/PriorityBuffer;-><init>(IZLjava/util/Comparator;)V

    .line 94
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .parameter "capacity"

    .prologue
    .line 138
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/collections/buffer/PriorityBuffer;-><init>(IZLjava/util/Comparator;)V

    .line 139
    return-void
.end method

.method public constructor <init>(ILjava/util/Comparator;)V
    .locals 1
    .parameter "capacity"
    .parameter "comparator"

    .prologue
    .line 151
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lorg/apache/commons/collections/buffer/PriorityBuffer;-><init>(IZLjava/util/Comparator;)V

    .line 152
    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 1
    .parameter "capacity"
    .parameter "ascendingOrder"

    .prologue
    .line 164
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/collections/buffer/PriorityBuffer;-><init>(IZLjava/util/Comparator;)V

    .line 165
    return-void
.end method

.method public constructor <init>(IZLjava/util/Comparator;)V
    .locals 2
    .parameter "capacity"
    .parameter "ascendingOrder"
    .parameter "comparator"

    .prologue
    .line 179
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    .line 180
    if-gtz p1, :cond_0

    .line 181
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid capacity"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 183
    :cond_0
    iput-boolean p2, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer;->ascendingOrder:Z

    .line 186
    add-int/lit8 v0, p1, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer;->elements:[Ljava/lang/Object;

    .line 187
    iput-object p3, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer;->comparator:Ljava/util/Comparator;

    .line 188
    return-void
.end method

.method public constructor <init>(Ljava/util/Comparator;)V
    .locals 2
    .parameter "comparator"

    .prologue
    .line 104
    const/16 v0, 0xd

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p1}, Lorg/apache/commons/collections/buffer/PriorityBuffer;-><init>(IZLjava/util/Comparator;)V

    .line 105
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2
    .parameter "ascendingOrder"

    .prologue
    .line 115
    const/16 v0, 0xd

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lorg/apache/commons/collections/buffer/PriorityBuffer;-><init>(IZLjava/util/Comparator;)V

    .line 116
    return-void
.end method

.method public constructor <init>(ZLjava/util/Comparator;)V
    .locals 1
    .parameter "ascendingOrder"
    .parameter "comparator"

    .prologue
    .line 127
    const/16 v0, 0xd

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/commons/collections/buffer/PriorityBuffer;-><init>(IZLjava/util/Comparator;)V

    .line 128
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 1
    .parameter "element"

    .prologue
    .line 236
    invoke-virtual {p0}, Lorg/apache/commons/collections/buffer/PriorityBuffer;->isAtCapacity()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 237
    invoke-virtual {p0}, Lorg/apache/commons/collections/buffer/PriorityBuffer;->grow()V

    .line 240
    :cond_0
    iget-boolean v0, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer;->ascendingOrder:Z

    if-eqz v0, :cond_1

    .line 241
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/buffer/PriorityBuffer;->percolateUpMinHeap(Ljava/lang/Object;)V

    .line 245
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 243
    :cond_1
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/buffer/PriorityBuffer;->percolateUpMaxHeap(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer;->elements:[Ljava/lang/Object;

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer;->elements:[Ljava/lang/Object;

    .line 224
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer;->size:I

    .line 225
    return-void
.end method

.method public comparator()Ljava/util/Comparator;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer;->comparator:Ljava/util/Comparator;

    return-object v0
.end method

.method protected compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "a"
    .parameter "b"

    .prologue
    .line 439
    iget-object v0, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer;->comparator:Ljava/util/Comparator;

    if-eqz v0, :cond_0

    .line 440
    iget-object v0, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer;->comparator:Ljava/util/Comparator;

    invoke-interface {v0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 442
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

.method public get()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 255
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 256
    new-instance v0, Lorg/apache/commons/collections/BufferUnderflowException;

    invoke-direct {v0}, Lorg/apache/commons/collections/BufferUnderflowException;-><init>()V

    throw v0

    .line 258
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer;->elements:[Ljava/lang/Object;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method protected grow()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 450
    iget-object v1, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer;->elements:[Ljava/lang/Object;

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    new-array v0, v1, [Ljava/lang/Object;

    .line 451
    .local v0, array:[Ljava/lang/Object;
    iget-object v1, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer;->elements:[Ljava/lang/Object;

    iget-object v2, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer;->elements:[Ljava/lang/Object;

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 452
    iput-object v0, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer;->elements:[Ljava/lang/Object;

    .line 453
    return-void
.end method

.method public isAscendingOrder()Z
    .locals 1

    .prologue
    .line 197
    iget-boolean v0, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer;->ascendingOrder:Z

    return v0
.end method

.method protected isAtCapacity()Z
    .locals 2

    .prologue
    .line 296
    iget-object v0, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer;->elements:[Ljava/lang/Object;

    array-length v0, v0

    iget v1, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer;->size:I

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
    .line 462
    new-instance v0, Lorg/apache/commons/collections/buffer/PriorityBuffer$1;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/buffer/PriorityBuffer$1;-><init>(Lorg/apache/commons/collections/buffer/PriorityBuffer;)V

    return-object v0
.end method

.method protected percolateDownMaxHeap(I)V
    .locals 5
    .parameter "index"

    .prologue
    .line 340
    iget-object v3, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer;->elements:[Ljava/lang/Object;

    aget-object v1, v3, p1

    .line 341
    .local v1, element:Ljava/lang/Object;
    move v2, p1

    .line 343
    .local v2, hole:I
    :goto_0
    mul-int/lit8 v3, v2, 0x2

    iget v4, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer;->size:I

    if-le v3, v4, :cond_1

    .line 361
    :cond_0
    iget-object v3, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer;->elements:[Ljava/lang/Object;

    aput-object v1, v3, v2

    .line 362
    return-void

    .line 344
    :cond_1
    mul-int/lit8 v0, v2, 0x2

    .line 348
    .local v0, child:I
    iget v3, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer;->size:I

    if-eq v0, v3, :cond_2

    iget-object v3, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer;->elements:[Ljava/lang/Object;

    add-int/lit8 v4, v0, 0x1

    aget-object v3, v3, v4

    iget-object v4, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer;->elements:[Ljava/lang/Object;

    aget-object v4, v4, v0

    invoke-virtual {p0, v3, v4}, Lorg/apache/commons/collections/buffer/PriorityBuffer;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-lez v3, :cond_2

    .line 349
    add-int/lit8 v0, v0, 0x1

    .line 353
    :cond_2
    iget-object v3, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer;->elements:[Ljava/lang/Object;

    aget-object v3, v3, v0

    invoke-virtual {p0, v3, v1}, Lorg/apache/commons/collections/buffer/PriorityBuffer;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-lez v3, :cond_0

    .line 357
    iget-object v3, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer;->elements:[Ljava/lang/Object;

    iget-object v4, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer;->elements:[Ljava/lang/Object;

    aget-object v4, v4, v0

    aput-object v4, v3, v2

    .line 358
    move v2, v0

    goto :goto_0
.end method

.method protected percolateDownMinHeap(I)V
    .locals 5
    .parameter "index"

    .prologue
    .line 308
    iget-object v3, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer;->elements:[Ljava/lang/Object;

    aget-object v1, v3, p1

    .line 309
    .local v1, element:Ljava/lang/Object;
    move v2, p1

    .line 311
    .local v2, hole:I
    :goto_0
    mul-int/lit8 v3, v2, 0x2

    iget v4, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer;->size:I

    if-le v3, v4, :cond_1

    .line 329
    :cond_0
    iget-object v3, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer;->elements:[Ljava/lang/Object;

    aput-object v1, v3, v2

    .line 330
    return-void

    .line 312
    :cond_1
    mul-int/lit8 v0, v2, 0x2

    .line 316
    .local v0, child:I
    iget v3, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer;->size:I

    if-eq v0, v3, :cond_2

    iget-object v3, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer;->elements:[Ljava/lang/Object;

    add-int/lit8 v4, v0, 0x1

    aget-object v3, v3, v4

    iget-object v4, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer;->elements:[Ljava/lang/Object;

    aget-object v4, v4, v0

    invoke-virtual {p0, v3, v4}, Lorg/apache/commons/collections/buffer/PriorityBuffer;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-gez v3, :cond_2

    .line 317
    add-int/lit8 v0, v0, 0x1

    .line 321
    :cond_2
    iget-object v3, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer;->elements:[Ljava/lang/Object;

    aget-object v3, v3, v0

    invoke-virtual {p0, v3, v1}, Lorg/apache/commons/collections/buffer/PriorityBuffer;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-gez v3, :cond_0

    .line 325
    iget-object v3, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer;->elements:[Ljava/lang/Object;

    iget-object v4, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer;->elements:[Ljava/lang/Object;

    aget-object v4, v4, v0

    aput-object v4, v3, v2

    .line 326
    move v2, v0

    goto :goto_0
.end method

.method protected percolateUpMaxHeap(I)V
    .locals 5
    .parameter "index"

    .prologue
    .line 404
    move v1, p1

    .line 405
    .local v1, hole:I
    iget-object v3, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer;->elements:[Ljava/lang/Object;

    aget-object v0, v3, v1

    .line 407
    .local v0, element:Ljava/lang/Object;
    :goto_0
    const/4 v3, 0x1

    if-le v1, v3, :cond_0

    iget-object v3, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer;->elements:[Ljava/lang/Object;

    div-int/lit8 v4, v1, 0x2

    aget-object v3, v3, v4

    invoke-virtual {p0, v0, v3}, Lorg/apache/commons/collections/buffer/PriorityBuffer;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-gtz v3, :cond_1

    .line 415
    :cond_0
    iget-object v3, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer;->elements:[Ljava/lang/Object;

    aput-object v0, v3, v1

    .line 416
    return-void

    .line 410
    :cond_1
    div-int/lit8 v2, v1, 0x2

    .line 411
    .local v2, next:I
    iget-object v3, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer;->elements:[Ljava/lang/Object;

    iget-object v4, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer;->elements:[Ljava/lang/Object;

    aget-object v4, v4, v2

    aput-object v4, v3, v1

    .line 412
    move v1, v2

    goto :goto_0
.end method

.method protected percolateUpMaxHeap(Ljava/lang/Object;)V
    .locals 2
    .parameter "element"

    .prologue
    .line 426
    iget-object v0, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer;->elements:[Ljava/lang/Object;

    iget v1, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer;->size:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer;->size:I

    aput-object p1, v0, v1

    .line 427
    iget v0, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer;->size:I

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/buffer/PriorityBuffer;->percolateUpMaxHeap(I)V

    .line 428
    return-void
.end method

.method protected percolateUpMinHeap(I)V
    .locals 5
    .parameter "index"

    .prologue
    .line 372
    move v1, p1

    .line 373
    .local v1, hole:I
    iget-object v3, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer;->elements:[Ljava/lang/Object;

    aget-object v0, v3, v1

    .line 374
    .local v0, element:Ljava/lang/Object;
    :goto_0
    const/4 v3, 0x1

    if-le v1, v3, :cond_0

    iget-object v3, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer;->elements:[Ljava/lang/Object;

    div-int/lit8 v4, v1, 0x2

    aget-object v3, v3, v4

    invoke-virtual {p0, v0, v3}, Lorg/apache/commons/collections/buffer/PriorityBuffer;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-ltz v3, :cond_1

    .line 381
    :cond_0
    iget-object v3, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer;->elements:[Ljava/lang/Object;

    aput-object v0, v3, v1

    .line 382
    return-void

    .line 377
    :cond_1
    div-int/lit8 v2, v1, 0x2

    .line 378
    .local v2, next:I
    iget-object v3, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer;->elements:[Ljava/lang/Object;

    iget-object v4, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer;->elements:[Ljava/lang/Object;

    aget-object v4, v4, v2

    aput-object v4, v3, v1

    .line 379
    move v1, v2

    goto :goto_0
.end method

.method protected percolateUpMinHeap(Ljava/lang/Object;)V
    .locals 2
    .parameter "element"

    .prologue
    .line 392
    iget-object v0, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer;->elements:[Ljava/lang/Object;

    iget v1, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer;->size:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer;->size:I

    aput-object p1, v0, v1

    .line 393
    iget v0, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer;->size:I

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/buffer/PriorityBuffer;->percolateUpMinHeap(I)V

    .line 394
    return-void
.end method

.method public remove()Ljava/lang/Object;
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 269
    invoke-virtual {p0}, Lorg/apache/commons/collections/buffer/PriorityBuffer;->get()Ljava/lang/Object;

    move-result-object v0

    .line 270
    .local v0, result:Ljava/lang/Object;
    iget-object v1, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer;->elements:[Ljava/lang/Object;

    iget-object v2, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer;->elements:[Ljava/lang/Object;

    iget v3, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer;->size:I

    add-int/lit8 v4, v3, -0x1

    iput v4, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer;->size:I

    aget-object v2, v2, v3

    aput-object v2, v1, v5

    .line 274
    iget-object v1, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer;->elements:[Ljava/lang/Object;

    iget v2, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer;->size:I

    add-int/lit8 v2, v2, 0x1

    const/4 v3, 0x0

    aput-object v3, v1, v2

    .line 276
    iget v1, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer;->size:I

    if-eqz v1, :cond_0

    .line 278
    iget-boolean v1, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer;->ascendingOrder:Z

    if-eqz v1, :cond_1

    .line 279
    invoke-virtual {p0, v5}, Lorg/apache/commons/collections/buffer/PriorityBuffer;->percolateDownMinHeap(I)V

    .line 285
    :cond_0
    :goto_0
    return-object v0

    .line 281
    :cond_1
    invoke-virtual {p0, v5}, Lorg/apache/commons/collections/buffer/PriorityBuffer;->percolateDownMaxHeap(I)V

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 216
    iget v0, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer;->size:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 521
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 523
    .local v1, sb:Ljava/lang/StringBuffer;
    const-string v2, "[ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 525
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    iget v2, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer;->size:I

    add-int/lit8 v2, v2, 0x1

    if-lt v0, v2, :cond_0

    .line 532
    const-string v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 534
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 526
    :cond_0
    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    .line 527
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 529
    :cond_1
    iget-object v2, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer;->elements:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 525
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
