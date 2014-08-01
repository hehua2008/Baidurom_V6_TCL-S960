.class public Lorg/apache/commons/collections/bag/SynchronizedSortedBag;
.super Lorg/apache/commons/collections/bag/SynchronizedBag;
.source "SynchronizedSortedBag.java"

# interfaces
.implements Lorg/apache/commons/collections/SortedBag;


# static fields
.field private static final serialVersionUID:J = 0xa06636095a9f842L


# direct methods
.method protected constructor <init>(Lorg/apache/commons/collections/Bag;Ljava/lang/Object;)V
    .locals 0
    .parameter "bag"
    .parameter "lock"

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections/bag/SynchronizedBag;-><init>(Lorg/apache/commons/collections/Bag;Ljava/lang/Object;)V

    .line 74
    return-void
.end method

.method protected constructor <init>(Lorg/apache/commons/collections/SortedBag;)V
    .locals 0
    .parameter "bag"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/bag/SynchronizedBag;-><init>(Lorg/apache/commons/collections/Bag;)V

    .line 63
    return-void
.end method

.method public static decorate(Lorg/apache/commons/collections/SortedBag;)Lorg/apache/commons/collections/SortedBag;
    .locals 1
    .parameter "bag"

    .prologue
    .line 51
    new-instance v0, Lorg/apache/commons/collections/bag/SynchronizedSortedBag;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/bag/SynchronizedSortedBag;-><init>(Lorg/apache/commons/collections/SortedBag;)V

    return-object v0
.end method


# virtual methods
.method public declared-synchronized comparator()Ljava/util/Comparator;
    .locals 2

    .prologue
    .line 99
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/collections/collection/SynchronizedCollection;->lock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 100
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/commons/collections/bag/SynchronizedSortedBag;->getSortedBag()Lorg/apache/commons/collections/SortedBag;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/collections/SortedBag;->comparator()Ljava/util/Comparator;

    move-result-object v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    .line 101
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 99
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized first()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 87
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/collections/collection/SynchronizedCollection;->lock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 88
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/commons/collections/bag/SynchronizedSortedBag;->getSortedBag()Lorg/apache/commons/collections/SortedBag;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/collections/SortedBag;->first()Ljava/lang/Object;

    move-result-object v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    .line 89
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 87
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected getSortedBag()Lorg/apache/commons/collections/SortedBag;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lorg/apache/commons/collections/collection/SynchronizedCollection;->collection:Ljava/util/Collection;

    check-cast v0, Lorg/apache/commons/collections/SortedBag;

    return-object v0
.end method

.method public declared-synchronized last()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 93
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/collections/collection/SynchronizedCollection;->lock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 94
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/commons/collections/bag/SynchronizedSortedBag;->getSortedBag()Lorg/apache/commons/collections/SortedBag;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/collections/SortedBag;->last()Ljava/lang/Object;

    move-result-object v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    .line 95
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 93
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method
