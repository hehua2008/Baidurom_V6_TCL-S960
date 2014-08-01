.class public Lorg/apache/commons/collections/iterators/ObjectArrayIterator;
.super Ljava/lang/Object;
.source "ObjectArrayIterator.java"

# interfaces
.implements Ljava/util/Iterator;
.implements Lorg/apache/commons/collections/ResettableIterator;


# instance fields
.field protected array:[Ljava/lang/Object;

.field protected endIndex:I

.field protected index:I

.field protected startIndex:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/collections/iterators/ObjectArrayIterator;->array:[Ljava/lang/Object;

    .line 48
    iput v1, p0, Lorg/apache/commons/collections/iterators/ObjectArrayIterator;->startIndex:I

    .line 50
    iput v1, p0, Lorg/apache/commons/collections/iterators/ObjectArrayIterator;->endIndex:I

    .line 52
    iput v1, p0, Lorg/apache/commons/collections/iterators/ObjectArrayIterator;->index:I

    .line 62
    return-void
.end method

.method public constructor <init>([Ljava/lang/Object;)V
    .locals 2
    .parameter "array"

    .prologue
    .line 72
    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/collections/iterators/ObjectArrayIterator;-><init>([Ljava/lang/Object;II)V

    .line 73
    return-void
.end method

.method public constructor <init>([Ljava/lang/Object;I)V
    .locals 1
    .parameter "array"
    .parameter "start"

    .prologue
    .line 85
    array-length v0, p1

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/collections/iterators/ObjectArrayIterator;-><init>([Ljava/lang/Object;II)V

    .line 86
    return-void
.end method

.method public constructor <init>([Ljava/lang/Object;II)V
    .locals 2
    .parameter "array"
    .parameter "start"
    .parameter "end"

    .prologue
    const/4 v1, 0x0

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/collections/iterators/ObjectArrayIterator;->array:[Ljava/lang/Object;

    .line 48
    iput v1, p0, Lorg/apache/commons/collections/iterators/ObjectArrayIterator;->startIndex:I

    .line 50
    iput v1, p0, Lorg/apache/commons/collections/iterators/ObjectArrayIterator;->endIndex:I

    .line 52
    iput v1, p0, Lorg/apache/commons/collections/iterators/ObjectArrayIterator;->index:I

    .line 101
    if-gez p2, :cond_0

    .line 102
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v1, "Start index must not be less than zero"

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 104
    :cond_0
    array-length v0, p1

    if-le p3, v0, :cond_1

    .line 105
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v1, "End index must not be greater than the array length"

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    :cond_1
    array-length v0, p1

    if-le p2, v0, :cond_2

    .line 108
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v1, "Start index must not be greater than the array length"

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 110
    :cond_2
    if-ge p3, p2, :cond_3

    .line 111
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "End index must not be less than start index"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 113
    :cond_3
    iput-object p1, p0, Lorg/apache/commons/collections/iterators/ObjectArrayIterator;->array:[Ljava/lang/Object;

    .line 114
    iput p2, p0, Lorg/apache/commons/collections/iterators/ObjectArrayIterator;->startIndex:I

    .line 115
    iput p3, p0, Lorg/apache/commons/collections/iterators/ObjectArrayIterator;->endIndex:I

    .line 116
    iput p2, p0, Lorg/apache/commons/collections/iterators/ObjectArrayIterator;->index:I

    .line 117
    return-void
.end method


# virtual methods
.method public getArray()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/ObjectArrayIterator;->array:[Ljava/lang/Object;

    return-object v0
.end method

.method public getEndIndex()I
    .locals 1

    .prologue
    .line 205
    iget v0, p0, Lorg/apache/commons/collections/iterators/ObjectArrayIterator;->endIndex:I

    return v0
.end method

.method public getStartIndex()I
    .locals 1

    .prologue
    .line 196
    iget v0, p0, Lorg/apache/commons/collections/iterators/ObjectArrayIterator;->startIndex:I

    return v0
.end method

.method public hasNext()Z
    .locals 2

    .prologue
    .line 128
    iget v0, p0, Lorg/apache/commons/collections/iterators/ObjectArrayIterator;->index:I

    iget v1, p0, Lorg/apache/commons/collections/iterators/ObjectArrayIterator;->endIndex:I

    if-ge v0, v1, :cond_0

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
    .line 139
    invoke-virtual {p0}, Lorg/apache/commons/collections/iterators/ObjectArrayIterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 140
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 142
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/ObjectArrayIterator;->array:[Ljava/lang/Object;

    iget v1, p0, Lorg/apache/commons/collections/iterators/ObjectArrayIterator;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/commons/collections/iterators/ObjectArrayIterator;->index:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 151
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "remove() method is not supported for an ObjectArrayIterator"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 212
    iget v0, p0, Lorg/apache/commons/collections/iterators/ObjectArrayIterator;->startIndex:I

    iput v0, p0, Lorg/apache/commons/collections/iterators/ObjectArrayIterator;->index:I

    .line 213
    return-void
.end method

.method public setArray([Ljava/lang/Object;)V
    .locals 2
    .parameter "array"

    .prologue
    const/4 v1, 0x0

    .line 181
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/ObjectArrayIterator;->array:[Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 182
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The array to iterate over has already been set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 184
    :cond_0
    iput-object p1, p0, Lorg/apache/commons/collections/iterators/ObjectArrayIterator;->array:[Ljava/lang/Object;

    .line 185
    iput v1, p0, Lorg/apache/commons/collections/iterators/ObjectArrayIterator;->startIndex:I

    .line 186
    array-length v0, p1

    iput v0, p0, Lorg/apache/commons/collections/iterators/ObjectArrayIterator;->endIndex:I

    .line 187
    iput v1, p0, Lorg/apache/commons/collections/iterators/ObjectArrayIterator;->index:I

    .line 188
    return-void
.end method
