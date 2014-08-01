.class Lorg/apache/commons/collections/map/SingletonMap$SingletonMapIterator;
.super Ljava/lang/Object;
.source "SingletonMap.java"

# interfaces
.implements Lorg/apache/commons/collections/OrderedMapIterator;
.implements Lorg/apache/commons/collections/ResettableIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections/map/SingletonMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SingletonMapIterator"
.end annotation


# instance fields
.field private canGetSet:Z

.field private hasNext:Z

.field private final parent:Lorg/apache/commons/collections/map/SingletonMap;


# direct methods
.method constructor <init>(Lorg/apache/commons/collections/map/SingletonMap;)V
    .locals 1
    .parameter "parent"

    .prologue
    .line 434
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 430
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/collections/map/SingletonMap$SingletonMapIterator;->hasNext:Z

    .line 431
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/collections/map/SingletonMap$SingletonMapIterator;->canGetSet:Z

    .line 435
    iput-object p1, p0, Lorg/apache/commons/collections/map/SingletonMap$SingletonMapIterator;->parent:Lorg/apache/commons/collections/map/SingletonMap;

    .line 436
    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 468
    iget-boolean v0, p0, Lorg/apache/commons/collections/map/SingletonMap$SingletonMapIterator;->canGetSet:Z

    if-nez v0, :cond_0

    .line 469
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getKey() can only be called after next() and before remove()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 471
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/map/SingletonMap$SingletonMapIterator;->parent:Lorg/apache/commons/collections/map/SingletonMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections/map/SingletonMap;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 475
    iget-boolean v0, p0, Lorg/apache/commons/collections/map/SingletonMap$SingletonMapIterator;->canGetSet:Z

    if-nez v0, :cond_0

    .line 476
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getValue() can only be called after next() and before remove()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 478
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/map/SingletonMap$SingletonMapIterator;->parent:Lorg/apache/commons/collections/map/SingletonMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections/map/SingletonMap;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public hasNext()Z
    .locals 1

    .prologue
    .line 439
    iget-boolean v0, p0, Lorg/apache/commons/collections/map/SingletonMap$SingletonMapIterator;->hasNext:Z

    return v0
.end method

.method public hasPrevious()Z
    .locals 1

    .prologue
    .line 452
    iget-boolean v0, p0, Lorg/apache/commons/collections/map/SingletonMap$SingletonMapIterator;->hasNext:Z

    if-nez v0, :cond_0

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
    .line 443
    iget-boolean v0, p0, Lorg/apache/commons/collections/map/SingletonMap$SingletonMapIterator;->hasNext:Z

    if-nez v0, :cond_0

    .line 444
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "No next() entry in the iteration"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 446
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/collections/map/SingletonMap$SingletonMapIterator;->hasNext:Z

    .line 447
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/collections/map/SingletonMap$SingletonMapIterator;->canGetSet:Z

    .line 448
    iget-object v0, p0, Lorg/apache/commons/collections/map/SingletonMap$SingletonMapIterator;->parent:Lorg/apache/commons/collections/map/SingletonMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections/map/SingletonMap;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public previous()Ljava/lang/Object;
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 456
    iget-boolean v0, p0, Lorg/apache/commons/collections/map/SingletonMap$SingletonMapIterator;->hasNext:Z

    if-ne v0, v1, :cond_0

    .line 457
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "No previous() entry in the iteration"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 459
    :cond_0
    iput-boolean v1, p0, Lorg/apache/commons/collections/map/SingletonMap$SingletonMapIterator;->hasNext:Z

    .line 460
    iget-object v0, p0, Lorg/apache/commons/collections/map/SingletonMap$SingletonMapIterator;->parent:Lorg/apache/commons/collections/map/SingletonMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections/map/SingletonMap;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 464
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 489
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/collections/map/SingletonMap$SingletonMapIterator;->hasNext:Z

    .line 490
    return-void
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "value"

    .prologue
    .line 482
    iget-boolean v0, p0, Lorg/apache/commons/collections/map/SingletonMap$SingletonMapIterator;->canGetSet:Z

    if-nez v0, :cond_0

    .line 483
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setValue() can only be called after next() and before remove()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 485
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/map/SingletonMap$SingletonMapIterator;->parent:Lorg/apache/commons/collections/map/SingletonMap;

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections/map/SingletonMap;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 493
    iget-boolean v0, p0, Lorg/apache/commons/collections/map/SingletonMap$SingletonMapIterator;->hasNext:Z

    if-eqz v0, :cond_0

    .line 494
    const-string v0, "Iterator[]"

    .line 496
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Iterator["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/commons/collections/map/SingletonMap$SingletonMapIterator;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/commons/collections/map/SingletonMap$SingletonMapIterator;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
