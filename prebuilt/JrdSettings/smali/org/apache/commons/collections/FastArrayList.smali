.class public Lorg/apache/commons/collections/FastArrayList;
.super Ljava/util/ArrayList;
.source "FastArrayList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/collections/FastArrayList$ListIter;,
        Lorg/apache/commons/collections/FastArrayList$SubList;
    }
.end annotation


# instance fields
.field protected fast:Z

.field protected list:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 115
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    .line 124
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/collections/FastArrayList;->fast:Z

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    .line 78
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "capacity"

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 115
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    .line 124
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/collections/FastArrayList;->fast:Z

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    .line 91
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 1
    .parameter "collection"

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 115
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    .line 124
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/collections/FastArrayList;->fast:Z

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    .line 106
    return-void
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 3
    .parameter "index"
    .parameter "element"

    .prologue
    .line 183
    iget-boolean v1, p0, Lorg/apache/commons/collections/FastArrayList;->fast:Z

    if-eqz v1, :cond_0

    .line 184
    monitor-enter p0

    .line 185
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 186
    .local v0, temp:Ljava/util/ArrayList;
    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 187
    iput-object v0, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 195
    .end local v0           #temp:Ljava/util/ArrayList;
    :goto_0
    return-void

    .line 188
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 190
    :cond_0
    iget-object v2, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    monitor-enter v2

    .line 191
    :try_start_1
    iget-object v1, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v1, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 192
    :catchall_1
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public add(Ljava/lang/Object;)Z
    .locals 4
    .parameter "element"

    .prologue
    .line 156
    iget-boolean v2, p0, Lorg/apache/commons/collections/FastArrayList;->fast:Z

    if-eqz v2, :cond_0

    .line 157
    monitor-enter p0

    .line 158
    :try_start_0
    iget-object v2, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 159
    .local v1, temp:Ljava/util/ArrayList;
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 160
    .local v0, result:Z
    iput-object v1, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    .line 161
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    .end local v0           #result:Z
    .end local v1           #temp:Ljava/util/ArrayList;
    :goto_0
    return v0

    .line 162
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 164
    :cond_0
    iget-object v3, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    monitor-enter v3

    .line 165
    :try_start_1
    iget-object v2, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 166
    :catchall_1
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 4
    .parameter "index"
    .parameter "collection"

    .prologue
    .line 235
    iget-boolean v2, p0, Lorg/apache/commons/collections/FastArrayList;->fast:Z

    if-eqz v2, :cond_0

    .line 236
    monitor-enter p0

    .line 237
    :try_start_0
    iget-object v2, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 238
    .local v1, temp:Ljava/util/ArrayList;
    invoke-virtual {v1, p1, p2}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    move-result v0

    .line 239
    .local v0, result:Z
    iput-object v1, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    .line 240
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 244
    .end local v0           #result:Z
    .end local v1           #temp:Ljava/util/ArrayList;
    :goto_0
    return v0

    .line 241
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 243
    :cond_0
    iget-object v3, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    monitor-enter v3

    .line 244
    :try_start_1
    iget-object v2, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v2, p1, p2}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    move-result v0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 245
    :catchall_1
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 4
    .parameter "collection"

    .prologue
    .line 207
    iget-boolean v2, p0, Lorg/apache/commons/collections/FastArrayList;->fast:Z

    if-eqz v2, :cond_0

    .line 208
    monitor-enter p0

    .line 209
    :try_start_0
    iget-object v2, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 210
    .local v1, temp:Ljava/util/ArrayList;
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-result v0

    .line 211
    .local v0, result:Z
    iput-object v1, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    .line 212
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 216
    .end local v0           #result:Z
    .end local v1           #temp:Ljava/util/ArrayList;
    :goto_0
    return v0

    .line 213
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 215
    :cond_0
    iget-object v3, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    monitor-enter v3

    .line 216
    :try_start_1
    iget-object v2, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-result v0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 217
    :catchall_1
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public clear()V
    .locals 3

    .prologue
    .line 260
    iget-boolean v1, p0, Lorg/apache/commons/collections/FastArrayList;->fast:Z

    if-eqz v1, :cond_0

    .line 261
    monitor-enter p0

    .line 262
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 263
    .local v0, temp:Ljava/util/ArrayList;
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 264
    iput-object v0, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 272
    .end local v0           #temp:Ljava/util/ArrayList;
    :goto_0
    return-void

    .line 265
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 267
    :cond_0
    iget-object v2, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    monitor-enter v2

    .line 268
    :try_start_1
    iget-object v1, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 269
    :catchall_1
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public clone()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 281
    const/4 v0, 0x0

    .line 282
    .local v0, results:Lorg/apache/commons/collections/FastArrayList;
    iget-boolean v2, p0, Lorg/apache/commons/collections/FastArrayList;->fast:Z

    if-eqz v2, :cond_0

    .line 283
    new-instance v0, Lorg/apache/commons/collections/FastArrayList;

    .end local v0           #results:Lorg/apache/commons/collections/FastArrayList;
    iget-object v2, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Lorg/apache/commons/collections/FastArrayList;-><init>(Ljava/util/Collection;)V

    .line 289
    .restart local v0       #results:Lorg/apache/commons/collections/FastArrayList;
    :goto_0
    invoke-virtual {p0}, Lorg/apache/commons/collections/FastArrayList;->getFast()Z

    move-result v2

    invoke-virtual {v0, v2}, Lorg/apache/commons/collections/FastArrayList;->setFast(Z)V

    .line 290
    return-object v0

    .line 285
    :cond_0
    iget-object v3, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    monitor-enter v3

    .line 286
    :try_start_0
    new-instance v1, Lorg/apache/commons/collections/FastArrayList;

    iget-object v2, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Lorg/apache/commons/collections/FastArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0           #results:Lorg/apache/commons/collections/FastArrayList;
    .local v1, results:Lorg/apache/commons/collections/FastArrayList;
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, v1

    .end local v1           #results:Lorg/apache/commons/collections/FastArrayList;
    .restart local v0       #results:Lorg/apache/commons/collections/FastArrayList;
    goto :goto_0

    .line 287
    :catchall_0
    move-exception v2

    :goto_1
    monitor-exit v3

    throw v2

    .end local v0           #results:Lorg/apache/commons/collections/FastArrayList;
    .restart local v1       #results:Lorg/apache/commons/collections/FastArrayList;
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1           #results:Lorg/apache/commons/collections/FastArrayList;
    .restart local v0       #results:Lorg/apache/commons/collections/FastArrayList;
    goto :goto_1
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 2
    .parameter "element"

    .prologue
    .line 302
    iget-boolean v0, p0, Lorg/apache/commons/collections/FastArrayList;->fast:Z

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 306
    :goto_0
    return v0

    .line 305
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    monitor-enter v1

    .line 306
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 307
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 2
    .parameter "collection"

    .prologue
    .line 321
    iget-boolean v0, p0, Lorg/apache/commons/collections/FastArrayList;->fast:Z

    if-eqz v0, :cond_0

    .line 322
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    .line 325
    :goto_0
    return v0

    .line 324
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    monitor-enter v1

    .line 325
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 326
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public ensureCapacity(I)V
    .locals 3
    .parameter "capacity"

    .prologue
    .line 341
    iget-boolean v1, p0, Lorg/apache/commons/collections/FastArrayList;->fast:Z

    if-eqz v1, :cond_0

    .line 342
    monitor-enter p0

    .line 343
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 344
    .local v0, temp:Ljava/util/ArrayList;
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 345
    iput-object v0, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 353
    .end local v0           #temp:Ljava/util/ArrayList;
    :goto_0
    return-void

    .line 346
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 348
    :cond_0
    iget-object v2, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    monitor-enter v2

    .line 349
    :try_start_1
    iget-object v1, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->ensureCapacity(I)V

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 350
    :catchall_1
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 9
    .parameter "o"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 367
    if-ne p1, p0, :cond_1

    move v6, v5

    .line 394
    :cond_0
    :goto_0
    return v6

    .line 369
    :cond_1
    instance-of v7, p1, Ljava/util/List;

    if-eqz v7, :cond_0

    move-object v2, p1

    .line 371
    check-cast v2, Ljava/util/List;

    .line 374
    .local v2, lo:Ljava/util/List;
    iget-boolean v7, p0, Lorg/apache/commons/collections/FastArrayList;->fast:Z

    if-eqz v7, :cond_8

    .line 375
    iget-object v7, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/AbstractList;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    .line 376
    .local v0, li1:Ljava/util/ListIterator;
    invoke-interface {v2}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .line 377
    .local v1, li2:Ljava/util/ListIterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_4

    .line 383
    :cond_3
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_7

    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_7

    :goto_1
    move v6, v5

    goto :goto_0

    .line 378
    :cond_4
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 379
    .local v3, o1:Ljava/lang/Object;
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 380
    .local v4, o2:Ljava/lang/Object;
    if-nez v3, :cond_6

    if-nez v4, :cond_5

    move v7, v5

    :goto_2
    if-nez v7, :cond_2

    goto :goto_0

    :cond_5
    move v7, v6

    goto :goto_2

    :cond_6
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    goto :goto_2

    .end local v3           #o1:Ljava/lang/Object;
    .end local v4           #o2:Ljava/lang/Object;
    :cond_7
    move v5, v6

    .line 383
    goto :goto_1

    .line 385
    .end local v0           #li1:Ljava/util/ListIterator;
    .end local v1           #li2:Ljava/util/ListIterator;
    :cond_8
    iget-object v8, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    monitor-enter v8

    .line 386
    :try_start_0
    iget-object v7, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/AbstractList;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    .line 387
    .restart local v0       #li1:Ljava/util/ListIterator;
    invoke-interface {v2}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .line 388
    .restart local v1       #li2:Ljava/util/ListIterator;
    :cond_9
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_c

    .line 394
    :cond_a
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_b

    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_b

    move v6, v5

    :cond_b
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 395
    .end local v0           #li1:Ljava/util/ListIterator;
    .end local v1           #li2:Ljava/util/ListIterator;
    :catchall_0
    move-exception v5

    monitor-exit v8

    throw v5

    .line 389
    .restart local v0       #li1:Ljava/util/ListIterator;
    .restart local v1       #li2:Ljava/util/ListIterator;
    :cond_c
    :try_start_1
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 390
    .restart local v3       #o1:Ljava/lang/Object;
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 391
    .restart local v4       #o2:Ljava/lang/Object;
    if-nez v3, :cond_e

    if-nez v4, :cond_d

    move v7, v5

    :goto_3
    if-nez v7, :cond_9

    .line 392
    monitor-exit v8

    goto/16 :goto_0

    :cond_d
    move v7, v6

    .line 391
    goto :goto_3

    :cond_e
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v7

    goto :goto_3
