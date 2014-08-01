.class public Lorg/apache/commons/collections/FastTreeMap;
.super Ljava/util/TreeMap;
.source "FastTreeMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/collections/FastTreeMap$1;,
        Lorg/apache/commons/collections/FastTreeMap$EntrySet;,
        Lorg/apache/commons/collections/FastTreeMap$Values;,
        Lorg/apache/commons/collections/FastTreeMap$KeySet;,
        Lorg/apache/commons/collections/FastTreeMap$CollectionView;
    }
.end annotation


# instance fields
.field protected fast:Z

.field protected map:Ljava/util/TreeMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/util/TreeMap;-><init>()V

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/collections/FastTreeMap;->fast:Z

    .line 88
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    .line 89
    return-void
.end method

.method public constructor <init>(Ljava/util/Comparator;)V
    .locals 1
    .parameter "comparator"

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/util/TreeMap;-><init>()V

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/collections/FastTreeMap;->fast:Z

    .line 98
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0, p1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    .line 99
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 1
    .parameter "map"

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/util/TreeMap;-><init>()V

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/collections/FastTreeMap;->fast:Z

    .line 109
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0, p1}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    .line 110
    return-void
.end method

.method public constructor <init>(Ljava/util/SortedMap;)V
    .locals 1
    .parameter "map"

    .prologue
    .line 119
    invoke-direct {p0}, Ljava/util/TreeMap;-><init>()V

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/collections/FastTreeMap;->fast:Z

    .line 120
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0, p1}, Ljava/util/TreeMap;-><init>(Ljava/util/SortedMap;)V

    iput-object v0, p0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    .line 121
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    .line 357
    iget-boolean v0, p0, Lorg/apache/commons/collections/FastTreeMap;->fast:Z

    if-eqz v0, :cond_0

    .line 358
    monitor-enter p0

    .line 359
    :try_start_0
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 366
    :goto_0
    return-void

    .line 360
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 362
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    monitor-enter v1

    .line 363
    :try_start_1
    iget-object v0, p0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->clear()V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 364
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public clone()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 470
    const/4 v0, 0x0

    .line 471
    .local v0, results:Lorg/apache/commons/collections/FastTreeMap;
    iget-boolean v2, p0, Lorg/apache/commons/collections/FastTreeMap;->fast:Z

    if-eqz v2, :cond_0

    .line 472
    new-instance v0, Lorg/apache/commons/collections/FastTreeMap;

    .end local v0           #results:Lorg/apache/commons/collections/FastTreeMap;
    iget-object v2, p0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    invoke-direct {v0, v2}, Lorg/apache/commons/collections/FastTreeMap;-><init>(Ljava/util/SortedMap;)V

    .line 478
    .restart local v0       #results:Lorg/apache/commons/collections/FastTreeMap;
    :goto_0
    invoke-virtual {p0}, Lorg/apache/commons/collections/FastTreeMap;->getFast()Z

    move-result v2

    invoke-virtual {v0, v2}, Lorg/apache/commons/collections/FastTreeMap;->setFast(Z)V

    .line 479
    return-object v0

    .line 474
    :cond_0
    iget-object v3, p0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    monitor-enter v3

    .line 475
    :try_start_0
    new-instance v1, Lorg/apache/commons/collections/FastTreeMap;

    iget-object v2, p0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    invoke-direct {v1, v2}, Lorg/apache/commons/collections/FastTreeMap;-><init>(Ljava/util/SortedMap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0           #results:Lorg/apache/commons/collections/FastTreeMap;
    .local v1, results:Lorg/apache/commons/collections/FastTreeMap;
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, v1

    .end local v1           #results:Lorg/apache/commons/collections/FastTreeMap;
    .restart local v0       #results:Lorg/apache/commons/collections/FastTreeMap;
    goto :goto_0

    .line 476
    :catchall_0
    move-exception v2

    :goto_1
    monitor-exit v3

    throw v2

    .end local v0           #results:Lorg/apache/commons/collections/FastTreeMap;
    .restart local v1       #results:Lorg/apache/commons/collections/FastTreeMap;
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1           #results:Lorg/apache/commons/collections/FastTreeMap;
    .restart local v0       #results:Lorg/apache/commons/collections/FastTreeMap;
    goto :goto_1
.end method

.method public comparator()Ljava/util/Comparator;
    .locals 2

    .prologue
    .line 241
    iget-boolean v0, p0, Lorg/apache/commons/collections/FastTreeMap;->fast:Z

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->comparator()Ljava/util/Comparator;

    move-result-object v0

    .line 245
    :goto_0
    return-object v0

    .line 244
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    monitor-enter v1

    .line 245
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->comparator()Ljava/util/Comparator;

    move-result-object v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 246
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 2
    .parameter "key"

    .prologue
    .line 208
    iget-boolean v0, p0, Lorg/apache/commons/collections/FastTreeMap;->fast:Z

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    .line 212
    :goto_0
    return v0

    .line 211
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    monitor-enter v1

    .line 212
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 213
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 2
    .parameter "value"

    .prologue
    .line 225
    iget-boolean v0, p0, Lorg/apache/commons/collections/FastTreeMap;->fast:Z

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/AbstractMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    .line 229
    :goto_0
    return v0

    .line 228
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    monitor-enter v1

    .line 229
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/AbstractMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 230
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 2

    .prologue
    .line 547
    new-instance v0, Lorg/apache/commons/collections/FastTreeMap$EntrySet;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/collections/FastTreeMap$EntrySet;-><init>(Lorg/apache/commons/collections/FastTreeMap;Lorg/apache/commons/collections/FastTreeMap$1;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 10
    .parameter "o"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 383
    if-ne p1, p0, :cond_1

    .line 431
    :cond_0
    :goto_0
    return v5

    .line 385
    :cond_1
    instance-of v7, p1, Ljava/util/Map;

    if-nez v7, :cond_2

    move v5, v6

    .line 386
    goto :goto_0

    :cond_2
    move-object v3, p1

    .line 388
    check-cast v3, Ljava/util/Map;

    .line 391
    .local v3, mo:Ljava/util/Map;
    iget-boolean v7, p0, Lorg/apache/commons/collections/FastTreeMap;->fast:Z

    if-eqz v7, :cond_7

    .line 392
    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v7

    iget-object v8, p0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    invoke-virtual {v8}, Ljava/util/TreeMap;->size()I

    move-result v8

    if-eq v7, v8, :cond_3

    move v5, v6

    .line 393
    goto :goto_0

    .line 395
    :cond_3
    iget-object v7, p0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    invoke-virtual {v7}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 396
    .local v1, i:Ljava/util/Iterator;
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 397
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 398
    .local v0, e:Ljava/util/Map$Entry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 399
    .local v2, key:Ljava/lang/Object;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 400
    .local v4, value:Ljava/lang/Object;
    if-nez v4, :cond_6

    .line 401
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_5

    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    :cond_5
    move v5, v6

    .line 402
    goto :goto_0

    .line 405
    :cond_6
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    move v5, v6

    .line 406
    goto :goto_0

    .line 412
    .end local v0           #e:Ljava/util/Map$Entry;
    .end local v1           #i:Ljava/util/Iterator;
    .end local v2           #key:Ljava/lang/Object;
    .end local v4           #value:Ljava/lang/Object;
    :cond_7
    iget-object v7, p0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    monitor-enter v7

    .line 413
    :try_start_0
    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v8

    iget-object v9, p0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    invoke-virtual {v9}, Ljava/util/TreeMap;->size()I

    move-result v9

    if-eq v8, v9, :cond_8

    .line 414
    monitor-exit v7

    move v5, v6

    goto :goto_0

    .line 416
    :cond_8
    iget-object v8, p0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    invoke-virtual {v8}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 417
    .restart local v1       #i:Ljava/util/Iterator;
    :cond_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_a

    .line 431
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 432
    .end local v1           #i:Ljava/util/Iterator;
    :catchall_0
    move-exception v5

    monitor-exit v7

    throw v5

    .line 418
    .restart local v1       #i:Ljava/util/Iterator;
    :cond_a
    :try_start_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 419
    .restart local v0       #e:Ljava/util/Map$Entry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 420
    .restart local v2       #key:Ljava/lang/Object;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 421
    .restart local v4       #value:Ljava/lang/Object;
    if-nez v4, :cond_c

    .line 422
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_b

    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_9

    .line 423
    :cond_b
    monitor-exit v7

    move v5, v6

    goto/16 :goto_0

    .line 426
    :cond_c
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_9

    .line 427
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v5, v6

    goto/16 :goto_0
.end method

.method public firstKey()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 256
    iget-boolean v0, p0, Lorg/apache/commons/collections/FastTreeMap;->fast:Z

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->firstKey()Ljava/lang/Object;

    move-result-object v0

    .line 260
    :goto_0
    return-object v0

    .line 259
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    monitor-enter v1

    .line 260
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->firstKey()Ljava/lang/Object;

    move-result-object v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 261
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "key"

    .prologue
    .line 161
    iget-boolean v0, p0, Lorg/apache/commons/collections/FastTreeMap;->fast:Z

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 165
    :goto_0
    return-object v0

    .line 164
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    monitor-enter v1

    .line 165
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 166
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getFast()Z
    .locals 1

    .prologue
    .line 133
    iget-boolean v0, p0, Lorg/apache/commons/collections/FastTreeMap;->fast:Z

    return v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 444
    iget-boolean v2, p0, Lorg/apache/commons/collections/FastTreeMap;->fast:Z

    if-eqz v2, :cond_1

    .line 445
    const/4 v0, 0x0

    .line 446
    .local v0, h:I
    iget-object v2, p0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    invoke-virtual {v2}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 447
    .local v1, i:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 458
    :goto_1
    return v0

    .line 448
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_0

    .line 452
    .end local v0           #h:I
    .end local v1           #i:Ljava/util/Iterator;
    :cond_1
    iget-object v3, p0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    monitor-enter v3

    .line 453
    const/4 v0, 0x0

    .line 454
    .restart local v0       #h:I
    :try_start_0
    iget-object v2, p0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    invoke-virtual {v2}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 455
    .restart local v1       #i:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 458
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 459
    .end local v1           #i:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 456
    .restart local v1       #i:Ljava/util/Iterator;
    :cond_2
    :try_start_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    add-int/2addr v0, v2

    goto :goto_2
.end method

.method public headMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 2
    .parameter "key"

    .prologue
    .line 494
    iget-boolean v0, p0, Lorg/apache/commons/collections/FastTreeMap;->fast:Z

    if-eqz v0, :cond_0

    .line 495
    iget-object v0, p0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->headMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v0

    .line 498
    :goto_0
    return-object v0

    .line 497
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    monitor-enter v1

    .line 498
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->headMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 499
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .line 191
    iget-boolean v0, p0, Lorg/apache/commons/collections/FastTreeMap;->fast:Z

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->isEmpty()Z

    move-result v0

    .line 195
    :goto_0
    return v0

    .line 194
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    monitor-enter v1

    .line 195
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->isEmpty()Z

    move-result v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 196
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 2

    .prologue
    .line 554
    new-instance v0, Lorg/apache/commons/collections/FastTreeMap$KeySet;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/collections/FastTreeMap$KeySet;-><init>(Lorg/apache/commons/collections/FastTreeMap;Lorg/apache/commons/collections/FastTreeMap$1;)V

    return-object v0
.end method

.method public lastKey()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 271
    iget-boolean v0, p0, Lorg/apache/commons/collections/FastTreeMap;->fast:Z

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->lastKey()Ljava/lang/Object;

    move-result-object v0

    .line 275
    :goto_0
    return-object v0

    .line 274
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    monitor-enter v1

    .line 275
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->lastKey()Ljava/lang/Object;

    move-result-object v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 276
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .parameter "key"
    .parameter "value"

    .prologue
    .line 297
    iget-boolean v2, p0, Lorg/apache/commons/collections/FastTreeMap;->fast:Z

    if-eqz v2, :cond_0

    .line 298
    monitor-enter p0

    .line 299
    :try_start_0
    iget-object v2, p0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    invoke-virtual {v2}, Ljava/util/TreeMap;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/TreeMap;

    .line 300
    .local v1, temp:Ljava/util/TreeMap;
    invoke-virtual {v1, p1, p2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 301
    .local v0, result:Ljava/lang/Object;
    iput-object v1, p0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    .line 302
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 306
    .end local v0           #result:Ljava/lang/Object;
    .end local v1           #temp:Ljava/util/TreeMap;
    :goto_0
    return-object v0

    .line 303
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 305
    :cond_0
    iget-object v3, p0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    monitor-enter v3

    .line 306
    :try_start_1
    iget-object v2, p0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    invoke-virtual {v2, p1, p2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 307
    :catchall_1
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 3
    .parameter "in"

    .prologue
    .line 318
    iget-boolean v1, p0, Lorg/apache/commons/collections/FastTreeMap;->fast:Z

    if-eqz v1, :cond_0

    .line 319
    monitor-enter p0

    .line 320
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/TreeMap;

    .line 321
    .local v0, temp:Ljava/util/TreeMap;
    invoke-virtual {v0, p1}, Ljava/util/AbstractMap;->putAll(Ljava/util/Map;)V

    .line 322
    iput-object v0, p0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 329
    .end local v0           #temp:Ljava/util/TreeMap;
    :goto_0
    return-void

    .line 323
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 325
    :cond_0
    iget-object v2, p0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    monitor-enter v2

    .line 326
    :try_start_1
    iget-object v1, p0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    invoke-virtual {v1, p1}, Ljava/util/AbstractMap;->putAll(Ljava/util/Map;)V

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 327
    :catchall_1
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .parameter "key"

    .prologue
    .line 339
    iget-boolean v2, p0, Lorg/apache/commons/collections/FastTreeMap;->fast:Z

    if-eqz v2, :cond_0

    .line 340
    monitor-enter p0

    .line 341
    :try_start_0
    iget-object v2, p0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    invoke-virtual {v2}, Ljava/util/TreeMap;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/TreeMap;

    .line 342
    .local v1, temp:Ljava/util/TreeMap;
    invoke-virtual {v1, p1}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 343
    .local v0, result:Ljava/lang/Object;
    iput-object v1, p0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    .line 344
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 348
    .end local v0           #result:Ljava/lang/Object;
    .end local v1           #temp:Ljava/util/TreeMap;
    :goto_0
    return-object v0

    .line 345
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 347
    :cond_0
    iget-object v3, p0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    monitor-enter v3

    .line 348
    :try_start_1
    iget-object v2, p0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    invoke-virtual {v2, p1}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 349
    :catchall_1
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public setFast(Z)V
    .locals 0
    .parameter "fast"

    .prologue
    .line 142
    iput-boolean p1, p0, Lorg/apache/commons/collections/FastTreeMap;->fast:Z

    .line 143
    return-void
.end method

.method public size()I
    .locals 2

    .prologue
    .line 176
    iget-boolean v0, p0, Lorg/apache/commons/collections/FastTreeMap;->fast:Z

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v0

    .line 180
    :goto_0
    return v0

    .line 179
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    monitor-enter v1

    .line 180
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 181
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 2
    .parameter "fromKey"
    .parameter "toKey"

    .prologue
    .line 512
    iget-boolean v0, p0, Lorg/apache/commons/collections/FastTreeMap;->fast:Z

    if-eqz v0, :cond_0

    .line 513
    iget-object v0, p0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/TreeMap;->subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v0

    .line 516
    :goto_0
    return-object v0

    .line 515
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    monitor-enter v1

    .line 516
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/TreeMap;->subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 517
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 2
    .parameter "key"

    .prologue
    .line 529
    iget-boolean v0, p0, Lorg/apache/commons/collections/FastTreeMap;->fast:Z

    if-eqz v0, :cond_0

    .line 530
    iget-object v0, p0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v0

    .line 533
    :goto_0
    return-object v0

    .line 532
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    monitor-enter v1

    .line 533
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 534
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public values()Ljava/util/Collection;
    .locals 2

    .prologue
    .line 561
    new-instance v0, Lorg/apache/commons/collections/FastTreeMap$Values;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/collections/FastTreeMap$Values;-><init>(Lorg/apache/commons/collections/FastTreeMap;Lorg/apache/commons/collections/FastTreeMap$1;)V

    return-object v0
.end method
