.class Lorg/apache/commons/collections/FastHashMap$CollectionView$CollectionViewIterator;
.super Ljava/lang/Object;
.source "FastHashMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections/FastHashMap$CollectionView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CollectionViewIterator"
.end annotation


# instance fields
.field private expected:Ljava/util/Map;

.field private iterator:Ljava/util/Iterator;

.field private lastReturned:Ljava/util/Map$Entry;

.field private final this$1:Lorg/apache/commons/collections/FastHashMap$CollectionView;


# direct methods
.method public constructor <init>(Lorg/apache/commons/collections/FastHashMap$CollectionView;)V
    .locals 1
    .parameter "this$1"

    .prologue
    .line 629
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/collections/FastHashMap$CollectionView$CollectionViewIterator;->this$1:Lorg/apache/commons/collections/FastHashMap$CollectionView;

    .line 626
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/collections/FastHashMap$CollectionView$CollectionViewIterator;->lastReturned:Ljava/util/Map$Entry;

    .line 630
    invoke-static {p1}, Lorg/apache/commons/collections/FastHashMap$CollectionView;->access$300(Lorg/apache/commons/collections/FastHashMap$CollectionView;)Lorg/apache/commons/collections/FastHashMap;

    move-result-object v0

    iget-object v0, v0, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    iput-object v0, p0, Lorg/apache/commons/collections/FastHashMap$CollectionView$CollectionViewIterator;->expected:Ljava/util/Map;

    .line 631
    iget-object v0, p0, Lorg/apache/commons/collections/FastHashMap$CollectionView$CollectionViewIterator;->expected:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections/FastHashMap$CollectionView$CollectionViewIterator;->iterator:Ljava/util/Iterator;

    .line 632
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .prologue
    .line 635
    iget-object v0, p0, Lorg/apache/commons/collections/FastHashMap$CollectionView$CollectionViewIterator;->expected:Ljava/util/Map;

    iget-object v1, p0, Lorg/apache/commons/collections/FastHashMap$CollectionView$CollectionViewIterator;->this$1:Lorg/apache/commons/collections/FastHashMap$CollectionView;

    invoke-static {v1}, Lorg/apache/commons/collections/FastHashMap$CollectionView;->access$300(Lorg/apache/commons/collections/FastHashMap$CollectionView;)Lorg/apache/commons/collections/FastHashMap;

    move-result-object v1

    iget-object v1, v1, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    if-eq v0, v1, :cond_0

    .line 636
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 638
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastHashMap$CollectionView$CollectionViewIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 642
    iget-object v0, p0, Lorg/apache/commons/collections/FastHashMap$CollectionView$CollectionViewIterator;->expected:Ljava/util/Map;

    iget-object v1, p0, Lorg/apache/commons/collections/FastHashMap$CollectionView$CollectionViewIterator;->this$1:Lorg/apache/commons/collections/FastHashMap$CollectionView;

    invoke-static {v1}, Lorg/apache/commons/collections/FastHashMap$CollectionView;->access$300(Lorg/apache/commons/collections/FastHashMap$CollectionView;)Lorg/apache/commons/collections/FastHashMap;

    move-result-object v1

    iget-object v1, v1, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    if-eq v0, v1, :cond_0

    .line 643
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 645
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastHashMap$CollectionView$CollectionViewIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iput-object v0, p0, Lorg/apache/commons/collections/FastHashMap$CollectionView$CollectionViewIterator;->lastReturned:Ljava/util/Map$Entry;

    .line 646
    iget-object v0, p0, Lorg/apache/commons/collections/FastHashMap$CollectionView$CollectionViewIterator;->this$1:Lorg/apache/commons/collections/FastHashMap$CollectionView;

    iget-object v1, p0, Lorg/apache/commons/collections/FastHashMap$CollectionView$CollectionViewIterator;->lastReturned:Ljava/util/Map$Entry;

    invoke-virtual {v0, v1}, Lorg/apache/commons/collections/FastHashMap$CollectionView;->iteratorNext(Ljava/util/Map$Entry;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 650
    iget-object v0, p0, Lorg/apache/commons/collections/FastHashMap$CollectionView$CollectionViewIterator;->lastReturned:Ljava/util/Map$Entry;

    if-nez v0, :cond_0

    .line 651
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 653
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastHashMap$CollectionView$CollectionViewIterator;->this$1:Lorg/apache/commons/collections/FastHashMap$CollectionView;

    invoke-static {v0}, Lorg/apache/commons/collections/FastHashMap$CollectionView;->access$300(Lorg/apache/commons/collections/FastHashMap$CollectionView;)Lorg/apache/commons/collections/FastHashMap;

    move-result-object v0

    iget-boolean v0, v0, Lorg/apache/commons/collections/FastHashMap;->fast:Z

    if-eqz v0, :cond_2

    .line 654
    iget-object v0, p0, Lorg/apache/commons/collections/FastHashMap$CollectionView$CollectionViewIterator;->this$1:Lorg/apache/commons/collections/FastHashMap$CollectionView;

    invoke-static {v0}, Lorg/apache/commons/collections/FastHashMap$CollectionView;->access$300(Lorg/apache/commons/collections/FastHashMap$CollectionView;)Lorg/apache/commons/collections/FastHashMap;

    move-result-object v1

    monitor-enter v1

    .line 655
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastHashMap$CollectionView$CollectionViewIterator;->expected:Ljava/util/Map;

    iget-object v2, p0, Lorg/apache/commons/collections/FastHashMap$CollectionView$CollectionViewIterator;->this$1:Lorg/apache/commons/collections/FastHashMap$CollectionView;

    invoke-static {v2}, Lorg/apache/commons/collections/FastHashMap$CollectionView;->access$300(Lorg/apache/commons/collections/FastHashMap$CollectionView;)Lorg/apache/commons/collections/FastHashMap;

    move-result-object v2

    iget-object v2, v2, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    if-eq v0, v2, :cond_1

    .line 656
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 661
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 658
    :cond_1
    :try_start_1
    iget-object v0, p0, Lorg/apache/commons/collections/FastHashMap$CollectionView$CollectionViewIterator;->this$1:Lorg/apache/commons/collections/FastHashMap$CollectionView;

    invoke-static {v0}, Lorg/apache/commons/collections/FastHashMap$CollectionView;->access$300(Lorg/apache/commons/collections/FastHashMap$CollectionView;)Lorg/apache/commons/collections/FastHashMap;

    move-result-object v0

    iget-object v2, p0, Lorg/apache/commons/collections/FastHashMap$CollectionView$CollectionViewIterator;->lastReturned:Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/commons/collections/FastHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 659
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/collections/FastHashMap$CollectionView$CollectionViewIterator;->lastReturned:Ljava/util/Map$Entry;

    .line 660
    iget-object v0, p0, Lorg/apache/commons/collections/FastHashMap$CollectionView$CollectionViewIterator;->this$1:Lorg/apache/commons/collections/FastHashMap$CollectionView;

    invoke-static {v0}, Lorg/apache/commons/collections/FastHashMap$CollectionView;->access$300(Lorg/apache/commons/collections/FastHashMap$CollectionView;)Lorg/apache/commons/collections/FastHashMap;

    move-result-object v0

    iget-object v0, v0, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    iput-object v0, p0, Lorg/apache/commons/collections/FastHashMap$CollectionView$CollectionViewIterator;->expected:Ljava/util/Map;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 666
    :goto_0
    return-void

    .line 663
    :cond_2
    iget-object v0, p0, Lorg/apache/commons/collections/FastHashMap$CollectionView$CollectionViewIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 664
    iput-object v1, p0, Lorg/apache/commons/collections/FastHashMap$CollectionView$CollectionViewIterator;->lastReturned:Ljava/util/Map$Entry;

    goto :goto_0
.end method
