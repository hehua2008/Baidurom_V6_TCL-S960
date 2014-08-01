.class Lorg/apache/commons/collections/FastTreeMap$CollectionView$CollectionViewIterator;
.super Ljava/lang/Object;
.source "FastTreeMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections/FastTreeMap$CollectionView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CollectionViewIterator"
.end annotation


# instance fields
.field private expected:Ljava/util/Map;

.field private iterator:Ljava/util/Iterator;

.field private lastReturned:Ljava/util/Map$Entry;

.field private final this$1:Lorg/apache/commons/collections/FastTreeMap$CollectionView;


# direct methods
.method public constructor <init>(Lorg/apache/commons/collections/FastTreeMap$CollectionView;)V
    .locals 1
    .parameter "this$1"

    .prologue
    .line 737
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/collections/FastTreeMap$CollectionView$CollectionViewIterator;->this$1:Lorg/apache/commons/collections/FastTreeMap$CollectionView;

    .line 734
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/collections/FastTreeMap$CollectionView$CollectionViewIterator;->lastReturned:Ljava/util/Map$Entry;

    .line 738
    invoke-static {p1}, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->access$300(Lorg/apache/commons/collections/FastTreeMap$CollectionView;)Lorg/apache/commons/collections/FastTreeMap;

    move-result-object v0

    iget-object v0, v0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    iput-object v0, p0, Lorg/apache/commons/collections/FastTreeMap$CollectionView$CollectionViewIterator;->expected:Ljava/util/Map;

    .line 739
    iget-object v0, p0, Lorg/apache/commons/collections/FastTreeMap$CollectionView$CollectionViewIterator;->expected:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections/FastTreeMap$CollectionView$CollectionViewIterator;->iterator:Ljava/util/Iterator;

    .line 740
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .prologue
    .line 743
    iget-object v0, p0, Lorg/apache/commons/collections/FastTreeMap$CollectionView$CollectionViewIterator;->expected:Ljava/util/Map;

    iget-object v1, p0, Lorg/apache/commons/collections/FastTreeMap$CollectionView$CollectionViewIterator;->this$1:Lorg/apache/commons/collections/FastTreeMap$CollectionView;

    invoke-static {v1}, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->access$300(Lorg/apache/commons/collections/FastTreeMap$CollectionView;)Lorg/apache/commons/collections/FastTreeMap;

    move-result-object v1

    iget-object v1, v1, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    if-eq v0, v1, :cond_0

    .line 744
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 746
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastTreeMap$CollectionView$CollectionViewIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 750
    iget-object v0, p0, Lorg/apache/commons/collections/FastTreeMap$CollectionView$CollectionViewIterator;->expected:Ljava/util/Map;

    iget-object v1, p0, Lorg/apache/commons/collections/FastTreeMap$CollectionView$CollectionViewIterator;->this$1:Lorg/apache/commons/collections/FastTreeMap$CollectionView;

    invoke-static {v1}, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->access$300(Lorg/apache/commons/collections/FastTreeMap$CollectionView;)Lorg/apache/commons/collections/FastTreeMap;

    move-result-object v1

    iget-object v1, v1, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    if-eq v0, v1, :cond_0

    .line 751
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 753
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastTreeMap$CollectionView$CollectionViewIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iput-object v0, p0, Lorg/apache/commons/collections/FastTreeMap$CollectionView$CollectionViewIterator;->lastReturned:Ljava/util/Map$Entry;

    .line 754
    iget-object v0, p0, Lorg/apache/commons/collections/FastTreeMap$CollectionView$CollectionViewIterator;->this$1:Lorg/apache/commons/collections/FastTreeMap$CollectionView;

    iget-object v1, p0, Lorg/apache/commons/collections/FastTreeMap$CollectionView$CollectionViewIterator;->lastReturned:Ljava/util/Map$Entry;

    invoke-virtual {v0, v1}, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->iteratorNext(Ljava/util/Map$Entry;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 758
    iget-object v0, p0, Lorg/apache/commons/collections/FastTreeMap$CollectionView$CollectionViewIterator;->lastReturned:Ljava/util/Map$Entry;

    if-nez v0, :cond_0

    .line 759
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 761
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastTreeMap$CollectionView$CollectionViewIterator;->this$1:Lorg/apache/commons/collections/FastTreeMap$CollectionView;

    invoke-static {v0}, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->access$300(Lorg/apache/commons/collections/FastTreeMap$CollectionView;)Lorg/apache/commons/collections/FastTreeMap;

    move-result-object v0

    iget-boolean v0, v0, Lorg/apache/commons/collections/FastTreeMap;->fast:Z

    if-eqz v0, :cond_2

    .line 762
    iget-object v0, p0, Lorg/apache/commons/collections/FastTreeMap$CollectionView$CollectionViewIterator;->this$1:Lorg/apache/commons/collections/FastTreeMap$CollectionView;

    invoke-static {v0}, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->access$300(Lorg/apache/commons/collections/FastTreeMap$CollectionView;)Lorg/apache/commons/collections/FastTreeMap;

    move-result-object v1

    monitor-enter v1

    .line 763
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastTreeMap$CollectionView$CollectionViewIterator;->expected:Ljava/util/Map;

    iget-object v2, p0, Lorg/apache/commons/collections/FastTreeMap$CollectionView$CollectionViewIterator;->this$1:Lorg/apache/commons/collections/FastTreeMap$CollectionView;

    invoke-static {v2}, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->access$300(Lorg/apache/commons/collections/FastTreeMap$CollectionView;)Lorg/apache/commons/collections/FastTreeMap;

    move-result-object v2

    iget-object v2, v2, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    if-eq v0, v2, :cond_1

    .line 764
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 769
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 766
    :cond_1
    :try_start_1
    iget-object v0, p0, Lorg/apache/commons/collections/FastTreeMap$CollectionView$CollectionViewIterator;->this$1:Lorg/apache/commons/collections/FastTreeMap$CollectionView;

    invoke-static {v0}, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->access$300(Lorg/apache/commons/collections/FastTreeMap$CollectionView;)Lorg/apache/commons/collections/FastTreeMap;

    move-result-object v0

    iget-object v2, p0, Lorg/apache/commons/collections/FastTreeMap$CollectionView$CollectionViewIterator;->lastReturned:Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/commons/collections/FastTreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 767
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/collections/FastTreeMap$CollectionView$CollectionViewIterator;->lastReturned:Ljava/util/Map$Entry;

    .line 768
    iget-object v0, p0, Lorg/apache/commons/collections/FastTreeMap$CollectionView$CollectionViewIterator;->this$1:Lorg/apache/commons/collections/FastTreeMap$CollectionView;

    invoke-static {v0}, Lorg/apache/commons/collections/FastTreeMap$CollectionView;->access$300(Lorg/apache/commons/collections/FastTreeMap$CollectionView;)Lorg/apache/commons/collections/FastTreeMap;

    move-result-object v0

    iget-object v0, v0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    iput-object v0, p0, Lorg/apache/commons/collections/FastTreeMap$CollectionView$CollectionViewIterator;->expected:Ljava/util/Map;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 774
    :goto_0
    return-void

    .line 771
    :cond_2
    iget-object v0, p0, Lorg/apache/commons/collections/FastTreeMap$CollectionView$CollectionViewIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 772
    iput-object v1, p0, Lorg/apache/commons/collections/FastTreeMap$CollectionView$CollectionViewIterator;->lastReturned:Ljava/util/Map$Entry;

    goto :goto_0
.end method
