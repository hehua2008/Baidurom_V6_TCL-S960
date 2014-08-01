.class public Lorg/apache/commons/collections/iterators/LoopingIterator;
.super Ljava/lang/Object;
.source "LoopingIterator.java"

# interfaces
.implements Lorg/apache/commons/collections/ResettableIterator;


# instance fields
.field private collection:Ljava/util/Collection;

.field private iterator:Ljava/util/Iterator;


# direct methods
.method public constructor <init>(Ljava/util/Collection;)V
    .locals 2
    .parameter "coll"

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    if-nez p1, :cond_0

    .line 58
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "The collection must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_0
    iput-object p1, p0, Lorg/apache/commons/collections/iterators/LoopingIterator;->collection:Ljava/util/Collection;

    .line 61
    invoke-virtual {p0}, Lorg/apache/commons/collections/iterators/LoopingIterator;->reset()V

    .line 62
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/LoopingIterator;->collection:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/LoopingIterator;->collection:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 86
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "There are no elements for this iterator to loop on"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/LoopingIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 89
    invoke-virtual {p0}, Lorg/apache/commons/collections/iterators/LoopingIterator;->reset()V

    .line 91
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/LoopingIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/LoopingIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 108
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/LoopingIterator;->collection:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections/iterators/LoopingIterator;->iterator:Ljava/util/Iterator;

    .line 115
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/LoopingIterator;->collection:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    return v0
.end method
