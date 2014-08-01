.class public Lorg/apache/commons/collections/list/SynchronizedList;
.super Lorg/apache/commons/collections/collection/SynchronizedCollection;
.source "SynchronizedList.java"

# interfaces
.implements Ljava/util/List;


# static fields
.field private static final serialVersionUID:J = -0x137b6ce6c91fbbadL


# direct methods
.method protected constructor <init>(Ljava/util/List;)V
    .locals 0
    .parameter "list"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/collection/SynchronizedCollection;-><init>(Ljava/util/Collection;)V

    .line 61
    return-void
.end method

.method protected constructor <init>(Ljava/util/List;Ljava/lang/Object;)V
    .locals 0
    .parameter "list"
    .parameter "lock"

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections/collection/SynchronizedCollection;-><init>(Ljava/util/Collection;Ljava/lang/Object;)V

    .line 72
    return-void
.end method

.method public static decorate(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .parameter "list"

    .prologue
    .line 49
    new-instance v0, Lorg/apache/commons/collections/list/SynchronizedList;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/list/SynchronizedList;-><init>(Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 2
    .parameter "index"
    .parameter "object"

    .prologue
    .line 85
    iget-object v1, p0, Lorg/apache/commons/collections/collection/SynchronizedCollection;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 86
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/collections/list/SynchronizedList;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    return-void

    .line 87
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 2
    .parameter "index"
    .parameter "coll"

    .prologue
    .line 91
    iget-object v1, p0, Lorg/apache/commons/collections/collection/SynchronizedCollection;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 92
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/collections/list/SynchronizedList;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    move-result v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 93
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 2
    .parameter "index"

    .prologue
    .line 97
    iget-object v1, p0, Lorg/apache/commons/collections/collection/SynchronizedCollection;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 98
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/collections/list/SynchronizedList;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 99
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method protected getList()Ljava/util/List;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lorg/apache/commons/collections/collection/SynchronizedCollection;->collection:Ljava/util/Collection;

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 2
    .parameter "object"

    .prologue
    .line 103
    iget-object v1, p0, Lorg/apache/commons/collections/collection/SynchronizedCollection;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 104
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/collections/list/SynchronizedList;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 105
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 2
    .parameter "object"

    .prologue
    .line 109
    iget-object v1, p0, Lorg/apache/commons/collections/collection/SynchronizedCollection;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 110
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/collections/list/SynchronizedList;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 111
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public listIterator()Ljava/util/ListIterator;
    .locals 1

    .prologue
    .line 125
    invoke-virtual {p0}, Lorg/apache/commons/collections/list/SynchronizedList;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 1
    .parameter "index"

    .prologue
    .line 139
    invoke-virtual {p0}, Lorg/apache/commons/collections/list/SynchronizedList;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 2
    .parameter "index"

    .prologue
    .line 143
    iget-object v1, p0, Lorg/apache/commons/collections/collection/SynchronizedCollection;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 144
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/collections/list/SynchronizedList;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 145
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "index"
    .parameter "object"

    .prologue
    .line 149
    iget-object v1, p0, Lorg/apache/commons/collections/collection/SynchronizedCollection;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 150
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/collections/list/SynchronizedList;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 151
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public subList(II)Ljava/util/List;
    .locals 4
    .parameter "fromIndex"
    .parameter "toIndex"

    .prologue
    .line 155
    iget-object v2, p0, Lorg/apache/commons/collections/collection/SynchronizedCollection;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 156
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/collections/list/SynchronizedList;->getList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    .line 159
    .local v0, list:Ljava/util/List;
    new-instance v1, Lorg/apache/commons/collections/list/SynchronizedList;

    iget-object v3, p0, Lorg/apache/commons/collections/collection/SynchronizedCollection;->lock:Ljava/lang/Object;

    invoke-direct {v1, v0, v3}, Lorg/apache/commons/collections/list/SynchronizedList;-><init>(Ljava/util/List;Ljava/lang/Object;)V

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    .line 160
    .end local v0           #list:Ljava/util/List;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method
