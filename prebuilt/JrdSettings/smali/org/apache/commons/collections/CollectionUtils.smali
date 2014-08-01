.class public Lorg/apache/commons/collections/CollectionUtils;
.super Ljava/lang/Object;
.source "CollectionUtils.java"


# static fields
.field public static final EMPTY_COLLECTION:Ljava/util/Collection;

.field private static INTEGER_ONE:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 58
    new-instance v0, Ljava/lang/Integer;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Lorg/apache/commons/collections/CollectionUtils;->INTEGER_ONE:Ljava/lang/Integer;

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Lorg/apache/commons/collections/collection/UnmodifiableCollection;->decorate(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/collections/CollectionUtils;->EMPTY_COLLECTION:Ljava/util/Collection;

    .line 58
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    return-void
.end method

.method public static addAll(Ljava/util/Collection;Ljava/util/Enumeration;)V
    .locals 1
    .parameter "collection"
    .parameter "enumeration"

    .prologue
    .line 657
    :goto_0
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-nez v0, :cond_0

    .line 660
    return-void

    .line 658
    :cond_0
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static addAll(Ljava/util/Collection;Ljava/util/Iterator;)V
    .locals 1
    .parameter "collection"
    .parameter "iterator"

    .prologue
    .line 644
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 647
    return-void

    .line 645
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static addAll(Ljava/util/Collection;[Ljava/lang/Object;)V
    .locals 3
    .parameter "collection"
    .parameter "elements"

    .prologue
    .line 670
    const/4 v0, 0x0

    .local v0, i:I
    array-length v1, p1

    .local v1, size:I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 673
    return-void

    .line 671
    :cond_0
    aget-object v2, p1, v0

    invoke-interface {p0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 670
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static cardinality(Ljava/lang/Object;Ljava/util/Collection;)I
    .locals 3
    .parameter "obj"
    .parameter "coll"

    .prologue
    .line 330
    instance-of v2, p1, Ljava/util/Set;

    if-eqz v2, :cond_1

    .line 331
    invoke-interface {p1, p0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .line 350
    .end local p1
    :goto_0
    return v2

    .line 331
    .restart local p1
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 333
    :cond_1
    instance-of v2, p1, Lorg/apache/commons/collections/Bag;

    if-eqz v2, :cond_2

    .line 334
    check-cast p1, Lorg/apache/commons/collections/Bag;

    .end local p1
    invoke-interface {p1, p0}, Lorg/apache/commons/collections/Bag;->getCount(Ljava/lang/Object;)I

    move-result v2

    goto :goto_0

    .line 336
    .restart local p1
    :cond_2
    const/4 v0, 0x0

    .line 337
    .local v0, count:I
    if-nez p0, :cond_6

    .line 338
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, it:Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_5

    :cond_4
    move v2, v0

    .line 350
    goto :goto_0

    .line 339
    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_3

    .line 340
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 344
    .end local v1           #it:Ljava/util/Iterator;
    :cond_6
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1       #it:Ljava/util/Iterator;
    :cond_7
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 345
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 346
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public static collect(Ljava/util/Collection;Lorg/apache/commons/collections/Transformer;)Ljava/util/Collection;
    .locals 2
    .parameter "inputCollection"
    .parameter "transformer"

    .prologue
    .line 571
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 572
    .local v0, answer:Ljava/util/ArrayList;
    invoke-static {p0, p1, v0}, Lorg/apache/commons/collections/CollectionUtils;->collect(Ljava/util/Collection;Lorg/apache/commons/collections/Transformer;Ljava/util/Collection;)Ljava/util/Collection;

    .line 573
    return-object v0
.end method

.method public static collect(Ljava/util/Collection;Lorg/apache/commons/collections/Transformer;Ljava/util/Collection;)Ljava/util/Collection;
    .locals 1
    .parameter "inputCollection"
    .parameter "transformer"
    .parameter "outputCollection"

    .prologue
    .line 606
    if-eqz p0, :cond_0

    .line 607
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lorg/apache/commons/collections/CollectionUtils;->collect(Ljava/util/Iterator;Lorg/apache/commons/collections/Transformer;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p2

    .line 609
    .end local p2
    :cond_0
    return-object p2
.end method

.method public static collect(Ljava/util/Iterator;Lorg/apache/commons/collections/Transformer;)Ljava/util/Collection;
    .locals 1
    .parameter "inputIterator"
    .parameter "transformer"

    .prologue
    .line 587
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 588
    .local v0, answer:Ljava/util/ArrayList;
    invoke-static {p0, p1, v0}, Lorg/apache/commons/collections/CollectionUtils;->collect(Ljava/util/Iterator;Lorg/apache/commons/collections/Transformer;Ljava/util/Collection;)Ljava/util/Collection;

    .line 589
    return-object v0
.end method

.method public static collect(Ljava/util/Iterator;Lorg/apache/commons/collections/Transformer;Ljava/util/Collection;)Ljava/util/Collection;
    .locals 3
    .parameter "inputIterator"
    .parameter "transformer"
    .parameter "outputCollection"

    .prologue
    .line 626
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 627
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 633
    :cond_0
    return-object p2

    .line 628
    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 629
    .local v0, item:Ljava/lang/Object;
    invoke-interface {p1, v0}, Lorg/apache/commons/collections/Transformer;->transform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 630
    .local v1, value:Ljava/lang/Object;
    invoke-interface {p2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static containsAny(Ljava/util/Collection;Ljava/util/Collection;)Z
    .locals 4
    .parameter "coll1"
    .parameter "coll2"

    .prologue
    const/4 v1, 0x1

    .line 198
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 199
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, it:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 211
    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 200
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 205
    .end local v0           #it:Ljava/util/Iterator;
    :cond_3
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0       #it:Ljava/util/Iterator;
    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 206
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_0
.end method

.method public static countMatches(Ljava/util/Collection;Lorg/apache/commons/collections/Predicate;)I
    .locals 3
    .parameter "inputCollection"
    .parameter "predicate"

    .prologue
    .line 451
    const/4 v0, 0x0

    .line 452
    .local v0, count:I
    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 453
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, it:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 459
    .end local v1           #it:Ljava/util/Iterator;
    :cond_1
    return v0

    .line 454
    .restart local v1       #it:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Lorg/apache/commons/collections/Predicate;->evaluate(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 455
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static disjunction(Ljava/util/Collection;Ljava/util/Collection;)Ljava/util/Collection;
    .locals 11
    .parameter "a"
    .parameter "b"

    .prologue
    .line 151
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 152
    .local v3, list:Ljava/util/ArrayList;
    invoke-static {p0}, Lorg/apache/commons/collections/CollectionUtils;->getCardinalityMap(Ljava/util/Collection;)Ljava/util/Map;

    move-result-object v5

    .line 153
    .local v5, mapa:Ljava/util/Map;
    invoke-static {p1}, Lorg/apache/commons/collections/CollectionUtils;->getCardinalityMap(Ljava/util/Collection;)Ljava/util/Map;

    move-result-object v6

    .line 154
    .local v6, mapb:Ljava/util/Map;
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 155
    .local v0, elts:Ljava/util/Set;
    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 156
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 157
    .local v2, it:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_1

    .line 163
    return-object v3

    .line 158
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 159
    .local v7, obj:Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, i:I
    invoke-static {v7, v5}, Lorg/apache/commons/collections/CollectionUtils;->getFreq(Ljava/lang/Object;Ljava/util/Map;)I

    move-result v8

    invoke-static {v7, v6}, Lorg/apache/commons/collections/CollectionUtils;->getFreq(Ljava/lang/Object;Ljava/util/Map;)I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    invoke-static {v7, v5}, Lorg/apache/commons/collections/CollectionUtils;->getFreq(Ljava/lang/Object;Ljava/util/Map;)I

    move-result v9

    invoke-static {v7, v6}, Lorg/apache/commons/collections/CollectionUtils;->getFreq(Ljava/lang/Object;Ljava/util/Map;)I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    sub-int v4, v8, v9

    .local v4, m:I
    :goto_0
    if-ge v1, v4, :cond_0

    .line 160
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 159
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static exists(Ljava/util/Collection;Lorg/apache/commons/collections/Predicate;)Z
    .locals 2
    .parameter "collection"
    .parameter "predicate"

    .prologue
    .line 472
    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 473
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, it:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_2

    .line 479
    .end local v0           #it:Ljava/util/Iterator;
    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 474
    .restart local v0       #it:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Lorg/apache/commons/collections/Predicate;->evaluate(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 475
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static filter(Ljava/util/Collection;Lorg/apache/commons/collections/Predicate;)V
    .locals 2
    .parameter "collection"
    .parameter "predicate"

    .prologue
    .line 401
    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 402
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, it:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_2

    .line 408
    .end local v0           #it:Ljava/util/Iterator;
    :cond_1
    return-void

    .line 403
    .restart local v0       #it:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Lorg/apache/commons/collections/Predicate;->evaluate(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 404
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0
.end method

.method public static find(Ljava/util/Collection;Lorg/apache/commons/collections/Predicate;)Ljava/lang/Object;
    .locals 3
    .parameter "collection"
    .parameter "predicate"

    .prologue
    .line 364
    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 365
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, iter:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 372
    .end local v1           #iter:Ljava/util/Iterator;
    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 366
    .restart local v1       #iter:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 367
    .local v0, item:Ljava/lang/Object;
    invoke-interface {p1, v0}, Lorg/apache/commons/collections/Predicate;->evaluate(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0
.end method

.method public static forAllDo(Ljava/util/Collection;Lorg/apache/commons/collections/Closure;)V
    .locals 2
    .parameter "collection"
    .parameter "closure"

    .prologue
    .line 384
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 385
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, it:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 389
    .end local v0           #it:Ljava/util/Iterator;
    :cond_0
    return-void

    .line 386
    .restart local v0       #it:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Lorg/apache/commons/collections/Closure;->execute(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static get(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 7
    .parameter "object"
    .parameter "index"

    .prologue
    const/4 v5, -0x1

    .line 813
    if-gez p1, :cond_0

    .line 814
    new-instance v4, Ljava/lang/IndexOutOfBoundsException;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "Index cannot be negative: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 816
    :cond_0
    instance-of v4, p0, Ljava/util/Map;

    if-eqz v4, :cond_1

    move-object v3, p0

    .line 817
    check-cast v3, Ljava/util/Map;

    .line 818
    .local v3, map:Ljava/util/Map;
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 819
    .local v2, iterator:Ljava/util/Iterator;
    invoke-static {v2, p1}, Lorg/apache/commons/collections/CollectionUtils;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v4

    .line 853
    .end local v2           #iterator:Ljava/util/Iterator;
    .end local v3           #map:Ljava/util/Map;
    .end local p0
    :goto_0
    return-object v4

    .line 820
    .restart local p0
    :cond_1
    instance-of v4, p0, Ljava/util/List;

    if-eqz v4, :cond_2

    .line 821
    check-cast p0, Ljava/util/List;

    .end local p0
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    goto :goto_0

    .line 822
    .restart local p0
    :cond_2
    instance-of v4, p0, [Ljava/lang/Object;

    if-eqz v4, :cond_3

    .line 823
    check-cast p0, [Ljava/lang/Object;

    .end local p0
    aget-object v4, p0, p1

    goto :goto_0

    .line 824
    .restart local p0
    :cond_3
    instance-of v4, p0, Ljava/util/Iterator;

    if-eqz v4, :cond_6

    move-object v1, p0

    .line 825
    check-cast v1, Ljava/util/Iterator;

    .line 826
    .local v1, it:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_4

    .line 834
    new-instance v4, Ljava/lang/IndexOutOfBoundsException;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "Entry does not exist: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 827
    :cond_4
    add-int/lit8 p1, p1, -0x1

    .line 828
    if-ne p1, v5, :cond_5

    .line 829
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    goto :goto_0

    .line 831
    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_1

    .line 835
    .end local v1           #it:Ljava/util/Iterator;
    :cond_6
    instance-of v4, p0, Ljava/util/Collection;

    if-eqz v4, :cond_7

    .line 836
    check-cast p0, Ljava/util/Collection;

    .end local p0
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 837
    .restart local v2       #iterator:Ljava/util/Iterator;
    invoke-static {v2, p1}, Lorg/apache/commons/collections/CollectionUtils;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v4

    goto :goto_0

    .line 838
    .end local v2           #iterator:Ljava/util/Iterator;
    .restart local p0
    :cond_7
    instance-of v4, p0, Ljava/util/Enumeration;

    if-eqz v4, :cond_a

    move-object v1, p0

    .line 839
    check-cast v1, Ljava/util/Enumeration;

    .line 840
    .local v1, it:Ljava/util/Enumeration;
    :goto_2
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-nez v4, :cond_8

    .line 848
    new-instance v4, Ljava/lang/IndexOutOfBoundsException;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "Entry does not exist: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 841
    :cond_8
    add-int/lit8 p1, p1, -0x1

    .line 842
    if-ne p1, v5, :cond_9

    .line 843
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    goto/16 :goto_0

    .line 845
    :cond_9
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    goto :goto_2

    .line 849
    .end local v1           #it:Ljava/util/Enumeration;
    :cond_a
    if-nez p0, :cond_b

    .line 850
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Unsupported object type: null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 853
    :cond_b
    :try_start_0
    invoke-static {p0, p1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto/16 :goto_0

    .line 855
    :catch_0
    move-exception v0

    .local v0, ex:Ljava/lang/IllegalArgumentException;
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "Unsupported object type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public static getCardinalityMap(Ljava/util/Collection;)Ljava/util/Map;
    .locals 6
    .parameter "coll"

    .prologue
    .line 226
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 227
    .local v1, count:Ljava/util/Map;
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, it:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 236
    return-object v1

    .line 228
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 229
    .local v3, obj:Ljava/lang/Object;
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 230
    .local v0, c:Ljava/lang/Integer;
    if-nez v0, :cond_1

    .line 231
    sget-object v4, Lorg/apache/commons/collections/CollectionUtils;->INTEGER_ONE:Ljava/lang/Integer;

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 233
    :cond_1
    new-instance v4, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private static final getFreq(Ljava/lang/Object;Ljava/util/Map;)I
    .locals 2
    .parameter "obj"
    .parameter "freqMap"

    .prologue
    .line 929
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 930
    .local v0, count:Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 931
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 933
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static index(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 1
    .parameter "obj"
    .parameter "idx"

    .prologue
    .line 698
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {p0, v0}, Lorg/apache/commons/collections/CollectionUtils;->index(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static index(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .parameter "obj"
    .parameter "index"

    .prologue
    .line 725
    instance-of v4, p0, Ljava/util/Map;

    if-eqz v4, :cond_1

    move-object v3, p0

    .line 726
    check-cast v3, Ljava/util/Map;

    .line 727
    .local v3, map:Ljava/util/Map;
    invoke-interface {v3, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 728
    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 767
    .end local v3           #map:Ljava/util/Map;
    .end local p0
    .end local p1
    .local v0, idx:I
    :cond_0
    :goto_0
    return-object p0

    .line 731
    .end local v0           #idx:I
    .restart local p0
    .restart local p1
    :cond_1
    const/4 v0, -0x1

    .line 732
    .restart local v0       #idx:I
    instance-of v4, p1, Ljava/lang/Integer;

    if-eqz v4, :cond_2

    .line 733
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 735
    :cond_2
    if-ltz v0, :cond_0

    .line 738
    instance-of v4, p0, Ljava/util/Map;

    if-eqz v4, :cond_3

    move-object v3, p0

    .line 739
    check-cast v3, Ljava/util/Map;

    .line 740
    .restart local v3       #map:Ljava/util/Map;
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 741
    .local v2, iterator:Ljava/util/Iterator;
    invoke-static {v2, v0}, Lorg/apache/commons/collections/CollectionUtils;->index(Ljava/util/Iterator;I)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    .line 743
    .end local v2           #iterator:Ljava/util/Iterator;
    .end local v3           #map:Ljava/util/Map;
    :cond_3
    instance-of v4, p0, Ljava/util/List;

    if-eqz v4, :cond_4

    .line 744
    check-cast p0, Ljava/util/List;

    .end local p0
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    .line 746
    .restart local p0
    :cond_4
    instance-of v4, p0, [Ljava/lang/Object;

    if-eqz v4, :cond_5

    .line 747
    check-cast p0, [Ljava/lang/Object;

    .end local p0
    aget-object p0, p0, v0

    goto :goto_0

    .line 749
    .restart local p0
    :cond_5
    instance-of v4, p0, Ljava/util/Enumeration;

    if-eqz v4, :cond_7

    move-object v1, p0

    .line 750
    check-cast v1, Ljava/util/Enumeration;

    .line 751
    .local v1, it:Ljava/util/Enumeration;
    :goto_1
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 752
    add-int/lit8 v0, v0, -0x1

    .line 753
    const/4 v4, -0x1

    if-ne v0, v4, :cond_6

    .line 754
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    .line 756
    :cond_6
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    goto :goto_1

    .line 760
    .end local v1           #it:Ljava/util/Enumeration;
    :cond_7
    instance-of v4, p0, Ljava/util/Iterator;

    if-eqz v4, :cond_8

    .line 761
    check-cast p0, Ljava/util/Iterator;

    .end local p0
    invoke-static {p0, v0}, Lorg/apache/commons/collections/CollectionUtils;->index(Ljava/util/Iterator;I)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    .line 763
    .restart local p0
    :cond_8
    instance-of v4, p0, Ljava/util/Collection;

    if-eqz v4, :cond_0

    .line 764
    check-cast p0, Ljava/util/Collection;

    .end local p0
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 765
    .restart local v2       #iterator:Ljava/util/Iterator;
    invoke-static {v2, v0}, Lorg/apache/commons/collections/CollectionUtils;->index(Ljava/util/Iterator;I)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0
.end method

.method private static index(Ljava/util/Iterator;I)Ljava/lang/Object;
    .locals 1
    .parameter "iterator"
    .parameter "idx"

    .prologue
    .line 771
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 779
    .end local p0
    :goto_1
    return-object p0

    .line 772
    .restart local p0
    :cond_0
    add-int/lit8 p1, p1, -0x1

    .line 773
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 774
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    goto :goto_1

    .line 776
    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0
.end method

.method public static intersection(Ljava/util/Collection;Ljava/util/Collection;)Ljava/util/Collection;
    .locals 10
    .parameter "a"
    .parameter "b"

    .prologue
    .line 118
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 119
    .local v3, list:Ljava/util/ArrayList;
    invoke-static {p0}, Lorg/apache/commons/collections/CollectionUtils;->getCardinalityMap(Ljava/util/Collection;)Ljava/util/Map;

    move-result-object v5

    .line 120
    .local v5, mapa:Ljava/util/Map;
    invoke-static {p1}, Lorg/apache/commons/collections/CollectionUtils;->getCardinalityMap(Ljava/util/Collection;)Ljava/util/Map;

    move-result-object v6

    .line 121
    .local v6, mapb:Ljava/util/Map;
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 122
    .local v0, elts:Ljava/util/Set;
    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 123
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 124
    .local v2, it:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_1

    .line 130
    return-object v3

    .line 125
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 126
    .local v7, obj:Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, i:I
    invoke-static {v7, v5}, Lorg/apache/commons/collections/CollectionUtils;->getFreq(Ljava/lang/Object;Ljava/util/Map;)I

    move-result v8

    invoke-static {v7, v6}, Lorg/apache/commons/collections/CollectionUtils;->getFreq(Ljava/lang/Object;Ljava/util/Map;)I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v4

    .local v4, m:I
    :goto_0
    if-ge v1, v4, :cond_0

    .line 127
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static isEqualCollection(Ljava/util/Collection;Ljava/util/Collection;)Z
    .locals 7
    .parameter "a"
    .parameter "b"

    .prologue
    const/4 v4, 0x0

    .line 302
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v5

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v6

    if-eq v5, v6, :cond_1

    .line 317
    :cond_0
    :goto_0
    return v4

    .line 305
    :cond_1
    invoke-static {p0}, Lorg/apache/commons/collections/CollectionUtils;->getCardinalityMap(Ljava/util/Collection;)Ljava/util/Map;

    move-result-object v1

    .line 306
    .local v1, mapa:Ljava/util/Map;
    invoke-static {p1}, Lorg/apache/commons/collections/CollectionUtils;->getCardinalityMap(Ljava/util/Collection;)Ljava/util/Map;

    move-result-object v2

    .line 307
    .local v2, mapb:Ljava/util/Map;
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v5

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v6

    if-ne v5, v6, :cond_0

    .line 310
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 311
    .local v0, it:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_3

    .line 317
    const/4 v4, 0x1

    goto :goto_0

    .line 312
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 313
    .local v3, obj:Ljava/lang/Object;
    invoke-static {v3, v1}, Lorg/apache/commons/collections/CollectionUtils;->getFreq(Ljava/lang/Object;Ljava/util/Map;)I

    move-result v5

    invoke-static {v3, v2}, Lorg/apache/commons/collections/CollectionUtils;->getFreq(Ljava/lang/Object;Ljava/util/Map;)I

    move-result v6

    if-eq v5, v6, :cond_2

    goto :goto_0
.end method

.method public static isFull(Ljava/util/Collection;)Z
    .locals 4
    .parameter "coll"

    .prologue
    .line 952
    if-nez p0, :cond_0

    .line 953
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "The collection must not be null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 955
    :cond_0
    instance-of v2, p0, Lorg/apache/commons/collections/BoundedCollection;

    if-eqz v2, :cond_1

    .line 956
    check-cast p0, Lorg/apache/commons/collections/BoundedCollection;

    .end local p0
    invoke-interface {p0}, Lorg/apache/commons/collections/BoundedCollection;->isFull()Z

    move-result v2

    .line 963
    .restart local p0
    :goto_0
    return v2

    .line 959
    :cond_1
    :try_start_0
    invoke-static {p0}, Lorg/apache/commons/collections/collection/UnmodifiableBoundedCollection;->decorateUsing(Ljava/util/Collection;)Lorg/apache/commons/collections/BoundedCollection;

    move-result-object v0

    .line 960
    .local v0, bcoll:Lorg/apache/commons/collections/BoundedCollection;
    invoke-interface {v0}, Lorg/apache/commons/collections/BoundedCollection;->isFull()Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 963
    .end local v0           #bcoll:Lorg/apache/commons/collections/BoundedCollection;
    :catch_0
    move-exception v1

    .local v1, ex:Ljava/lang/IllegalArgumentException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isProperSubCollection(Ljava/util/Collection;Ljava/util/Collection;)Z
    .locals 2
    .parameter "a"
    .parameter "b"

    .prologue
    .line 286
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-static {p0, p1}, Lorg/apache/commons/collections/CollectionUtils;->isSubCollection(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSubCollection(Ljava/util/Collection;Ljava/util/Collection;)Z
    .locals 6
    .parameter "a"
    .parameter "b"

    .prologue
    .line 252
    invoke-static {p0}, Lorg/apache/commons/collections/CollectionUtils;->getCardinalityMap(Ljava/util/Collection;)Ljava/util/Map;

    move-result-object v1

    .line 253
    .local v1, mapa:Ljava/util/Map;
    invoke-static {p1}, Lorg/apache/commons/collections/CollectionUtils;->getCardinalityMap(Ljava/util/Collection;)Ljava/util/Map;

    move-result-object v2

    .line 254
    .local v2, mapb:Ljava/util/Map;
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 255
    .local v0, it:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 261
    const/4 v4, 0x1

    :goto_0
    return v4

    .line 256
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 257
    .local v3, obj:Ljava/lang/Object;
    invoke-static {v3, v1}, Lorg/apache/commons/collections/CollectionUtils;->getFreq(Ljava/lang/Object;Ljava/util/Map;)I

    move-result v4

    invoke-static {v3, v2}, Lorg/apache/commons/collections/CollectionUtils;->getFreq(Ljava/lang/Object;Ljava/util/Map;)I

    move-result v5

    if-le v4, v5, :cond_0

    .line 258
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static maxSize(Ljava/util/Collection;)I
    .locals 4
    .parameter "coll"

    .prologue
    .line 983
    if-nez p0, :cond_0

    .line 984
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "The collection must not be null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 986
    :cond_0
    instance-of v2, p0, Lorg/apache/commons/collections/BoundedCollection;

    if-eqz v2, :cond_1

    .line 987
    check-cast p0, Lorg/apache/commons/collections/BoundedCollection;

    .end local p0
    invoke-interface {p0}, Lorg/apache/commons/collections/BoundedCollection;->maxSize()I

    move-result v2

    .line 994
    .restart local p0
    :goto_0
    return v2

    .line 990
    :cond_1
    :try_start_0
    invoke-static {p0}, Lorg/apache/commons/collections/collection/UnmodifiableBoundedCollection;->decorateUsing(Ljava/util/Collection;)Lorg/apache/commons/collections/BoundedCollection;

    move-result-object v0

    .line 991
    .local v0, bcoll:Lorg/apache/commons/collections/BoundedCollection;
    invoke-interface {v0}, Lorg/apache/commons/collections/BoundedCollection;->maxSize()I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 994
    .end local v0           #bcoll:Lorg/apache/commons/collections/BoundedCollection;
    :catch_0
    move-exception v1

    .local v1, ex:Ljava/lang/IllegalArgumentException;
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public static predicatedCollection(Ljava/util/Collection;Lorg/apache/commons/collections/Predicate;)Ljava/util/Collection;
    .locals 1
    .parameter "collection"
    .parameter "predicate"

    .prologue
    .line 1052
    invoke-static {p0, p1}, Lorg/apache/commons/collections/collection/PredicatedCollection;->decorate(Ljava/util/Collection;Lorg/apache/commons/collections/Predicate;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public static reverseArray([Ljava/lang/Object;)V
    .locals 4
    .parameter "array"

    .prologue
    .line 915
    const/4 v0, 0x0

    .line 916
    .local v0, i:I
    array-length v3, p0

    add-int/lit8 v1, v3, -0x1

    .line 919
    .local v1, j:I
    :goto_0
    if-gt v1, v0, :cond_0

    .line 926
    return-void

    .line 920
    :cond_0
    aget-object v2, p0, v1

    .line 921
    .local v2, tmp:Ljava/lang/Object;
    aget-object v3, p0, v0

    aput-object v3, p0, v1

    .line 922
    aput-object v2, p0, v0

    .line 923
    add-int/lit8 v1, v1, -0x1

    .line 924
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static select(Ljava/util/Collection;Lorg/apache/commons/collections/Predicate;)Ljava/util/Collection;
    .locals 2
    .parameter "inputCollection"
    .parameter "predicate"

    .prologue
    .line 494
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 495
    .local v0, answer:Ljava/util/ArrayList;
    invoke-static {p0, p1, v0}, Lorg/apache/commons/collections/CollectionUtils;->select(Ljava/util/Collection;Lorg/apache/commons/collections/Predicate;Ljava/util/Collection;)V

    .line 496
    return-object v0
.end method

.method public static select(Ljava/util/Collection;Lorg/apache/commons/collections/Predicate;Ljava/util/Collection;)V
    .locals 3
    .parameter "inputCollection"
    .parameter "predicate"
    .parameter "outputCollection"

    .prologue
    .line 511
    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 512
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, iter:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 519
    .end local v1           #iter:Ljava/util/Iterator;
    :cond_1
    return-void

    .line 513
    .restart local v1       #iter:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 514
    .local v0, item:Ljava/lang/Object;
    invoke-interface {p1, v0}, Lorg/apache/commons/collections/Predicate;->evaluate(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 515
    invoke-interface {p2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static selectRejected(Ljava/util/Collection;Lorg/apache/commons/collections/Predicate;)Ljava/util/Collection;
    .locals 2
    .parameter "inputCollection"
    .parameter "predicate"

    .prologue
    .line 533
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 534
    .local v0, answer:Ljava/util/ArrayList;
    invoke-static {p0, p1, v0}, Lorg/apache/commons/collections/CollectionUtils;->selectRejected(Ljava/util/Collection;Lorg/apache/commons/collections/Predicate;Ljava/util/Collection;)V

    .line 535
    return-object v0
.end method

.method public static selectRejected(Ljava/util/Collection;Lorg/apache/commons/collections/Predicate;Ljava/util/Collection;)V
    .locals 3
    .parameter "inputCollection"
    .parameter "predicate"
    .parameter "outputCollection"

    .prologue
    .line 549
    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 550
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, iter:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 557
    .end local v1           #iter:Ljava/util/Iterator;
    :cond_1
    return-void

    .line 551
    .restart local v1       #iter:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 552
    .local v0, item:Ljava/lang/Object;
    invoke-interface {p1, v0}, Lorg/apache/commons/collections/Predicate;->evaluate(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 553
    invoke-interface {p2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static size(Ljava/lang/Object;)I
    .locals 6
    .parameter "object"

    .prologue
    .line 878
    const/4 v2, 0x0

    .line 879
    .local v2, total:I
    instance-of v3, p0, Ljava/util/Map;

    if-eqz v3, :cond_1

    .line 880
    check-cast p0, Ljava/util/Map;

    .end local p0
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v2

    .line 906
    :cond_0
    :goto_0
    return v2

    .line 881
    .restart local p0
    :cond_1
    instance-of v3, p0, Ljava/util/Collection;

    if-eqz v3, :cond_2

    .line 882
    check-cast p0, Ljava/util/Collection;

    .end local p0
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v2

    goto :goto_0

    .line 883
    .restart local p0
    :cond_2
    instance-of v3, p0, [Ljava/lang/Object;

    if-eqz v3, :cond_3

    .line 884
    check-cast p0, [Ljava/lang/Object;

    .end local p0
    array-length v2, p0

    goto :goto_0

    .line 885
    .restart local p0
    :cond_3
    instance-of v3, p0, Ljava/util/Iterator;

    if-eqz v3, :cond_4

    move-object v1, p0

    .line 886
    check-cast v1, Ljava/util/Iterator;

    .line 887
    .local v1, it:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 888
    add-int/lit8 v2, v2, 0x1

    .line 889
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_1

    .line 891
    .end local v1           #it:Ljava/util/Iterator;
    :cond_4
    instance-of v3, p0, Ljava/util/Enumeration;

    if-eqz v3, :cond_5

    move-object v1, p0

    .line 892
    check-cast v1, Ljava/util/Enumeration;

    .line 893
    .local v1, it:Ljava/util/Enumeration;
    :goto_2
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 894
    add-int/lit8 v2, v2, 0x1

    .line 895
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    goto :goto_2

    .line 897
    .end local v1           #it:Ljava/util/Enumeration;
    :cond_5
    if-nez p0, :cond_6

    .line 898
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Unsupported object type: null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 901
    :cond_6
    :try_start_0
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 903
    :catch_0
    move-exception v0

    .local v0, ex:Ljava/lang/IllegalArgumentException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Unsupported object type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static subtract(Ljava/util/Collection;Ljava/util/Collection;)Ljava/util/Collection;
    .locals 3
    .parameter "a"
    .parameter "b"

    .prologue
    .line 178
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 179
    .local v1, list:Ljava/util/ArrayList;
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, it:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 182
    return-object v1

    .line 180
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static synchronizedCollection(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 1
    .parameter "collection"

    .prologue
    .line 1022
    invoke-static {p0}, Lorg/apache/commons/collections/collection/SynchronizedCollection;->decorate(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public static transform(Ljava/util/Collection;Lorg/apache/commons/collections/Transformer;)V
    .locals 4
    .parameter "collection"
    .parameter "transformer"

    .prologue
    .line 427
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 428
    instance-of v3, p0, Ljava/util/List;

    if-eqz v3, :cond_2

    move-object v1, p0

    .line 429
    check-cast v1, Ljava/util/List;

    .line 430
    .local v1, list:Ljava/util/List;
    invoke-interface {v1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    .local v0, it:Ljava/util/ListIterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 439
    .end local v0           #it:Ljava/util/ListIterator;
    .end local v1           #list:Ljava/util/List;
    :cond_0
    :goto_1
    return-void

    .line 431
    .restart local v0       #it:Ljava/util/ListIterator;
    .restart local v1       #list:Ljava/util/List;
    :cond_1
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3}, Lorg/apache/commons/collections/Transformer;->transform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    goto :goto_0

    .line 434
    .end local v0           #it:Ljava/util/ListIterator;
    .end local v1           #list:Ljava/util/List;
    :cond_2
    invoke-static {p0, p1}, Lorg/apache/commons/collections/CollectionUtils;->collect(Ljava/util/Collection;Lorg/apache/commons/collections/Transformer;)Ljava/util/Collection;

    move-result-object v2

    .line 435
    .local v2, resultCollection:Ljava/util/Collection;
    invoke-interface {p0}, Ljava/util/Collection;->clear()V

    .line 436
    invoke-interface {p0, v2}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    goto :goto_1
.end method

.method public static transformedCollection(Ljava/util/Collection;Lorg/apache/commons/collections/Transformer;)Ljava/util/Collection;
    .locals 1
    .parameter "collection"
    .parameter "transformer"

    .prologue
    .line 1081
    invoke-static {p0, p1}, Lorg/apache/commons/collections/collection/TransformedCollection;->decorate(Ljava/util/Collection;Lorg/apache/commons/collections/Transformer;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public static typedCollection(Ljava/util/Collection;Ljava/lang/Class;)Ljava/util/Collection;
    .locals 1
    .parameter "collection"
    .parameter "type"

    .prologue
    .line 1065
    invoke-static {p0, p1}, Lorg/apache/commons/collections/collection/TypedCollection;->decorate(Ljava/util/Collection;Ljava/lang/Class;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public static union(Ljava/util/Collection;Ljava/util/Collection;)Ljava/util/Collection;
    .locals 10
    .parameter "a"
    .parameter "b"

    .prologue
    .line 88
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 89
    .local v3, list:Ljava/util/ArrayList;
    invoke-static {p0}, Lorg/apache/commons/collections/CollectionUtils;->getCardinalityMap(Ljava/util/Collection;)Ljava/util/Map;

    move-result-object v5

    .line 90
    .local v5, mapa:Ljava/util/Map;
    invoke-static {p1}, Lorg/apache/commons/collections/CollectionUtils;->getCardinalityMap(Ljava/util/Collection;)Ljava/util/Map;

    move-result-object v6

    .line 91
    .local v6, mapb:Ljava/util/Map;
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 92
    .local v0, elts:Ljava/util/Set;
    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 93
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 94
    .local v2, it:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_1

    .line 100
    return-object v3

    .line 95
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 96
    .local v7, obj:Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, i:I
    invoke-static {v7, v5}, Lorg/apache/commons/collections/CollectionUtils;->getFreq(Ljava/lang/Object;Ljava/util/Map;)I

    move-result v8

    invoke-static {v7, v6}, Lorg/apache/commons/collections/CollectionUtils;->getFreq(Ljava/lang/Object;Ljava/util/Map;)I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v4

    .local v4, m:I
    :goto_0
    if-ge v1, v4, :cond_0

    .line 97
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 1
    .parameter "collection"

    .prologue
    .line 1035
    invoke-static {p0}, Lorg/apache/commons/collections/collection/UnmodifiableCollection;->decorate(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
