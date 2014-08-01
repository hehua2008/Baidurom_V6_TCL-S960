.class public abstract Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkIterator;
.super Ljava/lang/Object;
.source "AbstractLinkedMap.java"

# interfaces
.implements Lorg/apache/commons/collections/OrderedIterator;
.implements Lorg/apache/commons/collections/ResettableIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections/map/AbstractLinkedMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40c
    name = "LinkIterator"
.end annotation


# instance fields
.field protected expectedModCount:I

.field protected last:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

.field protected next:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

.field protected final parent:Lorg/apache/commons/collections/map/AbstractLinkedMap;


# direct methods
.method protected constructor <init>(Lorg/apache/commons/collections/map/AbstractLinkedMap;)V
    .locals 1
    .parameter "parent"

    .prologue
    .line 539
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 540
    iput-object p1, p0, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkIterator;->parent:Lorg/apache/commons/collections/map/AbstractLinkedMap;

    .line 541
    iget-object v0, p1, Lorg/apache/commons/collections/map/AbstractLinkedMap;->header:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    iget-object v0, v0, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;->after:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    iput-object v0, p0, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkIterator;->next:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    .line 542
    iget v0, p1, Lorg/apache/commons/collections/map/AbstractHashedMap;->modCount:I

    iput v0, p0, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkIterator;->expectedModCount:I

    .line 543
    return-void
.end method


# virtual methods
.method protected currentEntry()Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;
    .locals 1

    .prologue
    .line 579
    iget-object v0, p0, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkIterator;->last:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    return-object v0
.end method

.method public hasNext()Z
    .locals 2

    .prologue
    .line 546
    iget-object v0, p0, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkIterator;->next:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    iget-object v1, p0, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkIterator;->parent:Lorg/apache/commons/collections/map/AbstractLinkedMap;

    iget-object v1, v1, Lorg/apache/commons/collections/map/AbstractLinkedMap;->header:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPrevious()Z
    .locals 2

    .prologue
    .line 550
    iget-object v0, p0, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkIterator;->next:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    iget-object v0, v0, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;->before:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    iget-object v1, p0, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkIterator;->parent:Lorg/apache/commons/collections/map/AbstractLinkedMap;

    iget-object v1, v1, Lorg/apache/commons/collections/map/AbstractLinkedMap;->header:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract next()Ljava/lang/Object;
.end method

.method protected nextEntry()Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;
    .locals 2

    .prologue
    .line 554
    iget-object v0, p0, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkIterator;->parent:Lorg/apache/commons/collections/map/AbstractLinkedMap;

    iget v0, v0, Lorg/apache/commons/collections/map/AbstractHashedMap;->modCount:I

    iget v1, p0, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkIterator;->expectedModCount:I

    if-eq v0, v1, :cond_0

    .line 555
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 557
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkIterator;->next:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    iget-object v1, p0, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkIterator;->parent:Lorg/apache/commons/collections/map/AbstractLinkedMap;

    iget-object v1, v1, Lorg/apache/commons/collections/map/AbstractLinkedMap;->header:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    if-ne v0, v1, :cond_1

    .line 558
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "No next() entry in the iteration"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 560
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkIterator;->next:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    iput-object v0, p0, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkIterator;->last:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    .line 561
    iget-object v0, p0, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkIterator;->next:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    iget-object v0, v0, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;->after:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    iput-object v0, p0, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkIterator;->next:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    .line 562
    iget-object v0, p0, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkIterator;->last:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    return-object v0
.end method

.method public abstract previous()Ljava/lang/Object;
.end method

.method protected previousEntry()Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;
    .locals 3

    .prologue
    .line 566
    iget-object v1, p0, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkIterator;->parent:Lorg/apache/commons/collections/map/AbstractLinkedMap;

    iget v1, v1, Lorg/apache/commons/collections/map/AbstractHashedMap;->modCount:I

    iget v2, p0, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkIterator;->expectedModCount:I

    if-eq v1, v2, :cond_0

    .line 567
    new-instance v1, Ljava/util/ConcurrentModificationException;

    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v1

    .line 569
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkIterator;->next:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    iget-object v0, v1, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;->before:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    .line 570
    .local v0, previous:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;
    iget-object v1, p0, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkIterator;->parent:Lorg/apache/commons/collections/map/AbstractLinkedMap;

    iget-object v1, v1, Lorg/apache/commons/collections/map/AbstractLinkedMap;->header:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    if-ne v0, v1, :cond_1

    .line 571
    new-instance v1, Ljava/util/NoSuchElementException;

    const-string v2, "No previous() entry in the iteration"

    invoke-direct {v1, v2}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 573
    :cond_1
    iput-object v0, p0, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkIterator;->next:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    .line 574
    iput-object v0, p0, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkIterator;->last:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    .line 575
    iget-object v1, p0, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkIterator;->last:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    return-object v1
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 583
    iget-object v0, p0, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkIterator;->last:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    if-nez v0, :cond_0

    .line 584
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "remove() can only be called once after next()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 586
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkIterator;->parent:Lorg/apache/commons/collections/map/AbstractLinkedMap;

    iget v0, v0, Lorg/apache/commons/collections/map/AbstractHashedMap;->modCount:I

    iget v1, p0, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkIterator;->expectedModCount:I

    if-eq v0, v1, :cond_1

    .line 587
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 589
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkIterator;->parent:Lorg/apache/commons/collections/map/AbstractLinkedMap;

    iget-object v1, p0, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkIterator;->last:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    invoke-virtual {v1}, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/collections/map/AbstractHashedMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 590
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkIterator;->last:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    .line 591
    iget-object v0, p0, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkIterator;->parent:Lorg/apache/commons/collections/map/AbstractLinkedMap;

    iget v0, v0, Lorg/apache/commons/collections/map/AbstractHashedMap;->modCount:I

    iput v0, p0, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkIterator;->expectedModCount:I

    .line 592
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 595
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkIterator;->last:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    .line 596
    iget-object v0, p0, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkIterator;->parent:Lorg/apache/commons/collections/map/AbstractLinkedMap;

    iget-object v0, v0, Lorg/apache/commons/collections/map/AbstractLinkedMap;->header:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    iget-object v0, v0, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;->after:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    iput-object v0, p0, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkIterator;->next:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    .line 597
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 600
    iget-object v0, p0, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkIterator;->last:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    if-eqz v0, :cond_0

    .line 601
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Iterator["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkIterator;->last:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    invoke-virtual {v1}, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkIterator;->last:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    invoke-virtual {v1}, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 603
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "Iterator[]"

    goto :goto_0
.end method
