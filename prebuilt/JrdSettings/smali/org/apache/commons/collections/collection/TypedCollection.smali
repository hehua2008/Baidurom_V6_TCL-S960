.class public Lorg/apache/commons/collections/collection/TypedCollection;
.super Ljava/lang/Object;
.source "TypedCollection.java"


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    return-void
.end method

.method public static decorate(Ljava/util/Collection;Ljava/lang/Class;)Ljava/util/Collection;
    .locals 2
    .parameter "coll"
    .parameter "type"

    .prologue
    .line 50
    new-instance v0, Lorg/apache/commons/collections/collection/PredicatedCollection;

    invoke-static {p1}, Lorg/apache/commons/collections/functors/InstanceofPredicate;->getInstance(Ljava/lang/Class;)Lorg/apache/commons/collections/Predicate;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/collections/collection/PredicatedCollection;-><init>(Ljava/util/Collection;Lorg/apache/commons/collections/Predicate;)V

    return-object v0
.end method
