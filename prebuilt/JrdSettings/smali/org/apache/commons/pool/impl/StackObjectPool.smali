.class public Lorg/apache/commons/pool/impl/StackObjectPool;
.super Lorg/apache/commons/pool/BaseObjectPool;
.source "StackObjectPool.java"

# interfaces
.implements Lorg/apache/commons/pool/ObjectPool;


# static fields
.field protected static final DEFAULT_INIT_SLEEPING_CAPACITY:I = 0x4

.field protected static final DEFAULT_MAX_SLEEPING:I = 0x8


# instance fields
.field protected _factory:Lorg/apache/commons/pool/PoolableObjectFactory;

.field protected _maxSleeping:I

.field protected _numActive:I

.field protected _pool:Ljava/util/Stack;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 51
    const/4 v0, 0x0

    check-cast v0, Lorg/apache/commons/pool/PoolableObjectFactory;

    const/16 v1, 0x8

    const/4 v2, 0x4

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/commons/pool/impl/StackObjectPool;-><init>(Lorg/apache/commons/pool/PoolableObjectFactory;II)V

    .line 52
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .parameter "maxIdle"

    .prologue
    .line 63
    const/4 v0, 0x0

    check-cast v0, Lorg/apache/commons/pool/PoolableObjectFactory;

    const/4 v1, 0x4

    invoke-direct {p0, v0, p1, v1}, Lorg/apache/commons/pool/impl/StackObjectPool;-><init>(Lorg/apache/commons/pool/PoolableObjectFactory;II)V

    .line 64
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .parameter "maxIdle"
    .parameter "initIdleCapacity"

    .prologue
    .line 77
    const/4 v0, 0x0

    check-cast v0, Lorg/apache/commons/pool/PoolableObjectFactory;

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/commons/pool/impl/StackObjectPool;-><init>(Lorg/apache/commons/pool/PoolableObjectFactory;II)V

    .line 78
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/pool/PoolableObjectFactory;)V
    .locals 2
    .parameter "factory"

    .prologue
    .line 87
    const/16 v0, 0x8

    const/4 v1, 0x4

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/pool/impl/StackObjectPool;-><init>(Lorg/apache/commons/pool/PoolableObjectFactory;II)V

    .line 88
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/pool/PoolableObjectFactory;I)V
    .locals 1
    .parameter "factory"
    .parameter "maxIdle"

    .prologue
    .line 99
    const/4 v0, 0x4

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/pool/impl/StackObjectPool;-><init>(Lorg/apache/commons/pool/PoolableObjectFactory;II)V

    .line 100
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/pool/PoolableObjectFactory;II)V
    .locals 3
    .parameter "factory"
    .parameter "maxIdle"
    .parameter "initIdleCapacity"

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 114
    invoke-direct {p0}, Lorg/apache/commons/pool/BaseObjectPool;-><init>()V

    .line 251
    iput-object v2, p0, Lorg/apache/commons/pool/impl/StackObjectPool;->_pool:Ljava/util/Stack;

    .line 254
    iput-object v2, p0, Lorg/apache/commons/pool/impl/StackObjectPool;->_factory:Lorg/apache/commons/pool/PoolableObjectFactory;

    .line 257
    iput v1, p0, Lorg/apache/commons/pool/impl/StackObjectPool;->_maxSleeping:I

    .line 260
    const/4 v2, 0x0

    iput v2, p0, Lorg/apache/commons/pool/impl/StackObjectPool;->_numActive:I

    .line 115
    iput-object p1, p0, Lorg/apache/commons/pool/impl/StackObjectPool;->_factory:Lorg/apache/commons/pool/PoolableObjectFactory;

    .line 116
    if-gez p2, :cond_0

    move p2, v1

    .end local p2
    :cond_0
    iput p2, p0, Lorg/apache/commons/pool/impl/StackObjectPool;->_maxSleeping:I

    .line 117
    const/4 v1, 0x1

    if-ge p3, v1, :cond_2

    const/4 v0, 0x4

    .line 118
    .local v0, initcapacity:I
    :goto_0
    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    iput-object v1, p0, Lorg/apache/commons/pool/impl/StackObjectPool;->_pool:Ljava/util/Stack;

    .line 119
    iget-object v1, p0, Lorg/apache/commons/pool/impl/StackObjectPool;->_pool:Ljava/util/Stack;

    iget v2, p0, Lorg/apache/commons/pool/impl/StackObjectPool;->_maxSleeping:I

    if-le v0, v2, :cond_1

    iget v0, p0, Lorg/apache/commons/pool/impl/StackObjectPool;->_maxSleeping:I

    .end local v0           #initcapacity:I
    :cond_1
    invoke-virtual {v1, v0}, Ljava/util/Vector;->ensureCapacity(I)V

    .line 120
    return-void

    :cond_2
    move v0, p3

    .line 117
    goto :goto_0
.end method


