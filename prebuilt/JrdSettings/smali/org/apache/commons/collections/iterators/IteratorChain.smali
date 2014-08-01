.class public Lorg/apache/commons/collections/iterators/IteratorChain;
.super Ljava/lang/Object;
.source "IteratorChain.java"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field protected currentIterator:Ljava/util/Iterator;

.field protected currentIteratorIndex:I

.field protected isLocked:Z

.field protected final iteratorChain:Ljava/util/List;

.field protected lastUsedIterator:Ljava/util/Iterator;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/collections/iterators/IteratorChain;->iteratorChain:Ljava/util/List;

    .line 55
    iput v1, p0, Lorg/apache/commons/collections/iterators/IteratorChain;->currentIteratorIndex:I

    .line 57
    iput-object v2, p0, Lorg/apache/commons/collections/iterators/IteratorChain;->currentIterator:Ljava/util/Iterator;

    .line 63
    iput-object v2, p0, Lorg/apache/commons/collections/iterators/IteratorChain;->lastUsedIterator:Ljava/util/Iterator;

    .line 68
    iput-boolean v1, p0, Lorg/apache/commons/collections/iterators/IteratorChain;->isLocked:Z

    .line 79
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 5
    .parameter "iterators"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lorg/apache/commons/collections/iterators/IteratorChain;->iteratorChain:Ljava/util/List;

    .line 55
    iput v3, p0, Lorg/apache/commons/collections/iterators/IteratorChain;->currentIteratorIndex:I

    .line 57
    iput-object v4, p0, Lorg/apache/commons/collections/iterators/IteratorChain;->currentIterator:Ljava/util/Iterator;

    .line 63
    iput-object v4, p0, Lorg/apache/commons/collections/iterators/IteratorChain;->lastUsedIterator:Ljava/util/Iterator;

    .line 68
    iput-boolean v3, p0, Lorg/apache/commons/collections/iterators/IteratorChain;->isLocked:Z

    .line 130
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, it:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 134
    return-void

    .line 131
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Iterator;

    .line 132
    .local v1, item:Ljava/util/Iterator;
    invoke-virtual {p0, v1}, Lorg/apache/commons/collections/iterators/IteratorChain;->addIterator(Ljava/util/Iterator;)V

    goto :goto_0
.end method

.method public constructor <init>(Ljava/util/Iterator;)V
    .locals 3
    .parameter "iterator"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/collections/iterators/IteratorChain;->iteratorChain:Ljava/util/List;

    .line 55
    iput v1, p0, Lorg/apache/commons/collections/iterators/IteratorChain;->currentIteratorIndex:I

    .line 57
    iput-object v2, p0, Lorg/apache/commons/collections/iterators/IteratorChain;->currentIterator:Ljava/util/Iterator;

    .line 63
    iput-object v2, p0, Lorg/apache/commons/collections/iterators/IteratorChain;->lastUsedIterator:Ljava/util/Iterator;

    .line 68
    iput-boolean v1, p0, Lorg/apache/commons/collections/iterators/IteratorChain;->isLocked:Z

    .line 89
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/iterators/IteratorChain;->addIterator(Ljava/util/Iterator;)V

    .line 90
    return-void
.end method

.method public constructor <init>(Ljava/util/Iterator;Ljava/util/Iterator;)V
    .locals 3
    .parameter "a"
    .parameter "b"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/collections/iterators/IteratorChain;->iteratorChain:Ljava/util/List;

    .line 55
    iput v1, p0, Lorg/apache/commons/collections/iterators/IteratorChain;->currentIteratorIndex:I

    .line 57
    iput-object v2, p0, Lorg/apache/commons/collections/iterators/IteratorChain;->currentIterator:Ljava/util/Iterator;

    .line 63
    iput-object v2, p0, Lorg/apache/commons/collections/iterators/IteratorChain;->lastUsedIterator:Ljava/util/Iterator;

    .line 68
    iput-boolean v1, p0, Lorg/apache/commons/collections/iterators/IteratorChain;->isLocked:Z

    .line 102
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/iterators/IteratorChain;->addIterator(Ljava/util/Iterator;)V

    .line 103
    invoke-virtual {p0, p2}, Lorg/apache/commons/collections/iterators/IteratorChain;->addIterator(Ljava/util/Iterator;)V

    .line 104
    return-void
.end method