.end method

.method public get(I)Ljava/lang/Object;
    .locals 2
    .parameter "index"

    .prologue
    .line 410
    iget-boolean v0, p0, Lorg/apache/commons/collections/FastArrayList;->fast:Z

    if-eqz v0, :cond_0

    .line 411
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 414
    :goto_0
    return-object v0

    .line 413
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    monitor-enter v1

    .line 414
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 415
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getFast()Z
    .locals 1

    .prologue
    .line 133
    iget-boolean v0, p0, Lorg/apache/commons/collections/FastArrayList;->fast:Z

    return v0
.end method

.method public hashCode()I
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 428
    iget-boolean v3, p0, Lorg/apache/commons/collections/FastArrayList;->fast:Z

    if-eqz v3, :cond_2

    .line 429
    const/4 v0, 0x1

    .line 430
    .local v0, hashCode:I
    iget-object v3, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 431
    .local v1, i:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 444
    :goto_1
    return v0

    .line 432
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 433
    .local v2, o:Ljava/lang/Object;
    mul-int/lit8 v5, v0, 0x1f

    if-nez v2, :cond_1

    move v3, v4

    :goto_2
    add-int v0, v5, v3

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto :goto_2

    .line 437
    .end local v0           #hashCode:I
    .end local v1           #i:Ljava/util/Iterator;
    .end local v2           #o:Ljava/lang/Object;
    :cond_2
    iget-object v5, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    monitor-enter v5

    .line 438
    const/4 v0, 0x1

    .line 439
    .restart local v0       #hashCode:I
    :try_start_0
    iget-object v3, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 440
    .restart local v1       #i:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_3

    .line 444
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 445
    .end local v1           #i:Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v5

    throw v3

    .line 441
    .restart local v1       #i:Ljava/util/Iterator;
    :cond_3
    :try_start_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 442
    .restart local v2       #o:Ljava/lang/Object;
    mul-int/lit8 v6, v0, 0x1f

    if-nez v2, :cond_4

    move v3, v4

    :goto_4
    add-int v0, v6, v3

    goto :goto_3

    :cond_4
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    goto :goto_4
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 2
    .parameter "element"

    .prologue
    .line 460
    iget-boolean v0, p0, Lorg/apache/commons/collections/FastArrayList;->fast:Z

    if-eqz v0, :cond_0

    .line 461
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 464
    :goto_0
    return v0

    .line 463
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    monitor-enter v1

    .line 464
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 465
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .line 476
    iget-boolean v0, p0, Lorg/apache/commons/collections/FastArrayList;->fast:Z

    if-eqz v0, :cond_0

    .line 477
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    .line 480
    :goto_0
    return v0

    .line 479
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    monitor-enter v1

    .line 480
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 481
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2

    .prologue
    .line 497
    iget-boolean v0, p0, Lorg/apache/commons/collections/FastArrayList;->fast:Z

    if-eqz v0, :cond_0

    .line 498
    new-instance v0, Lorg/apache/commons/collections/FastArrayList$ListIter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/collections/FastArrayList$ListIter;-><init>(Lorg/apache/commons/collections/FastArrayList;I)V

    .line 500
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 2
    .parameter "element"

    .prologue
    .line 514
    iget-boolean v0, p0, Lorg/apache/commons/collections/FastArrayList;->fast:Z

    if-eqz v0, :cond_0

    .line 515
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    move-result v0

    .line 518
    :goto_0
    return v0

    .line 517
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    monitor-enter v1

    .line 518
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    move-result v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 519
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public listIterator()Ljava/util/ListIterator;
    .locals 2

    .prologue
    .line 530
    iget-boolean v0, p0, Lorg/apache/commons/collections/FastArrayList;->fast:Z

    if-eqz v0, :cond_0

    .line 531
    new-instance v0, Lorg/apache/commons/collections/FastArrayList$ListIter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/collections/FastArrayList$ListIter;-><init>(Lorg/apache/commons/collections/FastArrayList;I)V

    .line 533
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/AbstractList;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    goto :goto_0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 1
    .parameter "index"

    .prologue
    .line 548
    iget-boolean v0, p0, Lorg/apache/commons/collections/FastArrayList;->fast:Z

    if-eqz v0, :cond_0

    .line 549
    new-instance v0, Lorg/apache/commons/collections/FastArrayList$ListIter;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections/FastArrayList$ListIter;-><init>(Lorg/apache/commons/collections/FastArrayList;I)V

    .line 551
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/AbstractList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    goto :goto_0
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 4
    .parameter "index"

    .prologue
    .line 566
    iget-boolean v2, p0, Lorg/apache/commons/collections/FastArrayList;->fast:Z

    if-eqz v2, :cond_0

    .line 567
    monitor-enter p0

    .line 568
    :try_start_0
    iget-object v2, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 569
    .local v1, temp:Ljava/util/ArrayList;
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    .line 570
    .local v0, result:Ljava/lang/Object;
    iput-object v1, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    .line 571
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 575
    .end local v0           #result:Ljava/lang/Object;
    .end local v1           #temp:Ljava/util/ArrayList;
    :goto_0
    return-object v0

    .line 572
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 574
    :cond_0
    iget-object v3, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    monitor-enter v3

    .line 575
    :try_start_1
    iget-object v2, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 576
    :catchall_1
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 4
    .parameter "element"

    .prologue
    .line 590
    iget-boolean v2, p0, Lorg/apache/commons/collections/FastArrayList;->fast:Z

    if-eqz v2, :cond_0

    .line 591
    monitor-enter p0

    .line 592
    :try_start_0
    iget-object v2, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 593
    .local v1, temp:Ljava/util/ArrayList;
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 594
    .local v0, result:Z
    iput-object v1, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    .line 595
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 599
    .end local v0           #result:Z
    .end local v1           #temp:Ljava/util/ArrayList;
    :goto_0
    return v0

    .line 596
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 598
    :cond_0
    iget-object v3, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    monitor-enter v3

    .line 599
    :try_start_1
    iget-object v2, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 600
    :catchall_1
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 4
    .parameter "collection"

    .prologue
    .line 617
    iget-boolean v2, p0, Lorg/apache/commons/collections/FastArrayList;->fast:Z

    if-eqz v2, :cond_0

    .line 618
    monitor-enter p0

    .line 619
    :try_start_0
    iget-object v2, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 620
    .local v1, temp:Ljava/util/ArrayList;
    invoke-virtual {v1, p1}, Ljava/util/AbstractCollection;->removeAll(Ljava/util/Collection;)Z

    move-result v0

    .line 621
    .local v0, result:Z
    iput-object v1, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    .line 622
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 626
    .end local v0           #result:Z
    .end local v1           #temp:Ljava/util/ArrayList;
    :goto_0
    return v0

    .line 623
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 625
    :cond_0
    iget-object v3, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    monitor-enter v3

    .line 626
    :try_start_1
    iget-object v2, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/AbstractCollection;->removeAll(Ljava/util/Collection;)Z

    move-result v0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 627
    :catchall_1
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 4
    .parameter "collection"

    .prologue
    .line 644
    iget-boolean v2, p0, Lorg/apache/commons/collections/FastArrayList;->fast:Z

    if-eqz v2, :cond_0

    .line 645
    monitor-enter p0

    .line 646
    :try_start_0
    iget-object v2, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 647
    .local v1, temp:Ljava/util/ArrayList;
    invoke-virtual {v1, p1}, Ljava/util/AbstractCollection;->retainAll(Ljava/util/Collection;)Z

    move-result v0

    .line 648
    .local v0, result:Z
    iput-object v1, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    .line 649
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 653
    .end local v0           #result:Z
    .end local v1           #temp:Ljava/util/ArrayList;
    :goto_0
    return v0

    .line 650
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 652
    :cond_0
    iget-object v3, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    monitor-enter v3

    .line 653
    :try_start_1
    iget-object v2, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/AbstractCollection;->retainAll(Ljava/util/Collection;)Z

    move-result v0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 654
    :catchall_1
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "index"
    .parameter "element"

    .prologue
    .line 675
    iget-boolean v0, p0, Lorg/apache/commons/collections/FastArrayList;->fast:Z

    if-eqz v0, :cond_0

    .line 676
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 679
    :goto_0
    return-object v0

    .line 678
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    monitor-enter v1

    .line 679
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 680
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setFast(Z)V
    .locals 0
    .parameter "fast"

    .prologue
    .line 142
    iput-boolean p1, p0, Lorg/apache/commons/collections/FastArrayList;->fast:Z

    .line 143
    return-void
