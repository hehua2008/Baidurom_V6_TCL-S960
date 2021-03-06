.class public Lorg/apache/commons/collections/iterators/AbstractIteratorDecorator;
.super Ljava/lang/Object;
.source "AbstractIteratorDecorator.java"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field protected final iterator:Ljava/util/Iterator;


# direct methods
.method public constructor <init>(Ljava/util/Iterator;)V
    .locals 2
    .parameter "iterator"

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    if-nez p1, :cond_0

    .line 46
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Iterator must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_0
    iput-object p1, p0, Lorg/apache/commons/collections/iterators/AbstractIteratorDecorator;->iterator:Ljava/util/Iterator;

    .line 49
    return-void
.end method


# virtual methods
.method protected getIterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/AbstractIteratorDecorator;->iterator:Ljava/util/Iterator;

    return-object v0
.end method

.method public hasNext()Z
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/AbstractIteratorDecorator;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/AbstractIteratorDecorator;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/AbstractIteratorDecorator;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 71
    return-void
.end method
