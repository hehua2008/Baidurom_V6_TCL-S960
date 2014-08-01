.class public Lorg/apache/commons/collections/buffer/BlockingBuffer;
.super Lorg/apache/commons/collections/buffer/SynchronizedBuffer;
.source "BlockingBuffer.java"


# static fields
.field private static final serialVersionUID:J = 0x17dc48879ba6a1bdL


# direct methods
.method protected constructor <init>(Lorg/apache/commons/collections/Buffer;)V
    .locals 0
    .parameter "buffer"

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/buffer/SynchronizedBuffer;-><init>(Lorg/apache/commons/collections/Buffer;)V

    .line 71
    return-void
.end method

.method public static decorate(Lorg/apache/commons/collections/Buffer;)Lorg/apache/commons/collections/Buffer;
    .locals 1
    .parameter "buffer"

    .prologue
    .line 59
    new-instance v0, Lorg/apache/commons/collections/buffer/BlockingBuffer;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/buffer/BlockingBuffer;-><init>(Lorg/apache/commons/collections/Buffer;)V

    return-object v0
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 3
    .parameter "o"

    .prologue
    .line 75
    iget-object v2, p0, Lorg/apache/commons/collections/collection/SynchronizedCollection;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 76
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/collections/collection/SynchronizedCollection;->collection:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 77
    .local v0, result:Z
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 78
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 79
    .end local v0           #result:Z
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 3
    .parameter "c"

    .prologue
    .line 83
    iget-object v2, p0, Lorg/apache/commons/collections/collection/SynchronizedCollection;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 84
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/collections/collection/SynchronizedCollection;->collection:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    move-result v0

    .line 85
    .local v0, result:Z
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 86
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 87
    .end local v0           #result:Z
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public get()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 91
    iget-object v2, p0, Lorg/apache/commons/collections/collection/SynchronizedCollection;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 92
    :goto_0
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/collections/collection/SynchronizedCollection;->collection:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 99
    invoke-virtual {p0}, Lorg/apache/commons/collections/buffer/SynchronizedBuffer;->getBuffer()Lorg/apache/commons/collections/Buffer;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/collections/Buffer;->get()Ljava/lang/Object;

    move-result-object v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    .line 94
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 96
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_2
    new-instance v1, Lorg/apache/commons/collections/BufferUnderflowException;

    invoke-direct {v1}, Lorg/apache/commons/collections/BufferUnderflowException;-><init>()V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 100
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public remove()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 104
    iget-object v2, p0, Lorg/apache/commons/collections/collection/SynchronizedCollection;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 105
    :goto_0
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/collections/collection/SynchronizedCollection;->collection:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 112
    invoke-virtual {p0}, Lorg/apache/commons/collections/buffer/SynchronizedBuffer;->getBuffer()Lorg/apache/commons/collections/Buffer;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/collections/Buffer;->remove()Ljava/lang/Object;

    move-result-object v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    .line 107
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 109
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_2
    new-instance v1, Lorg/apache/commons/collections/BufferUnderflowException;

    invoke-direct {v1}, Lorg/apache/commons/collections/BufferUnderflowException;-><init>()V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 113
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method
