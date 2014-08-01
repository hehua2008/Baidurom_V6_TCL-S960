.class public Lorg/apache/commons/collections/BagUtils;
.super Ljava/lang/Object;
.source "BagUtils.java"


# static fields
.field public static final EMPTY_BAG:Lorg/apache/commons/collections/Bag;

.field public static final EMPTY_SORTED_BAG:Lorg/apache/commons/collections/Bag;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    new-instance v0, Lorg/apache/commons/collections/bag/HashBag;

    invoke-direct {v0}, Lorg/apache/commons/collections/bag/HashBag;-><init>()V

    invoke-static {v0}, Lorg/apache/commons/collections/bag/UnmodifiableBag;->decorate(Lorg/apache/commons/collections/Bag;)Lorg/apache/commons/collections/Bag;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/collections/BagUtils;->EMPTY_BAG:Lorg/apache/commons/collections/Bag;

    .line 53
    new-instance v0, Lorg/apache/commons/collections/bag/TreeBag;

    invoke-direct {v0}, Lorg/apache/commons/collections/bag/TreeBag;-><init>()V

    invoke-static {v0}, Lorg/apache/commons/collections/bag/UnmodifiableSortedBag;->decorate(Lorg/apache/commons/collections/SortedBag;)Lorg/apache/commons/collections/SortedBag;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/collections/BagUtils;->EMPTY_SORTED_BAG:Lorg/apache/commons/collections/Bag;

    .line 48
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    return-void
.end method

.method public static predicatedBag(Lorg/apache/commons/collections/Bag;Lorg/apache/commons/collections/Predicate;)Lorg/apache/commons/collections/Bag;
    .locals 1
    .parameter "bag"
    .parameter "predicate"

    .prologue
    .line 120
    invoke-static {p0, p1}, Lorg/apache/commons/collections/bag/PredicatedBag;->decorate(Lorg/apache/commons/collections/Bag;Lorg/apache/commons/collections/Predicate;)Lorg/apache/commons/collections/Bag;

    move-result-object v0

    return-object v0
.end method

.method public static predicatedSortedBag(Lorg/apache/commons/collections/SortedBag;Lorg/apache/commons/collections/Predicate;)Lorg/apache/commons/collections/SortedBag;
    .locals 1
    .parameter "bag"
    .parameter "predicate"

    .prologue
    .line 211
    invoke-static {p0, p1}, Lorg/apache/commons/collections/bag/PredicatedSortedBag;->decorate(Lorg/apache/commons/collections/SortedBag;Lorg/apache/commons/collections/Predicate;)Lorg/apache/commons/collections/SortedBag;

    move-result-object v0

    return-object v0
.end method

.method public static synchronizedBag(Lorg/apache/commons/collections/Bag;)Lorg/apache/commons/collections/Bag;
    .locals 1
    .parameter "bag"

    .prologue
    .line 90
    invoke-static {p0}, Lorg/apache/commons/collections/bag/SynchronizedBag;->decorate(Lorg/apache/commons/collections/Bag;)Lorg/apache/commons/collections/Bag;

    move-result-object v0

    return-object v0
.end method

.method public static synchronizedSortedBag(Lorg/apache/commons/collections/SortedBag;)Lorg/apache/commons/collections/SortedBag;
    .locals 1
    .parameter "bag"

    .prologue
    .line 181
    invoke-static {p0}, Lorg/apache/commons/collections/bag/SynchronizedSortedBag;->decorate(Lorg/apache/commons/collections/SortedBag;)Lorg/apache/commons/collections/SortedBag;

    move-result-object v0

    return-object v0
.end method

.method public static transformedBag(Lorg/apache/commons/collections/Bag;Lorg/apache/commons/collections/Transformer;)Lorg/apache/commons/collections/Bag;
    .locals 1
    .parameter "bag"
    .parameter "transformer"

    .prologue
    .line 149
    invoke-static {p0, p1}, Lorg/apache/commons/collections/bag/TransformedBag;->decorate(Lorg/apache/commons/collections/Bag;Lorg/apache/commons/collections/Transformer;)Lorg/apache/commons/collections/Bag;

    move-result-object v0

    return-object v0
.end method

.method public static transformedSortedBag(Lorg/apache/commons/collections/SortedBag;Lorg/apache/commons/collections/Transformer;)Lorg/apache/commons/collections/SortedBag;
    .locals 1
    .parameter "bag"
    .parameter "transformer"

    .prologue
    .line 240
    invoke-static {p0, p1}, Lorg/apache/commons/collections/bag/TransformedSortedBag;->decorate(Lorg/apache/commons/collections/SortedBag;Lorg/apache/commons/collections/Transformer;)Lorg/apache/commons/collections/SortedBag;

    move-result-object v0

    return-object v0
.end method

.method public static typedBag(Lorg/apache/commons/collections/Bag;Ljava/lang/Class;)Lorg/apache/commons/collections/Bag;
    .locals 1
    .parameter "bag"
    .parameter "type"

    .prologue
    .line 133
    invoke-static {p0, p1}, Lorg/apache/commons/collections/bag/TypedBag;->decorate(Lorg/apache/commons/collections/Bag;Ljava/lang/Class;)Lorg/apache/commons/collections/Bag;

    move-result-object v0

    return-object v0
.end method

.method public static typedSortedBag(Lorg/apache/commons/collections/SortedBag;Ljava/lang/Class;)Lorg/apache/commons/collections/SortedBag;
    .locals 1
    .parameter "bag"
    .parameter "type"

    .prologue
    .line 224
    invoke-static {p0, p1}, Lorg/apache/commons/collections/bag/TypedSortedBag;->decorate(Lorg/apache/commons/collections/SortedBag;Ljava/lang/Class;)Lorg/apache/commons/collections/SortedBag;

    move-result-object v0

    return-object v0
.end method

.method public static unmodifiableBag(Lorg/apache/commons/collections/Bag;)Lorg/apache/commons/collections/Bag;
    .locals 1
    .parameter "bag"

    .prologue
    .line 103
    invoke-static {p0}, Lorg/apache/commons/collections/bag/UnmodifiableBag;->decorate(Lorg/apache/commons/collections/Bag;)Lorg/apache/commons/collections/Bag;

    move-result-object v0

    return-object v0
.end method

.method public static unmodifiableSortedBag(Lorg/apache/commons/collections/SortedBag;)Lorg/apache/commons/collections/SortedBag;
    .locals 1
    .parameter "bag"

    .prologue
    .line 194
    invoke-static {p0}, Lorg/apache/commons/collections/bag/UnmodifiableSortedBag;->decorate(Lorg/apache/commons/collections/SortedBag;)Lorg/apache/commons/collections/SortedBag;

    move-result-object v0

    return-object v0
.end method
