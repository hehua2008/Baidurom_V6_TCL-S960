.class public Lorg/apache/commons/pool/impl/StackKeyedObjectPool;
.super Lorg/apache/commons/pool/BaseKeyedObjectPool;
.source "StackKeyedObjectPool.java"

# interfaces
.implements Lorg/apache/commons/pool/KeyedObjectPool;


# static fields
.field protected static final DEFAULT_INIT_SLEEPING_CAPACITY:I = 0x4

.field protected static final DEFAULT_MAX_SLEEPING:I = 0x8


# instance fields
.field protected _activeCount:Ljava/util/HashMap;

.field protected _factory:Lorg/apache/commons/pool/KeyedPoolableObjectFactory;

.field protected _initSleepingCapacity:I

.field protected _maxSleeping:I

.field protected _pools:Ljava/util/HashMap;

.field protected _totActive:I

.field protected _totIdle:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 52
    const/4 v0, 0x0

    check-cast v0, Lorg/apache/commons/pool/KeyedPoolableObjectFactory;

    const/16 v1, 0x8

    const/4 v2, 0x4

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/commons/pool/impl/StackKeyedObjectPool;-><init>(Lorg/apache/commons/pool/KeyedPoolableObjectFactory;II)V

    .line 53
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .parameter "max"

    .prologue
    .line 64
    const/4 v0, 0x0

    check-cast v0, Lorg/apache/commons/pool/KeyedPoolableObjectFactory;

    const/4 v1, 0x4

    invoke-direct {p0, v0, p1, v1}, Lorg/apache/commons/pool/impl/StackKeyedObjectPool;-><init>(Lorg/apache/commons/pool/KeyedPoolableObjectFactory;II)V

    .line 65
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .parameter "max"
    .parameter "init"

    .prologue
    .line 78
    const/4 v0, 0x0

    check-cast v0, Lorg/apache/commons/pool/KeyedPoolableObjectFactory;

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/commons/pool/impl/StackKeyedObjectPool;-><init>(Lorg/apache/commons/pool/KeyedPoolableObjectFactory;II)V

    .line 79
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/pool/KeyedPoolableObjectFactory;)V
    .locals 1
    .parameter "factory"

    .prologue
    .line 88
    const/16 v0, 0x8

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/pool/impl/StackKeyedObjectPool;-><init>(Lorg/apache/commons/pool/KeyedPoolableObjectFactory;I)V

    .line 89
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/pool/KeyedPoolableObjectFactory;I)V
    .locals 1
    .parameter "factory"
    .parameter "max"

    .prologue
    .line 100
    const/4 v0, 0x4

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/pool/impl/StackKeyedObjectPool;-><init>(Lorg/apache/commons/pool/KeyedPoolableObjectFactory;II)V

    .line 101
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/pool/KeyedPoolableObjectFactory;II)V
    .locals 4
    .parameter "factory"
    .parameter "max"
    .parameter "init"

    .prologue
    const/16 v0, 0x8

    const/4 v1, 0x4

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 115
    invoke-direct {p0}, Lorg/apache/commons/pool/BaseKeyedObjectPool;-><init>()V

    .line 326
    iput-object v2, p0, Lorg/apache/commons/pool/impl/StackKeyedObjectPool;->_pools:Ljava/util/HashMap;

    .line 329
    iput-object v2, p0, Lorg/apache/commons/pool/impl/StackKeyedObjectPool;->_factory:Lorg/apache/commons/pool/KeyedPoolableObjectFactory;

    .line 332
    iput v0, p0, Lorg/apache/commons/pool/impl/StackKeyedObjectPool;->_maxSleeping:I

    .line 335
    iput v1, p0, Lorg/apache/commons/pool/impl/StackKeyedObjectPool;->_initSleepingCapacity:I

    .line 338
    iput v3, p0, Lorg/apache/commons/pool/impl/StackKeyedObjectPool;->_totActive:I

    .line 341
    iput v3, p0, Lorg/apache/commons/pool/impl/StackKeyedObjectPool;->_totIdle:I

    .line 344
    iput-object v2, p0, Lorg/apache/commons/pool/impl/StackKeyedObjectPool;->_activeCount:Ljava/util/HashMap;

    .line 116
    iput-object p1, p0, Lorg/apache/commons/pool/impl/StackKeyedObjectPool;->_factory:Lorg/apache/commons/pool/KeyedPoolableObjectFactory;

    .line 117
    if-gez p2, :cond_0

    move p2, v0

    .end local p2
    :cond_0
    iput p2, p0, Lorg/apache/commons/pool/impl/StackKeyedObjectPool;->_maxSleeping:I

    .line 118
    const/4 v0, 0x1

    if-ge p3, v0, :cond_1

    move p3, v1

    .end local p3
    :cond_1
    iput p3, p0, Lorg/apache/commons/pool/impl/StackKeyedObjectPool;->_initSleepingCapacity:I

    .line 119
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/pool/impl/StackKeyedObjectPool;->_pools:Ljava/util/HashMap;

    .line 120
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/pool/impl/StackKeyedObjectPool;->_activeCount:Ljava/util/HashMap;

    .line 121
    return-void
