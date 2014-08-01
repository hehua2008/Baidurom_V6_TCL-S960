.class Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceValues;
.super Lorg/apache/commons/collections/map/AbstractHashedMap$Values;
.source "AbstractReferenceMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections/map/AbstractReferenceMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ReferenceValues"
.end annotation


# direct methods
.method protected constructor <init>(Lorg/apache/commons/collections/map/AbstractHashedMap;)V
    .locals 0
    .parameter "parent"

    .prologue
    .line 533
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/map/AbstractHashedMap$Values;-><init>(Lorg/apache/commons/collections/map/AbstractHashedMap;)V

    .line 534
    return-void
.end method


# virtual methods
.method public toArray()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 537
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceValues;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 3
    .parameter "arr"

    .prologue
    .line 542
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/apache/commons/collections/map/AbstractHashedMap$Values;->parent:Lorg/apache/commons/collections/map/AbstractHashedMap;

    invoke-virtual {v2}, Lorg/apache/commons/collections/map/AbstractHashedMap;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 543
    .local v1, list:Ljava/util/List;
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/AbstractHashedMap$Values;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, it:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 546
    invoke-interface {v1, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 544
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
