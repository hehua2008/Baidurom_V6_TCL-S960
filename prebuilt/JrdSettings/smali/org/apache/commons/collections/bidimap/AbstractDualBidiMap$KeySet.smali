.class public Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$KeySet;
.super Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$View;
.source "AbstractDualBidiMap.java"

# interfaces
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "KeySet"
.end annotation


# direct methods
.method protected constructor <init>(Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;)V
    .locals 2
    .parameter "parent"

    .prologue
    .line 398
    iget-object v0, p1, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->maps:[Ljava/util/Map;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$View;-><init>(Ljava/util/Collection;Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;)V

    .line 399
    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 2
    .parameter "key"

    .prologue
    .line 406
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$View;->parent:Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;

    iget-object v0, v0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->maps:[Ljava/util/Map;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2

    .prologue
    .line 402
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$View;->parent:Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;

    invoke-super {p0}, Lorg/apache/commons/collections/collection/AbstractCollectionDecorator;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->createKeySetIterator(Ljava/util/Iterator;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 4
    .parameter "key"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 410
    iget-object v3, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$View;->parent:Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;

    iget-object v3, v3, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->maps:[Ljava/util/Map;

    aget-object v3, v3, v2

    invoke-interface {v3, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 411
    iget-object v3, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$View;->parent:Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;

    iget-object v3, v3, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->maps:[Ljava/util/Map;

    aget-object v2, v3, v2

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 412
    .local v0, value:Ljava/lang/Object;
    iget-object v2, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$View;->parent:Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;

    iget-object v2, v2, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->maps:[Ljava/util/Map;

    aget-object v2, v2, v1

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    .end local v0           #value:Ljava/lang/Object;
    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method
