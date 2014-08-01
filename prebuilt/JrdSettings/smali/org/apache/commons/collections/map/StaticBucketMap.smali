.class public final Lorg/apache/commons/collections/map/StaticBucketMap;
.super Ljava/lang/Object;
.source "StaticBucketMap.java"

# interfaces
.implements Ljava/util/Map;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/collections/map/StaticBucketMap$1;,
        Lorg/apache/commons/collections/map/StaticBucketMap$Values;,
        Lorg/apache/commons/collections/map/StaticBucketMap$KeySet;,
        Lorg/apache/commons/collections/map/StaticBucketMap$EntrySet;,
        Lorg/apache/commons/collections/map/StaticBucketMap$KeyIterator;,
        Lorg/apache/commons/collections/map/StaticBucketMap$ValueIterator;,
        Lorg/apache/commons/collections/map/StaticBucketMap$EntryIterator;,
        Lorg/apache/commons/collections/map/StaticBucketMap$Lock;,
        Lorg/apache/commons/collections/map/StaticBucketMap$Node;
    }
.end annotation


# static fields
.field private static final DEFAULT_BUCKETS:I = 0xff


# instance fields
.field private buckets:[Lorg/apache/commons/collections/map/StaticBucketMap$Node;

.field private locks:[Lorg/apache/commons/collections/map/StaticBucketMap$Lock;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 115
    const/16 v0, 0xff

    invoke-direct {p0, v0}, Lorg/apache/commons/collections/map/StaticBucketMap;-><init>(I)V

    .line 116
    return-void
.end method

.method public constructor <init>(I)V
    .locals 5
    .parameter "numBuckets"

    .prologue
    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    const/16 v2, 0x11

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 132
    .local v1, size:I
    rem-int/lit8 v2, v1, 0x2

    if-nez v2, :cond_0

    .line 133
    add-int/lit8 v1, v1, -0x1

    .line 136
    :cond_0
    new-array v2, v1, [Lorg/apache/commons/collections/map/StaticBucketMap$Node;

    iput-object v2, p0, Lorg/apache/commons/collections/map/StaticBucketMap;->buckets:[Lorg/apache/commons/collections/map/StaticBucketMap$Node;

    .line 137
    new-array v2, v1, [Lorg/apache/commons/collections/map/StaticBucketMap$Lock;

    iput-object v2, p0, Lorg/apache/commons/collections/map/StaticBucketMap;->locks:[Lorg/apache/commons/collections/map/StaticBucketMap$Lock;

    .line 139
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v1, :cond_1

    .line 142
    return-void

    .line 140
    :cond_1
    iget-object v2, p0, Lorg/apache/commons/collections/map/StaticBucketMap;->locks:[Lorg/apache/commons/collections/map/StaticBucketMap$Lock;

    new-instance v3, Lorg/apache/commons/collections/map/StaticBucketMap$Lock;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lorg/apache/commons/collections/map/StaticBucketMap$Lock;-><init>(Lorg/apache/commons/collections/map/StaticBucketMap$1;)V

    aput-object v3, v2, v0

    .line 139
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static access$500(Lorg/apache/commons/collections/map/StaticBucketMap;)[Lorg/apache/commons/collections/map/StaticBucketMap$Node;
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Lorg/apache/commons/collections/map/StaticBucketMap;->buckets:[Lorg/apache/commons/collections/map/StaticBucketMap$Node;

    return-object v0
.end method

.method static access$600(Lorg/apache/commons/collections/map/StaticBucketMap;)[Lorg/apache/commons/collections/map/StaticBucketMap$Lock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Lorg/apache/commons/collections/map/StaticBucketMap;->locks:[Lorg/apache/commons/collections/map/StaticBucketMap$Lock;

    return-object v0
.end method

.method static access$800(Lorg/apache/commons/collections/map/StaticBucketMap;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/map/StaticBucketMap;->getHash(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method private atomic(Ljava/lang/Runnable;I)V
    .locals 2
    .parameter "r"
    .parameter "bucket"

    .prologue
    .line 690
    iget-object v0, p0, Lorg/apache/commons/collections/map/StaticBucketMap;->buckets:[Lorg/apache/commons/collections/map/StaticBucketMap$Node;

    array-length v0, v0

    if-lt p2, v0, :cond_0

    .line 691
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 697
    :goto_0
    return-void

    .line 694
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/map/StaticBucketMap;->locks:[Lorg/apache/commons/collections/map/StaticBucketMap$Lock;

    aget-object v1, v0, p2

    monitor-enter v1

    .line 695
    add-int/lit8 v0, p2, 0x1

    :try_start_0
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/collections/map/StaticBucketMap;->atomic(Ljava/lang/Runnable;I)V

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

.method private final getHash(Ljava/lang/Object;)I
    .locals 2
    .parameter "key"

    .prologue
    .line 159
    if-nez p1, :cond_1

    .line 160
    const/4 v0, 0x0

    .line 170
    :cond_0
    :goto_0
    return v0

    .line 162
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 163
    .local v0, hash:I
    shl-int/lit8 v1, v0, 0xf

    xor-int/lit8 v1, v1, -0x1

    add-int/2addr v0, v1

    .line 164
    ushr-int/lit8 v1, v0, 0xa

    xor-int/2addr v0, v1

    .line 165
    shl-int/lit8 v1, v0, 0x3

    add-int/2addr v0, v1

    .line 166
    ushr-int/lit8 v1, v0, 0x6

    xor-int/2addr v0, v1

    .line 167
    shl-int/lit8 v1, v0, 0xb

    xor-int/lit8 v1, v1, -0x1

    add-int/2addr v0, v1

    .line 168
    ushr-int/lit8 v1, v0, 0x10

    xor-int/2addr v0, v1

    .line 169
    iget-object v1, p0, Lorg/apache/commons/collections/map/StaticBucketMap;->buckets:[Lorg/apache/commons/collections/map/StaticBucketMap$Node;

    array-length v1, v1

    rem-int/2addr v0, v1

    .line 170
    if-gez v0, :cond_0

    mul-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method


# virtual methods
.method public atomic(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "r"

    .prologue
    .line 685
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 686
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/collections/map/StaticBucketMap;->atomic(Ljava/lang/Runnable;I)V

    .line 687
    return-void
.end method

.method public clear()V
    .locals 4

    .prologue
    .line 395
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lorg/apache/commons/collections/map/StaticBucketMap;->buckets:[Lorg/apache/commons/collections/map/StaticBucketMap$Node;

    array-length v2, v2

    if-lt v0, v2, :cond_0

    .line 402
    return-void

    .line 396
    :cond_0
    iget-object v2, p0, Lorg/apache/commons/collections/map/StaticBucketMap;->locks:[Lorg/apache/commons/collections/map/StaticBucketMap$Lock;

    aget-object v1, v2, v0

    .line 397
    .local v1, lock:Lorg/apache/commons/collections/map/StaticBucketMap$Lock;
    monitor-enter v1

    .line 398
    :try_start_0
    iget-object v2, p0, Lorg/apache/commons/collections/map/StaticBucketMap;->buckets:[Lorg/apache/commons/collections/map/StaticBucketMap$Node;

    const/4 v3, 0x0

    aput-object v3, v2, v0

    .line 399
    const/4 v2, 0x0

    iput v2, v1, Lorg/apache/commons/collections/map/StaticBucketMap$Lock;->size:I

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 395
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 400
    :catchall_0
    move-exception v2

    monitor-exit v1

    throw v2
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 4
    .parameter "key"

    .prologue
    .line 227
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/map/StaticBucketMap;->getHash(Ljava/lang/Object;)I

    move-result v0

    .line 229
    .local v0, hash:I
    iget-object v2, p0, Lorg/apache/commons/collections/map/StaticBucketMap;->locks:[Lorg/apache/commons/collections/map/StaticBucketMap$Lock;

    aget-object v3, v2, v0

    monitor-enter v3

    .line 230
    :try_start_0
    iget-object v2, p0, Lorg/apache/commons/collections/map/StaticBucketMap;->buckets:[Lorg/apache/commons/collections/map/StaticBucketMap$Node;

    aget-object v1, v2, v0

    .line 232
    .local v1, n:Lorg/apache/commons/collections/map/StaticBucketMap$Node;
    :goto_0
    if-nez v1, :cond_0

    monitor-exit v3

    .line 240
    const/4 v2, 0x0

    :goto_1
    return v2

    .line 233
    :cond_0
    iget-object v2, v1, Lorg/apache/commons/collections/map/StaticBucketMap$Node;->key:Ljava/lang/Object;

    if-eqz v2, :cond_1

    iget-object v2, v1, Lorg/apache/commons/collections/map/StaticBucketMap$Node;->key:Ljava/lang/Object;

    if-eqz v2, :cond_2

    iget-object v2, v1, Lorg/apache/commons/collections/map/StaticBucketMap$Node;->key:Ljava/lang/Object;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 234
    :cond_1
    const/4 v2, 0x1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 239
    .end local v1           #n:Lorg/apache/commons/collections/map/StaticBucketMap$Node;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 237
    .restart local v1       #n:Lorg/apache/commons/collections/map/StaticBucketMap$Node;
    :cond_2
    :try_start_1
    iget-object v1, v1, Lorg/apache/commons/collections/map/StaticBucketMap$Node;->next:Lorg/apache/commons/collections/map/StaticBucketMap$Node;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 4
    .parameter "value"

    .prologue
    .line 250
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lorg/apache/commons/collections/map/StaticBucketMap;->buckets:[Lorg/apache/commons/collections/map/StaticBucketMap$Node;

    array-length v2, v2

    if-lt v0, v2, :cond_0

    .line 263
    const/4 v2, 0x0

    :goto_1
    return v2

    .line 251
    :cond_0
    iget-object v2, p0, Lorg/apache/commons/collections/map/StaticBucketMap;->locks:[Lorg/apache/commons/collections/map/StaticBucketMap$Lock;

    aget-object v3, v2, v0

    monitor-enter v3

    .line 252
    :try_start_0
    iget-object v2, p0, Lorg/apache/commons/collections/map/StaticBucketMap;->buckets:[Lorg/apache/commons/collections/map/StaticBucketMap$Node;

    aget-object v1, v2, v0

    .line 254
    .local v1, n:Lorg/apache/commons/collections/map/StaticBucketMap$Node;
    :goto_2
    if-nez v1, :cond_1

    monitor-exit v3

    .line 250
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 255
    :cond_1
    iget-object v2, v1, Lorg/apache/commons/collections/map/StaticBucketMap$Node;->value:Ljava/lang/Object;

    if-eq v2, p1, :cond_2

    iget-object v2, v1, Lorg/apache/commons/collections/map/StaticBucketMap$Node;->value:Ljava/lang/Object;

    if-eqz v2, :cond_3

    iget-object v2, v1, Lorg/apache/commons/collections/map/StaticBucketMap$Node;->value:Ljava/lang/Object;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 256
    :cond_2
    const/4 v2, 0x1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 261
    .end local v1           #n:Lorg/apache/commons/collections/map/StaticBucketMap$Node;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 259
    .restart local v1       #n:Lorg/apache/commons/collections/map/StaticBucketMap$Node;
    :cond_3
    :try_start_1
    iget-object v1, v1, Lorg/apache/commons/collections/map/StaticBucketMap$Node;->next:Lorg/apache/commons/collections/map/StaticBucketMap$Node;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.method public entrySet()Ljava/util/Set;
    .locals 2

    .prologue
    .line 372
    new-instance v0, Lorg/apache/commons/collections/map/StaticBucketMap$EntrySet;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/collections/map/StaticBucketMap$EntrySet;-><init>(Lorg/apache/commons/collections/map/StaticBucketMap;Lorg/apache/commons/collections/map/StaticBucketMap$1;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter "obj"

    .prologue
    .line 411
    if-ne p1, p0, :cond_0

    .line 412
    const/4 v1, 0x1

    .line 418
    :goto_0
    return v1

    .line 414
    :cond_0
    instance-of v1, p1, Ljava/util/Map;

    if-nez v1, :cond_1

    .line 415
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 417
    check-cast v0, Ljava/util/Map;

    .line 418
    .local v0, other:Ljava/util/Map;
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/StaticBucketMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .parameter "key"

    .prologue
    .line 204
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/map/StaticBucketMap;->getHash(Ljava/lang/Object;)I

    move-result v0

    .line 206
    .local v0, hash:I
    iget-object v2, p0, Lorg/apache/commons/collections/map/StaticBucketMap;->locks:[Lorg/apache/commons/collections/map/StaticBucketMap$Lock;

    aget-object v3, v2, v0

    monitor-enter v3

    .line 207
    :try_start_0
    iget-object v2, p0, Lorg/apache/commons/collections/map/StaticBucketMap;->buckets:[Lorg/apache/commons/collections/map/StaticBucketMap$Node;

    aget-object v1, v2, v0

    .line 209
    .local v1, n:Lorg/apache/commons/collections/map/StaticBucketMap$Node;
    :goto_0
    if-nez v1, :cond_0

    monitor-exit v3

    .line 217
    const/4 v2, 0x0

    :goto_1
    return-object v2

    .line 210
    :cond_0
    iget-object v2, v1, Lorg/apache/commons/collections/map/StaticBucketMap$Node;->key:Ljava/lang/Object;

    if-eq v2, p1, :cond_1

    iget-object v2, v1, Lorg/apache/commons/collections/map/StaticBucketMap$Node;->key:Ljava/lang/Object;

    if-eqz v2, :cond_2

    iget-object v2, v1, Lorg/apache/commons/collections/map/StaticBucketMap$Node;->key:Ljava/lang/Object;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 211
    :cond_1
    iget-object v2, v1, Lorg/apache/commons/collections/map/StaticBucketMap$Node;->value:Ljava/lang/Object;

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 216
    .end local v1           #n:Lorg/apache/commons/collections/map/StaticBucketMap$Node;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 214
    .restart local v1       #n:Lorg/apache/commons/collections/map/StaticBucketMap$Node;
    :cond_2
    :try_start_1
    iget-object v1, v1, Lorg/apache/commons/collections/map/StaticBucketMap$Node;->next:Lorg/apache/commons/collections/map/StaticBucketMap$Node;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    .line 427
    const/4 v0, 0x0

    .line 429
    .local v0, hashCode:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v3, p0, Lorg/apache/commons/collections/map/StaticBucketMap;->buckets:[Lorg/apache/commons/collections/map/StaticBucketMap$Node;

    array-length v3, v3

    if-lt v1, v3, :cond_0

    .line 439
    return v0

    .line 430
    :cond_0
    iget-object v3, p0, Lorg/apache/commons/collections/map/StaticBucketMap;->locks:[Lorg/apache/commons/collections/map/StaticBucketMap$Lock;

    aget-object v4, v3, v1

    monitor-enter v4

    .line 431
    :try_start_0
    iget-object v3, p0, Lorg/apache/commons/collections/map/StaticBucketMap;->buckets:[Lorg/apache/commons/collections/map/StaticBucketMap$Node;

    aget-object v2, v3, v1

    .line 433
    .local v2, n:Lorg/apache/commons/collections/map/StaticBucketMap$Node;
    :goto_1
    if-nez v2, :cond_1

    monitor-exit v4

    .line 429
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 434
    :cond_1
    invoke-virtual {v2}, Lorg/apache/commons/collections/map/StaticBucketMap$Node;->hashCode()I

    move-result v3

    add-int/2addr v0, v3

    .line 435
    iget-object v2, v2, Lorg/apache/commons/collections/map/StaticBucketMap$Node;->next:Lorg/apache/commons/collections/map/StaticBucketMap$Node;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 437
    .end local v2           #n:Lorg/apache/commons/collections/map/StaticBucketMap$Node;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 194
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/StaticBucketMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public keySet()Ljava/util/Set;
    .locals 2

    .prologue
    .line 354
    new-instance v0, Lorg/apache/commons/collections/map/StaticBucketMap$KeySet;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/collections/map/StaticBucketMap$KeySet;-><init>(Lorg/apache/commons/collections/map/StaticBucketMap;Lorg/apache/commons/collections/map/StaticBucketMap$1;)V

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .parameter "key"
    .parameter "value"

    .prologue
    const/4 v4, 0x0

    .line 275
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/map/StaticBucketMap;->getHash(Ljava/lang/Object;)I

    move-result v0

    .line 277
    .local v0, hash:I
    iget-object v5, p0, Lorg/apache/commons/collections/map/StaticBucketMap;->locks:[Lorg/apache/commons/collections/map/StaticBucketMap$Lock;

    aget-object v6, v5, v0

    monitor-enter v6

    .line 278
    :try_start_0
    iget-object v5, p0, Lorg/apache/commons/collections/map/StaticBucketMap;->buckets:[Lorg/apache/commons/collections/map/StaticBucketMap$Node;

    aget-object v1, v5, v0

    .line 280
    .local v1, n:Lorg/apache/commons/collections/map/StaticBucketMap$Node;
    if-nez v1, :cond_0

    .line 281
    new-instance v1, Lorg/apache/commons/collections/map/StaticBucketMap$Node;

    .end local v1           #n:Lorg/apache/commons/collections/map/StaticBucketMap$Node;
    const/4 v5, 0x0

    invoke-direct {v1, v5}, Lorg/apache/commons/collections/map/StaticBucketMap$Node;-><init>(Lorg/apache/commons/collections/map/StaticBucketMap$1;)V

    .line 282
    .restart local v1       #n:Lorg/apache/commons/collections/map/StaticBucketMap$Node;
    iput-object p1, v1, Lorg/apache/commons/collections/map/StaticBucketMap$Node;->key:Ljava/lang/Object;

    .line 283
    iput-object p2, v1, Lorg/apache/commons/collections/map/StaticBucketMap$Node;->value:Ljava/lang/Object;

    .line 284
    iget-object v5, p0, Lorg/apache/commons/collections/map/StaticBucketMap;->buckets:[Lorg/apache/commons/collections/map/StaticBucketMap$Node;

    aput-object v1, v5, v0

    .line 285
    iget-object v5, p0, Lorg/apache/commons/collections/map/StaticBucketMap;->locks:[Lorg/apache/commons/collections/map/StaticBucketMap$Lock;

    aget-object v5, v5, v0

    iget v7, v5, Lorg/apache/commons/collections/map/StaticBucketMap$Lock;->size:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v5, Lorg/apache/commons/collections/map/StaticBucketMap$Lock;->size:I

    .line 286
    monitor-exit v6

    .line 310
    :goto_0
    return-object v4

    .line 292
    :cond_0
    move-object v3, v1

    .local v3, next:Lorg/apache/commons/collections/map/StaticBucketMap$Node;
    :goto_1
    if-nez v3, :cond_1

    .line 304
    new-instance v2, Lorg/apache/commons/collections/map/StaticBucketMap$Node;

    const/4 v5, 0x0

    invoke-direct {v2, v5}, Lorg/apache/commons/collections/map/StaticBucketMap$Node;-><init>(Lorg/apache/commons/collections/map/StaticBucketMap$1;)V

    .line 305
    .local v2, newNode:Lorg/apache/commons/collections/map/StaticBucketMap$Node;
    iput-object p1, v2, Lorg/apache/commons/collections/map/StaticBucketMap$Node;->key:Ljava/lang/Object;

    .line 306
    iput-object p2, v2, Lorg/apache/commons/collections/map/StaticBucketMap$Node;->value:Ljava/lang/Object;

    .line 307
    iput-object v2, v1, Lorg/apache/commons/collections/map/StaticBucketMap$Node;->next:Lorg/apache/commons/collections/map/StaticBucketMap$Node;

    .line 308
    iget-object v5, p0, Lorg/apache/commons/collections/map/StaticBucketMap;->locks:[Lorg/apache/commons/collections/map/StaticBucketMap$Lock;

    aget-object v5, v5, v0

    iget v7, v5, Lorg/apache/commons/collections/map/StaticBucketMap$Lock;->size:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v5, Lorg/apache/commons/collections/map/StaticBucketMap$Lock;->size:I

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 309
    .end local v1           #n:Lorg/apache/commons/collections/map/StaticBucketMap$Node;
    .end local v2           #newNode:Lorg/apache/commons/collections/map/StaticBucketMap$Node;
    .end local v3           #next:Lorg/apache/commons/collections/map/StaticBucketMap$Node;
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    .line 293
    .restart local v1       #n:Lorg/apache/commons/collections/map/StaticBucketMap$Node;
    .restart local v3       #next:Lorg/apache/commons/collections/map/StaticBucketMap$Node;
    :cond_1
    move-object v1, v3

    .line 295
    :try_start_1
    iget-object v5, v1, Lorg/apache/commons/collections/map/StaticBucketMap$Node;->key:Ljava/lang/Object;

    if-eq v5, p1, :cond_2

    iget-object v5, v1, Lorg/apache/commons/collections/map/StaticBucketMap$Node;->key:Ljava/lang/Object;

    if-eqz v5, :cond_3

    iget-object v5, v1, Lorg/apache/commons/collections/map/StaticBucketMap$Node;->key:Ljava/lang/Object;

    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 296
    :cond_2
    iget-object v4, v1, Lorg/apache/commons/collections/map/StaticBucketMap$Node;->value:Ljava/lang/Object;

    .line 297
    .local v4, returnVal:Ljava/lang/Object;
    iput-object p2, v1, Lorg/apache/commons/collections/map/StaticBucketMap$Node;->value:Ljava/lang/Object;

    .line 298
    monitor-exit v6

    goto :goto_0

    .line 292
    .end local v4           #returnVal:Ljava/lang/Object;
    :cond_3
    iget-object v3, v3, Lorg/apache/commons/collections/map/StaticBucketMap$Node;->next:Lorg/apache/commons/collections/map/StaticBucketMap$Node;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 3
    .parameter "map"

    .prologue
    .line 383
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 385
    .local v0, i:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 389
    return-void

    .line 386
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 387
    .local v1, key:Ljava/lang/Object;
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/collections/map/StaticBucketMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .parameter "key"

    .prologue
    .line 320
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/map/StaticBucketMap;->getHash(Ljava/lang/Object;)I

    move-result v0

    .line 322
    .local v0, hash:I
    iget-object v3, p0, Lorg/apache/commons/collections/map/StaticBucketMap;->locks:[Lorg/apache/commons/collections/map/StaticBucketMap$Lock;

    aget-object v4, v3, v0

    monitor-enter v4

    .line 323
    :try_start_0
    iget-object v3, p0, Lorg/apache/commons/collections/map/StaticBucketMap;->buckets:[Lorg/apache/commons/collections/map/StaticBucketMap$Node;

    aget-object v1, v3, v0

    .line 324
    .local v1, n:Lorg/apache/commons/collections/map/StaticBucketMap$Node;
    const/4 v2, 0x0

    .line 326
    .local v2, prev:Lorg/apache/commons/collections/map/StaticBucketMap$Node;
    :goto_0
    if-nez v1, :cond_0

    monitor-exit v4

    .line 344
    const/4 v3, 0x0

    :goto_1
    return-object v3

    .line 327
    :cond_0
    iget-object v3, v1, Lorg/apache/commons/collections/map/StaticBucketMap$Node;->key:Ljava/lang/Object;

    if-eq v3, p1, :cond_1

    iget-object v3, v1, Lorg/apache/commons/collections/map/StaticBucketMap$Node;->key:Ljava/lang/Object;

    if-eqz v3, :cond_3

    iget-object v3, v1, Lorg/apache/commons/collections/map/StaticBucketMap$Node;->key:Ljava/lang/Object;

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 329
    :cond_1
    if-nez v2, :cond_2

    .line 331
    iget-object v3, p0, Lorg/apache/commons/collections/map/StaticBucketMap;->buckets:[Lorg/apache/commons/collections/map/StaticBucketMap$Node;

    iget-object v5, v1, Lorg/apache/commons/collections/map/StaticBucketMap$Node;->next:Lorg/apache/commons/collections/map/StaticBucketMap$Node;

    aput-object v5, v3, v0

    .line 336
    :goto_2
    iget-object v3, p0, Lorg/apache/commons/collections/map/StaticBucketMap;->locks:[Lorg/apache/commons/collections/map/StaticBucketMap$Lock;

    aget-object v3, v3, v0

    iget v5, v3, Lorg/apache/commons/collections/map/StaticBucketMap$Lock;->size:I

    add-int/lit8 v5, v5, -0x1

    iput v5, v3, Lorg/apache/commons/collections/map/StaticBucketMap$Lock;->size:I

    .line 337
    iget-object v3, v1, Lorg/apache/commons/collections/map/StaticBucketMap$Node;->value:Ljava/lang/Object;

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 343
    .end local v1           #n:Lorg/apache/commons/collections/map/StaticBucketMap$Node;
    .end local v2           #prev:Lorg/apache/commons/collections/map/StaticBucketMap$Node;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 334
    .restart local v1       #n:Lorg/apache/commons/collections/map/StaticBucketMap$Node;
    .restart local v2       #prev:Lorg/apache/commons/collections/map/StaticBucketMap$Node;
    :cond_2
    :try_start_1
    iget-object v3, v1, Lorg/apache/commons/collections/map/StaticBucketMap$Node;->next:Lorg/apache/commons/collections/map/StaticBucketMap$Node;

    iput-object v3, v2, Lorg/apache/commons/collections/map/StaticBucketMap$Node;->next:Lorg/apache/commons/collections/map/StaticBucketMap$Node;

    goto :goto_2

    .line 340
    :cond_3
    move-object v2, v1

    .line 341
    iget-object v1, v1, Lorg/apache/commons/collections/map/StaticBucketMap$Node;->next:Lorg/apache/commons/collections/map/StaticBucketMap$Node;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public size()I
    .locals 3

    .prologue
    .line 180
    const/4 v0, 0x0

    .line 182
    .local v0, cnt:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lorg/apache/commons/collections/map/StaticBucketMap;->buckets:[Lorg/apache/commons/collections/map/StaticBucketMap$Node;

    array-length v2, v2

    if-lt v1, v2, :cond_0

    .line 185
    return v0

    .line 183
    :cond_0
    iget-object v2, p0, Lorg/apache/commons/collections/map/StaticBucketMap;->locks:[Lorg/apache/commons/collections/map/StaticBucketMap$Lock;

    aget-object v2, v2, v1

    iget v2, v2, Lorg/apache/commons/collections/map/StaticBucketMap$Lock;->size:I

    add-int/2addr v0, v2

    .line 182
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public values()Ljava/util/Collection;
    .locals 2

    .prologue
    .line 363
    new-instance v0, Lorg/apache/commons/collections/map/StaticBucketMap$Values;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/collections/map/StaticBucketMap$Values;-><init>(Lorg/apache/commons/collections/map/StaticBucketMap;Lorg/apache/commons/collections/map/StaticBucketMap$1;)V

    return-object v0
.end method