# virtual methods
.method public addObject()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 223
    iget-object v1, p0, Lorg/apache/commons/pool/impl/StackObjectPool;->_factory:Lorg/apache/commons/pool/PoolableObjectFactory;

    invoke-interface {v1}, Lorg/apache/commons/pool/PoolableObjectFactory;->makeObject()Ljava/lang/Object;

    move-result-object v0

    .line 224
    .local v0, obj:Ljava/lang/Object;
    monitor-enter p0

    .line 225
    :try_start_0
    iget v1, p0, Lorg/apache/commons/pool/impl/StackObjectPool;->_numActive:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/commons/pool/impl/StackObjectPool;->_numActive:I

    .line 226
    invoke-virtual {p0, v0}, Lorg/apache/commons/pool/impl/StackObjectPool;->returnObject(Ljava/lang/Object;)V

    .line 227
    monitor-exit p0

    .line 228
    return-void

    .line 227
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public declared-synchronized borrowObject()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 123
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/pool/BaseObjectPool;->assertOpen()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    const/4 v1, 0x0

    .line 126
    .local v1, obj:Ljava/lang/Object;
    :try_start_1
    iget-object v2, p0, Lorg/apache/commons/pool/impl/StackObjectPool;->_pool:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/util/EmptyStackException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    .line 134
    :goto_0
    :try_start_2
    iget-object v2, p0, Lorg/apache/commons/pool/impl/StackObjectPool;->_factory:Lorg/apache/commons/pool/PoolableObjectFactory;

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 135
    iget-object v2, p0, Lorg/apache/commons/pool/impl/StackObjectPool;->_factory:Lorg/apache/commons/pool/PoolableObjectFactory;

    invoke-interface {v2, v1}, Lorg/apache/commons/pool/PoolableObjectFactory;->activateObject(Ljava/lang/Object;)V

    .line 137
    :cond_0
    iget v2, p0, Lorg/apache/commons/pool/impl/StackObjectPool;->_numActive:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/apache/commons/pool/impl/StackObjectPool;->_numActive:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 138
    monitor-exit p0

    return-object v1

    .line 128
    :catch_0
    move-exception v0

    .local v0, e:Ljava/util/EmptyStackException;
    :try_start_3
    iget-object v2, p0, Lorg/apache/commons/pool/impl/StackObjectPool;->_factory:Lorg/apache/commons/pool/PoolableObjectFactory;

    if-nez v2, :cond_1

    .line 129
    new-instance v2, Ljava/util/NoSuchElementException;

    invoke-direct {v2}, Ljava/util/NoSuchElementException;-><init>()V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 123
    .end local v0           #e:Ljava/util/EmptyStackException;
    .end local v1           #obj:Ljava/lang/Object;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 131
    .restart local v0       #e:Ljava/util/EmptyStackException;
    .restart local v1       #obj:Ljava/lang/Object;
    :cond_1
    :try_start_4
    iget-object v2, p0, Lorg/apache/commons/pool/impl/StackObjectPool;->_factory:Lorg/apache/commons/pool/PoolableObjectFactory;

    invoke-interface {v2}, Lorg/apache/commons/pool/PoolableObjectFactory;->makeObject()Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v1

    .line 133
    goto :goto_0
.end method

