.class public Lorg/apache/commons/collections/iterators/AbstractMapIteratorDecorator;
.super Ljava/lang/Object;
.source "AbstractMapIteratorDecorator.java"

# interfaces
.implements Lorg/apache/commons/collections/MapIterator;


# instance fields
.field protected final iterator:Lorg/apache/commons/collections/MapIterator;


# direct methods
.method public constructor <init>(Lorg/apache/commons/collections/MapIterator;)V
    .locals 2
    .parameter "iterator"

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    if-nez p1, :cond_0

    .line 45
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "MapIterator must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :cond_0
    iput-object p1, p0, Lorg/apache/commons/collections/iterators/AbstractMapIteratorDecorator;->iterator:Lorg/apache/commons/collections/MapIterator;

    .line 48
    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/AbstractMapIteratorDecorator;->iterator:Lorg/apache/commons/collections/MapIterator;

    invoke-interface {v0}, Lorg/apache/commons/collections/MapIterator;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected getMapIterator()Lorg/apache/commons/collections/MapIterator;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/AbstractMapIteratorDecorator;->iterator:Lorg/apache/commons/collections/MapIterator;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/AbstractMapIteratorDecorator;->iterator:Lorg/apache/commons/collections/MapIterator;

    invoke-interface {v0}, Lorg/apache/commons/collections/MapIterator;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public hasNext()Z
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/AbstractMapIteratorDecorator;->iterator:Lorg/apache/commons/collections/MapIterator;

    invoke-interface {v0}, Lorg/apache/commons/collections/MapIterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/AbstractMapIteratorDecorator;->iterator:Lorg/apache/commons/collections/MapIterator;

    invoke-interface {v0}, Lorg/apache/commons/collections/MapIterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/AbstractMapIteratorDecorator;->iterator:Lorg/apache/commons/collections/MapIterator;

    invoke-interface {v0}, Lorg/apache/commons/collections/MapIterator;->remove()V

    .line 70
    return-void
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "obj"

    .prologue
    .line 81
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/AbstractMapIteratorDecorator;->iterator:Lorg/apache/commons/collections/MapIterator;

    invoke-interface {v0, p1}, Lorg/apache/commons/collections/MapIterator;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
