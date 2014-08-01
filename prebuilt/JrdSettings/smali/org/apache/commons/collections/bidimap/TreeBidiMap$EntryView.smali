.class Lorg/apache/commons/collections/bidimap/TreeBidiMap$EntryView;
.super Lorg/apache/commons/collections/bidimap/TreeBidiMap$View;
.source "TreeBidiMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections/bidimap/TreeBidiMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "EntryView"
.end annotation


# instance fields
.field private final oppositeType:I


# direct methods
.method constructor <init>(Lorg/apache/commons/collections/bidimap/TreeBidiMap;II)V
    .locals 1
    .parameter "main"
    .parameter "orderType"
    .parameter "dataType"

    .prologue
    .line 1676
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$View;-><init>(Lorg/apache/commons/collections/bidimap/TreeBidiMap;II)V

    .line 1677
    invoke-static {p2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->access$2300(I)I

    move-result v0

    iput v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$EntryView;->oppositeType:I

    .line 1678
    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 7
    .parameter "obj"

    .prologue
    const/4 v4, 0x0

    .line 1681
    instance-of v3, p1, Ljava/util/Map$Entry;

    if-nez v3, :cond_0

    .line 1687
    :goto_0
    return v4

    :cond_0
    move-object v0, p1

    .line 1684
    check-cast v0, Ljava/util/Map$Entry;

    .line 1685
    .local v0, entry:Ljava/util/Map$Entry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 1686
    .local v2, value:Ljava/lang/Object;
    iget-object v5, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$View;->main:Lorg/apache/commons/collections/bidimap/TreeBidiMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Comparable;

    iget v6, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$View;->orderType:I

    invoke-static {v5, v3, v6}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->access$1400(Lorg/apache/commons/collections/bidimap/TreeBidiMap;Ljava/lang/Comparable;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v1

    .line 1687
    .local v1, node:Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;
    if-eqz v1, :cond_1

    iget v3, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$EntryView;->oppositeType:I

    invoke-static {v1, v3}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$000(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Ljava/lang/Comparable;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    :goto_1
    move v4, v3

    goto :goto_0

    :cond_1
    move v3, v4

    goto :goto_1
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 7
    .parameter "obj"

    .prologue
    const/4 v4, 0x0

    .line 1691
    instance-of v3, p1, Ljava/util/Map$Entry;

    if-nez v3, :cond_0

    move v3, v4

    .line 1701
    :goto_0
    return v3

    :cond_0
    move-object v0, p1

    .line 1694
    check-cast v0, Ljava/util/Map$Entry;

    .line 1695
    .local v0, entry:Ljava/util/Map$Entry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 1696
    .local v2, value:Ljava/lang/Object;
    iget-object v5, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$View;->main:Lorg/apache/commons/collections/bidimap/TreeBidiMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Comparable;

    iget v6, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$View;->orderType:I

    invoke-static {v5, v3, v6}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->access$1400(Lorg/apache/commons/collections/bidimap/TreeBidiMap;Ljava/lang/Comparable;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v1

    .line 1697
    .local v1, node:Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;
    if-eqz v1, :cond_1

    iget v3, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$EntryView;->oppositeType:I

    invoke-static {v1, v3}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->access$000(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Ljava/lang/Comparable;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1698
    iget-object v3, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$View;->main:Lorg/apache/commons/collections/bidimap/TreeBidiMap;

    invoke-static {v3, v1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->access$2100(Lorg/apache/commons/collections/bidimap/TreeBidiMap;Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;)V

    .line 1699
    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    move v3, v4

    .line 1701
    goto :goto_0
.end method
