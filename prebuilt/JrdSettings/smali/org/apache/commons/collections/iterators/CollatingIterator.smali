.class public Lorg/apache/commons/collections/iterators/CollatingIterator;
.super Ljava/lang/Object;
.source "CollatingIterator.java"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field private comparator:Ljava/util/Comparator;

.field private iterators:Ljava/util/ArrayList;

.field private lastReturned:I

.field private valueSet:Ljava/util/BitSet;

.field private values:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 67
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/collections/iterators/CollatingIterator;-><init>(Ljava/util/Comparator;I)V

    .line 68
    return-void
.end method

.method public constructor <init>(Ljava/util/Comparator;)V
    .locals 1
    .parameter "comp"

    .prologue
    .line 78
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/collections/iterators/CollatingIterator;-><init>(Ljava/util/Comparator;I)V

    .line 79
    return-void
.end method

.method public constructor <init>(Ljava/util/Comparator;I)V
    .locals 1
    .parameter "comp"
    .parameter "initIterCapacity"

    .prologue
    const/4 v0, 0x0

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object v0, p0, Lorg/apache/commons/collections/iterators/CollatingIterator;->comparator:Ljava/util/Comparator;

    .line 48
    iput-object v0, p0, Lorg/apache/commons/collections/iterators/CollatingIterator;->iterators:Ljava/util/ArrayList;

    .line 51
    iput-object v0, p0, Lorg/apache/commons/collections/iterators/CollatingIterator;->values:Ljava/util/ArrayList;

    .line 54
    iput-object v0, p0, Lorg/apache/commons/collections/iterators/CollatingIterator;->valueSet:Ljava/util/BitSet;

    .line 57
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/commons/collections/iterators/CollatingIterator;->lastReturned:I

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/apache/commons/collections/iterators/CollatingIterator;->iterators:Ljava/util/ArrayList;

    .line 93
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/iterators/CollatingIterator;->setComparator(Ljava/util/Comparator;)V

    .line 94
    return-void
.end method

.method public constructor <init>(Ljava/util/Comparator;Ljava/util/Collection;)V
    .locals 3
    .parameter "comp"
    .parameter "iterators"

    .prologue
    .line 140
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-direct {p0, p1, v2}, Lorg/apache/commons/collections/iterators/CollatingIterator;-><init>(Ljava/util/Comparator;I)V

    .line 141
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, it:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 145
    return-void

    .line 142
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Iterator;

    .line 143
    .local v1, item:Ljava/util/Iterator;
    invoke-virtual {p0, v1}, Lorg/apache/commons/collections/iterators/CollatingIterator;->addIterator(Ljava/util/Iterator;)V

    goto :goto_0
.end method

.method public constructor <init>(Ljava/util/Comparator;Ljava/util/Iterator;Ljava/util/Iterator;)V
    .locals 1
    .parameter "comp"
    .parameter "a"
    .parameter "b"

    .prologue
    .line 107
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/collections/iterators/CollatingIterator;-><init>(Ljava/util/Comparator;I)V

    .line 108
    invoke-virtual {p0, p2}, Lorg/apache/commons/collections/iterators/CollatingIterator;->addIterator(Ljava/util/Iterator;)V

    .line 109
    invoke-virtual {p0, p3}, Lorg/apache/commons/collections/iterators/CollatingIterator;->addIterator(Ljava/util/Iterator;)V

    .line 110
    return-void
.end method

