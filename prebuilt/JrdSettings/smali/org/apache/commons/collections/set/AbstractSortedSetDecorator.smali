.class public abstract Lorg/apache/commons/collections/set/AbstractSortedSetDecorator;
.super Lorg/apache/commons/collections/set/AbstractSetDecorator;
.source "AbstractSortedSetDecorator.java"

# interfaces
.implements Ljava/util/SortedSet;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lorg/apache/commons/collections/set/AbstractSetDecorator;-><init>()V

    .line 40
    return-void
.end method

.method protected constructor <init>(Ljava/util/Set;)V
    .locals 0
    .parameter "set"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/set/AbstractSetDecorator;-><init>(Ljava/util/Set;)V

    .line 50
    return-void
.end method


# virtual methods
.method public comparator()Ljava/util/Comparator;
    .locals 1

    .prologue
    .line 83
    invoke-virtual {p0}, Lorg/apache/commons/collections/set/AbstractSortedSetDecorator;->getSortedSet()Ljava/util/SortedSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedSet;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public first()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 75
    invoke-virtual {p0}, Lorg/apache/commons/collections/set/AbstractSortedSetDecorator;->getSortedSet()Ljava/util/SortedSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedSet;->first()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected getSortedSet()Ljava/util/SortedSet;
    .locals 1

    .prologue
    .line 58
    invoke-virtual {p0}, Lorg/apache/commons/collections/collection/AbstractCollectionDecorator;->getCollection()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/SortedSet;

    return-object v0
.end method

.method public headSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 1
    .parameter "toElement"

    .prologue
    .line 67
    invoke-virtual {p0}, Lorg/apache/commons/collections/set/AbstractSortedSetDecorator;->getSortedSet()Ljava/util/SortedSet;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/SortedSet;->headSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public last()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 79
    invoke-virtual {p0}, Lorg/apache/commons/collections/set/AbstractSortedSetDecorator;->getSortedSet()Ljava/util/SortedSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedSet;->last()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 1
    .parameter "fromElement"
    .parameter "toElement"

    .prologue
    .line 63
    invoke-virtual {p0}, Lorg/apache/commons/collections/set/AbstractSortedSetDecorator;->getSortedSet()Ljava/util/SortedSet;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/SortedSet;->subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 1
    .parameter "fromElement"

    .prologue
    .line 71
    invoke-virtual {p0}, Lorg/apache/commons/collections/set/AbstractSortedSetDecorator;->getSortedSet()Ljava/util/SortedSet;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/SortedSet;->tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method
