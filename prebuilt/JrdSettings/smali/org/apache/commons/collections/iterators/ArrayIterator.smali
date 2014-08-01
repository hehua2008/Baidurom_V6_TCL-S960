.class public Lorg/apache/commons/collections/iterators/ArrayIterator;
.super Ljava/lang/Object;
.source "ArrayIterator.java"

# interfaces
.implements Lorg/apache/commons/collections/ResettableIterator;


# instance fields
.field protected array:Ljava/lang/Object;

.field protected endIndex:I

.field protected index:I

.field protected startIndex:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput v0, p0, Lorg/apache/commons/collections/iterators/ArrayIterator;->startIndex:I

    .line 50
    iput v0, p0, Lorg/apache/commons/collections/iterators/ArrayIterator;->endIndex:I

    .line 52
    iput v0, p0, Lorg/apache/commons/collections/iterators/ArrayIterator;->index:I

    .line 64
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .parameter "array"

    .prologue
    const/4 v0, 0x0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput v0, p0, Lorg/apache/commons/collections/iterators/ArrayIterator;->startIndex:I

    .line 50
    iput v0, p0, Lorg/apache/commons/collections/iterators/ArrayIterator;->endIndex:I

    .line 52
    iput v0, p0, Lorg/apache/commons/collections/iterators/ArrayIterator;->index:I

    .line 76
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/iterators/ArrayIterator;->setArray(Ljava/lang/Object;)V

    .line 77
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;I)V
    .locals 1
    .parameter "array"
    .parameter "startIndex"

    .prologue
    const/4 v0, 0x0

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput v0, p0, Lorg/apache/commons/collections/iterators/ArrayIterator;->startIndex:I

    .line 50
    iput v0, p0, Lorg/apache/commons/collections/iterators/ArrayIterator;->endIndex:I

    .line 52
    iput v0, p0, Lorg/apache/commons/collections/iterators/ArrayIterator;->index:I

    .line 91
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/iterators/ArrayIterator;->setArray(Ljava/lang/Object;)V

    .line 92
    const-string v0, "start"

    invoke-virtual {p0, p2, v0}, Lorg/apache/commons/collections/iterators/ArrayIterator;->checkBound(ILjava/lang/String;)V

    .line 93
    iput p2, p0, Lorg/apache/commons/collections/iterators/ArrayIterator;->startIndex:I

    .line 94
    iput p2, p0, Lorg/apache/commons/collections/iterators/ArrayIterator;->index:I

    .line 95
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;II)V
    .locals 2
    .parameter "array"
    .parameter "startIndex"
    .parameter "endIndex"

    .prologue
    const/4 v0, 0x0

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput v0, p0, Lorg/apache/commons/collections/iterators/ArrayIterator;->startIndex:I

    .line 50
    iput v0, p0, Lorg/apache/commons/collections/iterators/ArrayIterator;->endIndex:I

    .line 52
    iput v0, p0, Lorg/apache/commons/collections/iterators/ArrayIterator;->index:I

    .line 110
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/iterators/ArrayIterator;->setArray(Ljava/lang/Object;)V

    .line 111
    const-string v0, "start"

    invoke-virtual {p0, p2, v0}, Lorg/apache/commons/collections/iterators/ArrayIterator;->checkBound(ILjava/lang/String;)V

    .line 112
    const-string v0, "end"

    invoke-virtual {p0, p3, v0}, Lorg/apache/commons/collections/iterators/ArrayIterator;->checkBound(ILjava/lang/String;)V

    .line 113
    if-ge p3, p2, :cond_0

    .line 114
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "End index must not be less than start index."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 116
    :cond_0
    iput p2, p0, Lorg/apache/commons/collections/iterators/ArrayIterator;->startIndex:I

    .line 117
    iput p3, p0, Lorg/apache/commons/collections/iterators/ArrayIterator;->endIndex:I

    .line 118
    iput p2, p0, Lorg/apache/commons/collections/iterators/ArrayIterator;->index:I

    .line 119
    return-void
.end method


# virtual methods
.method protected checkBound(ILjava/lang/String;)V
    .locals 3
    .parameter "bound"
    .parameter "type"

    .prologue
    .line 129
    iget v0, p0, Lorg/apache/commons/collections/iterators/ArrayIterator;->endIndex:I

    if-le p1, v0, :cond_0

    .line 130
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Attempt to make an ArrayIterator that "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "s beyond the end of the array. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 135
    :cond_0
    if-gez p1, :cond_1

    .line 136
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Attempt to make an ArrayIterator that "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "s before the start of the array. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 141
    :cond_1
    return-void
.end method

.method public getArray()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/ArrayIterator;->array:Ljava/lang/Object;

    return-object v0
.end method

.method public hasNext()Z
    .locals 2

    .prologue
    .line 151
    iget v0, p0, Lorg/apache/commons/collections/iterators/ArrayIterator;->index:I

    iget v1, p0, Lorg/apache/commons/collections/iterators/ArrayIterator;->endIndex:I

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
    .line 162
    invoke-virtual {p0}, Lorg/apache/commons/collections/iterators/ArrayIterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 163
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 165
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/ArrayIterator;->array:Ljava/lang/Object;

    iget v1, p0, Lorg/apache/commons/collections/iterators/ArrayIterator;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/commons/collections/iterators/ArrayIterator;->index:I

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 174
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "remove() method is not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 219
    iget v0, p0, Lorg/apache/commons/collections/iterators/ArrayIterator;->startIndex:I

    iput v0, p0, Lorg/apache/commons/collections/iterators/ArrayIterator;->index:I

    .line 220
    return-void
.end method

.method public setArray(Ljava/lang/Object;)V
    .locals 2
    .parameter "array"

    .prologue
    const/4 v1, 0x0

    .line 209
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lorg/apache/commons/collections/iterators/ArrayIterator;->endIndex:I

    .line 210
    iput v1, p0, Lorg/apache/commons/collections/iterators/ArrayIterator;->startIndex:I

    .line 211
    iput-object p1, p0, Lorg/apache/commons/collections/iterators/ArrayIterator;->array:Ljava/lang/Object;

    .line 212
    iput v1, p0, Lorg/apache/commons/collections/iterators/ArrayIterator;->index:I

    .line 213
    return-void
.end method
