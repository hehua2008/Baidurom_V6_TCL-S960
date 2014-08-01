.class public Lorg/apache/commons/collections/bidimap/DualTreeBidiMap;
.super Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;
.source "DualTreeBidiMap.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lorg/apache/commons/collections/SortedBidiMap;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/collections/bidimap/DualTreeBidiMap$BidiOrderedMapIterator;,
        Lorg/apache/commons/collections/bidimap/DualTreeBidiMap$ViewMap;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x290a0955b1151L


# instance fields
.field protected final comparator:Ljava/util/Comparator;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 69
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;-><init>(Ljava/util/Map;Ljava/util/Map;)V

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/collections/bidimap/DualTreeBidiMap;->comparator:Ljava/util/Comparator;

    .line 71
    return-void
.end method

.method public constructor <init>(Ljava/util/Comparator;)V
    .locals 2
    .parameter "comparator"

    .prologue
    .line 91
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0, p1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1, p1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;-><init>(Ljava/util/Map;Ljava/util/Map;)V

    .line 92
    iput-object p1, p0, Lorg/apache/commons/collections/bidimap/DualTreeBidiMap;->comparator:Ljava/util/Comparator;

    .line 93
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 2
    .parameter "map"

    .prologue
    .line 80
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;-><init>(Ljava/util/Map;Ljava/util/Map;)V

    .line 81
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->putAll(Ljava/util/Map;)V

    .line 82
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/collections/bidimap/DualTreeBidiMap;->comparator:Ljava/util/Comparator;

    .line 83
    return-void
.end method