.end method

.method public size()I
    .locals 2

    .prologue
    .line 691
    iget-boolean v0, p0, Lorg/apache/commons/collections/FastArrayList;->fast:Z

    if-eqz v0, :cond_0

    .line 692
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 695
    :goto_0
    return v0

    .line 694
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    monitor-enter v1

    .line 695
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 696
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public subList(II)Ljava/util/List;
    .locals 1
    .parameter "fromIndex"
    .parameter "toIndex"

    .prologue
    .line 715
    iget-boolean v0, p0, Lorg/apache/commons/collections/FastArrayList;->fast:Z

    if-eqz v0, :cond_0

    .line 716
    new-instance v0, Lorg/apache/commons/collections/FastArrayList$SubList;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/commons/collections/FastArrayList$SubList;-><init>(Lorg/apache/commons/collections/FastArrayList;II)V

    .line 718
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/AbstractList;->subList(II)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 2

    .prologue
    .line 729
    iget-boolean v0, p0, Lorg/apache/commons/collections/FastArrayList;->fast:Z

    if-eqz v0, :cond_0

    .line 730
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 733
    :goto_0
    return-object v0

    .line 732
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    monitor-enter v1

    .line 733
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 734
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 2
    .parameter "array"

    .prologue
    .line 754
    iget-boolean v0, p0, Lorg/apache/commons/collections/FastArrayList;->fast:Z

    if-eqz v0, :cond_0

    .line 755
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .line 758
    :goto_0
    return-object v0

    .line 757
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    monitor-enter v1

    .line 758
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 759
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 770
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "FastArrayList["

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 771
    .local v0, sb:Ljava/lang/StringBuffer;
    iget-object v1, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 772
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 773
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public trimToSize()V
    .locals 3

    .prologue
    .line 785
    iget-boolean v1, p0, Lorg/apache/commons/collections/FastArrayList;->fast:Z

    if-eqz v1, :cond_0

    .line 786
    monitor-enter p0

    .line 787
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 788
    .local v0, temp:Ljava/util/ArrayList;
    invoke-virtual {v0}, Ljava/util/ArrayList;->trimToSize()V

    .line 789
    iput-object v0, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 797
    .end local v0           #temp:Ljava/util/ArrayList;
    :goto_0
    return-void

    .line 790
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 792
    :cond_0
    iget-object v2, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    monitor-enter v2

    .line 793
    :try_start_1
    iget-object v1, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->trimToSize()V

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 794
    :catchall_1
    move-exception v1

    monitor-exit v2

    throw v1
.end method
