.class public Lorg/apache/commons/collections/map/TypedMap;
.super Ljava/lang/Object;
.source "TypedMap.java"


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    return-void
.end method

.method public static decorate(Ljava/util/Map;Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/Map;
    .locals 3
    .parameter "map"
    .parameter "keyType"
    .parameter "valueType"

    .prologue
    .line 53
    new-instance v0, Lorg/apache/commons/collections/map/PredicatedMap;

    invoke-static {p1}, Lorg/apache/commons/collections/functors/InstanceofPredicate;->getInstance(Ljava/lang/Class;)Lorg/apache/commons/collections/Predicate;

    move-result-object v1

    invoke-static {p2}, Lorg/apache/commons/collections/functors/InstanceofPredicate;->getInstance(Ljava/lang/Class;)Lorg/apache/commons/collections/Predicate;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lorg/apache/commons/collections/map/PredicatedMap;-><init>(Ljava/util/Map;Lorg/apache/commons/collections/Predicate;Lorg/apache/commons/collections/Predicate;)V

    return-object v0
.end method