.method protected constructor <init>(Ljava/util/Map;Ljava/util/Map;Lorg/apache/commons/collections/BidiMap;)V
    .locals 1
    .parameter "normalMap"
    .parameter "reverseMap"
    .parameter "inverseBidiMap"

    .prologue
    .line 103
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;-><init>(Ljava/util/Map;Ljava/util/Map;Lorg/apache/commons/collections/BidiMap;)V

    .line 104
    check-cast p1, Ljava/util/SortedMap;

    .end local p1
    invoke-interface {p1}, Ljava/util/SortedMap;->comparator()Ljava/util/Comparator;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections/bidimap/DualTreeBidiMap;->comparator:Ljava/util/Comparator;

    .line 105
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 5
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 341
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 342
    iget-object v1, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->maps:[Ljava/util/Map;

    const/4 v2, 0x0

    new-instance v3, Ljava/util/TreeMap;

    iget-object v4, p0, Lorg/apache/commons/collections/bidimap/DualTreeBidiMap;->comparator:Ljava/util/Comparator;

    invoke-direct {v3, v4}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    aput-object v3, v1, v2

    .line 343
    iget-object v1, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->maps:[Ljava/util/Map;

    const/4 v2, 0x1

    new-instance v3, Ljava/util/TreeMap;

    iget-object v4, p0, Lorg/apache/commons/collections/bidimap/DualTreeBidiMap;->comparator:Ljava/util/Comparator;

    invoke-direct {v3, v4}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    aput-object v3, v1, v2

    .line 344
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 345
    .local v0, map:Ljava/util/Map;
    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->putAll(Ljava/util/Map;)V

    .line 346
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 2
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 336
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 337
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->maps:[Ljava/util/Map;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 338
    return-void
.end method


# virtual methods
.method public comparator()Ljava/util/Comparator;
    .locals 2

    .prologue
    .line 121
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->maps:[Ljava/util/Map;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method protected createBidiMap(Ljava/util/Map;Ljava/util/Map;Lorg/apache/commons/collections/BidiMap;)Lorg/apache/commons/collections/BidiMap;
    .locals 1
    .parameter "normalMap"
    .parameter "reverseMap"
    .parameter "inverseMap"

    .prologue
    .line 116
    new-instance v0, Lorg/apache/commons/collections/bidimap/DualTreeBidiMap;

    invoke-direct {v0, p1, p2, p3}, Lorg/apache/commons/collections/bidimap/DualTreeBidiMap;-><init>(Ljava/util/Map;Ljava/util/Map;Lorg/apache/commons/collections/BidiMap;)V

    return-object v0
.end method

.method public firstKey()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 125
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->maps:[Ljava/util/Map;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->firstKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public headMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 3
    .parameter "toKey"

    .prologue
    .line 186
    iget-object v1, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->maps:[Ljava/util/Map;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    check-cast v1, Ljava/util/SortedMap;

    invoke-interface {v1, p1}, Ljava/util/SortedMap;->headMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v0

    .line 187
    .local v0, sub:Ljava/util/SortedMap;
    new-instance v1, Lorg/apache/commons/collections/bidimap/DualTreeBidiMap$ViewMap;

    invoke-direct {v1, p0, v0}, Lorg/apache/commons/collections/bidimap/DualTreeBidiMap$ViewMap;-><init>(Lorg/apache/commons/collections/bidimap/DualTreeBidiMap;Ljava/util/SortedMap;)V

    return-object v1
.end method

.method public inverseOrderedBidiMap()Lorg/apache/commons/collections/OrderedBidiMap;
    .locals 1

    .prologue
    .line 181
    invoke-virtual {p0}, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->inverseBidiMap()Lorg/apache/commons/collections/BidiMap;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/collections/OrderedBidiMap;

    return-object v0
.end method

.method public inverseSortedBidiMap()Lorg/apache/commons/collections/SortedBidiMap;
    .locals 1

    .prologue
    .line 177
    invoke-virtual {p0}, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->inverseBidiMap()Lorg/apache/commons/collections/BidiMap;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/collections/SortedBidiMap;

    return-object v0
.end method

.method public lastKey()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 129
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->maps:[Ljava/util/Map;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->lastKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public nextKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .parameter "key"

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 133
    invoke-virtual {p0}, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 145
    :cond_0
    :goto_0
    return-object v2

    .line 136
    :cond_1
    iget-object v3, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->maps:[Ljava/util/Map;

    aget-object v3, v3, v4

    instance-of v3, v3, Lorg/apache/commons/collections/OrderedMap;

    if-eqz v3, :cond_2

    .line 137
    iget-object v2, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->maps:[Ljava/util/Map;

    aget-object v2, v2, v4

    check-cast v2, Lorg/apache/commons/collections/OrderedMap;

    invoke-interface {v2, p1}, Lorg/apache/commons/collections/OrderedMap;->nextKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    .line 139
    :cond_2
    iget-object v3, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->maps:[Ljava/util/Map;

    aget-object v1, v3, v4

    check-cast v1, Ljava/util/SortedMap;

    .line 140
    .local v1, sm:Ljava/util/SortedMap;
    invoke-interface {v1, p1}, Ljava/util/SortedMap;->tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 141
    .local v0, it:Ljava/util/Iterator;
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 142
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 143
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    goto :goto_0
.end method

.method public orderedMapIterator()Lorg/apache/commons/collections/OrderedMapIterator;
    .locals 1

    .prologue
    .line 173
    new-instance v0, Lorg/apache/commons/collections/bidimap/DualTreeBidiMap$BidiOrderedMapIterator;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/bidimap/DualTreeBidiMap$BidiOrderedMapIterator;-><init>(Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;)V

    return-object v0
.end method

.method public previousKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .parameter "key"

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 149
    invoke-virtual {p0}, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 160
    :cond_0
    :goto_0
    return-object v2

    .line 152
    :cond_1
    iget-object v3, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->maps:[Ljava/util/Map;

    aget-object v3, v3, v4

    instance-of v3, v3, Lorg/apache/commons/collections/OrderedMap;

    if-eqz v3, :cond_2

    .line 153
    iget-object v2, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->maps:[Ljava/util/Map;

    aget-object v2, v2, v4

    check-cast v2, Lorg/apache/commons/collections/OrderedMap;

    invoke-interface {v2, p1}, Lorg/apache/commons/collections/OrderedMap;->previousKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    .line 155
    :cond_2
    iget-object v3, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->maps:[Ljava/util/Map;

    aget-object v1, v3, v4

    check-cast v1, Ljava/util/SortedMap;

    .line 156
    .local v1, sm:Ljava/util/SortedMap;
    invoke-interface {v1, p1}, Ljava/util/SortedMap;->headMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v0

    .line 157
    .local v0, hm:Ljava/util/SortedMap;
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 160
    invoke-interface {v0}, Ljava/util/SortedMap;->lastKey()Ljava/lang/Object;

    move-result-object v2

    goto :goto_0
.end method

.method public subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 3
    .parameter "fromKey"
    .parameter "toKey"

    .prologue
    .line 196
    iget-object v1, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->maps:[Ljava/util/Map;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    check-cast v1, Ljava/util/SortedMap;

    invoke-interface {v1, p1, p2}, Ljava/util/SortedMap;->subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v0

    .line 197
    .local v0, sub:Ljava/util/SortedMap;
    new-instance v1, Lorg/apache/commons/collections/bidimap/DualTreeBidiMap$ViewMap;

    invoke-direct {v1, p0, v0}, Lorg/apache/commons/collections/bidimap/DualTreeBidiMap$ViewMap;-><init>(Lorg/apache/commons/collections/bidimap/DualTreeBidiMap;Ljava/util/SortedMap;)V

    return-object v1
.end method

.method public tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 3
    .parameter "fromKey"

    .prologue
    .line 191
    iget-object v1, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->maps:[Ljava/util/Map;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    check-cast v1, Ljava/util/SortedMap;

    invoke-interface {v1, p1}, Ljava/util/SortedMap;->tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v0

    .line 192
    .local v0, sub:Ljava/util/SortedMap;
    new-instance v1, Lorg/apache/commons/collections/bidimap/DualTreeBidiMap$ViewMap;

    invoke-direct {v1, p0, v0}, Lorg/apache/commons/collections/bidimap/DualTreeBidiMap$ViewMap;-><init>(Lorg/apache/commons/collections/bidimap/DualTreeBidiMap;Ljava/util/SortedMap;)V

    return-object v1
.end method
