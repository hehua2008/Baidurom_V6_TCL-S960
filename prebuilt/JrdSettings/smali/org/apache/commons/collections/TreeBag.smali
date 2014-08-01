.class public Lorg/apache/commons/collections/TreeBag;
.super Lorg/apache/commons/collections/DefaultMapBag;
.source "TreeBag.java"

# interfaces
.implements Lorg/apache/commons/collections/SortedBag;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    invoke-direct {p0, v0}, Lorg/apache/commons/collections/DefaultMapBag;-><init>(Ljava/util/Map;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 0
    .parameter "coll"

    .prologue
    .line 60
    invoke-direct {p0}, Lorg/apache/commons/collections/TreeBag;-><init>()V

    .line 61
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/DefaultMapBag;->addAll(Ljava/util/Collection;)Z

    .line 62
    return-void
.end method

.method public constructor <init>(Ljava/util/Comparator;)V
    .locals 1
    .parameter "comparator"

    .prologue
    .line 50
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0, p1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    invoke-direct {p0, v0}, Lorg/apache/commons/collections/DefaultMapBag;-><init>(Ljava/util/Map;)V

    .line 51
    return-void
.end method


# virtual methods
.method public comparator()Ljava/util/Comparator;
    .locals 1

    .prologue
    .line 73
    invoke-virtual {p0}, Lorg/apache/commons/collections/DefaultMapBag;->getMap()Ljava/util/Map;

    move-result-object v0

    check-cast v0, Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public first()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 65
    invoke-virtual {p0}, Lorg/apache/commons/collections/DefaultMapBag;->getMap()Ljava/util/Map;

    move-result-object v0

    check-cast v0, Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->firstKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public last()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 69
    invoke-virtual {p0}, Lorg/apache/commons/collections/DefaultMapBag;->getMap()Ljava/util/Map;

    move-result-object v0

    check-cast v0, Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->lastKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
