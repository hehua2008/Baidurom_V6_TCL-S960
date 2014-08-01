.class Lorg/apache/commons/collections/map/StaticBucketMap$EntrySet;
.super Ljava/util/AbstractSet;
.source "StaticBucketMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections/map/StaticBucketMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EntrySet"
.end annotation


# instance fields
.field private final this$0:Lorg/apache/commons/collections/map/StaticBucketMap;


# direct methods
.method private constructor <init>(Lorg/apache/commons/collections/map/StaticBucketMap;)V
    .locals 0
    .parameter "this$0"

    .prologue
    .line 552
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/collections/map/StaticBucketMap$EntrySet;->this$0:Lorg/apache/commons/collections/map/StaticBucketMap;

    return-void
.end method

.method constructor <init>(Lorg/apache/commons/collections/map/StaticBucketMap;Lorg/apache/commons/collections/map/StaticBucketMap$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 552
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/map/StaticBucketMap$EntrySet;-><init>(Lorg/apache/commons/collections/map/StaticBucketMap;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 559
    iget-object v0, p0, Lorg/apache/commons/collections/map/StaticBucketMap$EntrySet;->this$0:Lorg/apache/commons/collections/map/StaticBucketMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections/map/StaticBucketMap;->clear()V

    .line 560
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 5
    .parameter "obj"

    .prologue
    .line 567
    move-object v0, p1

    check-cast v0, Ljava/util/Map$Entry;

    .line 568
    .local v0, entry:Ljava/util/Map$Entry;
    iget-object v3, p0, Lorg/apache/commons/collections/map/StaticBucketMap$EntrySet;->this$0:Lorg/apache/commons/collections/map/StaticBucketMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/apache/commons/collections/map/StaticBucketMap;->access$800(Lorg/apache/commons/collections/map/StaticBucketMap;Ljava/lang/Object;)I

    move-result v1

    .line 569
    .local v1, hash:I
    iget-object v3, p0, Lorg/apache/commons/collections/map/StaticBucketMap$EntrySet;->this$0:Lorg/apache/commons/collections/map/StaticBucketMap;

    invoke-static {v3}, Lorg/apache/commons/collections/map/StaticBucketMap;->access$600(Lorg/apache/commons/collections/map/StaticBucketMap;)[Lorg/apache/commons/collections/map/StaticBucketMap$Lock;

    move-result-object v3

    aget-object v4, v3, v1

    monitor-enter v4

    .line 570
    :try_start_0
    iget-object v3, p0, Lorg/apache/commons/collections/map/StaticBucketMap$EntrySet;->this$0:Lorg/apache/commons/collections/map/StaticBucketMap;

    invoke-static {v3}, Lorg/apache/commons/collections/map/StaticBucketMap;->access$500(Lorg/apache/commons/collections/map/StaticBucketMap;)[Lorg/apache/commons/collections/map/StaticBucketMap$Node;

    move-result-object v3

    aget-object v2, v3, v1

    .local v2, n:Lorg/apache/commons/collections/map/StaticBucketMap$Node;
    :goto_0
    if-nez v2, :cond_0

    monitor-exit v4

    .line 574
    const/4 v3, 0x0

    :goto_1
    return v3

    .line 571
    :cond_0
    invoke-virtual {v2, v0}, Lorg/apache/commons/collections/map/StaticBucketMap$Node;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 573
    .end local v2           #n:Lorg/apache/commons/collections/map/StaticBucketMap$Node;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 570
    .restart local v2       #n:Lorg/apache/commons/collections/map/StaticBucketMap$Node;
    :cond_1
    :try_start_1
    iget-object v2, v2, Lorg/apache/commons/collections/map/StaticBucketMap$Node;->next:Lorg/apache/commons/collections/map/StaticBucketMap$Node;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 3

    .prologue
    .line 563
    new-instance v0, Lorg/apache/commons/collections/map/StaticBucketMap$EntryIterator;

    iget-object v1, p0, Lorg/apache/commons/collections/map/StaticBucketMap$EntrySet;->this$0:Lorg/apache/commons/collections/map/StaticBucketMap;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/collections/map/StaticBucketMap$EntryIterator;-><init>(Lorg/apache/commons/collections/map/StaticBucketMap;Lorg/apache/commons/collections/map/StaticBucketMap$1;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 6
    .parameter "obj"

    .prologue
    const/4 v3, 0x0

    .line 578
    instance-of v4, p1, Ljava/util/Map$Entry;

    if-nez v4, :cond_0

    .line 591
    :goto_0
    return v3

    :cond_0
    move-object v0, p1

    .line 581
    check-cast v0, Ljava/util/Map$Entry;

    .line 582
    .local v0, entry:Ljava/util/Map$Entry;
    iget-object v4, p0, Lorg/apache/commons/collections/map/StaticBucketMap$EntrySet;->this$0:Lorg/apache/commons/collections/map/StaticBucketMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/apache/commons/collections/map/StaticBucketMap;->access$800(Lorg/apache/commons/collections/map/StaticBucketMap;Ljava/lang/Object;)I

    move-result v1

    .line 583
    .local v1, hash:I
    iget-object v4, p0, Lorg/apache/commons/collections/map/StaticBucketMap$EntrySet;->this$0:Lorg/apache/commons/collections/map/StaticBucketMap;

    invoke-static {v4}, Lorg/apache/commons/collections/map/StaticBucketMap;->access$600(Lorg/apache/commons/collections/map/StaticBucketMap;)[Lorg/apache/commons/collections/map/StaticBucketMap$Lock;

    move-result-object v4

    aget-object v4, v4, v1

    monitor-enter v4

    .line 584
    :try_start_0
    iget-object v5, p0, Lorg/apache/commons/collections/map/StaticBucketMap$EntrySet;->this$0:Lorg/apache/commons/collections/map/StaticBucketMap;

    invoke-static {v5}, Lorg/apache/commons/collections/map/StaticBucketMap;->access$500(Lorg/apache/commons/collections/map/StaticBucketMap;)[Lorg/apache/commons/collections/map/StaticBucketMap$Node;

    move-result-object v5

    aget-object v2, v5, v1

    .local v2, n:Lorg/apache/commons/collections/map/StaticBucketMap$Node;
    :goto_1
    if-nez v2, :cond_1

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 590
    .end local v2           #n:Lorg/apache/commons/collections/map/StaticBucketMap$Node;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 585
    .restart local v2       #n:Lorg/apache/commons/collections/map/StaticBucketMap$Node;
    :cond_1
    :try_start_1
    invoke-virtual {v2, v0}, Lorg/apache/commons/collections/map/StaticBucketMap$Node;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 586
    iget-object v3, p0, Lorg/apache/commons/collections/map/StaticBucketMap$EntrySet;->this$0:Lorg/apache/commons/collections/map/StaticBucketMap;

    invoke-virtual {v2}, Lorg/apache/commons/collections/map/StaticBucketMap$Node;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/apache/commons/collections/map/StaticBucketMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 587
    const/4 v3, 0x1

    monitor-exit v4

    goto :goto_0

    .line 584
    :cond_2
    iget-object v2, v2, Lorg/apache/commons/collections/map/StaticBucketMap$Node;->next:Lorg/apache/commons/collections/map/StaticBucketMap$Node;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public size()I
    .locals 1

    .prologue
    .line 555
    iget-object v0, p0, Lorg/apache/commons/collections/map/StaticBucketMap$EntrySet;->this$0:Lorg/apache/commons/collections/map/StaticBucketMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections/map/StaticBucketMap;->size()I

    move-result v0

    return v0
.end method
