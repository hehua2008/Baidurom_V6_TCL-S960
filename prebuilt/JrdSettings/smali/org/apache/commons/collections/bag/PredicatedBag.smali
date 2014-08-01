.class public Lorg/apache/commons/collections/bag/PredicatedBag;
.super Lorg/apache/commons/collections/collection/PredicatedCollection;
.source "PredicatedBag.java"

# interfaces
.implements Lorg/apache/commons/collections/Bag;


# static fields
.field private static final serialVersionUID:J = -0x23bf329802ed4c6cL


# direct methods
.method protected constructor <init>(Lorg/apache/commons/collections/Bag;Lorg/apache/commons/collections/Predicate;)V
    .locals 0
    .parameter "bag"
    .parameter "predicate"

    .prologue
    .line 78
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections/collection/PredicatedCollection;-><init>(Ljava/util/Collection;Lorg/apache/commons/collections/Predicate;)V

    .line 79
    return-void
.end method

.method public static decorate(Lorg/apache/commons/collections/Bag;Lorg/apache/commons/collections/Predicate;)Lorg/apache/commons/collections/Bag;
    .locals 1
    .parameter "bag"
    .parameter "predicate"

    .prologue
    .line 62
    new-instance v0, Lorg/apache/commons/collections/bag/PredicatedBag;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections/bag/PredicatedBag;-><init>(Lorg/apache/commons/collections/Bag;Lorg/apache/commons/collections/Predicate;)V

    return-object v0
.end method


# virtual methods
.method public add(Ljava/lang/Object;I)Z
    .locals 1
    .parameter "object"
    .parameter "count"

    .prologue
    .line 92
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/collection/PredicatedCollection;->validate(Ljava/lang/Object;)V

    .line 93
    invoke-virtual {p0}, Lorg/apache/commons/collections/bag/PredicatedBag;->getBag()Lorg/apache/commons/collections/Bag;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/collections/Bag;->add(Ljava/lang/Object;I)Z

    move-result v0

    return v0
.end method

.method protected getBag()Lorg/apache/commons/collections/Bag;
    .locals 1

    .prologue
    .line 87
    invoke-virtual {p0}, Lorg/apache/commons/collections/collection/AbstractCollectionDecorator;->getCollection()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/collections/Bag;

    return-object v0
.end method

.method public getCount(Ljava/lang/Object;)I
    .locals 1
    .parameter "object"

    .prologue
    .line 105
    invoke-virtual {p0}, Lorg/apache/commons/collections/bag/PredicatedBag;->getBag()Lorg/apache/commons/collections/Bag;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/commons/collections/Bag;->getCount(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public remove(Ljava/lang/Object;I)Z
    .locals 1
    .parameter "object"
    .parameter "count"

    .prologue
    .line 97
    invoke-virtual {p0}, Lorg/apache/commons/collections/bag/PredicatedBag;->getBag()Lorg/apache/commons/collections/Bag;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/collections/Bag;->remove(Ljava/lang/Object;I)Z

    move-result v0

    return v0
.end method

.method public uniqueSet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 101
    invoke-virtual {p0}, Lorg/apache/commons/collections/bag/PredicatedBag;->getBag()Lorg/apache/commons/collections/Bag;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/collections/Bag;->uniqueSet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
