.class public Lorg/apache/commons/collections/map/TypedSortedMap;
.super Ljava/lang/Object;
.source "TypedSortedMap.java"


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    return-void
.end method

.method public static decorate(Ljava/util/SortedMap;Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/SortedMap;
    .locals 3
    .parameter "map"
    .parameter "keyType"
    .parameter "valueType"

    .prologue
    .line 53
    new-instance v0, Lorg/apache/commons/collections/map/PredicatedSortedMap;

    invoke-static {p1}, Lorg/apache/commons/collections/functors/InstanceofPredicate;->getInstance(Ljava/lang/Class;)Lorg/apache/commons/collections/Predicate;

    move-result-object v1

    invoke-static {p2}, Lorg/apache/commons/collections/functors/InstanceofPredicate;->getInstance(Ljava/lang/Class;)Lorg/apache/commons/collections/Predicate;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lorg/apache/commons/collections/map/PredicatedSortedMap;-><init>(Ljava/util/SortedMap;Lorg/apache/commons/collections/Predicate;Lorg/apache/commons/collections/Predicate;)V

    return-object v0
.end method
