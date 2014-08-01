.class public Lorg/apache/commons/collections/FastHashMap;
.super Ljava/util/HashMap;
.source "FastHashMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/collections/FastHashMap$1;,
        Lorg/apache/commons/collections/FastHashMap$EntrySet;,
        Lorg/apache/commons/collections/FastHashMap$Values;,
        Lorg/apache/commons/collections/FastHashMap$KeySet;,
        Lorg/apache/commons/collections/FastHashMap$CollectionView;
    }
.end annotation


# instance fields
.field protected fast:Z

.field protected map:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/collections/FastHashMap;->fast:Z

    .line 85
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    .line 86
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "capacity"

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/collections/FastHashMap;->fast:Z

    .line 95
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    .line 96
    return-void
.end method

.method public constructor <init>(IF)V
    .locals 1
    .parameter "capacity"
    .parameter "factor"

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/collections/FastHashMap;->fast:Z

    .line 106
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1, p2}, Ljava/util/HashMap;-><init>(IF)V

    iput-object v0, p0, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    .line 107
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 1
    .parameter "map"

    .prologue
    .line 115
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/collections/FastHashMap;->fast:Z

    .line 116
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    .line 117
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    .line 306
    iget-boolean v0, p0, Lorg/apache/commons/collections/FastHashMap;->fast:Z

    if-eqz v0, :cond_0

    .line 307
    monitor-enter p0

    .line 308
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 315
    :goto_0
    return-void

    .line 309
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 311
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    monitor-enter v1

    .line 312
    :try_start_1
    iget-object v0, p0, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 313
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public clone()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 419
    const/4 v0, 0x0

    .line 420
    .local v0, results:Lorg/apache/commons/collections/FastHashMap;
    iget-boolean v2, p0, Lorg/apache/commons/collections/FastHashMap;->fast:Z

    if-eqz v2, :cond_0

    .line 421
    new-instance v0, Lorg/apache/commons/collections/FastHashMap;

    .end local v0           #results:Lorg/apache/commons/collections/FastHashMap;
    iget-object v2, p0, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    invoke-direct {v0, v2}, Lorg/apache/commons/collections/FastHashMap;-><init>(Ljava/util/Map;)V

    .line 427
    .restart local v0       #results:Lorg/apache/commons/collections/FastHashMap;
    :goto_0
    invoke-virtual {p0}, Lorg/apache/commons/collections/FastHashMap;->getFast()Z

    move-result v2

    invoke-virtual {v0, v2}, Lorg/apache/commons/collections/FastHashMap;->setFast(Z)V

    .line 428
    return-object v0

    .line 423
    :cond_0
    iget-object v3, p0, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    monitor-enter v3

    .line 424
    :try_start_0
    new-instance v1, Lorg/apache/commons/collections/FastHashMap;

    iget-object v2, p0, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    invoke-direct {v1, v2}, Lorg/apache/commons/collections/FastHashMap;-><init>(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0           #results:Lorg/apache/commons/collections/FastHashMap;
    .local v1, results:Lorg/apache/commons/collections/FastHashMap;
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, v1

    .end local v1           #results:Lorg/apache/commons/collections/FastHashMap;
    .restart local v0       #results:Lorg/apache/commons/collections/FastHashMap;
    goto :goto_0

    .line 425
    :catchall_0
    move-exception v2

    :goto_1
    monitor-exit v3

    throw v2

    .end local v0           #results:Lorg/apache/commons/collections/FastHashMap;
    .restart local v1       #results:Lorg/apache/commons/collections/FastHashMap;
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1           #results:Lorg/apache/commons/collections/FastHashMap;
    .restart local v0       #results:Lorg/apache/commons/collections/FastHashMap;
    goto :goto_1
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 2
    .parameter "key"

    .prologue
    .line 204
    iget-boolean v0, p0, Lorg/apache/commons/collections/FastHashMap;->fast:Z

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    .line 208
    :goto_0
    return v0

    .line 207
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    monitor-enter v1

    .line 208
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 209
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 2
    .parameter "value"

    .prologue
    .line 221
    iget-boolean v0, p0, Lorg/apache/commons/collections/FastHashMap;->fast:Z

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    .line 225
    :goto_0
    return v0

    .line 224
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    monitor-enter v1

    .line 225
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 226
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 2

    .prologue
    .line 439
    new-instance v0, Lorg/apache/commons/collections/FastHashMap$EntrySet;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/collections/FastHashMap$EntrySet;-><init>(Lorg/apache/commons/collections/FastHashMap;Lorg/apache/commons/collections/FastHashMap$1;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 10
    .parameter "o"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 331
    if-ne p1, p0, :cond_1

    .line 380
    :cond_0
    :goto_0
    return v5

    .line 333
    :cond_1
    instance-of v7, p1, Ljava/util/Map;

    if-nez v7, :cond_2

    move v5, v6

    .line 334
    goto :goto_0

    :cond_2
    move-object v3, p1

    .line 336
    check-cast v3, Ljava/util/Map;

    .line 339
    .local v3, mo:Ljava/util/Map;
    iget-boolean v7, p0, Lorg/apache/commons/collections/FastHashMap;->fast:Z

    if-eqz v7, :cond_7

    .line 340
    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v7

    iget-object v8, p0, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->size()I

    move-result v8

    if-eq v7, v8, :cond_3

    move v5, v6

    .line 341
    goto :goto_0

    .line 343
    :cond_3
    iget-object v7, p0, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 344
    .local v1, i:Ljava/util/Iterator;
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 345
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 346
    .local v0, e:Ljava/util/Map$Entry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 347
    .local v2, key:Ljava/lang/Object;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 348
    .local v4, value:Ljava/lang/Object;
    if-nez v4, :cond_6

    .line 349
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_5

    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    :cond_5
    move v5, v6

    .line 350
    goto :goto_0

    .line 353
    :cond_6
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    move v5, v6

    .line 354
    goto :goto_0

    .line 361
    .end local v0           #e:Ljava/util/Map$Entry;
    .end local v1           #i:Ljava/util/Iterator;
    .end local v2           #key:Ljava/lang/Object;
    .end local v4           #value:Ljava/lang/Object;
    :cond_7
    iget-object v7, p0, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    monitor-enter v7

    .line 362
    :try_start_0
    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v8

    iget-object v9, p0, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->size()I

    move-result v9

    if-eq v8, v9, :cond_8

    .line 363
    monitor-exit v7

    move v5, v6

    goto :goto_0

    .line 365
    :cond_8
    iget-object v8, p0, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 366
    .restart local v1       #i:Ljava/util/Iterator;
    :cond_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_a

    .line 380
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 381
    .end local v1           #i:Ljava/util/Iterator;
    :catchall_0
    move-exception v5

    monitor-exit v7

    throw v5

    .line 367
    .restart local v1       #i:Ljava/util/Iterator;
    :cond_a
    :try_start_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 368
    .restart local v0       #e:Ljava/util/Map$Entry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 369
    .restart local v2       #key:Ljava/lang/Object;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 370
    .restart local v4       #value:Ljava/lang/Object;
    if-nez v4, :cond_c

    .line 371
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_b

    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_9

    .line 372
    :cond_b
    monitor-exit v7

    move v5, v6

    goto/16 :goto_0

    .line 375
    :cond_c
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_9

    .line 376
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v5, v6

    goto/16 :goto_0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "key"

    .prologue
    .line 157
    iget-boolean v0, p0, Lorg/apache/commons/collections/FastHashMap;->fast:Z

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 161
    :goto_0
    return-object v0

    .line 160
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    monitor-enter v1

    .line 161
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 162
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getFast()Z
    .locals 1

    .prologue
    .line 129
    iget-boolean v0, p0, Lorg/apache/commons/collections/FastHashMap;->fast:Z

    return v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 393
    iget-boolean v2, p0, Lorg/apache/commons/collections/FastHashMap;->fast:Z

    if-eqz v2, :cond_1

    .line 394
    const/4 v0, 0x0

    .line 395
    .local v0, h:I
    iget-object v2, p0, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 396
    .local v1, i:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 407
    :goto_1
    return v0

    .line 397
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_0

    .line 401
    .end local v0           #h:I
    .end local v1           #i:Ljava/util/Iterator;
    :cond_1
    iget-object v3, p0, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    monitor-enter v3

    .line 402
    const/4 v0, 0x0

    .line 403
    .restart local v0       #h:I
    :try_start_0
    iget-object v2, p0, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 404
    .restart local v1       #i:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 407
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 408
    .end local v1           #i:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 405
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

.method public isEmpty()Z
    .locals 2

    .prologue
    .line 187
    iget-boolean v0, p0, Lorg/apache/commons/collections/FastHashMap;->fast:Z

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    .line 191
    :goto_0
    return v0

    .line 190
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    monitor-enter v1

    .line 191
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 192
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 2

    .prologue
    .line 446
    new-instance v0, Lorg/apache/commons/collections/FastHashMap$KeySet;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/collections/FastHashMap$KeySet;-><init>(Lorg/apache/commons/collections/FastHashMap;Lorg/apache/commons/collections/FastHashMap$1;)V

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .parameter "key"
    .parameter "value"

    .prologue
    .line 246
    iget-boolean v2, p0, Lorg/apache/commons/collections/FastHashMap;->fast:Z

    if-eqz v2, :cond_0

    .line 247
    monitor-enter p0

    .line 248
    :try_start_0
    iget-object v2, p0, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 249
    .local v1, temp:Ljava/util/HashMap;
    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 250
    .local v0, result:Ljava/lang/Object;
    iput-object v1, p0, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    .line 251
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 255
    .end local v0           #result:Ljava/lang/Object;
    .end local v1           #temp:Ljava/util/HashMap;
    :goto_0
    return-object v0

    .line 252
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 254
    :cond_0
    iget-object v3, p0, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    monitor-enter v3

    .line 255
    :try_start_1
    iget-object v2, p0, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    invoke-virtual {v2, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 256
    :catchall_1
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 3
    .parameter "in"

    .prologue
    .line 267
    iget-boolean v1, p0, Lorg/apache/commons/collections/FastHashMap;->fast:Z

    if-eqz v1, :cond_0

    .line 268
    monitor-enter p0

    .line 269
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 270
    .local v0, temp:Ljava/util/HashMap;
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 271
    iput-object v0, p0, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 278
    .end local v0           #temp:Ljava/util/HashMap;
    :goto_0
    return-void

    .line 272
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 274
    :cond_0
    iget-object v2, p0, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    monitor-enter v2

    .line 275
    :try_start_1
    iget-object v1, p0, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 276
    :catchall_1
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .parameter "key"

    .prologue
    .line 288
    iget-boolean v2, p0, Lorg/apache/commons/collections/FastHashMap;->fast:Z

    if-eqz v2, :cond_0

    .line 289
    monitor-enter p0

    .line 290
    :try_start_0
    iget-object v2, p0, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 291
    .local v1, temp:Ljava/util/HashMap;
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 292
    .local v0, result:Ljava/lang/Object;
    iput-object v1, p0, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    .line 293
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 297
    .end local v0           #result:Ljava/lang/Object;
    .end local v1           #temp:Ljava/util/HashMap;
    :goto_0
    return-object v0

    .line 294
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 296
    :cond_0
    iget-object v3, p0, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    monitor-enter v3

    .line 297
    :try_start_1
    iget-object v2, p0, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 298
    :catchall_1
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public setFast(Z)V
    .locals 0
    .parameter "fast"

    .prologue
    .line 138
    iput-boolean p1, p0, Lorg/apache/commons/collections/FastHashMap;->fast:Z

    .line 139
    return-void
.end method

.method public size()I
    .locals 2

    .prologue
    .line 172
    iget-boolean v0, p0, Lorg/apache/commons/collections/FastHashMap;->fast:Z

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    .line 176
    :goto_0
    return v0

    .line 175
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    monitor-enter v1

    .line 176
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 177
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public values()Ljava/util/Collection;
    .locals 2

    .prologue
    .line 453
    new-instance v0, Lorg/apache/commons/collections/FastHashMap$Values;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/collections/FastHashMap$Values;-><init>(Lorg/apache/commons/collections/FastHashMap;Lorg/apache/commons/collections/FastHashMap$1;)V

    return-object v0
.end method
