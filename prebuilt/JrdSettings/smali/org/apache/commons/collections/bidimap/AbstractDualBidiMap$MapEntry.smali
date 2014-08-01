.class public Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$MapEntry;
.super Lorg/apache/commons/collections/keyvalue/AbstractMapEntryDecorator;
.source "AbstractDualBidiMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "MapEntry"
.end annotation


# instance fields
.field protected final parent:Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;


# direct methods
.method protected constructor <init>(Ljava/util/Map$Entry;Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;)V
    .locals 0
    .parameter "entry"
    .parameter "parent"

    .prologue
    .line 623
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/keyvalue/AbstractMapEntryDecorator;-><init>(Ljava/util/Map$Entry;)V

    .line 624
    iput-object p2, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$MapEntry;->parent:Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;

    .line 625
    return-void
.end method


# virtual methods
.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .parameter "value"

    .prologue
    const/4 v3, 0x1

    .line 628
    invoke-virtual {p0}, Lorg/apache/commons/collections/keyvalue/AbstractMapEntryDecorator;->getKey()Ljava/lang/Object;

    move-result-object v0

    .line 629
    .local v0, key:Ljava/lang/Object;
    iget-object v2, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$MapEntry;->parent:Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;

    iget-object v2, v2, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->maps:[Ljava/util/Map;

    aget-object v2, v2, v3

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$MapEntry;->parent:Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;

    iget-object v2, v2, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->maps:[Ljava/util/Map;

    aget-object v2, v2, v3

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eq v2, v0, :cond_0

    .line 631
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Cannot use setValue() when the object being set is already in the map"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 633
    :cond_0
    iget-object v2, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$MapEntry;->parent:Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;

    invoke-virtual {v2, v0, p1}, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 634
    invoke-super {p0, p1}, Lorg/apache/commons/collections/keyvalue/AbstractMapEntryDecorator;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 635
    .local v1, oldValue:Ljava/lang/Object;
    return-object v1
.end method
