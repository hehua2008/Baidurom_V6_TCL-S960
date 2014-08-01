.class public Lorg/apache/commons/collections/map/CompositeMap;
.super Ljava/lang/Object;
.source "CompositeMap.java"

# interfaces
.implements Ljava/util/Map;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/collections/map/CompositeMap$MapMutator;
    }
.end annotation


# instance fields
.field private composite:[Ljava/util/Map;

.field private mutator:Lorg/apache/commons/collections/map/CompositeMap$MapMutator;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 51
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/util/Map;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/collections/map/CompositeMap;-><init>([Ljava/util/Map;Lorg/apache/commons/collections/map/CompositeMap$MapMutator;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;Ljava/util/Map;)V
    .locals 2
    .parameter "one"
    .parameter "two"

    .prologue
    .line 62
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/util/Map;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/collections/map/CompositeMap;-><init>([Ljava/util/Map;Lorg/apache/commons/collections/map/CompositeMap$MapMutator;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;Ljava/util/Map;Lorg/apache/commons/collections/map/CompositeMap$MapMutator;)V
    .locals 2
    .parameter "one"
    .parameter "two"
    .parameter "mutator"

    .prologue
    .line 73
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/util/Map;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    invoke-direct {p0, v0, p3}, Lorg/apache/commons/collections/map/CompositeMap;-><init>([Ljava/util/Map;Lorg/apache/commons/collections/map/CompositeMap$MapMutator;)V

    .line 74
    return-void
.end method

.method public constructor <init>([Ljava/util/Map;)V
    .locals 1
    .parameter "composite"

    .prologue
    .line 84
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/collections/map/CompositeMap;-><init>([Ljava/util/Map;Lorg/apache/commons/collections/map/CompositeMap$MapMutator;)V

    .line 85
    return-void
.end method

.method public constructor <init>([Ljava/util/Map;Lorg/apache/commons/collections/map/CompositeMap$MapMutator;)V
    .locals 2
    .parameter "composite"
    .parameter "mutator"

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-object p2, p0, Lorg/apache/commons/collections/map/CompositeMap;->mutator:Lorg/apache/commons/collections/map/CompositeMap$MapMutator;

    .line 96
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/util/Map;

    iput-object v1, p0, Lorg/apache/commons/collections/map/CompositeMap;->composite:[Ljava/util/Map;

    .line 97
    array-length v1, p1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-gez v0, :cond_0

    .line 100
    return-void

    .line 98
    :cond_0
    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Lorg/apache/commons/collections/map/CompositeMap;->addComposited(Ljava/util/Map;)V

    .line 97
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized addComposited(Ljava/util/Map;)V
    .locals 7
    .parameter "map"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 120
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lorg/apache/commons/collections/map/CompositeMap;->composite:[Ljava/util/Map;

    array-length v3, v3

    add-int/lit8 v0, v3, -0x1

    .local v0, i:I
    :goto_0
    if-gez v0, :cond_0

    .line 131
    iget-object v3, p0, Lorg/apache/commons/collections/map/CompositeMap;->composite:[Ljava/util/Map;

    array-length v3, v3

    add-int/lit8 v3, v3, 0x1

    new-array v2, v3, [Ljava/util/Map;

    .line 132
    .local v2, temp:[Ljava/util/Map;
    iget-object v3, p0, Lorg/apache/commons/collections/map/CompositeMap;->composite:[Ljava/util/Map;

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v6, p0, Lorg/apache/commons/collections/map/CompositeMap;->composite:[Ljava/util/Map;

    array-length v6, v6

    invoke-static {v3, v4, v2, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 133
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    aput-object p1, v2, v3

    .line 134
    iput-object v2, p0, Lorg/apache/commons/collections/map/CompositeMap;->composite:[Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    monitor-exit p0

    return-void

    .line 121
    .end local v2           #temp:[Ljava/util/Map;
    :cond_0
    :try_start_1
    iget-object v3, p0, Lorg/apache/commons/collections/map/CompositeMap;->composite:[Ljava/util/Map;

    aget-object v3, v3, v0

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/apache/commons/collections/CollectionUtils;->intersection(Ljava/util/Collection;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v1

    .line 122
    .local v1, intersect:Ljava/util/Collection;
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v3

    if-eqz v3, :cond_2

    .line 123
    iget-object v3, p0, Lorg/apache/commons/collections/map/CompositeMap;->mutator:Lorg/apache/commons/collections/map/CompositeMap$MapMutator;

    if-nez v3, :cond_1

    .line 124
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Key collision adding Map to CompositeMap"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 120
    .end local v0           #i:I
    .end local v1           #intersect:Ljava/util/Collection;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 127
    .restart local v0       #i:I
    .restart local v1       #intersect:Ljava/util/Collection;
    :cond_1
    :try_start_2
    iget-object v3, p0, Lorg/apache/commons/collections/map/CompositeMap;->mutator:Lorg/apache/commons/collections/map/CompositeMap$MapMutator;

    iget-object v4, p0, Lorg/apache/commons/collections/map/CompositeMap;->composite:[Ljava/util/Map;

    aget-object v4, v4, v0

    invoke-interface {v3, p0, v4, p1, v1}, Lorg/apache/commons/collections/map/CompositeMap$MapMutator;->resolveCollision(Lorg/apache/commons/collections/map/CompositeMap;Ljava/util/Map;Ljava/util/Map;Ljava/util/Collection;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 120
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 164
    iget-object v1, p0, Lorg/apache/commons/collections/map/CompositeMap;->composite:[Ljava/util/Map;

    array-length v1, v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-gez v0, :cond_0

    .line 167
    return-void

    .line 165
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/collections/map/CompositeMap;->composite:[Ljava/util/Map;

    aget-object v1, v1, v0

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 164
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 2
    .parameter "key"

    .prologue
    .line 186
    iget-object v1, p0, Lorg/apache/commons/collections/map/CompositeMap;->composite:[Ljava/util/Map;

    array-length v1, v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-gez v0, :cond_0

    .line 191
    const/4 v1, 0x0

    :goto_1
    return v1

    .line 187
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/collections/map/CompositeMap;->composite:[Ljava/util/Map;

    aget-object v1, v1, v0

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 188
    const/4 v1, 0x1

    goto :goto_1

    .line 186
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 2
    .parameter "value"

    .prologue
    .line 211
    iget-object v1, p0, Lorg/apache/commons/collections/map/CompositeMap;->composite:[Ljava/util/Map;

    array-length v1, v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-gez v0, :cond_0

    .line 216
    const/4 v1, 0x0

    :goto_1
    return v1

    .line 212
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/collections/map/CompositeMap;->composite:[Ljava/util/Map;

    aget-object v1, v1, v0

    invoke-interface {v1, p1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 213
    const/4 v1, 0x1

    goto :goto_1

    .line 211
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 3

    .prologue
    .line 237
    new-instance v0, Lorg/apache/commons/collections/set/CompositeSet;

    invoke-direct {v0}, Lorg/apache/commons/collections/set/CompositeSet;-><init>()V

    .line 238
    .local v0, entries:Lorg/apache/commons/collections/set/CompositeSet;
    iget-object v2, p0, Lorg/apache/commons/collections/map/CompositeMap;->composite:[Ljava/util/Map;

    array-length v2, v2

    add-int/lit8 v1, v2, -0x1

    .local v1, i:I
    :goto_0
    if-gez v1, :cond_0

    .line 241
    return-object v0

    .line 239
    :cond_0
    iget-object v2, p0, Lorg/apache/commons/collections/map/CompositeMap;->composite:[Ljava/util/Map;

    aget-object v2, v2, v1

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/commons/collections/set/CompositeSet;->addComposited(Ljava/util/Collection;)V

    .line 238
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter "obj"

    .prologue
    .line 452
    instance-of v1, p1, Ljava/util/Map;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 453
    check-cast v0, Ljava/util/Map;

    .line 454
    .local v0, map:Ljava/util/Map;
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/CompositeMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 456
    .end local v0           #map:Ljava/util/Map;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "key"

    .prologue
    .line 269
    iget-object v1, p0, Lorg/apache/commons/collections/map/CompositeMap;->composite:[Ljava/util/Map;

    array-length v1, v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-gez v0, :cond_0

    .line 274
    const/4 v1, 0x0

    :goto_1
    return-object v1

    .line 270
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/collections/map/CompositeMap;->composite:[Ljava/util/Map;

    aget-object v1, v1, v0

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 271
    iget-object v1, p0, Lorg/apache/commons/collections/map/CompositeMap;->composite:[Ljava/util/Map;

    aget-object v1, v1, v0

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_1

    .line 269
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 463
    const/4 v0, 0x0

    .line 464
    .local v0, code:I
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/CompositeMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 467
    return v0

    .line 465
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .line 283
    iget-object v1, p0, Lorg/apache/commons/collections/map/CompositeMap;->composite:[Ljava/util/Map;

    array-length v1, v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-gez v0, :cond_0

    .line 288
    const/4 v1, 0x1

    :goto_1
    return v1

    .line 284
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/collections/map/CompositeMap;->composite:[Ljava/util/Map;

    aget-object v1, v1, v0

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 285
    const/4 v1, 0x0

    goto :goto_1

    .line 283
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public keySet()Ljava/util/Set;
    .locals 3

    .prologue
    .line 307
    new-instance v1, Lorg/apache/commons/collections/set/CompositeSet;

    invoke-direct {v1}, Lorg/apache/commons/collections/set/CompositeSet;-><init>()V

    .line 308
    .local v1, keys:Lorg/apache/commons/collections/set/CompositeSet;
    iget-object v2, p0, Lorg/apache/commons/collections/map/CompositeMap;->composite:[Ljava/util/Map;

    array-length v2, v2

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_0
    if-gez v0, :cond_0

    .line 311
    return-object v1

    .line 309
    :cond_0
    iget-object v2, p0, Lorg/apache/commons/collections/map/CompositeMap;->composite:[Ljava/util/Map;

    aget-object v2, v2, v0

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/commons/collections/set/CompositeSet;->addComposited(Ljava/util/Collection;)V

    .line 308
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "key"
    .parameter "value"

    .prologue
    .line 340
    iget-object v0, p0, Lorg/apache/commons/collections/map/CompositeMap;->mutator:Lorg/apache/commons/collections/map/CompositeMap$MapMutator;

    if-nez v0, :cond_0

    .line 341
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "No mutator specified"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 343
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/map/CompositeMap;->mutator:Lorg/apache/commons/collections/map/CompositeMap$MapMutator;

    iget-object v1, p0, Lorg/apache/commons/collections/map/CompositeMap;->composite:[Ljava/util/Map;

    invoke-interface {v0, p0, v1, p1, p2}, Lorg/apache/commons/collections/map/CompositeMap$MapMutator;->put(Lorg/apache/commons/collections/map/CompositeMap;[Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 2
    .parameter "map"

    .prologue
    .line 369
    iget-object v0, p0, Lorg/apache/commons/collections/map/CompositeMap;->mutator:Lorg/apache/commons/collections/map/CompositeMap$MapMutator;

    if-nez v0, :cond_0

    .line 370
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "No mutator specified"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 372
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/map/CompositeMap;->mutator:Lorg/apache/commons/collections/map/CompositeMap$MapMutator;

    iget-object v1, p0, Lorg/apache/commons/collections/map/CompositeMap;->composite:[Ljava/util/Map;

    invoke-interface {v0, p0, v1, p1}, Lorg/apache/commons/collections/map/CompositeMap$MapMutator;->putAll(Lorg/apache/commons/collections/map/CompositeMap;[Ljava/util/Map;Ljava/util/Map;)V

    .line 373
    return-void
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "key"

    .prologue
    .line 401
    iget-object v1, p0, Lorg/apache/commons/collections/map/CompositeMap;->composite:[Ljava/util/Map;

    array-length v1, v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-gez v0, :cond_0

    .line 406
    const/4 v1, 0x0

    :goto_1
    return-object v1

    .line 402
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/collections/map/CompositeMap;->composite:[Ljava/util/Map;

    aget-object v1, v1, v0

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 403
    iget-object v1, p0, Lorg/apache/commons/collections/map/CompositeMap;->composite:[Ljava/util/Map;

    aget-object v1, v1, v0

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_1

    .line 401
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public declared-synchronized removeComposited(Ljava/util/Map;)Ljava/util/Map;
    .locals 6
    .parameter "map"

    .prologue
    .line 144
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lorg/apache/commons/collections/map/CompositeMap;->composite:[Ljava/util/Map;

    array-length v1, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 154
    const/4 p1, 0x0

    .end local p1
    :goto_1
    monitor-exit p0

    return-object p1

    .line 146
    .restart local p1
    :cond_0
    :try_start_1
    iget-object v3, p0, Lorg/apache/commons/collections/map/CompositeMap;->composite:[Ljava/util/Map;

    aget-object v3, v3, v0

    invoke-interface {v3, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 147
    add-int/lit8 v3, v1, -0x1

    new-array v2, v3, [Ljava/util/Map;

    .line 148
    .local v2, temp:[Ljava/util/Map;
    iget-object v3, p0, Lorg/apache/commons/collections/map/CompositeMap;->composite:[Ljava/util/Map;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3, v4, v2, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 149
    iget-object v3, p0, Lorg/apache/commons/collections/map/CompositeMap;->composite:[Ljava/util/Map;

    add-int/lit8 v4, v0, 0x1

    sub-int v5, v1, v0

    add-int/lit8 v5, v5, -0x1

    invoke-static {v3, v4, v2, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 150
    iput-object v2, p0, Lorg/apache/commons/collections/map/CompositeMap;->composite:[Ljava/util/Map;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 144
    .end local v0           #i:I
    .end local v1           #size:I
    .end local v2           #temp:[Ljava/util/Map;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 145
    .restart local v0       #i:I
    .restart local v1       #size:I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setMutator(Lorg/apache/commons/collections/map/CompositeMap$MapMutator;)V
    .locals 0
    .parameter "mutator"

    .prologue
    .line 109
    iput-object p1, p0, Lorg/apache/commons/collections/map/CompositeMap;->mutator:Lorg/apache/commons/collections/map/CompositeMap$MapMutator;

    .line 110
    return-void
.end method

.method public size()I
    .locals 3

    .prologue
    .line 417
    const/4 v1, 0x0

    .line 418
    .local v1, size:I
    iget-object v2, p0, Lorg/apache/commons/collections/map/CompositeMap;->composite:[Ljava/util/Map;

    array-length v2, v2

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_0
    if-gez v0, :cond_0

    .line 421
    return v1

    .line 419
    :cond_0
    iget-object v2, p0, Lorg/apache/commons/collections/map/CompositeMap;->composite:[Ljava/util/Map;

    aget-object v2, v2, v0

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    add-int/2addr v1, v2

    .line 418
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public values()Ljava/util/Collection;
    .locals 3

    .prologue
    .line 438
    new-instance v1, Lorg/apache/commons/collections/collection/CompositeCollection;

    invoke-direct {v1}, Lorg/apache/commons/collections/collection/CompositeCollection;-><init>()V

    .line 439
    .local v1, keys:Lorg/apache/commons/collections/collection/CompositeCollection;
    iget-object v2, p0, Lorg/apache/commons/collections/map/CompositeMap;->composite:[Ljava/util/Map;

    array-length v2, v2

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_0
    if-gez v0, :cond_0

    .line 442
    return-object v1

    .line 440
    :cond_0
    iget-object v2, p0, Lorg/apache/commons/collections/map/CompositeMap;->composite:[Ljava/util/Map;

    aget-object v2, v2, v0

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/commons/collections/collection/CompositeCollection;->addComposited(Ljava/util/Collection;)V

    .line 439
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method
