.class abstract Lorg/apache/commons/collections/FastHashMap$CollectionView;
.super Ljava/lang/Object;
.source "FastHashMap.java"

# interfaces
.implements Ljava/util/Collection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections/FastHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "CollectionView"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/collections/FastHashMap$CollectionView$CollectionViewIterator;
    }
.end annotation


# instance fields
.field private final this$0:Lorg/apache/commons/collections/FastHashMap;


# direct methods
.method public constructor <init>(Lorg/apache/commons/collections/FastHashMap;)V
    .locals 0
    .parameter "this$0"

    .prologue
    .line 464
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/collections/FastHashMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastHashMap;

    .line 465
    return-void
.end method

.method static access$300(Lorg/apache/commons/collections/FastHashMap$CollectionView;)Lorg/apache/commons/collections/FastHashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 462
    iget-object v0, p0, Lorg/apache/commons/collections/FastHashMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastHashMap;

    return-object v0
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 1
    .parameter "o"

    .prologue
    .line 612
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 1
    .parameter "c"

    .prologue
    .line 616
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public clear()V
    .locals 3

    .prologue
    .line 472
    iget-object v0, p0, Lorg/apache/commons/collections/FastHashMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastHashMap;

    iget-boolean v0, v0, Lorg/apache/commons/collections/FastHashMap;->fast:Z

    if-eqz v0, :cond_0

    .line 473
    iget-object v1, p0, Lorg/apache/commons/collections/FastHashMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastHashMap;

    monitor-enter v1

    .line 474
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastHashMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastHashMap;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v0, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 481
    :goto_0
    return-void

    .line 475
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 477
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastHashMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastHashMap;

    iget-object v1, v0, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    monitor-enter v1

    .line 478
    :try_start_1
    iget-object v0, p0, Lorg/apache/commons/collections/FastHashMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastHashMap;

    iget-object v0, v0, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/FastHashMap$CollectionView;->get(Ljava/util/Map;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 479
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 2
    .parameter "o"

    .prologue
    .line 550
    iget-object v0, p0, Lorg/apache/commons/collections/FastHashMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastHashMap;

    iget-boolean v0, v0, Lorg/apache/commons/collections/FastHashMap;->fast:Z

    if-eqz v0, :cond_0

    .line 551
    iget-object v0, p0, Lorg/apache/commons/collections/FastHashMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastHashMap;

    iget-object v0, v0, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/FastHashMap$CollectionView;->get(Ljava/util/Map;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 554
    :goto_0
    return v0

    .line 553
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastHashMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastHashMap;

    iget-object v1, v0, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    monitor-enter v1

    .line 554
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastHashMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastHashMap;

    iget-object v0, v0, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/FastHashMap$CollectionView;->get(Ljava/util/Map;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 555
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 2
    .parameter "o"

    .prologue
    .line 560
    iget-object v0, p0, Lorg/apache/commons/collections/FastHashMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastHashMap;

    iget-boolean v0, v0, Lorg/apache/commons/collections/FastHashMap;->fast:Z

    if-eqz v0, :cond_0

    .line 561
    iget-object v0, p0, Lorg/apache/commons/collections/FastHashMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastHashMap;

    iget-object v0, v0, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/FastHashMap$CollectionView;->get(Ljava/util/Map;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    .line 564
    :goto_0
    return v0

    .line 563
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastHashMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastHashMap;

    iget-object v1, v0, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    monitor-enter v1

    .line 564
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastHashMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastHashMap;

    iget-object v0, v0, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/FastHashMap$CollectionView;->get(Ljava/util/Map;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 565
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter "o"

    .prologue
    .line 591
    if-ne p1, p0, :cond_0

    const/4 v0, 0x1

    .line 596
    :goto_0
    return v0

    .line 592
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastHashMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastHashMap;

    iget-boolean v0, v0, Lorg/apache/commons/collections/FastHashMap;->fast:Z

    if-eqz v0, :cond_1

    .line 593
    iget-object v0, p0, Lorg/apache/commons/collections/FastHashMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastHashMap;

    iget-object v0, v0, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/FastHashMap$CollectionView;->get(Ljava/util/Map;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 595
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/collections/FastHashMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastHashMap;

    iget-object v1, v0, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    monitor-enter v1

    .line 596
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastHashMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastHashMap;

    iget-object v0, v0, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/FastHashMap$CollectionView;->get(Ljava/util/Map;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->equals(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 597
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method protected abstract get(Ljava/util/Map;)Ljava/util/Collection;
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 602
    iget-object v0, p0, Lorg/apache/commons/collections/FastHashMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastHashMap;

    iget-boolean v0, v0, Lorg/apache/commons/collections/FastHashMap;->fast:Z

    if-eqz v0, :cond_0

    .line 603
    iget-object v0, p0, Lorg/apache/commons/collections/FastHashMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastHashMap;

    iget-object v0, v0, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/FastHashMap$CollectionView;->get(Ljava/util/Map;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->hashCode()I

    move-result v0

    .line 606
    :goto_0
    return v0

    .line 605
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastHashMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastHashMap;

    iget-object v1, v0, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    monitor-enter v1

    .line 606
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastHashMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastHashMap;

    iget-object v0, v0, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/FastHashMap$CollectionView;->get(Ljava/util/Map;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->hashCode()I

    move-result v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 607
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .line 540
    iget-object v0, p0, Lorg/apache/commons/collections/FastHashMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastHashMap;

    iget-boolean v0, v0, Lorg/apache/commons/collections/FastHashMap;->fast:Z

    if-eqz v0, :cond_0

    .line 541
    iget-object v0, p0, Lorg/apache/commons/collections/FastHashMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastHashMap;

    iget-object v0, v0, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/FastHashMap$CollectionView;->get(Ljava/util/Map;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    .line 544
    :goto_0
    return v0

    .line 543
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastHashMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastHashMap;

    iget-object v1, v0, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    monitor-enter v1

    .line 544
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastHashMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastHashMap;

    iget-object v0, v0, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/FastHashMap$CollectionView;->get(Ljava/util/Map;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 545
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 620
    new-instance v0, Lorg/apache/commons/collections/FastHashMap$CollectionView$CollectionViewIterator;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/FastHashMap$CollectionView$CollectionViewIterator;-><init>(Lorg/apache/commons/collections/FastHashMap$CollectionView;)V

    return-object v0
.end method

.method protected abstract iteratorNext(Ljava/util/Map$Entry;)Ljava/lang/Object;
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 4
    .parameter "o"

    .prologue
    .line 484
    iget-object v2, p0, Lorg/apache/commons/collections/FastHashMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastHashMap;

    iget-boolean v2, v2, Lorg/apache/commons/collections/FastHashMap;->fast:Z

    if-eqz v2, :cond_0

    .line 485
    iget-object v3, p0, Lorg/apache/commons/collections/FastHashMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastHashMap;

    monitor-enter v3

    .line 486
    :try_start_0
    iget-object v2, p0, Lorg/apache/commons/collections/FastHashMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastHashMap;

    iget-object v2, v2, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 487
    .local v1, temp:Ljava/util/HashMap;
    invoke-virtual {p0, v1}, Lorg/apache/commons/collections/FastHashMap$CollectionView;->get(Ljava/util/Map;)Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 488
    .local v0, r:Z
    iget-object v2, p0, Lorg/apache/commons/collections/FastHashMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastHashMap;

    iput-object v1, v2, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    .line 489
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 493
    .end local v0           #r:Z
    .end local v1           #temp:Ljava/util/HashMap;
    :goto_0
    return v0

    .line 490
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 492
    :cond_0
    iget-object v2, p0, Lorg/apache/commons/collections/FastHashMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastHashMap;

    iget-object v3, v2, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    monitor-enter v3

    .line 493
    :try_start_1
    iget-object v2, p0, Lorg/apache/commons/collections/FastHashMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastHashMap;

    iget-object v2, v2, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    invoke-virtual {p0, v2}, Lorg/apache/commons/collections/FastHashMap$CollectionView;->get(Ljava/util/Map;)Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 494
    :catchall_1
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 4
    .parameter "o"

    .prologue
    .line 499
    iget-object v2, p0, Lorg/apache/commons/collections/FastHashMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastHashMap;

    iget-boolean v2, v2, Lorg/apache/commons/collections/FastHashMap;->fast:Z

    if-eqz v2, :cond_0

    .line 500
    iget-object v3, p0, Lorg/apache/commons/collections/FastHashMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastHashMap;

    monitor-enter v3

    .line 501
    :try_start_0
    iget-object v2, p0, Lorg/apache/commons/collections/FastHashMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastHashMap;

    iget-object v2, v2, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 502
    .local v1, temp:Ljava/util/HashMap;
    invoke-virtual {p0, v1}, Lorg/apache/commons/collections/FastHashMap$CollectionView;->get(Ljava/util/Map;)Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    move-result v0

    .line 503
    .local v0, r:Z
    iget-object v2, p0, Lorg/apache/commons/collections/FastHashMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastHashMap;

    iput-object v1, v2, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    .line 504
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 508
    .end local v0           #r:Z
    .end local v1           #temp:Ljava/util/HashMap;
    :goto_0
    return v0

    .line 505
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 507
    :cond_0
    iget-object v2, p0, Lorg/apache/commons/collections/FastHashMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastHashMap;

    iget-object v3, v2, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    monitor-enter v3

    .line 508
    :try_start_1
    iget-object v2, p0, Lorg/apache/commons/collections/FastHashMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastHashMap;

    iget-object v2, v2, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    invoke-virtual {p0, v2}, Lorg/apache/commons/collections/FastHashMap$CollectionView;->get(Ljava/util/Map;)Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    move-result v0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 509
    :catchall_1
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 4
    .parameter "o"

    .prologue
    .line 514
    iget-object v2, p0, Lorg/apache/commons/collections/FastHashMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastHashMap;

    iget-boolean v2, v2, Lorg/apache/commons/collections/FastHashMap;->fast:Z

    if-eqz v2, :cond_0

    .line 515
    iget-object v3, p0, Lorg/apache/commons/collections/FastHashMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastHashMap;

    monitor-enter v3

    .line 516
    :try_start_0
    iget-object v2, p0, Lorg/apache/commons/collections/FastHashMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastHashMap;

    iget-object v2, v2, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 517
    .local v1, temp:Ljava/util/HashMap;
    invoke-virtual {p0, v1}, Lorg/apache/commons/collections/FastHashMap$CollectionView;->get(Ljava/util/Map;)Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/Collection;->retainAll(Ljava/util/Collection;)Z

    move-result v0

    .line 518
    .local v0, r:Z
    iget-object v2, p0, Lorg/apache/commons/collections/FastHashMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastHashMap;

    iput-object v1, v2, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    .line 519
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 523
    .end local v0           #r:Z
    .end local v1           #temp:Ljava/util/HashMap;
    :goto_0
    return v0

    .line 520
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 522
    :cond_0
    iget-object v2, p0, Lorg/apache/commons/collections/FastHashMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastHashMap;

    iget-object v3, v2, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    monitor-enter v3

    .line 523
    :try_start_1
    iget-object v2, p0, Lorg/apache/commons/collections/FastHashMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastHashMap;

    iget-object v2, v2, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    invoke-virtual {p0, v2}, Lorg/apache/commons/collections/FastHashMap$CollectionView;->get(Ljava/util/Map;)Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/Collection;->retainAll(Ljava/util/Collection;)Z

    move-result v0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 524
    :catchall_1
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public size()I
    .locals 2

    .prologue
    .line 529
    iget-object v0, p0, Lorg/apache/commons/collections/FastHashMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastHashMap;

    iget-boolean v0, v0, Lorg/apache/commons/collections/FastHashMap;->fast:Z

    if-eqz v0, :cond_0

    .line 530
    iget-object v0, p0, Lorg/apache/commons/collections/FastHashMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastHashMap;

    iget-object v0, v0, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/FastHashMap$CollectionView;->get(Ljava/util/Map;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    .line 533
    :goto_0
    return v0

    .line 532
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastHashMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastHashMap;

    iget-object v1, v0, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    monitor-enter v1

    .line 533
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastHashMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastHashMap;

    iget-object v0, v0, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/FastHashMap$CollectionView;->get(Ljava/util/Map;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 534
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 2

    .prologue
    .line 580
    iget-object v0, p0, Lorg/apache/commons/collections/FastHashMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastHashMap;

    iget-boolean v0, v0, Lorg/apache/commons/collections/FastHashMap;->fast:Z

    if-eqz v0, :cond_0

    .line 581
    iget-object v0, p0, Lorg/apache/commons/collections/FastHashMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastHashMap;

    iget-object v0, v0, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/FastHashMap$CollectionView;->get(Ljava/util/Map;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 584
    :goto_0
    return-object v0

    .line 583
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastHashMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastHashMap;

    iget-object v1, v0, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    monitor-enter v1

    .line 584
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastHashMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastHashMap;

    iget-object v0, v0, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/FastHashMap$CollectionView;->get(Ljava/util/Map;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 585
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 2
    .parameter "o"

    .prologue
    .line 570
    iget-object v0, p0, Lorg/apache/commons/collections/FastHashMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastHashMap;

    iget-boolean v0, v0, Lorg/apache/commons/collections/FastHashMap;->fast:Z

    if-eqz v0, :cond_0

    .line 571
    iget-object v0, p0, Lorg/apache/commons/collections/FastHashMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastHashMap;

    iget-object v0, v0, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/FastHashMap$CollectionView;->get(Ljava/util/Map;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .line 574
    :goto_0
    return-object v0

    .line 573
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastHashMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastHashMap;

    iget-object v1, v0, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    monitor-enter v1

    .line 574
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastHashMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastHashMap;

    iget-object v0, v0, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/FastHashMap$CollectionView;->get(Ljava/util/Map;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 575
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
