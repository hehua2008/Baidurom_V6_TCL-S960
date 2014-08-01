.class abstract Lorg/apache/commons/collections/FastTreeMap$CollectionView;
.super Ljava/lang/Object;
.source "FastTreeMap.java"

# interfaces
.implements Ljava/util/Collection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections/FastTreeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "CollectionView"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/collections/FastTreeMap$CollectionView$CollectionViewIterator;
    }
.end annotation


# instance fields
.field private final this$0:Lorg/apache/commons/collections/FastTreeMap;


# direct methods
.method public constructor <init>(Lorg/apache/commons/collections/FastTreeMap;)V
    .locals 0
    .parameter "this$0"

    .prologue
    .line 572
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastTreeMap;

    .line 573
    return-void
.end method

.method static access$300(Lorg/apache/commons/collections/FastTreeMap$CollectionView;)Lorg/apache/commons/collections/FastTreeMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 570
    iget-object v0, p0, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastTreeMap;

    return-object v0
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 1
    .parameter "o"

    .prologue
    .line 720
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 1
    .parameter "c"

    .prologue
    .line 724
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public clear()V
    .locals 3

    .prologue
    .line 580
    iget-object v0, p0, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastTreeMap;

    iget-boolean v0, v0, Lorg/apache/commons/collections/FastTreeMap;->fast:Z

    if-eqz v0, :cond_0

    .line 581
    iget-object v1, p0, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastTreeMap;

    monitor-enter v1

    .line 582
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastTreeMap;

    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V

    iput-object v2, v0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 589
    :goto_0
    return-void

    .line 583
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 585
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastTreeMap;

    iget-object v1, v0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    monitor-enter v1

    .line 586
    :try_start_1
    iget-object v0, p0, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastTreeMap;

    iget-object v0, v0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->get(Ljava/util/Map;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 587
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 2
    .parameter "o"

    .prologue
    .line 658
    iget-object v0, p0, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastTreeMap;

    iget-boolean v0, v0, Lorg/apache/commons/collections/FastTreeMap;->fast:Z

    if-eqz v0, :cond_0

    .line 659
    iget-object v0, p0, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastTreeMap;

    iget-object v0, v0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->get(Ljava/util/Map;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 662
    :goto_0
    return v0

    .line 661
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastTreeMap;

    iget-object v1, v0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    monitor-enter v1

    .line 662
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastTreeMap;

    iget-object v0, v0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->get(Ljava/util/Map;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 663
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 2
    .parameter "o"

    .prologue
    .line 668
    iget-object v0, p0, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastTreeMap;

    iget-boolean v0, v0, Lorg/apache/commons/collections/FastTreeMap;->fast:Z

    if-eqz v0, :cond_0

    .line 669
    iget-object v0, p0, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastTreeMap;

    iget-object v0, v0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->get(Ljava/util/Map;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    .line 672
    :goto_0
    return v0

    .line 671
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastTreeMap;

    iget-object v1, v0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    monitor-enter v1

    .line 672
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastTreeMap;

    iget-object v0, v0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->get(Ljava/util/Map;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 673
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter "o"

    .prologue
    .line 699
    if-ne p1, p0, :cond_0

    const/4 v0, 0x1

    .line 704
    :goto_0
    return v0

    .line 700
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastTreeMap;

    iget-boolean v0, v0, Lorg/apache/commons/collections/FastTreeMap;->fast:Z

    if-eqz v0, :cond_1

    .line 701
    iget-object v0, p0, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastTreeMap;

    iget-object v0, v0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->get(Ljava/util/Map;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 703
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastTreeMap;

    iget-object v1, v0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    monitor-enter v1

    .line 704
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastTreeMap;

    iget-object v0, v0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->get(Ljava/util/Map;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->equals(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 705
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
    .line 710
    iget-object v0, p0, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastTreeMap;

    iget-boolean v0, v0, Lorg/apache/commons/collections/FastTreeMap;->fast:Z

    if-eqz v0, :cond_0

    .line 711
    iget-object v0, p0, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastTreeMap;

    iget-object v0, v0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->get(Ljava/util/Map;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->hashCode()I

    move-result v0

    .line 714
    :goto_0
    return v0

    .line 713
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastTreeMap;

    iget-object v1, v0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    monitor-enter v1

    .line 714
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastTreeMap;

    iget-object v0, v0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->get(Ljava/util/Map;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->hashCode()I

    move-result v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 715
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .line 648
    iget-object v0, p0, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastTreeMap;

    iget-boolean v0, v0, Lorg/apache/commons/collections/FastTreeMap;->fast:Z

    if-eqz v0, :cond_0

    .line 649
    iget-object v0, p0, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastTreeMap;

    iget-object v0, v0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->get(Ljava/util/Map;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    .line 652
    :goto_0
    return v0

    .line 651
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastTreeMap;

    iget-object v1, v0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    monitor-enter v1

    .line 652
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastTreeMap;

    iget-object v0, v0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->get(Ljava/util/Map;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 653
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 728
    new-instance v0, Lorg/apache/commons/collections/FastTreeMap$CollectionView$CollectionViewIterator;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/FastTreeMap$CollectionView$CollectionViewIterator;-><init>(Lorg/apache/commons/collections/FastTreeMap$CollectionView;)V

    return-object v0
.end method

.method protected abstract iteratorNext(Ljava/util/Map$Entry;)Ljava/lang/Object;
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 4
    .parameter "o"

    .prologue
    .line 592
    iget-object v2, p0, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastTreeMap;

    iget-boolean v2, v2, Lorg/apache/commons/collections/FastTreeMap;->fast:Z

    if-eqz v2, :cond_0

    .line 593
    iget-object v3, p0, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastTreeMap;

    monitor-enter v3

    .line 594
    :try_start_0
    iget-object v2, p0, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastTreeMap;

    iget-object v2, v2, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    invoke-virtual {v2}, Ljava/util/TreeMap;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/TreeMap;

    .line 595
    .local v1, temp:Ljava/util/TreeMap;
    invoke-virtual {p0, v1}, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->get(Ljava/util/Map;)Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 596
    .local v0, r:Z
    iget-object v2, p0, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastTreeMap;

    iput-object v1, v2, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    .line 597
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 601
    .end local v0           #r:Z
    .end local v1           #temp:Ljava/util/TreeMap;
    :goto_0
    return v0

    .line 598
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 600
    :cond_0
    iget-object v2, p0, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastTreeMap;

    iget-object v3, v2, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    monitor-enter v3

    .line 601
    :try_start_1
    iget-object v2, p0, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastTreeMap;

    iget-object v2, v2, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    invoke-virtual {p0, v2}, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->get(Ljava/util/Map;)Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 602
    :catchall_1
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 4
    .parameter "o"

    .prologue
    .line 607
    iget-object v2, p0, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastTreeMap;

    iget-boolean v2, v2, Lorg/apache/commons/collections/FastTreeMap;->fast:Z

    if-eqz v2, :cond_0

    .line 608
    iget-object v3, p0, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastTreeMap;

    monitor-enter v3

    .line 609
    :try_start_0
    iget-object v2, p0, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastTreeMap;

    iget-object v2, v2, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    invoke-virtual {v2}, Ljava/util/TreeMap;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/TreeMap;

    .line 610
    .local v1, temp:Ljava/util/TreeMap;
    invoke-virtual {p0, v1}, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->get(Ljava/util/Map;)Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    move-result v0

    .line 611
    .local v0, r:Z
    iget-object v2, p0, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastTreeMap;

    iput-object v1, v2, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    .line 612
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 616
    .end local v0           #r:Z
    .end local v1           #temp:Ljava/util/TreeMap;
    :goto_0
    return v0

    .line 613
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 615
    :cond_0
    iget-object v2, p0, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastTreeMap;

    iget-object v3, v2, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    monitor-enter v3

    .line 616
    :try_start_1
    iget-object v2, p0, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastTreeMap;

    iget-object v2, v2, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    invoke-virtual {p0, v2}, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->get(Ljava/util/Map;)Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    move-result v0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 617
    :catchall_1
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 4
    .parameter "o"

    .prologue
    .line 622
    iget-object v2, p0, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastTreeMap;

    iget-boolean v2, v2, Lorg/apache/commons/collections/FastTreeMap;->fast:Z

    if-eqz v2, :cond_0

    .line 623
    iget-object v3, p0, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastTreeMap;

    monitor-enter v3

    .line 624
    :try_start_0
    iget-object v2, p0, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastTreeMap;

    iget-object v2, v2, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    invoke-virtual {v2}, Ljava/util/TreeMap;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/TreeMap;

    .line 625
    .local v1, temp:Ljava/util/TreeMap;
    invoke-virtual {p0, v1}, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->get(Ljava/util/Map;)Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/Collection;->retainAll(Ljava/util/Collection;)Z

    move-result v0

    .line 626
    .local v0, r:Z
    iget-object v2, p0, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastTreeMap;

    iput-object v1, v2, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    .line 627
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 631
    .end local v0           #r:Z
    .end local v1           #temp:Ljava/util/TreeMap;
    :goto_0
    return v0

    .line 628
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 630
    :cond_0
    iget-object v2, p0, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastTreeMap;

    iget-object v3, v2, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    monitor-enter v3

    .line 631
    :try_start_1
    iget-object v2, p0, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastTreeMap;

    iget-object v2, v2, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    invoke-virtual {p0, v2}, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->get(Ljava/util/Map;)Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/Collection;->retainAll(Ljava/util/Collection;)Z

    move-result v0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 632
    :catchall_1
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public size()I
    .locals 2

    .prologue
    .line 637
    iget-object v0, p0, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastTreeMap;

    iget-boolean v0, v0, Lorg/apache/commons/collections/FastTreeMap;->fast:Z

    if-eqz v0, :cond_0

    .line 638
    iget-object v0, p0, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastTreeMap;

    iget-object v0, v0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->get(Ljava/util/Map;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    .line 641
    :goto_0
    return v0

    .line 640
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastTreeMap;

    iget-object v1, v0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    monitor-enter v1

    .line 641
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastTreeMap;

    iget-object v0, v0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->get(Ljava/util/Map;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 642
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 2

    .prologue
    .line 688
    iget-object v0, p0, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastTreeMap;

    iget-boolean v0, v0, Lorg/apache/commons/collections/FastTreeMap;->fast:Z

    if-eqz v0, :cond_0

    .line 689
    iget-object v0, p0, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastTreeMap;

    iget-object v0, v0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->get(Ljava/util/Map;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 692
    :goto_0
    return-object v0

    .line 691
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastTreeMap;

    iget-object v1, v0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    monitor-enter v1

    .line 692
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastTreeMap;

    iget-object v0, v0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->get(Ljava/util/Map;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 693
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 2
    .parameter "o"

    .prologue
    .line 678
    iget-object v0, p0, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastTreeMap;

    iget-boolean v0, v0, Lorg/apache/commons/collections/FastTreeMap;->fast:Z

    if-eqz v0, :cond_0

    .line 679
    iget-object v0, p0, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastTreeMap;

    iget-object v0, v0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->get(Ljava/util/Map;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .line 682
    :goto_0
    return-object v0

    .line 681
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastTreeMap;

    iget-object v1, v0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    monitor-enter v1

    .line 682
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->this$0:Lorg/apache/commons/collections/FastTreeMap;

    iget-object v0, v0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->get(Ljava/util/Map;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 683
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
