.class public final Lorg/apache/commons/collections/iterators/UnmodifiableOrderedMapIterator;
.super Ljava/lang/Object;
.source "UnmodifiableOrderedMapIterator.java"

# interfaces
.implements Lorg/apache/commons/collections/OrderedMapIterator;
.implements Lorg/apache/commons/collections/Unmodifiable;


# instance fields
.field private iterator:Lorg/apache/commons/collections/OrderedMapIterator;


# direct methods
.method private constructor <init>(Lorg/apache/commons/collections/OrderedMapIterator;)V
    .locals 0
    .parameter "iterator"

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lorg/apache/commons/collections/iterators/UnmodifiableOrderedMapIterator;->iterator:Lorg/apache/commons/collections/OrderedMapIterator;

    .line 60
    return-void
.end method

.method public static decorate(Lorg/apache/commons/collections/OrderedMapIterator;)Lorg/apache/commons/collections/OrderedMapIterator;
    .locals 2
    .parameter "iterator"

    .prologue
    .line 42
    if-nez p0, :cond_0

    .line 43
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "OrderedMapIterator must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :cond_0
    instance-of v0, p0, Lorg/apache/commons/collections/Unmodifiable;

    if-eqz v0, :cond_1

    .line 48
    .end local p0
    :goto_0
    return-object p0

    .restart local p0
    :cond_1
    new-instance v0, Lorg/apache/commons/collections/iterators/UnmodifiableOrderedMapIterator;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/iterators/UnmodifiableOrderedMapIterator;-><init>(Lorg/apache/commons/collections/OrderedMapIterator;)V

    move-object p0, v0

    goto :goto_0
.end method


# virtual methods
.method public getKey()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/UnmodifiableOrderedMapIterator;->iterator:Lorg/apache/commons/collections/OrderedMapIterator;

    invoke-interface {v0}, Lorg/apache/commons/collections/MapIterator;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/UnmodifiableOrderedMapIterator;->iterator:Lorg/apache/commons/collections/OrderedMapIterator;

    invoke-interface {v0}, Lorg/apache/commons/collections/MapIterator;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public hasNext()Z
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/UnmodifiableOrderedMapIterator;->iterator:Lorg/apache/commons/collections/OrderedMapIterator;

    invoke-interface {v0}, Lorg/apache/commons/collections/MapIterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public hasPrevious()Z
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/UnmodifiableOrderedMapIterator;->iterator:Lorg/apache/commons/collections/OrderedMapIterator;

    invoke-interface {v0}, Lorg/apache/commons/collections/OrderedMapIterator;->hasPrevious()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/UnmodifiableOrderedMapIterator;->iterator:Lorg/apache/commons/collections/OrderedMapIterator;

    invoke-interface {v0}, Lorg/apache/commons/collections/MapIterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public previous()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/UnmodifiableOrderedMapIterator;->iterator:Lorg/apache/commons/collections/OrderedMapIterator;

    invoke-interface {v0}, Lorg/apache/commons/collections/OrderedMapIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 92
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "remove() is not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "value"

    .prologue
    .line 88
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "setValue() is not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
