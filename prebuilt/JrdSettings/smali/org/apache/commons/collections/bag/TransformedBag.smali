.class public Lorg/apache/commons/collections/bag/TransformedBag;
.super Lorg/apache/commons/collections/collection/TransformedCollection;
.source "TransformedBag.java"

# interfaces
.implements Lorg/apache/commons/collections/Bag;


# static fields
.field private static final serialVersionUID:J = 0x4b3bde38a2a97889L


# direct methods
.method protected constructor <init>(Lorg/apache/commons/collections/Bag;Lorg/apache/commons/collections/Transformer;)V
    .locals 0
    .parameter "bag"
    .parameter "transformer"

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections/collection/TransformedCollection;-><init>(Ljava/util/Collection;Lorg/apache/commons/collections/Transformer;)V

    .line 74
    return-void
.end method

.method public static decorate(Lorg/apache/commons/collections/Bag;Lorg/apache/commons/collections/Transformer;)Lorg/apache/commons/collections/Bag;
    .locals 1
    .parameter "bag"
    .parameter "transformer"

    .prologue
    .line 58
    new-instance v0, Lorg/apache/commons/collections/bag/TransformedBag;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections/bag/TransformedBag;-><init>(Lorg/apache/commons/collections/Bag;Lorg/apache/commons/collections/Transformer;)V

    return-object v0
.end method


# virtual methods
.method public add(Ljava/lang/Object;I)Z
    .locals 1
    .parameter "object"
    .parameter "nCopies"

    .prologue
    .line 96
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/collection/TransformedCollection;->transform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 97
    invoke-virtual {p0}, Lorg/apache/commons/collections/bag/TransformedBag;->getBag()Lorg/apache/commons/collections/Bag;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/collections/Bag;->add(Ljava/lang/Object;I)Z

    move-result v0

    return v0
.end method

.method protected getBag()Lorg/apache/commons/collections/Bag;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lorg/apache/commons/collections/collection/AbstractCollectionDecorator;->collection:Ljava/util/Collection;

    check-cast v0, Lorg/apache/commons/collections/Bag;

    return-object v0
.end method

.method public getCount(Ljava/lang/Object;)I
    .locals 1
    .parameter "object"

    .prologue
    .line 87
    invoke-virtual {p0}, Lorg/apache/commons/collections/bag/TransformedBag;->getBag()Lorg/apache/commons/collections/Bag;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/commons/collections/Bag;->getCount(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public remove(Ljava/lang/Object;I)Z
    .locals 1
    .parameter "object"
    .parameter "nCopies"

    .prologue
    .line 91
    invoke-virtual {p0}, Lorg/apache/commons/collections/bag/TransformedBag;->getBag()Lorg/apache/commons/collections/Bag;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/collections/Bag;->remove(Ljava/lang/Object;I)Z

    move-result v0

    return v0
.end method

.method public uniqueSet()Ljava/util/Set;
    .locals 2

    .prologue
    .line 101
    invoke-virtual {p0}, Lorg/apache/commons/collections/bag/TransformedBag;->getBag()Lorg/apache/commons/collections/Bag;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/collections/Bag;->uniqueSet()Ljava/util/Set;

    move-result-object v0

    .line 102
    .local v0, set:Ljava/util/Set;
    iget-object v1, p0, Lorg/apache/commons/collections/collection/TransformedCollection;->transformer:Lorg/apache/commons/collections/Transformer;

    invoke-static {v0, v1}, Lorg/apache/commons/collections/set/TransformedSet;->decorate(Ljava/util/Set;Lorg/apache/commons/collections/Transformer;)Ljava/util/Set;

    move-result-object v1

    return-object v1
.end method
