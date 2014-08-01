.class public final Lorg/apache/commons/collections/SynchronizedPriorityQueue;
.super Ljava/lang/Object;
.source "SynchronizedPriorityQueue.java"

# interfaces
.implements Lorg/apache/commons/collections/PriorityQueue;


# instance fields
.field protected final m_priorityQueue:Lorg/apache/commons/collections/PriorityQueue;


# direct methods
.method public constructor <init>(Lorg/apache/commons/collections/PriorityQueue;)V
    .locals 0
    .parameter "priorityQueue"

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lorg/apache/commons/collections/SynchronizedPriorityQueue;->m_priorityQueue:Lorg/apache/commons/collections/PriorityQueue;

    .line 46
    return-void
.end method


# virtual methods
.method public declared-synchronized clear()V
    .locals 1

    .prologue
    .line 52
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/collections/SynchronizedPriorityQueue;->m_priorityQueue:Lorg/apache/commons/collections/PriorityQueue;

    invoke-interface {v0}, Lorg/apache/commons/collections/PriorityQueue;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    monitor-exit p0

    return-void

    .line 52
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized insert(Ljava/lang/Object;)V
    .locals 1
    .parameter "element"

    .prologue
    .line 70
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/collections/SynchronizedPriorityQueue;->m_priorityQueue:Lorg/apache/commons/collections/PriorityQueue;

    invoke-interface {v0, p1}, Lorg/apache/commons/collections/PriorityQueue;->insert(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    monitor-exit p0

    return-void

    .line 70
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isEmpty()Z
    .locals 1

    .prologue
    .line 61
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/collections/SynchronizedPriorityQueue;->m_priorityQueue:Lorg/apache/commons/collections/PriorityQueue;

    invoke-interface {v0}, Lorg/apache/commons/collections/PriorityQueue;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized peek()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/NoSuchElementException;
        }
    .end annotation

    .prologue
    .line 80
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/collections/SynchronizedPriorityQueue;->m_priorityQueue:Lorg/apache/commons/collections/PriorityQueue;

    invoke-interface {v0}, Lorg/apache/commons/collections/PriorityQueue;->peek()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized pop()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/NoSuchElementException;
        }
    .end annotation

    .prologue
    .line 90
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/collections/SynchronizedPriorityQueue;->m_priorityQueue:Lorg/apache/commons/collections/PriorityQueue;

    invoke-interface {v0}, Lorg/apache/commons/collections/PriorityQueue;->pop()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/collections/SynchronizedPriorityQueue;->m_priorityQueue:Lorg/apache/commons/collections/PriorityQueue;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
