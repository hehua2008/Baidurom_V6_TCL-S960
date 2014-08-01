.class public Lorg/apache/commons/collections/comparators/ComparatorChain;
.super Ljava/lang/Object;
.source "ComparatorChain.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/util/Comparator;


# static fields
.field private static final serialVersionUID:J = -0xa03cc408256595eL


# instance fields
.field protected comparatorChain:Ljava/util/List;

.field protected isLocked:Z

.field protected orderingBits:Ljava/util/BitSet;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1}, Ljava/util/BitSet;-><init>()V

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/collections/comparators/ComparatorChain;-><init>(Ljava/util/List;Ljava/util/BitSet;)V

    .line 77
    return-void
.end method

.method public constructor <init>(Ljava/util/Comparator;)V
    .locals 1
    .parameter "comparator"

    .prologue
    .line 86
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/collections/comparators/ComparatorChain;-><init>(Ljava/util/Comparator;Z)V

    .line 87
    return-void
.end method

.method public constructor <init>(Ljava/util/Comparator;Z)V
    .locals 3
    .parameter "comparator"
    .parameter "reverse"

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object v0, p0, Lorg/apache/commons/collections/comparators/ComparatorChain;->comparatorChain:Ljava/util/List;

    .line 64
    iput-object v0, p0, Lorg/apache/commons/collections/comparators/ComparatorChain;->orderingBits:Ljava/util/BitSet;

    .line 66
    iput-boolean v1, p0, Lorg/apache/commons/collections/comparators/ComparatorChain;->isLocked:Z

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/collections/comparators/ComparatorChain;->comparatorChain:Ljava/util/List;

    .line 98
    iget-object v0, p0, Lorg/apache/commons/collections/comparators/ComparatorChain;->comparatorChain:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0, v2}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lorg/apache/commons/collections/comparators/ComparatorChain;->orderingBits:Ljava/util/BitSet;

    .line 100
    if-ne p2, v2, :cond_0

    .line 101
    iget-object v0, p0, Lorg/apache/commons/collections/comparators/ComparatorChain;->orderingBits:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 103
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 2
    .parameter "list"

    .prologue
    .line 114
    new-instance v0, Ljava/util/BitSet;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/collections/comparators/ComparatorChain;-><init>(Ljava/util/List;Ljava/util/BitSet;)V

    .line 115
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/BitSet;)V
    .locals 1
    .parameter "list"
    .parameter "bits"

    .prologue
    const/4 v0, 0x0

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object v0, p0, Lorg/apache/commons/collections/comparators/ComparatorChain;->comparatorChain:Ljava/util/List;

    .line 64
    iput-object v0, p0, Lorg/apache/commons/collections/comparators/ComparatorChain;->orderingBits:Ljava/util/BitSet;

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/collections/comparators/ComparatorChain;->isLocked:Z

    .line 133
    iput-object p1, p0, Lorg/apache/commons/collections/comparators/ComparatorChain;->comparatorChain:Ljava/util/List;

    .line 134
    iput-object p2, p0, Lorg/apache/commons/collections/comparators/ComparatorChain;->orderingBits:Ljava/util/BitSet;

    .line 135
    return-void
.end method

.method private checkChainIntegrity()V
    .locals 2

    .prologue
    .line 249
    iget-object v0, p0, Lorg/apache/commons/collections/comparators/ComparatorChain;->comparatorChain:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 250
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "ComparatorChains must contain at least one Comparator"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 252
    :cond_0
    return-void
.end method

.method private checkLocked()V
    .locals 2

    .prologue
    .line 243
    iget-boolean v0, p0, Lorg/apache/commons/collections/comparators/ComparatorChain;->isLocked:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 244
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Comparator ordering cannot be changed after the first comparison is performed"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 246
    :cond_0
    return-void
.end method


# virtual methods
.method public addComparator(Ljava/util/Comparator;)V
    .locals 1
    .parameter "comparator"

    .prologue
    .line 145
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/collections/comparators/ComparatorChain;->addComparator(Ljava/util/Comparator;Z)V

    .line 146
    return-void
.end method

.method public addComparator(Ljava/util/Comparator;Z)V
    .locals 2
    .parameter "comparator"
    .parameter "reverse"

    .prologue
    .line 156
    invoke-direct {p0}, Lorg/apache/commons/collections/comparators/ComparatorChain;->checkLocked()V

    .line 158
    iget-object v0, p0, Lorg/apache/commons/collections/comparators/ComparatorChain;->comparatorChain:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 160
    iget-object v0, p0, Lorg/apache/commons/collections/comparators/ComparatorChain;->orderingBits:Ljava/util/BitSet;

    iget-object v1, p0, Lorg/apache/commons/collections/comparators/ComparatorChain;->comparatorChain:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 162
    :cond_0
    return-void
.end method

