.class Lorg/apache/commons/collections/StaticBucketMap$KeySet;
.super Ljava/util/AbstractSet;
.source "StaticBucketMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections/StaticBucketMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "KeySet"
.end annotation


# instance fields
.field private final this$0:Lorg/apache/commons/collections/StaticBucketMap;


# direct methods
.method private constructor <init>(Lorg/apache/commons/collections/StaticBucketMap;)V
    .locals 0
    .parameter "this$0"

    .prologue
    .line 606
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/collections/StaticBucketMap$KeySet;->this$0:Lorg/apache/commons/collections/StaticBucketMap;

    return-void
.end method

.method constructor <init>(Lorg/apache/commons/collections/StaticBucketMap;Lorg/apache/commons/collections/StaticBucketMap$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 606
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/StaticBucketMap$KeySet;-><init>(Lorg/apache/commons/collections/StaticBucketMap;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 613
    iget-object v0, p0, Lorg/apache/commons/collections/StaticBucketMap$KeySet;->this$0:Lorg/apache/commons/collections/StaticBucketMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections/StaticBucketMap;->clear()V

    .line 614
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .parameter "o"

    .prologue
    .line 621
    iget-object v0, p0, Lorg/apache/commons/collections/StaticBucketMap$KeySet;->this$0:Lorg/apache/commons/collections/StaticBucketMap;

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections/StaticBucketMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 3

    .prologue
    .line 617
    new-instance v0, Lorg/apache/commons/collections/StaticBucketMap$KeyIterator;

    iget-object v1, p0, Lorg/apache/commons/collections/StaticBucketMap$KeySet;->this$0:Lorg/apache/commons/collections/StaticBucketMap;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/collections/StaticBucketMap$KeyIterator;-><init>(Lorg/apache/commons/collections/StaticBucketMap;Lorg/apache/commons/collections/StaticBucketMap$1;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    .line 625
    iget-object v3, p0, Lorg/apache/commons/collections/StaticBucketMap$KeySet;->this$0:Lorg/apache/commons/collections/StaticBucketMap;

    invoke-static {v3, p1}, Lorg/apache/commons/collections/StaticBucketMap;->access$800(Lorg/apache/commons/collections/StaticBucketMap;Ljava/lang/Object;)I

    move-result v0

    .line 626
    .local v0, hash:I
    iget-object v3, p0, Lorg/apache/commons/collections/StaticBucketMap$KeySet;->this$0:Lorg/apache/commons/collections/StaticBucketMap;

    invoke-static {v3}, Lorg/apache/commons/collections/StaticBucketMap;->access$600(Lorg/apache/commons/collections/StaticBucketMap;)[Lorg/apache/commons/collections/StaticBucketMap$Lock;

    move-result-object v3

    aget-object v4, v3, v0

    monitor-enter v4

    .line 627
    :try_start_0
    iget-object v3, p0, Lorg/apache/commons/collections/StaticBucketMap$KeySet;->this$0:Lorg/apache/commons/collections/StaticBucketMap;

    invoke-static {v3}, Lorg/apache/commons/collections/StaticBucketMap;->access$500(Lorg/apache/commons/collections/StaticBucketMap;)[Lorg/apache/commons/collections/StaticBucketMap$Node;

    move-result-object v3

    aget-object v2, v3, v0

    .local v2, n:Lorg/apache/commons/collections/StaticBucketMap$Node;
    :goto_0
    if-nez v2, :cond_0

    monitor-exit v4

    .line 635
    const/4 v3, 0x0

    :goto_1
    return v3

    .line 628
    :cond_0
    invoke-virtual {v2}, Lorg/apache/commons/collections/StaticBucketMap$Node;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 629
    .local v1, k:Ljava/lang/Object;
    if-eq v1, p1, :cond_1

    if-eqz v1, :cond_2

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 630
    :cond_1
    iget-object v3, p0, Lorg/apache/commons/collections/StaticBucketMap$KeySet;->this$0:Lorg/apache/commons/collections/StaticBucketMap;

    invoke-virtual {v3, v1}, Lorg/apache/commons/collections/StaticBucketMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 631
    const/4 v3, 0x1

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 634
    .end local v1           #k:Ljava/lang/Object;
    .end local v2           #n:Lorg/apache/commons/collections/StaticBucketMap$Node;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 627
    .restart local v1       #k:Ljava/lang/Object;
    .restart local v2       #n:Lorg/apache/commons/collections/StaticBucketMap$Node;
    :cond_2
    :try_start_1
    iget-object v2, v2, Lorg/apache/commons/collections/StaticBucketMap$Node;->next:Lorg/apache/commons/collections/StaticBucketMap$Node;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 609
    iget-object v0, p0, Lorg/apache/commons/collections/StaticBucketMap$KeySet;->this$0:Lorg/apache/commons/collections/StaticBucketMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections/StaticBucketMap;->size()I

    move-result v0

    return v0
.end method
