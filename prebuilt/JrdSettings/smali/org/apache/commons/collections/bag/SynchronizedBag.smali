.class public Lorg/apache/commons/collections/bag/SynchronizedBag;
.super Lorg/apache/commons/collections/collection/SynchronizedCollection;
.source "SynchronizedBag.java"

# interfaces
.implements Lorg/apache/commons/collections/Bag;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/collections/bag/SynchronizedBag$SynchronizedBagSet;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x703288b00a6a8835L


# direct methods
.method protected constructor <init>(Lorg/apache/commons/collections/Bag;)V
    .locals 0
    .parameter "bag"

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/collection/SynchronizedCollection;-><init>(Ljava/util/Collection;)V

    .line 64
    return-void
.end method

.method protected constructor <init>(Lorg/apache/commons/collections/Bag;Ljava/lang/Object;)V
    .locals 0
    .parameter "bag"
    .parameter "lock"

    .prologue
    .line 74
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections/collection/SynchronizedCollection;-><init>(Ljava/util/Collection;Ljava/lang/Object;)V

    .line 75
    return-void
.end method

.method public static decorate(Lorg/apache/commons/collections/Bag;)Lorg/apache/commons/collections/Bag;
    .locals 1
    .parameter "bag"

    .prologue
    .line 52
    new-instance v0, Lorg/apache/commons/collections/bag/SynchronizedBag;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/bag/SynchronizedBag;-><init>(Lorg/apache/commons/collections/Bag;)V

    return-object v0
.end method


# virtual methods
.method public add(Ljava/lang/Object;I)Z
    .locals 2
    .parameter "object"
    .parameter "count"

    .prologue
    .line 88
    iget-object v1, p0, Lorg/apache/commons/collections/collection/SynchronizedCollection;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 89
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/collections/bag/SynchronizedBag;->getBag()Lorg/apache/commons/collections/Bag;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/collections/Bag;->add(Ljava/lang/Object;I)Z

    move-result v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 90
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method protected getBag()Lorg/apache/commons/collections/Bag;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lorg/apache/commons/collections/collection/SynchronizedCollection;->collection:Ljava/util/Collection;

    check-cast v0, Lorg/apache/commons/collections/Bag;

    return-object v0
.end method

.method public getCount(Ljava/lang/Object;)I
    .locals 2
    .parameter "object"

    .prologue
    .line 107
    iget-object v1, p0, Lorg/apache/commons/collections/collection/SynchronizedCollection;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 108
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/collections/bag/SynchronizedBag;->getBag()Lorg/apache/commons/collections/Bag;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/commons/collections/Bag;->getCount(Ljava/lang/Object;)I

    move-result v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 109
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public remove(Ljava/lang/Object;I)Z
    .locals 2
    .parameter "object"
    .parameter "count"

    .prologue
    .line 94
    iget-object v1, p0, Lorg/apache/commons/collections/collection/SynchronizedCollection;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 95
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/collections/bag/SynchronizedBag;->getBag()Lorg/apache/commons/collections/Bag;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/collections/Bag;->remove(Ljava/lang/Object;I)Z

    move-result v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 96
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public uniqueSet()Ljava/util/Set;
    .locals 4

    .prologue
    .line 100
    iget-object v2, p0, Lorg/apache/commons/collections/collection/SynchronizedCollection;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 101
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/collections/bag/SynchronizedBag;->getBag()Lorg/apache/commons/collections/Bag;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/collections/Bag;->uniqueSet()Ljava/util/Set;

    move-result-object v0

    .line 102
    .local v0, set:Ljava/util/Set;
    new-instance v1, Lorg/apache/commons/collections/bag/SynchronizedBag$SynchronizedBagSet;

    iget-object v3, p0, Lorg/apache/commons/collections/collection/SynchronizedCollection;->lock:Ljava/lang/Object;

    invoke-direct {v1, p0, v0, v3}, Lorg/apache/commons/collections/bag/SynchronizedBag$SynchronizedBagSet;-><init>(Lorg/apache/commons/collections/bag/SynchronizedBag;Ljava/util/Set;Ljava/lang/Object;)V

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    .line 103
    .end local v0           #set:Ljava/util/Set;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method