.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 6
    .parameter "o1"
    .parameter "o2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 267
    iget-boolean v4, p0, Lorg/apache/commons/collections/comparators/ComparatorChain;->isLocked:Z

    if-nez v4, :cond_0

    .line 268
    invoke-direct {p0}, Lorg/apache/commons/collections/comparators/ComparatorChain;->checkChainIntegrity()V

    .line 269
    iput-boolean v5, p0, Lorg/apache/commons/collections/comparators/ComparatorChain;->isLocked:Z

    .line 273
    :cond_0
    iget-object v4, p0, Lorg/apache/commons/collections/comparators/ComparatorChain;->comparatorChain:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 274
    .local v2, comparators:Ljava/util/Iterator;
    const/4 v1, 0x0

    .local v1, comparatorIndex:I
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2

    .line 294
    const/4 v3, 0x0

    :cond_1
    :goto_1
    return v3

    .line 276
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Comparator;

    .line 277
    .local v0, comparator:Ljava/util/Comparator;
    invoke-interface {v0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    .line 278
    .local v3, retval:I
    if-eqz v3, :cond_4

    .line 280
    iget-object v4, p0, Lorg/apache/commons/collections/comparators/ComparatorChain;->orderingBits:Ljava/util/BitSet;

    invoke-virtual {v4, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-ne v4, v5, :cond_1

    .line 281
    const/high16 v4, -0x8000

    if-ne v4, v3, :cond_3

    .line 282
    const v3, 0x7fffffff

    goto :goto_1

    .line 284
    :cond_3
    mul-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 274
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "object"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 333
    if-ne p0, p1, :cond_1

    .line 342
    :cond_0
    :goto_0
    return v1

    .line 335
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 336
    goto :goto_0

    .line 337
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    move-object v0, p1

    .line 338
    check-cast v0, Lorg/apache/commons/collections/comparators/ComparatorChain;

    .line 339
    .local v0, chain:Lorg/apache/commons/collections/comparators/ComparatorChain;
    iget-object v3, p0, Lorg/apache/commons/collections/comparators/ComparatorChain;->orderingBits:Ljava/util/BitSet;

    if-nez v3, :cond_5

    iget-object v3, v0, Lorg/apache/commons/collections/comparators/ComparatorChain;->orderingBits:Ljava/util/BitSet;

    if-nez v3, :cond_4

    move v3, v1

    :goto_1
    if-eqz v3, :cond_3

    iget-object v3, p0, Lorg/apache/commons/collections/comparators/ComparatorChain;->comparatorChain:Ljava/util/List;

    if-nez v3, :cond_7

    iget-object v3, v0, Lorg/apache/commons/collections/comparators/ComparatorChain;->comparatorChain:Ljava/util/List;

    if-nez v3, :cond_6

    move v3, v1

    :goto_2
    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    :cond_4
    move v3, v2

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lorg/apache/commons/collections/comparators/ComparatorChain;->orderingBits:Ljava/util/BitSet;

    iget-object v4, v0, Lorg/apache/commons/collections/comparators/ComparatorChain;->orderingBits:Ljava/util/BitSet;

    invoke-virtual {v3, v4}, Ljava/util/BitSet;->equals(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_1

    :cond_6
    move v3, v2

    goto :goto_2

    :cond_7
    iget-object v3, p0, Lorg/apache/commons/collections/comparators/ComparatorChain;->comparatorChain:Ljava/util/List;

    iget-object v4, v0, Lorg/apache/commons/collections/comparators/ComparatorChain;->comparatorChain:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_2

    .end local v0           #chain:Lorg/apache/commons/collections/comparators/ComparatorChain;
    :cond_8
    move v1, v2

    .line 342
    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 306
    const/4 v0, 0x0

    .line 307
    .local v0, hash:I
    iget-object v1, p0, Lorg/apache/commons/collections/comparators/ComparatorChain;->comparatorChain:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 308
    iget-object v1, p0, Lorg/apache/commons/collections/comparators/ComparatorChain;->comparatorChain:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 310
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/collections/comparators/ComparatorChain;->orderingBits:Ljava/util/BitSet;

    if-eqz v1, :cond_1

    .line 311
    iget-object v1, p0, Lorg/apache/commons/collections/comparators/ComparatorChain;->orderingBits:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 313
    :cond_1
    return v0
.end method

.method public isLocked()Z
    .locals 1

    .prologue
    .line 238
    iget-boolean v0, p0, Lorg/apache/commons/collections/comparators/ComparatorChain;->isLocked:Z

    return v0
.end method

.method public setComparator(ILjava/util/Comparator;)V
    .locals 1
    .parameter "index"
    .parameter "comparator"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 175
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/commons/collections/comparators/ComparatorChain;->setComparator(ILjava/util/Comparator;Z)V

    .line 176
    return-void
.end method

.method public setComparator(ILjava/util/Comparator;Z)V
    .locals 1
    .parameter "index"
    .parameter "comparator"
    .parameter "reverse"

    .prologue
    .line 187
    invoke-direct {p0}, Lorg/apache/commons/collections/comparators/ComparatorChain;->checkLocked()V

    .line 189
    iget-object v0, p0, Lorg/apache/commons/collections/comparators/ComparatorChain;->comparatorChain:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 190
    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    .line 191
    iget-object v0, p0, Lorg/apache/commons/collections/comparators/ComparatorChain;->orderingBits:Ljava/util/BitSet;

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->set(I)V

    .line 195
    :goto_0
    return-void

    .line 193
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/comparators/ComparatorChain;->orderingBits:Ljava/util/BitSet;

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->clear(I)V

    goto :goto_0
.end method

.method public setForwardSort(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 205
    invoke-direct {p0}, Lorg/apache/commons/collections/comparators/ComparatorChain;->checkLocked()V

    .line 206
    iget-object v0, p0, Lorg/apache/commons/collections/comparators/ComparatorChain;->orderingBits:Ljava/util/BitSet;

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->clear(I)V

    .line 207
    return-void
.end method

.method public setReverseSort(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 216
    invoke-direct {p0}, Lorg/apache/commons/collections/comparators/ComparatorChain;->checkLocked()V

    .line 217
    iget-object v0, p0, Lorg/apache/commons/collections/comparators/ComparatorChain;->orderingBits:Ljava/util/BitSet;

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->set(I)V

    .line 218
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lorg/apache/commons/collections/comparators/ComparatorChain;->comparatorChain:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
