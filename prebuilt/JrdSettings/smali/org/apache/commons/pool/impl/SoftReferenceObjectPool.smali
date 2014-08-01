.class public Lorg/apache/commons/pool/impl/SoftReferenceObjectPool;
.super Lorg/apache/commons/pool/BaseObjectPool;
.source "SoftReferenceObjectPool.java"

# interfaces
.implements Lorg/apache/commons/pool/ObjectPool;


# instance fields
.field private _factory:Lorg/apache/commons/pool/PoolableObjectFactory;

.field private _numActive:I

.field private _pool:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 37
    invoke-direct {p0}, Lorg/apache/commons/pool/BaseObjectPool;-><init>()V

    .line 177
    iput-object v1, p0, Lorg/apache/commons/pool/impl/SoftReferenceObjectPool;->_pool:Ljava/util/List;

    .line 180
    iput-object v1, p0, Lorg/apache/commons/pool/impl/SoftReferenceObjectPool;->_factory:Lorg/apache/commons/pool/PoolableObjectFactory;

    .line 183
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/pool/impl/SoftReferenceObjectPool;->_numActive:I

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/pool/impl/SoftReferenceObjectPool;->_pool:Ljava/util/List;

    .line 39
    iput-object v1, p0, Lorg/apache/commons/pool/impl/SoftReferenceObjectPool;->_factory:Lorg/apache/commons/pool/PoolableObjectFactory;

    .line 40
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/pool/PoolableObjectFactory;)V
    .locals 1
    .parameter "factory"

    .prologue
    const/4 v0, 0x0

    .line 42
    invoke-direct {p0}, Lorg/apache/commons/pool/BaseObjectPool;-><init>()V

    .line 177
    iput-object v0, p0, Lorg/apache/commons/pool/impl/SoftReferenceObjectPool;->_pool:Ljava/util/List;

    .line 180
    iput-object v0, p0, Lorg/apache/commons/pool/impl/SoftReferenceObjectPool;->_factory:Lorg/apache/commons/pool/PoolableObjectFactory;

    .line 183
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/pool/impl/SoftReferenceObjectPool;->_numActive:I

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/pool/impl/SoftReferenceObjectPool;->_pool:Ljava/util/List;

    .line 44
    iput-object p1, p0, Lorg/apache/commons/pool/impl/SoftReferenceObjectPool;->_factory:Lorg/apache/commons/pool/PoolableObjectFactory;

    .line 45
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/pool/PoolableObjectFactory;I)V
    .locals 4
    .parameter "factory"
    .parameter "initSize"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 47
    invoke-direct {p0}, Lorg/apache/commons/pool/BaseObjectPool;-><init>()V

    .line 177
    iput-object v2, p0, Lorg/apache/commons/pool/impl/SoftReferenceObjectPool;->_pool:Ljava/util/List;

    .line 180
    iput-object v2, p0, Lorg/apache/commons/pool/impl/SoftReferenceObjectPool;->_factory:Lorg/apache/commons/pool/PoolableObjectFactory;

    .line 183
    const/4 v2, 0x0

    iput v2, p0, Lorg/apache/commons/pool/impl/SoftReferenceObjectPool;->_numActive:I

    .line 48
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lorg/apache/commons/pool/impl/SoftReferenceObjectPool;->_pool:Ljava/util/List;

    .line 49
    iput-object p1, p0, Lorg/apache/commons/pool/impl/SoftReferenceObjectPool;->_factory:Lorg/apache/commons/pool/PoolableObjectFactory;

    .line 50
    iget-object v2, p0, Lorg/apache/commons/pool/impl/SoftReferenceObjectPool;->_factory:Lorg/apache/commons/pool/PoolableObjectFactory;

    if-eqz v2, :cond_0

    .line 51
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, p2, :cond_1

    .line 57
    .end local v0           #i:I
    :cond_0
    return-void

    .line 52
    .restart local v0       #i:I
    :cond_1
    iget-object v2, p0, Lorg/apache/commons/pool/impl/SoftReferenceObjectPool;->_factory:Lorg/apache/commons/pool/PoolableObjectFactory;

    invoke-interface {v2}, Lorg/apache/commons/pool/PoolableObjectFactory;->makeObject()Ljava/lang/Object;

    move-result-object v1

    .line 53
    .local v1, obj:Ljava/lang/Object;
    iget-object v2, p0, Lorg/apache/commons/pool/impl/SoftReferenceObjectPool;->_factory:Lorg/apache/commons/pool/PoolableObjectFactory;

    invoke-interface {v2, v1}, Lorg/apache/commons/pool/PoolableObjectFactory;->passivateObject(Ljava/lang/Object;)V

    .line 54
    iget-object v2, p0, Lorg/apache/commons/pool/impl/SoftReferenceObjectPool;->_pool:Ljava/util/List;

    new-instance v3, Ljava/lang/ref/SoftReference;

    invoke-direct {v3, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    add-int/lit8 v0, v0, 0x1

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
    .line 125
    iget-object v1, p0, Lorg/apache/commons/pool/impl/SoftReferenceObjectPool;->_factory:Lorg/apache/commons/pool/PoolableObjectFactory;

    invoke-interface {v1}, Lorg/apache/commons/pool/PoolableObjectFactory;->makeObject()Ljava/lang/Object;

    move-result-object v0

    .line 126
    .local v0, obj:Ljava/lang/Object;
    monitor-enter p0

    .line 127
    :try_start_0
    iget v1, p0, Lorg/apache/commons/pool/impl/SoftReferenceObjectPool;->_numActive:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/commons/pool/impl/SoftReferenceObjectPool;->_numActive:I

    .line 128
    invoke-virtual {p0, v0}, Lorg/apache/commons/pool/impl/SoftReferenceObjectPool;->returnObject(Ljava/lang/Object;)V

    .line 129
    monitor-exit p0

    .line 130
    return-void

    .line 129
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public declared-synchronized borrowObject()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 60
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/pool/BaseObjectPool;->assertOpen()V

    .line 61
    const/4 v0, 0x0

    .line 62
    :goto_0
    if-eqz v0, :cond_1

    .line 74
    iget-object v2, p0, Lorg/apache/commons/pool/impl/SoftReferenceObjectPool;->_factory:Lorg/apache/commons/pool/PoolableObjectFactory;

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    .line 75
    iget-object v2, p0, Lorg/apache/commons/pool/impl/SoftReferenceObjectPool;->_factory:Lorg/apache/commons/pool/PoolableObjectFactory;

    invoke-interface {v2, v0}, Lorg/apache/commons/pool/PoolableObjectFactory;->activateObject(Ljava/lang/Object;)V

    .line 77
    :cond_0
    iget v2, p0, Lorg/apache/commons/pool/impl/SoftReferenceObjectPool;->_numActive:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/apache/commons/pool/impl/SoftReferenceObjectPool;->_numActive:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    monitor-exit p0

    return-object v0

    .line 63
    :cond_1
    :try_start_1
    iget-object v2, p0, Lorg/apache/commons/pool/impl/SoftReferenceObjectPool;->_pool:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 64
    iget-object v2, p0, Lorg/apache/commons/pool/impl/SoftReferenceObjectPool;->_factory:Lorg/apache/commons/pool/PoolableObjectFactory;

    if-nez v2, :cond_2

    .line 65
    new-instance v2, Ljava/util/NoSuchElementException;

    invoke-direct {v2}, Ljava/util/NoSuchElementException;-><init>()V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 60
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 67
    :cond_2
    :try_start_2
    iget-object v2, p0, Lorg/apache/commons/pool/impl/SoftReferenceObjectPool;->_factory:Lorg/apache/commons/pool/PoolableObjectFactory;

    invoke-interface {v2}, Lorg/apache/commons/pool/PoolableObjectFactory;->makeObject()Ljava/lang/Object;

    move-result-object v0

    .local v0, obj:Ljava/lang/Object;
    goto :goto_0

    .line 70
    .end local v0           #obj:Ljava/lang/Object;
    :cond_3
    iget-object v2, p0, Lorg/apache/commons/pool/impl/SoftReferenceObjectPool;->_pool:Ljava/util/List;

    iget-object v3, p0, Lorg/apache/commons/pool/impl/SoftReferenceObjectPool;->_pool:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/SoftReference;

    .line 71
    .local v1, ref:Ljava/lang/ref/SoftReference;
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    .restart local v0       #obj:Ljava/lang/Object;
    goto :goto_0
.end method

.method public declared-synchronized clear()V
    .locals 4

    .prologue
    .line 142
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/pool/BaseObjectPool;->assertOpen()V

    .line 143
    iget-object v3, p0, Lorg/apache/commons/pool/impl/SoftReferenceObjectPool;->_factory:Lorg/apache/commons/pool/PoolableObjectFactory;

    if-eqz v3, :cond_1

    .line 144
    iget-object v3, p0, Lorg/apache/commons/pool/impl/SoftReferenceObjectPool;->_pool:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 145
    .local v1, iter:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 156
    .end local v1           #iter:Ljava/util/Iterator;
    :cond_1
    iget-object v3, p0, Lorg/apache/commons/pool/impl/SoftReferenceObjectPool;->_pool:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    monitor-exit p0

    return-void

    .line 147
    .restart local v1       #iter:Ljava/util/Iterator;
    :cond_2
    :try_start_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/SoftReference;

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    .line 148
    .local v2, obj:Ljava/lang/Object;
    if-eqz v2, :cond_0

    .line 149
    iget-object v3, p0, Lorg/apache/commons/pool/impl/SoftReferenceObjectPool;->_factory:Lorg/apache/commons/pool/PoolableObjectFactory;

    invoke-interface {v3, v2}, Lorg/apache/commons/pool/PoolableObjectFactory;->destroyObject(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 151
    .end local v2           #obj:Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 153
    .local v0, e:Ljava/lang/Exception;
    goto :goto_0

    .line 142
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #iter:Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 160
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/pool/impl/SoftReferenceObjectPool;->clear()V

    .line 161
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/pool/impl/SoftReferenceObjectPool;->_pool:Ljava/util/List;

    .line 162
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/pool/impl/SoftReferenceObjectPool;->_factory:Lorg/apache/commons/pool/PoolableObjectFactory;

    .line 163
    invoke-super {p0}, Lorg/apache/commons/pool/BaseObjectPool;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    monitor-exit p0

    return-void

    .line 160
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getNumActive()I
    .locals 1

    .prologue
    .line 138
    iget v0, p0, Lorg/apache/commons/pool/impl/SoftReferenceObjectPool;->_numActive:I

    return v0
.end method

.method public getNumIdle()I
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lorg/apache/commons/pool/impl/SoftReferenceObjectPool;->_pool:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

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
    .line 114
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/pool/BaseObjectPool;->assertOpen()V

    .line 115
    iget v0, p0, Lorg/apache/commons/pool/impl/SoftReferenceObjectPool;->_numActive:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/commons/pool/impl/SoftReferenceObjectPool;->_numActive:I

    .line 116
    iget-object v0, p0, Lorg/apache/commons/pool/impl/SoftReferenceObjectPool;->_factory:Lorg/apache/commons/pool/PoolableObjectFactory;

    invoke-interface {v0, p1}, Lorg/apache/commons/pool/PoolableObjectFactory;->destroyObject(Ljava/lang/Object;)V

    .line 117
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    monitor-exit p0

    return-void

    .line 114
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
    .line 82
    invoke-virtual {p0}, Lorg/apache/commons/pool/BaseObjectPool;->assertOpen()V

    .line 83
    const/4 v2, 0x1

    .line 84
    .local v2, success:Z
    iget-object v3, p0, Lorg/apache/commons/pool/impl/SoftReferenceObjectPool;->_factory:Lorg/apache/commons/pool/PoolableObjectFactory;

    invoke-interface {v3, p1}, Lorg/apache/commons/pool/PoolableObjectFactory;->validateObject(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 85
    const/4 v2, 0x0

    .line 94
    :goto_0
    if-nez v2, :cond_3

    const/4 v1, 0x1

    .line 95
    .local v1, shouldDestroy:Z
    :goto_1
    monitor-enter p0

    .line 96
    :try_start_0
    iget v3, p0, Lorg/apache/commons/pool/impl/SoftReferenceObjectPool;->_numActive:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lorg/apache/commons/pool/impl/SoftReferenceObjectPool;->_numActive:I

    .line 97
    if-eqz v2, :cond_0

    .line 98
    iget-object v3, p0, Lorg/apache/commons/pool/impl/SoftReferenceObjectPool;->_pool:Ljava/util/List;

    new-instance v4, Ljava/lang/ref/SoftReference;

    invoke-direct {v4, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 101
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    if-eqz v1, :cond_1

    .line 105
    :try_start_1
    iget-object v3, p0, Lorg/apache/commons/pool/impl/SoftReferenceObjectPool;->_factory:Lorg/apache/commons/pool/PoolableObjectFactory;

    invoke-interface {v3, p1}, Lorg/apache/commons/pool/PoolableObjectFactory;->destroyObject(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 111
    :cond_1
    :goto_2
    return-void

    .line 88
    .end local v1           #shouldDestroy:Z
    :cond_2
    :try_start_2
    iget-object v3, p0, Lorg/apache/commons/pool/impl/SoftReferenceObjectPool;->_factory:Lorg/apache/commons/pool/PoolableObjectFactory;

    invoke-interface {v3, p1}, Lorg/apache/commons/pool/PoolableObjectFactory;->passivateObject(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 90
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x0

    .line 91
    goto :goto_0

    .line 94
    .end local v0           #e:Ljava/lang/Exception;
    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    .line 101
    .restart local v1       #shouldDestroy:Z
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    .line 106
    :catch_1
    move-exception v0

    .line 108
    .restart local v0       #e:Ljava/lang/Exception;
    goto :goto_2
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
    .line 167
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/pool/BaseObjectPool;->assertOpen()V

    .line 168
    invoke-virtual {p0}, Lorg/apache/commons/pool/impl/SoftReferenceObjectPool;->getNumActive()I

    move-result v0

    if-lez v0, :cond_0

    .line 169
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Objects are already active"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 171
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/commons/pool/impl/SoftReferenceObjectPool;->clear()V

    .line 172
    iput-object p1, p0, Lorg/apache/commons/pool/impl/SoftReferenceObjectPool;->_factory:Lorg/apache/commons/pool/PoolableObjectFactory;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 174
    monitor-exit p0

    return-void
.end method
