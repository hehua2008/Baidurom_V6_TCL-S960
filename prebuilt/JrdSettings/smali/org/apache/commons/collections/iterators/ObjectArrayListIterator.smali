.class public Lorg/apache/commons/collections/iterators/ObjectArrayListIterator;
.super Lorg/apache/commons/collections/iterators/ObjectArrayIterator;
.source "ObjectArrayListIterator.java"

# interfaces
.implements Ljava/util/ListIterator;
.implements Lorg/apache/commons/collections/ResettableListIterator;


# instance fields
.field protected lastItemIndex:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Lorg/apache/commons/collections/iterators/ObjectArrayIterator;-><init>()V

    .line 52
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/commons/collections/iterators/ObjectArrayListIterator;->lastItemIndex:I

    .line 62
    return-void
.end method

.method public constructor <init>([Ljava/lang/Object;)V
    .locals 1
    .parameter "array"

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/iterators/ObjectArrayIterator;-><init>([Ljava/lang/Object;)V

    .line 52
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/commons/collections/iterators/ObjectArrayListIterator;->lastItemIndex:I

    .line 73
    return-void
.end method

.method public constructor <init>([Ljava/lang/Object;I)V
    .locals 1
    .parameter "array"
    .parameter "start"

    .prologue
    .line 85
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections/iterators/ObjectArrayIterator;-><init>([Ljava/lang/Object;I)V

    .line 52
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/commons/collections/iterators/ObjectArrayListIterator;->lastItemIndex:I

    .line 86
    return-void
.end method

.method public constructor <init>([Ljava/lang/Object;II)V
    .locals 1
    .parameter "array"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 100
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/collections/iterators/ObjectArrayIterator;-><init>([Ljava/lang/Object;II)V

    .line 52
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/commons/collections/iterators/ObjectArrayListIterator;->lastItemIndex:I

    .line 101
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 2
    .parameter "obj"

    .prologue
    .line 169
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "add() method is not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hasPrevious()Z
    .locals 2

    .prologue
    .line 112
    iget v0, p0, Lorg/apache/commons/collections/iterators/ObjectArrayIterator;->index:I

    iget v1, p0, Lorg/apache/commons/collections/iterators/ObjectArrayIterator;->startIndex:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 136
    invoke-virtual {p0}, Lorg/apache/commons/collections/iterators/ObjectArrayIterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 137
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 139
    :cond_0
    iget v0, p0, Lorg/apache/commons/collections/iterators/ObjectArrayIterator;->index:I

    iput v0, p0, Lorg/apache/commons/collections/iterators/ObjectArrayListIterator;->lastItemIndex:I

    .line 140
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/ObjectArrayIterator;->array:[Ljava/lang/Object;

    iget v1, p0, Lorg/apache/commons/collections/iterators/ObjectArrayIterator;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/commons/collections/iterators/ObjectArrayIterator;->index:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public nextIndex()I
    .locals 2

    .prologue
    .line 149
    iget v0, p0, Lorg/apache/commons/collections/iterators/ObjectArrayIterator;->index:I

    iget v1, p0, Lorg/apache/commons/collections/iterators/ObjectArrayIterator;->startIndex:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public previous()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 122
    invoke-virtual {p0}, Lorg/apache/commons/collections/iterators/ObjectArrayListIterator;->hasPrevious()Z

    move-result v0

    if-nez v0, :cond_0

    .line 123
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 125
    :cond_0
    iget v0, p0, Lorg/apache/commons/collections/iterators/ObjectArrayIterator;->index:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/commons/collections/iterators/ObjectArrayIterator;->index:I

    iput v0, p0, Lorg/apache/commons/collections/iterators/ObjectArrayListIterator;->lastItemIndex:I

    .line 126
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/ObjectArrayIterator;->array:[Ljava/lang/Object;

    iget v1, p0, Lorg/apache/commons/collections/iterators/ObjectArrayIterator;->index:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public previousIndex()I
    .locals 2

    .prologue
    .line 158
    iget v0, p0, Lorg/apache/commons/collections/iterators/ObjectArrayIterator;->index:I

    iget v1, p0, Lorg/apache/commons/collections/iterators/ObjectArrayIterator;->startIndex:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 201
    invoke-super {p0}, Lorg/apache/commons/collections/iterators/ObjectArrayIterator;->reset()V

    .line 202
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/commons/collections/iterators/ObjectArrayListIterator;->lastItemIndex:I

    .line 203
    return-void
.end method

.method public set(Ljava/lang/Object;)V
    .locals 2
    .parameter "obj"

    .prologue
    .line 190
    iget v0, p0, Lorg/apache/commons/collections/iterators/ObjectArrayListIterator;->lastItemIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 191
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "must call next() or previous() before a call to set()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 194
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/ObjectArrayIterator;->array:[Ljava/lang/Object;

    iget v1, p0, Lorg/apache/commons/collections/iterators/ObjectArrayListIterator;->lastItemIndex:I

    aput-object p1, v0, v1

    .line 195
    return-void
.end method
