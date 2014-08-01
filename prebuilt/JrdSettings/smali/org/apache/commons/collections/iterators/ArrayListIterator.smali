.class public Lorg/apache/commons/collections/iterators/ArrayListIterator;
.super Lorg/apache/commons/collections/iterators/ArrayIterator;
.source "ArrayListIterator.java"

# interfaces
.implements Ljava/util/ListIterator;
.implements Lorg/apache/commons/collections/ResettableListIterator;


# instance fields
.field protected lastItemIndex:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0}, Lorg/apache/commons/collections/iterators/ArrayIterator;-><init>()V

    .line 56
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/commons/collections/iterators/ArrayListIterator;->lastItemIndex:I

    .line 68
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .parameter "array"

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/iterators/ArrayIterator;-><init>(Ljava/lang/Object;)V

    .line 56
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/commons/collections/iterators/ArrayListIterator;->lastItemIndex:I

    .line 80
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;I)V
    .locals 1
    .parameter "array"
    .parameter "startIndex"

    .prologue
    .line 93
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections/iterators/ArrayIterator;-><init>(Ljava/lang/Object;I)V

    .line 56
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/commons/collections/iterators/ArrayListIterator;->lastItemIndex:I

    .line 94
    iput p2, p0, Lorg/apache/commons/collections/iterators/ArrayIterator;->startIndex:I

    .line 95
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;II)V
    .locals 1
    .parameter "array"
    .parameter "startIndex"
    .parameter "endIndex"

    .prologue
    .line 110
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/collections/iterators/ArrayIterator;-><init>(Ljava/lang/Object;II)V

    .line 56
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/commons/collections/iterators/ArrayListIterator;->lastItemIndex:I

    .line 111
    iput p2, p0, Lorg/apache/commons/collections/iterators/ArrayIterator;->startIndex:I

    .line 112
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 2
    .parameter "o"

    .prologue
    .line 179
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "add() method is not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hasPrevious()Z
    .locals 2

    .prologue
    .line 122
    iget v0, p0, Lorg/apache/commons/collections/iterators/ArrayIterator;->index:I

    iget v1, p0, Lorg/apache/commons/collections/iterators/ArrayIterator;->startIndex:I

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
    .line 146
    invoke-virtual {p0}, Lorg/apache/commons/collections/iterators/ArrayIterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 147
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 149
    :cond_0
    iget v0, p0, Lorg/apache/commons/collections/iterators/ArrayIterator;->index:I

    iput v0, p0, Lorg/apache/commons/collections/iterators/ArrayListIterator;->lastItemIndex:I

    .line 150
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/ArrayIterator;->array:Ljava/lang/Object;

    iget v1, p0, Lorg/apache/commons/collections/iterators/ArrayIterator;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/commons/collections/iterators/ArrayIterator;->index:I

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public nextIndex()I
    .locals 2

    .prologue
    .line 159
    iget v0, p0, Lorg/apache/commons/collections/iterators/ArrayIterator;->index:I

    iget v1, p0, Lorg/apache/commons/collections/iterators/ArrayIterator;->startIndex:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public previous()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 132
    invoke-virtual {p0}, Lorg/apache/commons/collections/iterators/ArrayListIterator;->hasPrevious()Z

    move-result v0

    if-nez v0, :cond_0

    .line 133
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 135
    :cond_0
    iget v0, p0, Lorg/apache/commons/collections/iterators/ArrayIterator;->index:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/commons/collections/iterators/ArrayIterator;->index:I

    iput v0, p0, Lorg/apache/commons/collections/iterators/ArrayListIterator;->lastItemIndex:I

    .line 136
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/ArrayIterator;->array:Ljava/lang/Object;

    iget v1, p0, Lorg/apache/commons/collections/iterators/ArrayIterator;->index:I

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public previousIndex()I
    .locals 2

    .prologue
    .line 168
    iget v0, p0, Lorg/apache/commons/collections/iterators/ArrayIterator;->index:I

    iget v1, p0, Lorg/apache/commons/collections/iterators/ArrayIterator;->startIndex:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 209
    invoke-super {p0}, Lorg/apache/commons/collections/iterators/ArrayIterator;->reset()V

    .line 210
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/commons/collections/iterators/ArrayListIterator;->lastItemIndex:I

    .line 211
    return-void
.end method

.method public set(Ljava/lang/Object;)V
    .locals 2
    .parameter "o"

    .prologue
    .line 198
    iget v0, p0, Lorg/apache/commons/collections/iterators/ArrayListIterator;->lastItemIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 199
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "must call next() or previous() before a call to set()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 202
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/ArrayIterator;->array:Ljava/lang/Object;

    iget v1, p0, Lorg/apache/commons/collections/iterators/ArrayListIterator;->lastItemIndex:I

    invoke-static {v0, v1, p1}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 203
    return-void
.end method
