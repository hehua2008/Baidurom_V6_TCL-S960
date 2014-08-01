.class Lorg/apache/commons/collections/map/ListOrderedMap$ListOrderedMapIterator;
.super Ljava/lang/Object;
.source "ListOrderedMap.java"

# interfaces
.implements Lorg/apache/commons/collections/OrderedMapIterator;
.implements Lorg/apache/commons/collections/ResettableIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections/map/ListOrderedMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ListOrderedMapIterator"
.end annotation


# instance fields
.field private iterator:Ljava/util/ListIterator;

.field private last:Ljava/lang/Object;

.field private final parent:Lorg/apache/commons/collections/map/ListOrderedMap;

.field private readable:Z


# direct methods
.method constructor <init>(Lorg/apache/commons/collections/map/ListOrderedMap;)V
    .locals 1
    .parameter "parent"

    .prologue
    .line 515
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 511
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/collections/map/ListOrderedMap$ListOrderedMapIterator;->last:Ljava/lang/Object;

    .line 512
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/collections/map/ListOrderedMap$ListOrderedMapIterator;->readable:Z

    .line 516
    iput-object p1, p0, Lorg/apache/commons/collections/map/ListOrderedMap$ListOrderedMapIterator;->parent:Lorg/apache/commons/collections/map/ListOrderedMap;

    .line 517
    iget-object v0, p1, Lorg/apache/commons/collections/map/ListOrderedMap;->insertOrder:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections/map/ListOrderedMap$ListOrderedMapIterator;->iterator:Ljava/util/ListIterator;

    .line 518
    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 550
    iget-boolean v0, p0, Lorg/apache/commons/collections/map/ListOrderedMap$ListOrderedMapIterator;->readable:Z

    if-nez v0, :cond_0

    .line 551
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getKey() can only be called after next() and before remove()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 553
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/map/ListOrderedMap$ListOrderedMapIterator;->last:Ljava/lang/Object;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 557
    iget-boolean v0, p0, Lorg/apache/commons/collections/map/ListOrderedMap$ListOrderedMapIterator;->readable:Z

    if-nez v0, :cond_0

    .line 558
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getValue() can only be called after next() and before remove()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 560
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/map/ListOrderedMap$ListOrderedMapIterator;->parent:Lorg/apache/commons/collections/map/ListOrderedMap;

    iget-object v1, p0, Lorg/apache/commons/collections/map/ListOrderedMap$ListOrderedMapIterator;->last:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/apache/commons/collections/map/AbstractMapDecorator;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public hasNext()Z
    .locals 1

    .prologue
    .line 521
    iget-object v0, p0, Lorg/apache/commons/collections/map/ListOrderedMap$ListOrderedMapIterator;->iterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public hasPrevious()Z
    .locals 1

    .prologue
    .line 531
    iget-object v0, p0, Lorg/apache/commons/collections/map/ListOrderedMap$ListOrderedMapIterator;->iterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 525
    iget-object v0, p0, Lorg/apache/commons/collections/map/ListOrderedMap$ListOrderedMapIterator;->iterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections/map/ListOrderedMap$ListOrderedMapIterator;->last:Ljava/lang/Object;

    .line 526
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/collections/map/ListOrderedMap$ListOrderedMapIterator;->readable:Z

    .line 527
    iget-object v0, p0, Lorg/apache/commons/collections/map/ListOrderedMap$ListOrderedMapIterator;->last:Ljava/lang/Object;

    return-object v0
.end method

.method public previous()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 535
    iget-object v0, p0, Lorg/apache/commons/collections/map/ListOrderedMap$ListOrderedMapIterator;->iterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections/map/ListOrderedMap$ListOrderedMapIterator;->last:Ljava/lang/Object;

    .line 536
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/collections/map/ListOrderedMap$ListOrderedMapIterator;->readable:Z

    .line 537
    iget-object v0, p0, Lorg/apache/commons/collections/map/ListOrderedMap$ListOrderedMapIterator;->last:Ljava/lang/Object;

    return-object v0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 541
    iget-boolean v0, p0, Lorg/apache/commons/collections/map/ListOrderedMap$ListOrderedMapIterator;->readable:Z

    if-nez v0, :cond_0

    .line 542
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "remove() can only be called once after next()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 544
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/map/ListOrderedMap$ListOrderedMapIterator;->iterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->remove()V

    .line 545
    iget-object v0, p0, Lorg/apache/commons/collections/map/ListOrderedMap$ListOrderedMapIterator;->parent:Lorg/apache/commons/collections/map/ListOrderedMap;

    iget-object v0, v0, Lorg/apache/commons/collections/map/AbstractMapDecorator;->map:Ljava/util/Map;

    iget-object v1, p0, Lorg/apache/commons/collections/map/ListOrderedMap$ListOrderedMapIterator;->last:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 546
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/collections/map/ListOrderedMap$ListOrderedMapIterator;->readable:Z

    .line 547
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 571
    iget-object v0, p0, Lorg/apache/commons/collections/map/ListOrderedMap$ListOrderedMapIterator;->parent:Lorg/apache/commons/collections/map/ListOrderedMap;

    iget-object v0, v0, Lorg/apache/commons/collections/map/ListOrderedMap;->insertOrder:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections/map/ListOrderedMap$ListOrderedMapIterator;->iterator:Ljava/util/ListIterator;

    .line 572
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/collections/map/ListOrderedMap$ListOrderedMapIterator;->last:Ljava/lang/Object;

    .line 573
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/collections/map/ListOrderedMap$ListOrderedMapIterator;->readable:Z

    .line 574
    return-void
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "value"

    .prologue
    .line 564
    iget-boolean v0, p0, Lorg/apache/commons/collections/map/ListOrderedMap$ListOrderedMapIterator;->readable:Z

    if-nez v0, :cond_0

    .line 565
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setValue() can only be called after next() and before remove()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 567
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/map/ListOrderedMap$ListOrderedMapIterator;->parent:Lorg/apache/commons/collections/map/ListOrderedMap;

    iget-object v0, v0, Lorg/apache/commons/collections/map/AbstractMapDecorator;->map:Ljava/util/Map;

    iget-object v1, p0, Lorg/apache/commons/collections/map/ListOrderedMap$ListOrderedMapIterator;->last:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 577
    iget-boolean v0, p0, Lorg/apache/commons/collections/map/ListOrderedMap$ListOrderedMapIterator;->readable:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 578
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Iterator["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/commons/collections/map/ListOrderedMap$ListOrderedMapIterator;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/commons/collections/map/ListOrderedMap$ListOrderedMapIterator;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 580
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "Iterator[]"

    goto :goto_0
.end method
