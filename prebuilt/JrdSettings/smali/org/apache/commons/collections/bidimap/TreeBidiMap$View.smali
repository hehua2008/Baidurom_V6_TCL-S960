.class Lorg/apache/commons/collections/bidimap/TreeBidiMap$View;
.super Ljava/util/AbstractSet;
.source "TreeBidiMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections/bidimap/TreeBidiMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "View"
.end annotation


# instance fields
.field protected final dataType:I

.field protected final main:Lorg/apache/commons/collections/bidimap/TreeBidiMap;

.field protected final orderType:I


# direct methods
.method constructor <init>(Lorg/apache/commons/collections/bidimap/TreeBidiMap;II)V
    .locals 0
    .parameter "main"
    .parameter "orderType"
    .parameter "dataType"

    .prologue
    .line 1482
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 1483
    iput-object p1, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$View;->main:Lorg/apache/commons/collections/bidimap/TreeBidiMap;

    .line 1484
    iput p2, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$View;->orderType:I

    .line 1485
    iput p3, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$View;->dataType:I

    .line 1486
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 1506
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$View;->main:Lorg/apache/commons/collections/bidimap/TreeBidiMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->clear()V

    .line 1507
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 2
    .parameter "obj"

    .prologue
    .line 1497
    iget v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$View;->dataType:I

    invoke-static {p1, v0}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->access$1300(Ljava/lang/Object;I)V

    .line 1498
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$View;->main:Lorg/apache/commons/collections/bidimap/TreeBidiMap;

    check-cast p1, Ljava/lang/Comparable;

    .end local p1
    iget v1, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$View;->dataType:I

    invoke-static {v0, p1, v1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->access$1400(Lorg/apache/commons/collections/bidimap/TreeBidiMap;Ljava/lang/Comparable;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 4

    .prologue
    .line 1489
    new-instance v0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewIterator;

    iget-object v1, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$View;->main:Lorg/apache/commons/collections/bidimap/TreeBidiMap;

    iget v2, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$View;->orderType:I

    iget v3, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$View;->dataType:I

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewIterator;-><init>(Lorg/apache/commons/collections/bidimap/TreeBidiMap;II)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2
    .parameter "obj"

    .prologue
    .line 1502
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$View;->main:Lorg/apache/commons/collections/bidimap/TreeBidiMap;

    check-cast p1, Ljava/lang/Comparable;

    .end local p1
    iget v1, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$View;->dataType:I

    invoke-static {v0, p1, v1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->access$1500(Lorg/apache/commons/collections/bidimap/TreeBidiMap;Ljava/lang/Comparable;I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 1493
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$View;->main:Lorg/apache/commons/collections/bidimap/TreeBidiMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->size()I

    move-result v0

    return v0
.end method
