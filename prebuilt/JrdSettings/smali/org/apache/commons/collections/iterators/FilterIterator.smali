.class public Lorg/apache/commons/collections/iterators/FilterIterator;
.super Ljava/lang/Object;
.source "FilterIterator.java"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field private iterator:Ljava/util/Iterator;

.field private nextObject:Ljava/lang/Object;

.field private nextObjectSet:Z

.field private predicate:Lorg/apache/commons/collections/Predicate;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/collections/iterators/FilterIterator;->nextObjectSet:Z

    .line 53
    return-void
.end method

.method public constructor <init>(Ljava/util/Iterator;)V
    .locals 1
    .parameter "iterator"

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/collections/iterators/FilterIterator;->nextObjectSet:Z

    .line 63
    iput-object p1, p0, Lorg/apache/commons/collections/iterators/FilterIterator;->iterator:Ljava/util/Iterator;

    .line 64
    return-void
.end method

.method public constructor <init>(Ljava/util/Iterator;Lorg/apache/commons/collections/Predicate;)V
    .locals 1
    .parameter "iterator"
    .parameter "predicate"

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/collections/iterators/FilterIterator;->nextObjectSet:Z

    .line 75
    iput-object p1, p0, Lorg/apache/commons/collections/iterators/FilterIterator;->iterator:Ljava/util/Iterator;

    .line 76
    iput-object p2, p0, Lorg/apache/commons/collections/iterators/FilterIterator;->predicate:Lorg/apache/commons/collections/Predicate;

    .line 77
    return-void
.end method

.method private setNextObject()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 174
    :cond_0
    iget-object v2, p0, Lorg/apache/commons/collections/iterators/FilterIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 182
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 175
    :cond_1
    iget-object v2, p0, Lorg/apache/commons/collections/iterators/FilterIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 176
    .local v0, object:Ljava/lang/Object;
    iget-object v2, p0, Lorg/apache/commons/collections/iterators/FilterIterator;->predicate:Lorg/apache/commons/collections/Predicate;

    invoke-interface {v2, v0}, Lorg/apache/commons/collections/Predicate;->evaluate(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 177
    iput-object v0, p0, Lorg/apache/commons/collections/iterators/FilterIterator;->nextObject:Ljava/lang/Object;

    .line 178
    iput-boolean v1, p0, Lorg/apache/commons/collections/iterators/FilterIterator;->nextObjectSet:Z

    goto :goto_0
.end method


# virtual methods
.method public getIterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/FilterIterator;->iterator:Ljava/util/Iterator;

    return-object v0
.end method

.method public getPredicate()Lorg/apache/commons/collections/Predicate;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/FilterIterator;->predicate:Lorg/apache/commons/collections/Predicate;

    return-object v0
.end method

.method public hasNext()Z
    .locals 1

    .prologue
    .line 87
    iget-boolean v0, p0, Lorg/apache/commons/collections/iterators/FilterIterator;->nextObjectSet:Z

    if-eqz v0, :cond_0

    .line 88
    const/4 v0, 0x1

    .line 90
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lorg/apache/commons/collections/iterators/FilterIterator;->setNextObject()Z

    move-result v0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 102
    iget-boolean v0, p0, Lorg/apache/commons/collections/iterators/FilterIterator;->nextObjectSet:Z

    if-nez v0, :cond_0

    .line 103
    invoke-direct {p0}, Lorg/apache/commons/collections/iterators/FilterIterator;->setNextObject()Z

    move-result v0

    if-nez v0, :cond_0

    .line 104
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 107
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/collections/iterators/FilterIterator;->nextObjectSet:Z

    .line 108
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/FilterIterator;->nextObject:Ljava/lang/Object;

    return-object v0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 123
    iget-boolean v0, p0, Lorg/apache/commons/collections/iterators/FilterIterator;->nextObjectSet:Z

    if-eqz v0, :cond_0

    .line 124
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "remove() cannot be called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 126
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/FilterIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 127
    return-void
.end method

.method public setIterator(Ljava/util/Iterator;)V
    .locals 0
    .parameter "iterator"

    .prologue
    .line 146
    iput-object p1, p0, Lorg/apache/commons/collections/iterators/FilterIterator;->iterator:Ljava/util/Iterator;

    .line 147
    return-void
.end method

.method public setPredicate(Lorg/apache/commons/collections/Predicate;)V
    .locals 0
    .parameter "predicate"

    .prologue
    .line 165
    iput-object p1, p0, Lorg/apache/commons/collections/iterators/FilterIterator;->predicate:Lorg/apache/commons/collections/Predicate;

    .line 166
    return-void
.end method
