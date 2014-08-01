.class public Lorg/apache/commons/collections/set/SynchronizedSortedSet;
.super Lorg/apache/commons/collections/collection/SynchronizedCollection;
.source "SynchronizedSortedSet.java"

# interfaces
.implements Ljava/util/SortedSet;


# static fields
.field private static final serialVersionUID:J = 0x2684d9e84375c60fL


# direct methods
.method protected constructor <init>(Ljava/util/SortedSet;)V
    .locals 0
    .parameter "set"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/collection/SynchronizedCollection;-><init>(Ljava/util/Collection;)V

    .line 60
    return-void
.end method

.method protected constructor <init>(Ljava/util/SortedSet;Ljava/lang/Object;)V
    .locals 0
    .parameter "set"
    .parameter "lock"

    .prologue
    .line 70
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections/collection/SynchronizedCollection;-><init>(Ljava/util/Collection;Ljava/lang/Object;)V

    .line 71
    return-void
.end method

.method public static decorate(Ljava/util/SortedSet;)Ljava/util/SortedSet;
    .locals 1
    .parameter "set"

    .prologue
    .line 48
    new-instance v0, Lorg/apache/commons/collections/set/SynchronizedSortedSet;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/set/SynchronizedSortedSet;-><init>(Ljava/util/SortedSet;)V

    return-object v0
.end method


# virtual methods
.method public comparator()Ljava/util/Comparator;
    .locals 2

    .prologue
    .line 123
    iget-object v1, p0, Lorg/apache/commons/collections/collection/SynchronizedCollection;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 124
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/collections/set/SynchronizedSortedSet;->getSortedSet()Ljava/util/SortedSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedSet;->comparator()Ljava/util/Comparator;

    move-result-object v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 125
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public first()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 111
    iget-object v1, p0, Lorg/apache/commons/collections/collection/SynchronizedCollection;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 112
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/collections/set/SynchronizedSortedSet;->getSortedSet()Ljava/util/SortedSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedSet;->first()Ljava/lang/Object;

    move-result-object v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 113
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method protected getSortedSet()Ljava/util/SortedSet;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lorg/apache/commons/collections/collection/SynchronizedCollection;->collection:Ljava/util/Collection;

    check-cast v0, Ljava/util/SortedSet;

    return-object v0
.end method

.method public headSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 4
    .parameter "toElement"

    .prologue
    .line 93
    iget-object v2, p0, Lorg/apache/commons/collections/collection/SynchronizedCollection;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 94
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/collections/set/SynchronizedSortedSet;->getSortedSet()Ljava/util/SortedSet;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/SortedSet;->headSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    .line 97
    .local v0, set:Ljava/util/SortedSet;
    new-instance v1, Lorg/apache/commons/collections/set/SynchronizedSortedSet;

    iget-object v3, p0, Lorg/apache/commons/collections/collection/SynchronizedCollection;->lock:Ljava/lang/Object;

    invoke-direct {v1, v0, v3}, Lorg/apache/commons/collections/set/SynchronizedSortedSet;-><init>(Ljava/util/SortedSet;Ljava/lang/Object;)V

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    .line 98
    .end local v0           #set:Ljava/util/SortedSet;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public last()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 117
    iget-object v1, p0, Lorg/apache/commons/collections/collection/SynchronizedCollection;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 118
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/collections/set/SynchronizedSortedSet;->getSortedSet()Ljava/util/SortedSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedSet;->last()Ljava/lang/Object;

    move-result-object v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 119
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 4
    .parameter "fromElement"
    .parameter "toElement"

    .prologue
    .line 84
    iget-object v2, p0, Lorg/apache/commons/collections/collection/SynchronizedCollection;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 85
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/collections/set/SynchronizedSortedSet;->getSortedSet()Ljava/util/SortedSet;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Ljava/util/SortedSet;->subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    .line 88
    .local v0, set:Ljava/util/SortedSet;
    new-instance v1, Lorg/apache/commons/collections/set/SynchronizedSortedSet;

    iget-object v3, p0, Lorg/apache/commons/collections/collection/SynchronizedCollection;->lock:Ljava/lang/Object;

    invoke-direct {v1, v0, v3}, Lorg/apache/commons/collections/set/SynchronizedSortedSet;-><init>(Ljava/util/SortedSet;Ljava/lang/Object;)V

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    .line 89
    .end local v0           #set:Ljava/util/SortedSet;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 4
    .parameter "fromElement"

    .prologue
    .line 102
    iget-object v2, p0, Lorg/apache/commons/collections/collection/SynchronizedCollection;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 103
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/collections/set/SynchronizedSortedSet;->getSortedSet()Ljava/util/SortedSet;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/SortedSet;->tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    .line 106
    .local v0, set:Ljava/util/SortedSet;
    new-instance v1, Lorg/apache/commons/collections/set/SynchronizedSortedSet;

    iget-object v3, p0, Lorg/apache/commons/collections/collection/SynchronizedCollection;->lock:Ljava/lang/Object;

    invoke-direct {v1, v0, v3}, Lorg/apache/commons/collections/set/SynchronizedSortedSet;-><init>(Ljava/util/SortedSet;Ljava/lang/Object;)V

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    .line 107
    .end local v0           #set:Ljava/util/SortedSet;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method