.method public constructor <init>([Ljava/util/Iterator;)V
    .locals 4
    .parameter "iterators"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/apache/commons/collections/iterators/IteratorChain;->iteratorChain:Ljava/util/List;

    .line 55
    iput v2, p0, Lorg/apache/commons/collections/iterators/IteratorChain;->currentIteratorIndex:I

    .line 57
    iput-object v3, p0, Lorg/apache/commons/collections/iterators/IteratorChain;->currentIterator:Ljava/util/Iterator;

    .line 63
    iput-object v3, p0, Lorg/apache/commons/collections/iterators/IteratorChain;->lastUsedIterator:Ljava/util/Iterator;

    .line 68
    iput-boolean v2, p0, Lorg/apache/commons/collections/iterators/IteratorChain;->isLocked:Z

    .line 115
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p1

    if-lt v0, v1, :cond_0

    .line 118
    return-void

    .line 116
    :cond_0
    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Lorg/apache/commons/collections/iterators/IteratorChain;->addIterator(Ljava/util/Iterator;)V

    .line 115
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private checkLocked()V
    .locals 2

    .prologue
    .line 202
    iget-boolean v0, p0, Lorg/apache/commons/collections/iterators/IteratorChain;->isLocked:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 203
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "IteratorChain cannot be changed after the first use of a method from the Iterator interface"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 205
    :cond_0
    return-void
.end method

.method private lockChain()V
    .locals 1

    .prologue
    .line 212
    iget-boolean v0, p0, Lorg/apache/commons/collections/iterators/IteratorChain;->isLocked:Z

    if-nez v0, :cond_0

    .line 213
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/collections/iterators/IteratorChain;->isLocked:Z

    .line 215
    :cond_0
    return-void
.end method


# virtual methods
.method public addIterator(Ljava/util/Iterator;)V
    .locals 2
    .parameter "iterator"

    .prologue
    .line 145
    invoke-direct {p0}, Lorg/apache/commons/collections/iterators/IteratorChain;->checkLocked()V

    .line 146
    if-nez p1, :cond_0

    .line 147
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Iterator must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 149
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/IteratorChain;->iteratorChain:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    return-void
.end method

.method public getIterators()Ljava/util/List;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/IteratorChain;->iteratorChain:Ljava/util/List;

    invoke-static {v0}, Lorg/apache/commons/collections/list/UnmodifiableList;->decorate(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hasNext()Z
    .locals 1

    .prologue
    .line 246
    invoke-direct {p0}, Lorg/apache/commons/collections/iterators/IteratorChain;->lockChain()V

    .line 247
    invoke-virtual {p0}, Lorg/apache/commons/collections/iterators/IteratorChain;->updateCurrentIterator()V

    .line 248
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/IteratorChain;->currentIterator:Ljava/util/Iterator;

    iput-object v0, p0, Lorg/apache/commons/collections/iterators/IteratorChain;->lastUsedIterator:Ljava/util/Iterator;

    .line 250
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/IteratorChain;->currentIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public isLocked()Z
    .locals 1

    .prologue
    .line 195
    iget-boolean v0, p0, Lorg/apache/commons/collections/iterators/IteratorChain;->isLocked:Z

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 260
    invoke-direct {p0}, Lorg/apache/commons/collections/iterators/IteratorChain;->lockChain()V

    .line 261
    invoke-virtual {p0}, Lorg/apache/commons/collections/iterators/IteratorChain;->updateCurrentIterator()V

    .line 262
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/IteratorChain;->currentIterator:Ljava/util/Iterator;

    iput-object v0, p0, Lorg/apache/commons/collections/iterators/IteratorChain;->lastUsedIterator:Ljava/util/Iterator;

    .line 264
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/IteratorChain;->currentIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 282
    invoke-direct {p0}, Lorg/apache/commons/collections/iterators/IteratorChain;->lockChain()V

    .line 283
    invoke-virtual {p0}, Lorg/apache/commons/collections/iterators/IteratorChain;->updateCurrentIterator()V

    .line 285
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/IteratorChain;->lastUsedIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 286
    return-void
.end method

.method public setIterator(ILjava/util/Iterator;)V
    .locals 2
    .parameter "index"
    .parameter "iterator"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 162
    invoke-direct {p0}, Lorg/apache/commons/collections/iterators/IteratorChain;->checkLocked()V

    .line 163
    if-nez p2, :cond_0

    .line 164
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Iterator must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 166
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/IteratorChain;->iteratorChain:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 167
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/IteratorChain;->iteratorChain:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method protected updateCurrentIterator()V
    .locals 2

    .prologue
    .line 222
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/IteratorChain;->currentIterator:Ljava/util/Iterator;

    if-nez v0, :cond_0

    .line 223
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/IteratorChain;->iteratorChain:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 224
    sget-object v0, Lorg/apache/commons/collections/iterators/EmptyIterator;->INSTANCE:Ljava/util/Iterator;

    iput-object v0, p0, Lorg/apache/commons/collections/iterators/IteratorChain;->currentIterator:Ljava/util/Iterator;

    .line 230
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/IteratorChain;->currentIterator:Ljava/util/Iterator;

    iput-object v0, p0, Lorg/apache/commons/collections/iterators/IteratorChain;->lastUsedIterator:Ljava/util/Iterator;

    .line 233
    :cond_0
    :goto_1
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/IteratorChain;->currentIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lorg/apache/commons/collections/iterators/IteratorChain;->currentIteratorIndex:I

    iget-object v1, p0, Lorg/apache/commons/collections/iterators/IteratorChain;->iteratorChain:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-lt v0, v1, :cond_3

    .line 237
    :cond_1
    return-void

    .line 226
    :cond_2
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/IteratorChain;->iteratorChain:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Iterator;

    iput-object v0, p0, Lorg/apache/commons/collections/iterators/IteratorChain;->currentIterator:Ljava/util/Iterator;

    goto :goto_0

    .line 234
    :cond_3
    iget v0, p0, Lorg/apache/commons/collections/iterators/IteratorChain;->currentIteratorIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/collections/iterators/IteratorChain;->currentIteratorIndex:I

    .line 235
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/IteratorChain;->iteratorChain:Ljava/util/List;

    iget v1, p0, Lorg/apache/commons/collections/iterators/IteratorChain;->currentIteratorIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Iterator;

    iput-object v0, p0, Lorg/apache/commons/collections/iterators/IteratorChain;->currentIterator:Ljava/util/Iterator;

    goto :goto_1
.end method