.method public declared-synchronized clear()V
    .locals 4

    .prologue
    .line 197
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/pool/BaseObjectPool;->assertOpen()V

    .line 198
    iget-object v2, p0, Lorg/apache/commons/pool/impl/StackObjectPool;->_factory:Lorg/apache/commons/pool/PoolableObjectFactory;

    if-eqz v2, :cond_0

    .line 199
    iget-object v2, p0, Lorg/apache/commons/pool/impl/StackObjectPool;->_pool:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    .line 200
    .local v1, enum:Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-nez v2, :cond_1

    .line 208
    .end local v1           #enum:Ljava/util/Enumeration;
    :cond_0
    iget-object v2, p0, Lorg/apache/commons/pool/impl/StackObjectPool;->_pool:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Vector;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 209
    monitor-exit p0

    return-void

    .line 202
    .restart local v1       #enum:Ljava/util/Enumeration;
    :cond_1
    :try_start_1
    iget-object v2, p0, Lorg/apache/commons/pool/impl/StackObjectPool;->_factory:Lorg/apache/commons/pool/PoolableObjectFactory;

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/pool/PoolableObjectFactory;->destroyObject(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 203
    :catch_0
    move-exception v0

    .line 205
    .local v0, e:Ljava/lang/Exception;
    goto :goto_0

    .line 197
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #enum:Ljava/util/Enumeration;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 212
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/pool/impl/StackObjectPool;->clear()V

    .line 213
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/pool/impl/StackObjectPool;->_pool:Ljava/util/Stack;

    .line 214
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/pool/impl/StackObjectPool;->_factory:Lorg/apache/commons/pool/PoolableObjectFactory;

    .line 215
    invoke-super {p0}, Lorg/apache/commons/pool/BaseObjectPool;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 216
    monitor-exit p0

    return-void

    .line 212
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getNumActive()I
    .locals 1

    .prologue
    .line 192
    invoke-virtual {p0}, Lorg/apache/commons/pool/BaseObjectPool;->assertOpen()V

    .line 193
    iget v0, p0, Lorg/apache/commons/pool/impl/StackObjectPool;->_numActive:I

    return v0
.end method

.method public getNumIdle()I
    .locals 1

    .prologue
    .line 187
    invoke-virtual {p0}, Lorg/apache/commons/pool/BaseObjectPool;->assertOpen()V

    .line 188
    iget-object v0, p0, Lorg/apache/commons/pool/impl/StackObjectPool;->_pool:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public declared-synchronized invalidateObject(Ljava/lang/Object;)V
    .locals 1
    .parameter "obj"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 178
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/pool/BaseObjectPool;->assertOpen()V

    .line 179
    iget v0, p0, Lorg/apache/commons/pool/impl/StackObjectPool;->_numActive:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/commons/pool/impl/StackObjectPool;->_numActive:I

    .line 180
    iget-object v0, p0, Lorg/apache/commons/pool/impl/StackObjectPool;->_factory:Lorg/apache/commons/pool/PoolableObjectFactory;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lorg/apache/commons/pool/impl/StackObjectPool;->_factory:Lorg/apache/commons/pool/PoolableObjectFactory;

    invoke-interface {v0, p1}, Lorg/apache/commons/pool/PoolableObjectFactory;->destroyObject(Ljava/lang/Object;)V

    .line 183
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    monitor-exit p0

    return-void

    .line 178
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public returnObject(Ljava/lang/Object;)V
    .locals 5
    .parameter "obj"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 142
    invoke-virtual {p0}, Lorg/apache/commons/pool/BaseObjectPool;->assertOpen()V

    .line 143
    const/4 v2, 0x1

    .line 144
    .local v2, success:Z
    iget-object v3, p0, Lorg/apache/commons/pool/impl/StackObjectPool;->_factory:Lorg/apache/commons/pool/PoolableObjectFactory;

    if-eqz v3, :cond_0

    .line 145
    iget-object v3, p0, Lorg/apache/commons/pool/impl/StackObjectPool;->_factory:Lorg/apache/commons/pool/PoolableObjectFactory;

    invoke-interface {v3, p1}, Lorg/apache/commons/pool/PoolableObjectFactory;->validateObject(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 146
    const/4 v2, 0x0

    .line 156
    :cond_0
    :goto_0
    if-nez v2, :cond_4

    const/4 v1, 0x1

    .line 158
    .local v1, shouldDestroy:Z
    :goto_1
    monitor-enter p0

    .line 159
    :try_start_0
    iget v3, p0, Lorg/apache/commons/pool/impl/StackObjectPool;->_numActive:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lorg/apache/commons/pool/impl/StackObjectPool;->_numActive:I

    .line 160
    iget-object v3, p0, Lorg/apache/commons/pool/impl/StackObjectPool;->_pool:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    iget v4, p0, Lorg/apache/commons/pool/impl/StackObjectPool;->_maxSleeping:I

    if-lt v3, v4, :cond_5

    .line 161
    const/4 v1, 0x1

    .line 165
    :cond_1
    :goto_2
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 166
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    if-eqz v1, :cond_2

    .line 170
    :try_start_1
    iget-object v3, p0, Lorg/apache/commons/pool/impl/StackObjectPool;->_factory:Lorg/apache/commons/pool/PoolableObjectFactory;

    invoke-interface {v3, p1}, Lorg/apache/commons/pool/PoolableObjectFactory;->destroyObject(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 175
    :cond_2
    :goto_3
    return-void

    .line 149
    .end local v1           #shouldDestroy:Z
    :cond_3
    :try_start_2
    iget-object v3, p0, Lorg/apache/commons/pool/impl/StackObjectPool;->_factory:Lorg/apache/commons/pool/PoolableObjectFactory;

    invoke-interface {v3, p1}, Lorg/apache/commons/pool/PoolableObjectFactory;->passivateObject(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 151
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x0

    .line 152
    goto :goto_0

    .line 156
    .end local v0           #e:Ljava/lang/Exception;
    :cond_4
    const/4 v1, 0x0

    goto :goto_1

    .line 162
    .restart local v1       #shouldDestroy:Z
    :cond_5
    if-eqz v2, :cond_1

    .line 163
    :try_start_3
    iget-object v3, p0, Lorg/apache/commons/pool/impl/StackObjectPool;->_pool:Ljava/util/Stack;

    invoke-virtual {v3, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 166
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    .line 171
    :catch_1
    move-exception v0

    .line 173
    .restart local v0       #e:Ljava/lang/Exception;
    goto :goto_3
.end method

.method public declared-synchronized setFactory(Lorg/apache/commons/pool/PoolableObjectFactory;)V
    .locals 2
    .parameter "factory"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 231
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/pool/BaseObjectPool;->assertOpen()V

    .line 232
    invoke-virtual {p0}, Lorg/apache/commons/pool/impl/StackObjectPool;->getNumActive()I

    move-result v0

    if-lez v0, :cond_0

    .line 233
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Objects are already active"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 231
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 235
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/commons/pool/impl/StackObjectPool;->clear()V

    .line 236
    iput-object p1, p0, Lorg/apache/commons/pool/impl/StackObjectPool;->_factory:Lorg/apache/commons/pool/PoolableObjectFactory;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 238
    monitor-exit p0

    return-void
.end method