.method public constructor <init>(Ljava/util/Comparator;[Ljava/util/Iterator;)V
    .locals 2
    .parameter "comp"
    .parameter "iterators"

    .prologue
    .line 122
    array-length v1, p2

    invoke-direct {p0, p1, v1}, Lorg/apache/commons/collections/iterators/CollatingIterator;-><init>(Ljava/util/Comparator;I)V

    .line 123
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p2

    if-lt v0, v1, :cond_0

    .line 126
    return-void

    .line 124
    :cond_0
    aget-object v1, p2, v0

    invoke-virtual {p0, v1}, Lorg/apache/commons/collections/iterators/CollatingIterator;->addIterator(Ljava/util/Iterator;)V

    .line 123
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private anyHasNext(Ljava/util/ArrayList;)Z
    .locals 3
    .parameter "iters"

    .prologue
    .line 361
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 367
    const/4 v2, 0x0

    :goto_1
    return v2

    .line 362
    :cond_0
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Iterator;

    .line 363
    .local v1, it:Ljava/util/Iterator;
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 364
    const/4 v2, 0x1

    goto :goto_1

    .line 361
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private anyValueSet(Ljava/util/BitSet;)Z
    .locals 2
    .parameter "set"

    .prologue
    .line 348
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/util/BitSet;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 353
    const/4 v1, 0x0

    :goto_1
    return v1

    .line 349
    :cond_0
    invoke-virtual {p1, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 350
    const/4 v1, 0x1

    goto :goto_1

    .line 348
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private checkNotStarted()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 309
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/CollatingIterator;->values:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 310
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t do that after next or hasNext has been called."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 312
    :cond_0
    return-void
.end method

.method private clear(I)V
    .locals 2
    .parameter "i"

    .prologue
    .line 298
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/CollatingIterator;->values:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 299
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/CollatingIterator;->valueSet:Ljava/util/BitSet;

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->clear(I)V

    .line 300
    return-void
.end method

.method private least()I
    .locals 5

    .prologue
    .line 321
    const/4 v2, -0x1

    .line 322
    .local v2, leastIndex:I
    const/4 v3, 0x0

    .line 323
    .local v3, leastObject:Ljava/lang/Object;
    const/4 v1, 0x0

    .end local v3           #leastObject:Ljava/lang/Object;
    .local v1, i:I
    :goto_0
    iget-object v4, p0, Lorg/apache/commons/collections/iterators/CollatingIterator;->values:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v1, v4, :cond_0

    .line 340
    return v2

    .line 324
    :cond_0
    iget-object v4, p0, Lorg/apache/commons/collections/iterators/CollatingIterator;->valueSet:Ljava/util/BitSet;

    invoke-virtual {v4, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 325
    invoke-direct {p0, v1}, Lorg/apache/commons/collections/iterators/CollatingIterator;->set(I)Z

    .line 327
    :cond_1
    iget-object v4, p0, Lorg/apache/commons/collections/iterators/CollatingIterator;->valueSet:Ljava/util/BitSet;

    invoke-virtual {v4, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 328
    const/4 v4, -0x1

    if-ne v2, v4, :cond_3

    .line 329
    move v2, v1

    .line 330
    iget-object v4, p0, Lorg/apache/commons/collections/iterators/CollatingIterator;->values:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 323
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 332
    :cond_3
    iget-object v4, p0, Lorg/apache/commons/collections/iterators/CollatingIterator;->values:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 333
    .local v0, curObject:Ljava/lang/Object;
    iget-object v4, p0, Lorg/apache/commons/collections/iterators/CollatingIterator;->comparator:Ljava/util/Comparator;

    invoke-interface {v4, v0, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    if-gez v4, :cond_2

    .line 334
    move-object v3, v0

    .line 335
    .restart local v3       #leastObject:Ljava/lang/Object;
    move v2, v1

    goto :goto_1
.end method

.method private set(I)Z
    .locals 3
    .parameter "i"

    .prologue
    .line 281
    iget-object v1, p0, Lorg/apache/commons/collections/iterators/CollatingIterator;->iterators:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Iterator;

    .line 282
    .local v0, it:Ljava/util/Iterator;
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 283
    iget-object v1, p0, Lorg/apache/commons/collections/iterators/CollatingIterator;->values:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 284
    iget-object v1, p0, Lorg/apache/commons/collections/iterators/CollatingIterator;->valueSet:Ljava/util/BitSet;

    invoke-virtual {v1, p1}, Ljava/util/BitSet;->set(I)V

    .line 285
    const/4 v1, 0x1

    .line 289
    :goto_0
    return v1

    .line 287
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/collections/iterators/CollatingIterator;->values:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 288
    iget-object v1, p0, Lorg/apache/commons/collections/iterators/CollatingIterator;->valueSet:Ljava/util/BitSet;

    invoke-virtual {v1, p1}, Ljava/util/BitSet;->clear(I)V

    .line 289
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private start()V
    .locals 3

    .prologue
    .line 261
    iget-object v1, p0, Lorg/apache/commons/collections/iterators/CollatingIterator;->values:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 262
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/apache/commons/collections/iterators/CollatingIterator;->iterators:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lorg/apache/commons/collections/iterators/CollatingIterator;->values:Ljava/util/ArrayList;

    .line 263
    new-instance v1, Ljava/util/BitSet;

    iget-object v2, p0, Lorg/apache/commons/collections/iterators/CollatingIterator;->iterators:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/BitSet;-><init>(I)V

    iput-object v1, p0, Lorg/apache/commons/collections/iterators/CollatingIterator;->valueSet:Ljava/util/BitSet;

    .line 264
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lorg/apache/commons/collections/iterators/CollatingIterator;->iterators:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 269
    .end local v0           #i:I
    :cond_0
    return-void

    .line 265
    .restart local v0       #i:I
    :cond_1
    iget-object v1, p0, Lorg/apache/commons/collections/iterators/CollatingIterator;->values:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 266
    iget-object v1, p0, Lorg/apache/commons/collections/iterators/CollatingIterator;->valueSet:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->clear(I)V

    .line 264
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public addIterator(Ljava/util/Iterator;)V
    .locals 2
    .parameter "iterator"

    .prologue
    .line 157
    invoke-direct {p0}, Lorg/apache/commons/collections/iterators/CollatingIterator;->checkNotStarted()V

    .line 158
    if-nez p1, :cond_0

    .line 159
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Iterator must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 161
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/CollatingIterator;->iterators:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 162
    return-void
.end method

.method public getComparator()Ljava/util/Comparator;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/CollatingIterator;->comparator:Ljava/util/Comparator;

    return-object v0
.end method

.method public getIterators()Ljava/util/List;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/CollatingIterator;->iterators:Ljava/util/ArrayList;

    invoke-static {v0}, Lorg/apache/commons/collections/list/UnmodifiableList;->decorate(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hasNext()Z
    .locals 1

    .prologue
    .line 215
    invoke-direct {p0}, Lorg/apache/commons/collections/iterators/CollatingIterator;->start()V

    .line 216
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/CollatingIterator;->valueSet:Ljava/util/BitSet;

    invoke-direct {p0, v0}, Lorg/apache/commons/collections/iterators/CollatingIterator;->anyValueSet(Ljava/util/BitSet;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/collections/iterators/CollatingIterator;->iterators:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lorg/apache/commons/collections/iterators/CollatingIterator;->anyHasNext(Ljava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/NoSuchElementException;
        }
    .end annotation

    .prologue
    .line 226
    invoke-virtual {p0}, Lorg/apache/commons/collections/iterators/CollatingIterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 227
    new-instance v2, Ljava/util/NoSuchElementException;

    invoke-direct {v2}, Ljava/util/NoSuchElementException;-><init>()V

    throw v2

    .line 229
    :cond_0
    invoke-direct {p0}, Lorg/apache/commons/collections/iterators/CollatingIterator;->least()I

    move-result v0

    .line 230
    .local v0, leastIndex:I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    .line 231
    new-instance v2, Ljava/util/NoSuchElementException;

    invoke-direct {v2}, Ljava/util/NoSuchElementException;-><init>()V

    throw v2

    .line 233
    :cond_1
    iget-object v2, p0, Lorg/apache/commons/collections/iterators/CollatingIterator;->values:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 234
    .local v1, val:Ljava/lang/Object;
    invoke-direct {p0, v0}, Lorg/apache/commons/collections/iterators/CollatingIterator;->clear(I)V

    .line 235
    iput v0, p0, Lorg/apache/commons/collections/iterators/CollatingIterator;->lastReturned:I

    .line 236
    return-object v1
.end method

.method public remove()V
    .locals 3

    .prologue
    .line 248
    iget v1, p0, Lorg/apache/commons/collections/iterators/CollatingIterator;->lastReturned:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 249
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "No value can be removed at present"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 251
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/collections/iterators/CollatingIterator;->iterators:Ljava/util/ArrayList;

    iget v2, p0, Lorg/apache/commons/collections/iterators/CollatingIterator;->lastReturned:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Iterator;

    .line 252
    .local v0, it:Ljava/util/Iterator;
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 253
    return-void
.end method

.method public setComparator(Ljava/util/Comparator;)V
    .locals 0
    .parameter "comp"

    .prologue
    .line 203
    invoke-direct {p0}, Lorg/apache/commons/collections/iterators/CollatingIterator;->checkNotStarted()V

    .line 204
    iput-object p1, p0, Lorg/apache/commons/collections/iterators/CollatingIterator;->comparator:Ljava/util/Comparator;

    .line 205
    return-void
.end method

.method public setIterator(ILjava/util/Iterator;)V
    .locals 2
    .parameter "index"
    .parameter "iterator"

    .prologue
    .line 174
    invoke-direct {p0}, Lorg/apache/commons/collections/iterators/CollatingIterator;->checkNotStarted()V

    .line 175
    if-nez p2, :cond_0

    .line 176
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Iterator must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 178
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/CollatingIterator;->iterators:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 179
    return-void
.end method
