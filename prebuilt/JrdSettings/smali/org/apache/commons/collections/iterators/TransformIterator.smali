.class public Lorg/apache/commons/collections/iterators/TransformIterator;
.super Ljava/lang/Object;
.source "TransformIterator.java"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field private iterator:Ljava/util/Iterator;

.field private transformer:Lorg/apache/commons/collections/Transformer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/util/Iterator;)V
    .locals 0
    .parameter "iterator"

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lorg/apache/commons/collections/iterators/TransformIterator;->iterator:Ljava/util/Iterator;

    .line 57
    return-void
.end method

.method public constructor <init>(Ljava/util/Iterator;Lorg/apache/commons/collections/Transformer;)V
    .locals 0
    .parameter "iterator"
    .parameter "transformer"

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lorg/apache/commons/collections/iterators/TransformIterator;->iterator:Ljava/util/Iterator;

    .line 70
    iput-object p2, p0, Lorg/apache/commons/collections/iterators/TransformIterator;->transformer:Lorg/apache/commons/collections/Transformer;

    .line 71
    return-void
.end method


# virtual methods
.method public getIterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/TransformIterator;->iterator:Ljava/util/Iterator;

    return-object v0
.end method

.method public getTransformer()Lorg/apache/commons/collections/Transformer;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/TransformIterator;->transformer:Lorg/apache/commons/collections/Transformer;

    return-object v0
.end method

.method public hasNext()Z
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/TransformIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/TransformIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/iterators/TransformIterator;->transform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/TransformIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 92
    return-void
.end method

.method public setIterator(Ljava/util/Iterator;)V
    .locals 0
    .parameter "iterator"

    .prologue
    .line 111
    iput-object p1, p0, Lorg/apache/commons/collections/iterators/TransformIterator;->iterator:Ljava/util/Iterator;

    .line 112
    return-void
.end method

.method public setTransformer(Lorg/apache/commons/collections/Transformer;)V
    .locals 0
    .parameter "transformer"

    .prologue
    .line 131
    iput-object p1, p0, Lorg/apache/commons/collections/iterators/TransformIterator;->transformer:Lorg/apache/commons/collections/Transformer;

    .line 132
    return-void
.end method

.method protected transform(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "source"

    .prologue
    .line 143
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/TransformIterator;->transformer:Lorg/apache/commons/collections/Transformer;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/TransformIterator;->transformer:Lorg/apache/commons/collections/Transformer;

    invoke-interface {v0, p1}, Lorg/apache/commons/collections/Transformer;->transform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 146
    .end local p1
    :cond_0
    return-object p1
.end method
