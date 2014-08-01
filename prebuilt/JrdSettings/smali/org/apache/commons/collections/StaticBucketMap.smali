.class public final Lorg/apache/commons/collections/StaticBucketMap;
.super Ljava/lang/Object;
.source "StaticBucketMap.java"

# interfaces
.implements Ljava/util/Map;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/collections/StaticBucketMap$1;,
        Lorg/apache/commons/collections/StaticBucketMap$Values;,
        Lorg/apache/commons/collections/StaticBucketMap$KeySet;,
        Lorg/apache/commons/collections/StaticBucketMap$EntrySet;,
        Lorg/apache/commons/collections/StaticBucketMap$KeyIterator;,
        Lorg/apache/commons/collections/StaticBucketMap$ValueIterator;,
        Lorg/apache/commons/collections/StaticBucketMap$EntryIterator;,
        Lorg/apache/commons/collections/StaticBucketMap$Lock;,
        Lorg/apache/commons/collections/StaticBucketMap$Node;
    }
.end annotation


# static fields
.field private static final DEFAULT_BUCKETS:I = 0xff


# instance fields
.field private m_buckets:[Lorg/apache/commons/collections/StaticBucketMap$Node;

.field private m_locks:[Lorg/apache/commons/collections/StaticBucketMap$Lock;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 112
    const/16 v0, 0xff

    invoke-direct {p0, v0}, Lorg/apache/commons/collections/StaticBucketMap;-><init>(I)V

    .line 113
    return-void
.end method

.method public constructor <init>(I)V
    .locals 5
    .parameter "numBuckets"

    .prologue
    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    const/16 v2, 0x11

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 130
    .local v1, size:I
    rem-int/lit8 v2, v1, 0x2

    if-nez v2, :cond_0

    .line 132
    add-int/lit8 v1, v1, -0x1

    .line 135
    :cond_0
    new-array v2, v1, [Lorg/apache/commons/collections/StaticBucketMap$Node;

    iput-object v2, p0, Lorg/apache/commons/collections/StaticBucketMap;->m_buckets:[Lorg/apache/commons/collections/StaticBucketMap$Node;

    .line 136
    new-array v2, v1, [Lorg/apache/commons/collections/StaticBucketMap$Lock;

    iput-object v2, p0, Lorg/apache/commons/collections/StaticBucketMap;->m_locks:[Lorg/apache/commons/collections/StaticBucketMap$Lock;

    .line 138
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v1, :cond_1

    .line 142
    return-void

    .line 140
    :cond_1
    iget-object v2, p0, Lorg/apache/commons/collections/StaticBucketMap;->m_locks:[Lorg/apache/commons/collections/StaticBucketMap$Lock;

    new-instance v3, Lorg/apache/commons/collections/StaticBucketMap$Lock;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lorg/apache/commons/collections/StaticBucketMap$Lock;-><init>(Lorg/apache/commons/collections/StaticBucketMap$1;)V

    aput-object v3, v2, v0

    .line 138
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static access$500(Lorg/apache/commons/collections/StaticBucketMap;)[Lorg/apache/commons/collections/StaticBucketMap$Node;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Lorg/apache/commons/collections/StaticBucketMap;->m_buckets:[Lorg/apache/commons/collections/StaticBucketMap$Node;

    return-object v0
.end method

.method static access$600(Lorg/apache/commons/collections/StaticBucketMap;)[Lorg/apache/commons/collections/StaticBucketMap$Lock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Lorg/apache/commons/collections/StaticBucketMap;->m_locks:[Lorg/apache/commons/collections/StaticBucketMap$Lock;

    return-object v0
.end method

.method static access$800(Lorg/apache/commons/collections/StaticBucketMap;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/StaticBucketMap;->getHash(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method private atomic(Ljava/lang/Runnable;I)V
    .locals 2
    .parameter "r"
    .parameter "bucket"

    .prologue
    .line 699
    iget-object v0, p0, Lorg/apache/commons/collections/StaticBucketMap;->m_buckets:[Lorg/apache/commons/collections/StaticBucketMap$Node;

    array-length v0, v0

    if-lt p2, v0, :cond_0

    .line 700
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 706
    :goto_0
    return-void

    .line 703
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/StaticBucketMap;->m_locks:[Lorg/apache/commons/collections/StaticBucketMap$Lock;

    aget-object v1, v0, p2

    monitor-enter v1

    .line 704
    add-int/lit8 v0, p2, 0x1

    :try_start_0
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/collections/StaticBucketMap;->atomic(Ljava/lang/Runnable;I)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 705
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

    const/4 v0, 0x0

    .line 168
    :cond_0
    :goto_0
    return v0

    .line 160
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 161
    .local v0, hash:I
    shl-int/lit8 v1, v0, 0xf

    xor-int/lit8 v1, v1, -0x1

    add-int/2addr v0, v1

    .line 162
    ushr-int/lit8 v1, v0, 0xa

    xor-int/2addr v0, v1

    .line 163
    shl-int/lit8 v1, v0, 0x3

    add-int/2addr v0, v1

    .line 164
    ushr-int/lit8 v1, v0, 0x6

    xor-int/2addr v0, v1

    .line 165
    shl-int/lit8 v1, v0, 0xb

    xor-int/lit8 v1, v1, -0x1

    add-int/2addr v0, v1

    .line 166
    ushr-int/lit8 v1, v0, 0x10

    xor-int/2addr v0, v1

    .line 167
    iget-object v1, p0, Lorg/apache/commons/collections/StaticBucketMap;->m_buckets:[Lorg/apache/commons/collections/StaticBucketMap$Node;

    array-length v1, v1

    rem-int/2addr v0, v1

    .line 168
    if-gez v0, :cond_0

    mul-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method


# virtual methods
.method public atomic(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "r"

    .prologue
    .line 694
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 695
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/collections/StaticBucketMap;->atomic(Ljava/lang/Runnable;I)V

    .line 696
    return-void
.end method

.method public final clear()V
    .locals 4

    .prologue
    .line 401
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lorg/apache/commons/collections/StaticBucketMap;->m_buckets:[Lorg/apache/commons/collections/StaticBucketMap$Node;

    array-length v2, v2

    if-lt v0, v2, :cond_0

    .line 409
    return-void

    .line 403
    :cond_0
    iget-object v2, p0, Lorg/apache/commons/collections/StaticBucketMap;->m_locks:[Lorg/apache/commons/collections/StaticBucketMap$Lock;

    aget-object v1, v2, v0

    .line 404
    .local v1, lock:Lorg/apache/commons/collections/StaticBucketMap$Lock;
    monitor-enter v1

    .line 405
    :try_start_0
    iget-object v2, p0, Lorg/apache/commons/collections/StaticBucketMap;->m_buckets:[Lorg/apache/commons/collections/StaticBucketMap$Node;

    const/4 v3, 0x0

    aput-object v3, v2, v0

    .line 406
    const/4 v2, 0x0

    iput v2, v1, Lorg/apache/commons/collections/StaticBucketMap$Lock;->size:I

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 401
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 407
    :catchall_0
    move-exception v2

    monitor-exit v1

    throw v2
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 4
    .parameter "key"

    .prologue
    .line 272
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/StaticBucketMap;->getHash(Ljava/lang/Object;)I

    move-result v0

    .line 274
    .local v0, hash:I
    iget-object v2, p0, Lorg/apache/commons/collections/StaticBucketMap;->m_locks:[Lorg/apache/commons/collections/StaticBucketMap$Lock;

    aget-object v3, v2, v0

    monitor-enter v3

    .line 276
    :try_start_0
    iget-object v2, p0, Lorg/apache/commons/collections/StaticBucketMap;->m_buckets:[Lorg/apache/commons/collections/StaticBucketMap$Node;

    aget-object v1, v2, v0

    .line 278
    .local v1, n:Lorg/apache/commons/collections/StaticBucketMap$Node;
    :goto_0
    if-nez v1, :cond_0

    monitor-exit v3

    .line 289
    const/4 v2, 0x0

    :goto_1
    return v2

    .line 280
    :cond_0
    iget-object v2, v1, Lorg/apache/commons/collections/StaticBucketMap$Node;->key:Ljava/lang/Object;

    if-eqz v2, :cond_1

    iget-object v2, v1, Lorg/apache/commons/collections/StaticBucketMap$Node;->key:Ljava/lang/Object;

    if-eqz v2, :cond_2

    iget-object v2, v1, Lorg/apache/commons/collections/StaticBucketMap$Node;->key:Ljava/lang/Object;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 282
    :cond_1
    const/4 v2, 0x1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 287
    .end local v1           #n:Lorg/apache/commons/collections/StaticBucketMap$Node;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 285
    .restart local v1       #n:Lorg/apache/commons/collections/StaticBucketMap$Node;
    :cond_2
    :try_start_1
    iget-object v1, v1, Lorg/apache/commons/collections/StaticBucketMap$Node;->next:Lorg/apache/commons/collections/StaticBucketMap$Node;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 4
    .parameter "value"

    .prologue
    .line 297
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lorg/apache/commons/collections/StaticBucketMap;->m_buckets:[Lorg/apache/commons/collections/StaticBucketMap$Node;

    array-length v2, v2

    if-lt v0, v2, :cond_0

    .line 316
    const/4 v2, 0x0

    :goto_1
    return v2

    .line 299
    :cond_0
    iget-object v2, p0, Lorg/apache/commons/collections/StaticBucketMap;->m_locks:[Lorg/apache/commons/collections/StaticBucketMap$Lock;

    aget-object v3, v2, v0

    monitor-enter v3

    .line 301
    :try_start_0
    iget-object v2, p0, Lorg/apache/commons/collections/StaticBucketMap;->m_buckets:[Lorg/apache/commons/collections/StaticBucketMap$Node;

    aget-object v1, v2, v0

    .line 303
    .local v1, n:Lorg/apache/commons/collections/StaticBucketMap$Node;
    :goto_2
    if-nez v1, :cond_1

    monitor-exit v3

    .line 297
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 305
    :cond_1
    iget-object v2, v1, Lorg/apache/commons/collections/StaticBucketMap$Node;->value:Ljava/lang/Object;

    if-eq v2, p1, :cond_2

    iget-object v2, v1, Lorg/apache/commons/collections/StaticBucketMap$Node;->value:Ljava/lang/Object;

    if-eqz v2, :cond_3

    iget-object v2, v1, Lorg/apache/commons/collections/StaticBucketMap$Node;->value:Ljava/lang/Object;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 308
    :cond_2
    const/4 v2, 0x1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 313
    .end local v1           #n:Lorg/apache/commons/collections/StaticBucketMap$Node;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 311
    .restart local v1       #n:Lorg/apache/commons/collections/StaticBucketMap$Node;
    :cond_3
    :try_start_1
    iget-object v1, v1, Lorg/apache/commons/collections/StaticBucketMap$Node;->next:Lorg/apache/commons/collections/StaticBucketMap$Node;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.method public entrySet()Ljava/util/Set;
    .locals 2

    .prologue
    .line 332
    new-instance v0, Lorg/apache/commons/collections/StaticBucketMap$EntrySet;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/collections/StaticBucketMap$EntrySet;-><init>(Lorg/apache/commons/collections/StaticBucketMap;Lorg/apache/commons/collections/StaticBucketMap$1;)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter "obj"

    .prologue
    const/4 v1, 0x0

    .line 416
    if-nez p1, :cond_1

    .line 423
    :cond_0
    :goto_0
    return v1

    .line 417
    :cond_1
    if-ne p1, p0, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    .line 419
    :cond_2
    instance-of v2, p1, Ljava/util/Map;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 421
    check-cast v0, Ljava/util/Map;

    .line 423
    .local v0, other:Ljava/util/Map;
    invoke-virtual {p0}, Lorg/apache/commons/collections/StaticBucketMap;->entrySet()Ljava/util/Set;

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
    .line 247
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/StaticBucketMap;->getHash(Ljava/lang/Object;)I

    move-result v0

    .line 249
    .local v0, hash:I
    iget-object v2, p0, Lorg/apache/commons/collections/StaticBucketMap;->m_locks:[Lorg/apache/commons/collections/StaticBucketMap$Lock;

    aget-object v3, v2, v0

    monitor-enter v3

    .line 251
    :try_start_0
    iget-object v2, p0, Lorg/apache/commons/collections/StaticBucketMap;->m_buckets:[Lorg/apache/commons/collections/StaticBucketMap$Node;

    aget-object v1, v2, v0

    .line 253
    .local v1, n:Lorg/apache/commons/collections/StaticBucketMap$Node;
    :goto_0
    if-nez v1, :cond_0

    monitor-exit v3

    .line 264
    const/4 v2, 0x0

    :goto_1
    return-object v2

    .line 255
    :cond_0
    iget-object v2, v1, Lorg/apache/commons/collections/StaticBucketMap$Node;->key:Ljava/lang/Object;

    if-eq v2, p1, :cond_1

    iget-object v2, v1, Lorg/apache/commons/collections/StaticBucketMap$Node;->key:Ljava/lang/Object;

    if-eqz v2, :cond_2

    iget-object v2, v1, Lorg/apache/commons/collections/StaticBucketMap$Node;->key:Ljava/lang/Object;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 257
    :cond_1
    iget-object v2, v1, Lorg/apache/commons/collections/StaticBucketMap$Node;->value:Ljava/lang/Object;

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 262
    .end local v1           #n:Lorg/apache/commons/collections/StaticBucketMap$Node;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 260
    .restart local v1       #n:Lorg/apache/commons/collections/StaticBucketMap$Node;
    :cond_2
    :try_start_1
    iget-object v1, v1, Lorg/apache/commons/collections/StaticBucketMap$Node;->next:Lorg/apache/commons/collections/StaticBucketMap$Node;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 5

    .prologue
    .line 431
    const/4 v0, 0x0

    .line 433
    .local v0, hashCode:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v3, p0, Lorg/apache/commons/collections/StaticBucketMap;->m_buckets:[Lorg/apache/commons/collections/StaticBucketMap$Node;

    array-length v3, v3

    if-lt v1, v3, :cond_0

    .line 446
    return v0

    .line 435
    :cond_0
    iget-object v3, p0, Lorg/apache/commons/collections/StaticBucketMap;->m_locks:[Lorg/apache/commons/collections/StaticBucketMap$Lock;

    aget-object v4, v3, v1

    monitor-enter v4

    .line 437
    :try_start_0
    iget-object v3, p0, Lorg/apache/commons/collections/StaticBucketMap;->m_buckets:[Lorg/apache/commons/collections/StaticBucketMap$Node;

    aget-object v2, v3, v1

    .line 439
    .local v2, n:Lorg/apache/commons/collections/StaticBucketMap$Node;
    :goto_1
    if-nez v2, :cond_1

    monitor-exit v4

    .line 433
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 441
    :cond_1
    invoke-virtual {v2}, Lorg/apache/commons/collections/StaticBucketMap$Node;->hashCode()I

    move-result v3

    add-int/2addr v0, v3

    .line 442
    iget-object v2, v2, Lorg/apache/commons/collections/StaticBucketMap$Node;->next:Lorg/apache/commons/collections/StaticBucketMap$Node;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 444
    .end local v2           #n:Lorg/apache/commons/collections/StaticBucketMap$Node;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public final isEmpty()Z
    .locals 1

    .prologue
    .line 393
    invoke-virtual {p0}, Lorg/apache/commons/collections/StaticBucketMap;->size()I

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
    .line 176
    new-instance v0, Lorg/apache/commons/collections/StaticBucketMap$KeySet;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/collections/StaticBucketMap$KeySet;-><init>(Lorg/apache/commons/collections/StaticBucketMap;Lorg/apache/commons/collections/StaticBucketMap$1;)V

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .parameter "key"
    .parameter "value"

    .prologue
    const/4 v4, 0x0

    .line 199
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/StaticBucketMap;->getHash(Ljava/lang/Object;)I

    move-result v0

    .line 201
    .local v0, hash:I
    iget-object v5, p0, Lorg/apache/commons/collections/StaticBucketMap;->m_locks:[Lorg/apache/commons/collections/StaticBucketMap$Lock;

    aget-object v6, v5, v0

    monitor-enter v6

    .line 203
    :try_start_0
    iget-object v5, p0, Lorg/apache/commons/collections/StaticBucketMap;->m_buckets:[Lorg/apache/commons/collections/StaticBucketMap$Node;

    aget-object v1, v5, v0

    .line 205
    .local v1, n:Lorg/apache/commons/collections/StaticBucketMap$Node;
    if-nez v1, :cond_0

    .line 207
    new-instance v1, Lorg/apache/commons/collections/StaticBucketMap$Node;

    .end local v1           #n:Lorg/apache/commons/collections/StaticBucketMap$Node;
    const/4 v5, 0x0

    invoke-direct {v1, v5}, Lorg/apache/commons/collections/StaticBucketMap$Node;-><init>(Lorg/apache/commons/collections/StaticBucketMap$1;)V

    .line 208
    .restart local v1       #n:Lorg/apache/commons/collections/StaticBucketMap$Node;
    iput-object p1, v1, Lorg/apache/commons/collections/StaticBucketMap$Node;->key:Ljava/lang/Object;

    .line 209
    iput-object p2, v1, Lorg/apache/commons/collections/StaticBucketMap$Node;->value:Ljava/lang/Object;

    .line 210
    iget-object v5, p0, Lorg/apache/commons/collections/StaticBucketMap;->m_buckets:[Lorg/apache/commons/collections/StaticBucketMap$Node;

    aput-object v1, v5, v0

    .line 211
    iget-object v5, p0, Lorg/apache/commons/collections/StaticBucketMap;->m_locks:[Lorg/apache/commons/collections/StaticBucketMap$Lock;

    aget-object v5, v5, v0

    iget v7, v5, Lorg/apache/commons/collections/StaticBucketMap$Lock;->size:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v5, Lorg/apache/commons/collections/StaticBucketMap$Lock;->size:I

    .line 212
    monitor-exit v6

    .line 239
    :goto_0
    return-object v4

    .line 218
    :cond_0
    move-object v3, v1

    .local v3, next:Lorg/apache/commons/collections/StaticBucketMap$Node;
    :goto_1
    if-nez v3, :cond_1

    .line 232
    new-instance v2, Lorg/apache/commons/collections/StaticBucketMap$Node;

    const/4 v5, 0x0

    invoke-direct {v2, v5}, Lorg/apache/commons/collections/StaticBucketMap$Node;-><init>(Lorg/apache/commons/collections/StaticBucketMap$1;)V

    .line 233
    .local v2, newNode:Lorg/apache/commons/collections/StaticBucketMap$Node;
    iput-object p1, v2, Lorg/apache/commons/collections/StaticBucketMap$Node;->key:Ljava/lang/Object;

    .line 234
    iput-object p2, v2, Lorg/apache/commons/collections/StaticBucketMap$Node;->value:Ljava/lang/Object;

    .line 235
    iput-object v2, v1, Lorg/apache/commons/collections/StaticBucketMap$Node;->next:Lorg/apache/commons/collections/StaticBucketMap$Node;

    .line 236
    iget-object v5, p0, Lorg/apache/commons/collections/StaticBucketMap;->m_locks:[Lorg/apache/commons/collections/StaticBucketMap$Lock;

    aget-object v5, v5, v0

    iget v7, v5, Lorg/apache/commons/collections/StaticBucketMap$Lock;->size:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v5, Lorg/apache/commons/collections/StaticBucketMap$Lock;->size:I

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 237
    .end local v1           #n:Lorg/apache/commons/collections/StaticBucketMap$Node;
    .end local v2           #newNode:Lorg/apache/commons/collections/StaticBucketMap$Node;
    .end local v3           #next:Lorg/apache/commons/collections/StaticBucketMap$Node;
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    .line 220
    .restart local v1       #n:Lorg/apache/commons/collections/StaticBucketMap$Node;
    .restart local v3       #next:Lorg/apache/commons/collections/StaticBucketMap$Node;
    :cond_1
    move-object v1, v3

    .line 222
    :try_start_1
    iget-object v5, v1, Lorg/apache/commons/collections/StaticBucketMap$Node;->key:Ljava/lang/Object;

    if-eq v5, p1, :cond_2

    iget-object v5, v1, Lorg/apache/commons/collections/StaticBucketMap$Node;->key:Ljava/lang/Object;

    if-eqz v5, :cond_3

    iget-object v5, v1, Lorg/apache/commons/collections/StaticBucketMap$Node;->key:Ljava/lang/Object;

    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 224
    :cond_2
    iget-object v4, v1, Lorg/apache/commons/collections/StaticBucketMap$Node;->value:Ljava/lang/Object;

    .line 225
    .local v4, returnVal:Ljava/lang/Object;
    iput-object p2, v1, Lorg/apache/commons/collections/StaticBucketMap$Node;->value:Ljava/lang/Object;

    .line 226
    monitor-exit v6

    goto :goto_0

    .line 218
    .end local v4           #returnVal:Ljava/lang/Object;
    :cond_3
    iget-object v3, v3, Lorg/apache/commons/collections/StaticBucketMap$Node;->next:Lorg/apache/commons/collections/StaticBucketMap$Node;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 3
    .parameter "other"

    .prologue
    .line 340
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 342
    .local v0, i:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 347
    return-void

    .line 344
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 345
    .local v1, key:Ljava/lang/Object;
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/collections/StaticBucketMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .parameter "key"

    .prologue
    .line 354
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/StaticBucketMap;->getHash(Ljava/lang/Object;)I

    move-result v0

    .line 356
    .local v0, hash:I
    iget-object v3, p0, Lorg/apache/commons/collections/StaticBucketMap;->m_locks:[Lorg/apache/commons/collections/StaticBucketMap$Lock;

    aget-object v4, v3, v0

    monitor-enter v4

    .line 358
    :try_start_0
    iget-object v3, p0, Lorg/apache/commons/collections/StaticBucketMap;->m_buckets:[Lorg/apache/commons/collections/StaticBucketMap$Node;

    aget-object v1, v3, v0

    .line 359
    .local v1, n:Lorg/apache/commons/collections/StaticBucketMap$Node;
    const/4 v2, 0x0

    .line 361
    .local v2, prev:Lorg/apache/commons/collections/StaticBucketMap$Node;
    :goto_0
    if-nez v1, :cond_0

    monitor-exit v4

    .line 385
    const/4 v3, 0x0

    :goto_1
    return-object v3

    .line 363
    :cond_0
    iget-object v3, v1, Lorg/apache/commons/collections/StaticBucketMap$Node;->key:Ljava/lang/Object;

    if-eq v3, p1, :cond_1

    iget-object v3, v1, Lorg/apache/commons/collections/StaticBucketMap$Node;->key:Ljava/lang/Object;

    if-eqz v3, :cond_3

    iget-object v3, v1, Lorg/apache/commons/collections/StaticBucketMap$Node;->key:Ljava/lang/Object;

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 366
    :cond_1
    if-nez v2, :cond_2

    .line 369
    iget-object v3, p0, Lorg/apache/commons/collections/StaticBucketMap;->m_buckets:[Lorg/apache/commons/collections/StaticBucketMap$Node;

    iget-object v5, v1, Lorg/apache/commons/collections/StaticBucketMap$Node;->next:Lorg/apache/commons/collections/StaticBucketMap$Node;

    aput-object v5, v3, v0

    .line 376
    :goto_2
    iget-object v3, p0, Lorg/apache/commons/collections/StaticBucketMap;->m_locks:[Lorg/apache/commons/collections/StaticBucketMap$Lock;

    aget-object v3, v3, v0

    iget v5, v3, Lorg/apache/commons/collections/StaticBucketMap$Lock;->size:I

    add-int/lit8 v5, v5, -0x1

    iput v5, v3, Lorg/apache/commons/collections/StaticBucketMap$Lock;->size:I

    .line 377
    iget-object v3, v1, Lorg/apache/commons/collections/StaticBucketMap$Node;->value:Ljava/lang/Object;

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 383
    .end local v1           #n:Lorg/apache/commons/collections/StaticBucketMap$Node;
    .end local v2           #prev:Lorg/apache/commons/collections/StaticBucketMap$Node;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 374
    .restart local v1       #n:Lorg/apache/commons/collections/StaticBucketMap$Node;
    .restart local v2       #prev:Lorg/apache/commons/collections/StaticBucketMap$Node;
    :cond_2
    :try_start_1
    iget-object v3, v1, Lorg/apache/commons/collections/StaticBucketMap$Node;->next:Lorg/apache/commons/collections/StaticBucketMap$Node;

    iput-object v3, v2, Lorg/apache/commons/collections/StaticBucketMap$Node;->next:Lorg/apache/commons/collections/StaticBucketMap$Node;

    goto :goto_2

    .line 380
    :cond_3
    move-object v2, v1

    .line 381
    iget-object v1, v1, Lorg/apache/commons/collections/StaticBucketMap$Node;->next:Lorg/apache/commons/collections/StaticBucketMap$Node;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public size()I
    .locals 3

    .prologue
    .line 184
    const/4 v0, 0x0

    .line 186
    .local v0, cnt:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lorg/apache/commons/collections/StaticBucketMap;->m_buckets:[Lorg/apache/commons/collections/StaticBucketMap$Node;

    array-length v2, v2

    if-lt v1, v2, :cond_0

    .line 191
    return v0

    .line 188
    :cond_0
    iget-object v2, p0, Lorg/apache/commons/collections/StaticBucketMap;->m_locks:[Lorg/apache/commons/collections/StaticBucketMap$Lock;

    aget-object v2, v2, v1

    iget v2, v2, Lorg/apache/commons/collections/StaticBucketMap$Lock;->size:I

    add-int/2addr v0, v2

    .line 186
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public values()Ljava/util/Collection;
    .locals 2

    .prologue
    .line 324
    new-instance v0, Lorg/apache/commons/collections/StaticBucketMap$Values;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/collections/StaticBucketMap$Values;-><init>(Lorg/apache/commons/collections/StaticBucketMap;Lorg/apache/commons/collections/StaticBucketMap$1;)V

    return-object v0
.end method