.end method

.method private decrementActiveCount(Ljava/lang/Object;)V
    .locals 4
    .parameter "key"

    .prologue
    .line 304
    iget v1, p0, Lorg/apache/commons/pool/impl/StackKeyedObjectPool;->_totActive:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/apache/commons/pool/impl/StackKeyedObjectPool;->_totActive:I

    .line 305
    iget-object v1, p0, Lorg/apache/commons/pool/impl/StackKeyedObjectPool;->_activeCount:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 306
    .local v0, active:Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 313
    :goto_0
    return-void

    .line 308
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_1

    .line 309
    iget-object v1, p0, Lorg/apache/commons/pool/impl/StackKeyedObjectPool;->_activeCount:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 311
    :cond_1
    iget-object v1, p0, Lorg/apache/commons/pool/impl/StackKeyedObjectPool;->_activeCount:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private declared-synchronized destroyStack(Ljava/lang/Object;Ljava/util/Stack;)V
    .locals 4
    .parameter "key"
    .parameter "stack"

    .prologue
    .line 234
    monitor-enter p0

    if-nez p2, :cond_0

    .line 251
    :goto_0
    monitor-exit p0

    return-void

    .line 237
    :cond_0
    :try_start_0
    iget-object v2, p0, Lorg/apache/commons/pool/impl/StackKeyedObjectPool;->_factory:Lorg/apache/commons/pool/KeyedPoolableObjectFactory;

    if-eqz v2, :cond_1

    .line 238
    invoke-virtual {p2}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    .line 239
    .local v1, enum:Ljava/util/Enumeration;
    :goto_1
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-nez v2, :cond_2

    .line 247
    .end local v1           #enum:Ljava/util/Enumeration;
    :cond_1
    iget v2, p0, Lorg/apache/commons/pool/impl/StackKeyedObjectPool;->_totIdle:I

    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, p0, Lorg/apache/commons/pool/impl/StackKeyedObjectPool;->_totIdle:I

    .line 248
    iget-object v2, p0, Lorg/apache/commons/pool/impl/StackKeyedObjectPool;->_activeCount:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    invoke-virtual {p2}, Ljava/util/Vector;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 234
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 241
    .restart local v1       #enum:Ljava/util/Enumeration;
    :cond_2
    :try_start_1
    iget-object v2, p0, Lorg/apache/commons/pool/impl/StackKeyedObjectPool;->_factory:Lorg/apache/commons/pool/KeyedPoolableObjectFactory;

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Lorg/apache/commons/pool/KeyedPoolableObjectFactory;->destroyObject(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 242
    :catch_0
    move-exception v0

    .line 244
    .local v0, e:Ljava/lang/Exception;
    goto :goto_1
.end method

.method private getActiveCount(Ljava/lang/Object;)I
    .locals 3
    .parameter "key"

    .prologue
    const/4 v2, 0x0

    .line 285
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/pool/impl/StackKeyedObjectPool;->_activeCount:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 289
    :goto_0
    return v1

    .line 287
    :catch_0
    move-exception v0

    .local v0, e:Ljava/util/NoSuchElementException;
    move v1, v2

    goto :goto_0

    .line 289
    .end local v0           #e:Ljava/util/NoSuchElementException;
    :catch_1
    move-exception v0

    .local v0, e:Ljava/lang/NullPointerException;
    move v1, v2

    goto :goto_0
.end method

.method private incrementActiveCount(Ljava/lang/Object;)V
    .locals 4
    .parameter "key"

    .prologue
    .line 294
    iget v1, p0, Lorg/apache/commons/pool/impl/StackKeyedObjectPool;->_totActive:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/commons/pool/impl/StackKeyedObjectPool;->_totActive:I

    .line 295
    iget-object v1, p0, Lorg/apache/commons/pool/impl/StackKeyedObjectPool;->_activeCount:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 296
    .local v0, old:Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 297
    iget-object v1, p0, Lorg/apache/commons/pool/impl/StackKeyedObjectPool;->_activeCount:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/Integer;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    :goto_0
    return-void

    .line 299
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/pool/impl/StackKeyedObjectPool;->_activeCount:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public addObject(Ljava/lang/Object;)V
    .locals 2
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 189
    iget-object v1, p0, Lorg/apache/commons/pool/impl/StackKeyedObjectPool;->_factory:Lorg/apache/commons/pool/KeyedPoolableObjectFactory;

    invoke-interface {v1, p1}, Lorg/apache/commons/pool/KeyedPoolableObjectFactory;->makeObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 190
    .local v0, obj:Ljava/lang/Object;
    monitor-enter p0

    .line 191
    :try_start_0
    invoke-direct {p0, p1}, Lorg/apache/commons/pool/impl/StackKeyedObjectPool;->incrementActiveCount(Ljava/lang/Object;)V

    .line 192
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/pool/impl/StackKeyedObjectPool;->returnObject(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 193
    monitor-exit p0

    .line 194
    return-void

    .line 193
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public declared-synchronized borrowObject(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 124
    monitor-enter p0

    const/4 v1, 0x0

    .line 125
    .local v1, obj:Ljava/lang/Object;
    :try_start_0
    iget-object v3, p0, Lorg/apache/commons/pool/impl/StackKeyedObjectPool;->_pools:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Stack;

    .line 126
    .local v2, stack:Ljava/util/Stack;
    if-nez v2, :cond_0

    .line 127
    new-instance v2, Ljava/util/Stack;

    .end local v2           #stack:Ljava/util/Stack;
    invoke-direct {v2}, Ljava/util/Stack;-><init>()V

    .line 128
    .restart local v2       #stack:Ljava/util/Stack;
    iget v3, p0, Lorg/apache/commons/pool/impl/StackKeyedObjectPool;->_initSleepingCapacity:I

    iget v4, p0, Lorg/apache/commons/pool/impl/StackKeyedObjectPool;->_maxSleeping:I

    if-le v3, v4, :cond_2

    iget v3, p0, Lorg/apache/commons/pool/impl/StackKeyedObjectPool;->_maxSleeping:I

    :goto_0
    invoke-virtual {v2, v3}, Ljava/util/Vector;->ensureCapacity(I)V

    .line 129
    iget-object v3, p0, Lorg/apache/commons/pool/impl/StackKeyedObjectPool;->_pools:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    :cond_0
    :try_start_1
    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    .line 133
    iget v3, p0, Lorg/apache/commons/pool/impl/StackKeyedObjectPool;->_totIdle:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lorg/apache/commons/pool/impl/StackKeyedObjectPool;->_totIdle:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 141
    :goto_1
    if-eqz v1, :cond_1

    :try_start_2
    iget-object v3, p0, Lorg/apache/commons/pool/impl/StackKeyedObjectPool;->_factory:Lorg/apache/commons/pool/KeyedPoolableObjectFactory;

    if-eqz v3, :cond_1

    .line 142
    iget-object v3, p0, Lorg/apache/commons/pool/impl/StackKeyedObjectPool;->_factory:Lorg/apache/commons/pool/KeyedPoolableObjectFactory;

    invoke-interface {v3, p1, v1}, Lorg/apache/commons/pool/KeyedPoolableObjectFactory;->activateObject(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 144
    :cond_1
    invoke-direct {p0, p1}, Lorg/apache/commons/pool/impl/StackKeyedObjectPool;->incrementActiveCount(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 145
    monitor-exit p0

    return-object v1

    .line 128
    :cond_2
    :try_start_3
    iget v3, p0, Lorg/apache/commons/pool/impl/StackKeyedObjectPool;->_initSleepingCapacity:I

    goto :goto_0

    .line 135
    .end local v1           #obj:Ljava/lang/Object;
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    iget-object v3, p0, Lorg/apache/commons/pool/impl/StackKeyedObjectPool;->_factory:Lorg/apache/commons/pool/KeyedPoolableObjectFactory;

    if-nez v3, :cond_3

    .line 136
    new-instance v3, Ljava/util/NoSuchElementException;

    invoke-direct {v3}, Ljava/util/NoSuchElementException;-><init>()V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 124
    .end local v0           #e:Ljava/lang/Exception;
    .end local v2           #stack:Ljava/util/Stack;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 138
    .restart local v0       #e:Ljava/lang/Exception;
    .restart local v2       #stack:Ljava/util/Stack;
    :cond_3
    :try_start_4
    iget-object v3, p0, Lorg/apache/commons/pool/impl/StackKeyedObjectPool;->_factory:Lorg/apache/commons/pool/KeyedPoolableObjectFactory;

    invoke-interface {v3, p1}, Lorg/apache/commons/pool/KeyedPoolableObjectFactory;->makeObject(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v1

    .line 140
    .restart local v1       #obj:Ljava/lang/Object;
    goto :goto_1
.end method

.method public declared-synchronized clear()V
    .locals 4

    .prologue
    .line 217
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lorg/apache/commons/pool/impl/StackKeyedObjectPool;->_pools:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 218
    .local v0, it:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 223
    const/4 v3, 0x0

    iput v3, p0, Lorg/apache/commons/pool/impl/StackKeyedObjectPool;->_totIdle:I

    .line 224
    iget-object v3, p0, Lorg/apache/commons/pool/impl/StackKeyedObjectPool;->_pools:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 225
    iget-object v3, p0, Lorg/apache/commons/pool/impl/StackKeyedObjectPool;->_activeCount:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 226
    monitor-exit p0

    return-void

    .line 219
    :cond_0
    :try_start_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 220
    .local v1, key:Ljava/lang/Object;
    iget-object v3, p0, Lorg/apache/commons/pool/impl/StackKeyedObjectPool;->_pools:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Stack;

    .line 221
    .local v2, stack:Ljava/util/Stack;
    invoke-direct {p0, v1, v2}, Lorg/apache/commons/pool/impl/StackKeyedObjectPool;->destroyStack(Ljava/lang/Object;Ljava/util/Stack;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 217
    .end local v0           #it:Ljava/util/Iterator;
    .end local v1           #key:Ljava/lang/Object;
    .end local v2           #stack:Ljava/util/Stack;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized clear(Ljava/lang/Object;)V
    .locals 2
    .parameter "key"

    .prologue
    .line 229
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/pool/impl/StackKeyedObjectPool;->_pools:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Stack;

    .line 230
    .local v0, stack:Ljava/util/Stack;
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/pool/impl/StackKeyedObjectPool;->destroyStack(Ljava/lang/Object;Ljava/util/Stack;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 231
    monitor-exit p0

    return-void

    .line 229
    .end local v0           #stack:Ljava/util/Stack;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 268
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/pool/impl/StackKeyedObjectPool;->clear()V

    .line 269
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/pool/impl/StackKeyedObjectPool;->_pools:Ljava/util/HashMap;

    .line 270
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/pool/impl/StackKeyedObjectPool;->_factory:Lorg/apache/commons/pool/KeyedPoolableObjectFactory;

    .line 271
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/pool/impl/StackKeyedObjectPool;->_activeCount:Ljava/util/HashMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 272
    monitor-exit p0

    return-void

    .line 268
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getNumActive()I
    .locals 1

    .prologue
    .line 201
    iget v0, p0, Lorg/apache/commons/pool/impl/StackKeyedObjectPool;->_totActive:I

    return v0
.end method

.method public getNumActive(Ljava/lang/Object;)I
    .locals 1
    .parameter "key"

    .prologue
    .line 205
    invoke-direct {p0, p1}, Lorg/apache/commons/pool/impl/StackKeyedObjectPool;->getActiveCount(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getNumIdle()I
    .locals 1

    .prologue
    .line 197
    iget v0, p0, Lorg/apache/commons/pool/impl/StackKeyedObjectPool;->_totIdle:I

    return v0
.end method

.method public declared-synchronized getNumIdle(Ljava/lang/Object;)I
    .locals 2
    .parameter "key"

    .prologue
    .line 210
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/pool/impl/StackKeyedObjectPool;->_pools:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 212
    :goto_0
    monitor-exit p0

    return v1

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0

    .line 210
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized invalidateObject(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .parameter "key"
    .parameter "obj"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 181
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lorg/apache/commons/pool/impl/StackKeyedObjectPool;->decrementActiveCount(Ljava/lang/Object;)V

    .line 182
    iget-object v0, p0, Lorg/apache/commons/pool/impl/StackKeyedObjectPool;->_factory:Lorg/apache/commons/pool/KeyedPoolableObjectFactory;

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lorg/apache/commons/pool/impl/StackKeyedObjectPool;->_factory:Lorg/apache/commons/pool/KeyedPoolableObjectFactory;

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/pool/KeyedPoolableObjectFactory;->destroyObject(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 185
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    monitor-exit p0

    return-void

    .line 181
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized returnObject(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4
    .parameter "key"
    .parameter "obj"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 149
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lorg/apache/commons/pool/impl/StackKeyedObjectPool;->decrementActiveCount(Ljava/lang/Object;)V

    .line 150
    iget-object v2, p0, Lorg/apache/commons/pool/impl/StackKeyedObjectPool;->_factory:Lorg/apache/commons/pool/KeyedPoolableObjectFactory;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/apache/commons/pool/impl/StackKeyedObjectPool;->_factory:Lorg/apache/commons/pool/KeyedPoolableObjectFactory;

    invoke-interface {v2, p1, p2}, Lorg/apache/commons/pool/KeyedPoolableObjectFactory;->validateObject(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 151
    :cond_0
    iget-object v2, p0, Lorg/apache/commons/pool/impl/StackKeyedObjectPool;->_pools:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Stack;

    .line 152
    .local v1, stack:Ljava/util/Stack;
    if-nez v1, :cond_1

    .line 153
    new-instance v1, Ljava/util/Stack;

    .end local v1           #stack:Ljava/util/Stack;
    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    .line 154
    .restart local v1       #stack:Ljava/util/Stack;
    iget v2, p0, Lorg/apache/commons/pool/impl/StackKeyedObjectPool;->_initSleepingCapacity:I

    iget v3, p0, Lorg/apache/commons/pool/impl/StackKeyedObjectPool;->_maxSleeping:I

    if-le v2, v3, :cond_4

    iget v2, p0, Lorg/apache/commons/pool/impl/StackKeyedObjectPool;->_maxSleeping:I

    :goto_0
    invoke-virtual {v1, v2}, Ljava/util/Vector;->ensureCapacity(I)V

    .line 155
    iget-object v2, p0, Lorg/apache/commons/pool/impl/StackKeyedObjectPool;->_pools:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    :cond_1
    iget-object v2, p0, Lorg/apache/commons/pool/impl/StackKeyedObjectPool;->_factory:Lorg/apache/commons/pool/KeyedPoolableObjectFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_2

    .line 159
    :try_start_1
    iget-object v2, p0, Lorg/apache/commons/pool/impl/StackKeyedObjectPool;->_factory:Lorg/apache/commons/pool/KeyedPoolableObjectFactory;

    invoke-interface {v2, p1, p2}, Lorg/apache/commons/pool/KeyedPoolableObjectFactory;->passivateObject(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 165
    :cond_2
    :try_start_2
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v2

    iget v3, p0, Lorg/apache/commons/pool/impl/StackKeyedObjectPool;->_maxSleeping:I

    if-ge v2, v3, :cond_5

    .line 166
    invoke-virtual {v1, p2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    iget v2, p0, Lorg/apache/commons/pool/impl/StackKeyedObjectPool;->_totIdle:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/apache/commons/pool/impl/StackKeyedObjectPool;->_totIdle:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 178
    .end local v1           #stack:Ljava/util/Stack;
    :cond_3
    :goto_1
    monitor-exit p0

    return-void

    .line 154
    .restart local v1       #stack:Ljava/util/Stack;
    :cond_4
    :try_start_3
    iget v2, p0, Lorg/apache/commons/pool/impl/StackKeyedObjectPool;->_initSleepingCapacity:I

    goto :goto_0

    .line 161
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    iget-object v2, p0, Lorg/apache/commons/pool/impl/StackKeyedObjectPool;->_factory:Lorg/apache/commons/pool/KeyedPoolableObjectFactory;

    invoke-interface {v2, p1, p2}, Lorg/apache/commons/pool/KeyedPoolableObjectFactory;->destroyObject(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 149
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #stack:Ljava/util/Stack;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 169
    .restart local v1       #stack:Ljava/util/Stack;
    :cond_5
    :try_start_4
    iget-object v2, p0, Lorg/apache/commons/pool/impl/StackKeyedObjectPool;->_factory:Lorg/apache/commons/pool/KeyedPoolableObjectFactory;

    if-eqz v2, :cond_3

    .line 170
    iget-object v2, p0, Lorg/apache/commons/pool/impl/StackKeyedObjectPool;->_factory:Lorg/apache/commons/pool/KeyedPoolableObjectFactory;

    invoke-interface {v2, p1, p2}, Lorg/apache/commons/pool/KeyedPoolableObjectFactory;->destroyObject(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 174
    .end local v1           #stack:Ljava/util/Stack;
    :cond_6
    iget-object v2, p0, Lorg/apache/commons/pool/impl/StackKeyedObjectPool;->_factory:Lorg/apache/commons/pool/KeyedPoolableObjectFactory;

    if-eqz v2, :cond_3

    .line 175
    iget-object v2, p0, Lorg/apache/commons/pool/impl/StackKeyedObjectPool;->_factory:Lorg/apache/commons/pool/KeyedPoolableObjectFactory;

    invoke-interface {v2, p1, p2}, Lorg/apache/commons/pool/KeyedPoolableObjectFactory;->destroyObject(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public declared-synchronized setFactory(Lorg/apache/commons/pool/KeyedPoolableObjectFactory;)V
    .locals 2
    .parameter "factory"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 275
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/pool/impl/StackKeyedObjectPool;->getNumActive()I

    move-result v0

    if-lez v0, :cond_0

    .line 276
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Objects are already active"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 275
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 278
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/commons/pool/impl/StackKeyedObjectPool;->clear()V

    .line 279
    iput-object p1, p0, Lorg/apache/commons/pool/impl/StackKeyedObjectPool;->_factory:Lorg/apache/commons/pool/KeyedPoolableObjectFactory;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 281
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 254
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 255
    .local v0, buf:Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 256
    const-string v4, " contains "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/commons/pool/impl/StackKeyedObjectPool;->_pools:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, " distinct pools: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 257
    iget-object v4, p0, Lorg/apache/commons/pool/impl/StackKeyedObjectPool;->_pools:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 258
    .local v1, it:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 264
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    monitor-exit p0

    return-object v4

    .line 259
    :cond_0
    :try_start_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 260
    .local v2, key:Ljava/lang/Object;
    const-string v4, " |"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "|="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 261
    iget-object v4, p0, Lorg/apache/commons/pool/impl/StackKeyedObjectPool;->_pools:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Stack;

    .line 262
    .local v3, s:Ljava/util/Stack;
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 254
    .end local v0           #buf:Ljava/lang/StringBuffer;
    .end local v1           #it:Ljava/util/Iterator;
    .end local v2           #key:Ljava/lang/Object;
    .end local v3           #s:Ljava/util/Stack;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method
