.class Lorg/apache/commons/collections/map/StaticBucketMap$EntryIterator;
.super Ljava/lang/Object;
.source "StaticBucketMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections/map/StaticBucketMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EntryIterator"
.end annotation


# instance fields
.field private bucket:I

.field private current:Ljava/util/ArrayList;

.field private last:Ljava/util/Map$Entry;

.field private final this$0:Lorg/apache/commons/collections/map/StaticBucketMap;


# direct methods
.method private constructor <init>(Lorg/apache/commons/collections/map/StaticBucketMap;)V
    .locals 1
    .parameter "this$0"

    .prologue
    .line 495
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/collections/map/StaticBucketMap$EntryIterator;->this$0:Lorg/apache/commons/collections/map/StaticBucketMap;

    .line 497
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/collections/map/StaticBucketMap$EntryIterator;->current:Ljava/util/ArrayList;

    .line 495
    return-void
.end method

.method constructor <init>(Lorg/apache/commons/collections/map/StaticBucketMap;Lorg/apache/commons/collections/map/StaticBucketMap$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 495
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/map/StaticBucketMap$EntryIterator;-><init>(Lorg/apache/commons/collections/map/StaticBucketMap;)V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 503
    iget-object v2, p0, Lorg/apache/commons/collections/map/StaticBucketMap$EntryIterator;->current:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 515
    :goto_0
    return v1

    .line 505
    :cond_0
    iget-object v2, p0, Lorg/apache/commons/collections/map/StaticBucketMap$EntryIterator;->this$0:Lorg/apache/commons/collections/map/StaticBucketMap;

    invoke-static {v2}, Lorg/apache/commons/collections/map/StaticBucketMap;->access$600(Lorg/apache/commons/collections/map/StaticBucketMap;)[Lorg/apache/commons/collections/map/StaticBucketMap$Lock;

    move-result-object v2

    iget v3, p0, Lorg/apache/commons/collections/map/StaticBucketMap$EntryIterator;->bucket:I

    aget-object v2, v2, v3

    monitor-enter v2

    .line 506
    :try_start_0
    iget-object v3, p0, Lorg/apache/commons/collections/map/StaticBucketMap$EntryIterator;->this$0:Lorg/apache/commons/collections/map/StaticBucketMap;

    invoke-static {v3}, Lorg/apache/commons/collections/map/StaticBucketMap;->access$500(Lorg/apache/commons/collections/map/StaticBucketMap;)[Lorg/apache/commons/collections/map/StaticBucketMap$Node;

    move-result-object v3

    iget v4, p0, Lorg/apache/commons/collections/map/StaticBucketMap$EntryIterator;->bucket:I

    aget-object v0, v3, v4

    .line 507
    .local v0, n:Lorg/apache/commons/collections/map/StaticBucketMap$Node;
    :goto_1
    if-nez v0, :cond_1

    .line 511
    iget v3, p0, Lorg/apache/commons/collections/map/StaticBucketMap$EntryIterator;->bucket:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/apache/commons/collections/map/StaticBucketMap$EntryIterator;->bucket:I

    .line 512
    iget-object v3, p0, Lorg/apache/commons/collections/map/StaticBucketMap$EntryIterator;->current:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_2

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 513
    .end local v0           #n:Lorg/apache/commons/collections/map/StaticBucketMap$Node;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 508
    .restart local v0       #n:Lorg/apache/commons/collections/map/StaticBucketMap$Node;
    :cond_1
    :try_start_1
    iget-object v3, p0, Lorg/apache/commons/collections/map/StaticBucketMap$EntryIterator;->current:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 509
    iget-object v0, v0, Lorg/apache/commons/collections/map/StaticBucketMap$Node;->next:Lorg/apache/commons/collections/map/StaticBucketMap$Node;

    goto :goto_1

    .line 512
    :cond_2
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 504
    .end local v0           #n:Lorg/apache/commons/collections/map/StaticBucketMap$Node;
    :cond_3
    iget v2, p0, Lorg/apache/commons/collections/map/StaticBucketMap$EntryIterator;->bucket:I

    iget-object v3, p0, Lorg/apache/commons/collections/map/StaticBucketMap$EntryIterator;->this$0:Lorg/apache/commons/collections/map/StaticBucketMap;

    invoke-static {v3}, Lorg/apache/commons/collections/map/StaticBucketMap;->access$500(Lorg/apache/commons/collections/map/StaticBucketMap;)[Lorg/apache/commons/collections/map/StaticBucketMap$Node;

    move-result-object v3

    array-length v3, v3

    if-lt v2, v3, :cond_0

    .line 515
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 525
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/StaticBucketMap$EntryIterator;->nextEntry()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method protected nextEntry()Ljava/util/Map$Entry;
    .locals 2

    .prologue
    .line 519
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/StaticBucketMap$EntryIterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 520
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/map/StaticBucketMap$EntryIterator;->current:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/apache/commons/collections/map/StaticBucketMap$EntryIterator;->current:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iput-object v0, p0, Lorg/apache/commons/collections/map/StaticBucketMap$EntryIterator;->last:Ljava/util/Map$Entry;

    .line 521
    iget-object v0, p0, Lorg/apache/commons/collections/map/StaticBucketMap$EntryIterator;->last:Ljava/util/Map$Entry;

    return-object v0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 529
    iget-object v0, p0, Lorg/apache/commons/collections/map/StaticBucketMap$EntryIterator;->last:Ljava/util/Map$Entry;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 530
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/map/StaticBucketMap$EntryIterator;->this$0:Lorg/apache/commons/collections/map/StaticBucketMap;

    iget-object v1, p0, Lorg/apache/commons/collections/map/StaticBucketMap$EntryIterator;->last:Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/collections/map/StaticBucketMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 531
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/collections/map/StaticBucketMap$EntryIterator;->last:Ljava/util/Map$Entry;

    .line 532
    return-void
.end method