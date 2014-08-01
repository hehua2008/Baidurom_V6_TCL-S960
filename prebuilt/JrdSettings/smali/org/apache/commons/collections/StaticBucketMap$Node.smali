.class final Lorg/apache/commons/collections/StaticBucketMap$Node;
.super Ljava/lang/Object;
.source "StaticBucketMap.java"

# interfaces
.implements Ljava/util/Map$Entry;
.implements Lorg/apache/commons/collections/KeyValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections/StaticBucketMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Node"
.end annotation


# instance fields
.field protected key:Ljava/lang/Object;

.field protected next:Lorg/apache/commons/collections/StaticBucketMap$Node;

.field protected value:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 452
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Lorg/apache/commons/collections/StaticBucketMap$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 452
    invoke-direct {p0}, Lorg/apache/commons/collections/StaticBucketMap$Node;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 475
    if-nez p1, :cond_1

    .line 483
    :cond_0
    :goto_0
    return v2

    .line 476
    :cond_1
    if-ne p1, p0, :cond_2

    move v2, v1

    goto :goto_0

    .line 478
    :cond_2
    instance-of v3, p1, Ljava/util/Map$Entry;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 481
    check-cast v0, Ljava/util/Map$Entry;

    .line 483
    .local v0, e2:Ljava/util/Map$Entry;
    iget-object v3, p0, Lorg/apache/commons/collections/StaticBucketMap$Node;->key:Ljava/lang/Object;

    if-nez v3, :cond_4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_3

    move v3, v1

    :goto_1
    if-eqz v3, :cond_7

    iget-object v3, p0, Lorg/apache/commons/collections/StaticBucketMap$Node;->value:Ljava/lang/Object;

    if-nez v3, :cond_6

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_5

    move v3, v1

    :goto_2
    if-eqz v3, :cond_7

    :goto_3
    move v2, v1

    goto :goto_0

    :cond_3
    move v3, v2

    goto :goto_1

    :cond_4
    iget-object v3, p0, Lorg/apache/commons/collections/StaticBucketMap$Node;->key:Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_1

    :cond_5
    move v3, v2

    goto :goto_2

    :cond_6
    iget-object v3, p0, Lorg/apache/commons/collections/StaticBucketMap$Node;->value:Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_2

    :cond_7
    move v1, v2

    goto :goto_3
.end method

.method public getKey()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 460
    iget-object v0, p0, Lorg/apache/commons/collections/StaticBucketMap$Node;->key:Ljava/lang/Object;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 465
    iget-object v0, p0, Lorg/apache/commons/collections/StaticBucketMap$Node;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 470
    iget-object v0, p0, Lorg/apache/commons/collections/StaticBucketMap$Node;->key:Ljava/lang/Object;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iget-object v2, p0, Lorg/apache/commons/collections/StaticBucketMap$Node;->value:Ljava/lang/Object;

    if-nez v2, :cond_1

    :goto_1
    xor-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/StaticBucketMap$Node;->key:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lorg/apache/commons/collections/StaticBucketMap$Node;->value:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_1
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "val"

    .prologue
    .line 491
    iget-object v0, p0, Lorg/apache/commons/collections/StaticBucketMap$Node;->value:Ljava/lang/Object;

    .line 492
    .local v0, retVal:Ljava/lang/Object;
    iput-object p1, p0, Lorg/apache/commons/collections/StaticBucketMap$Node;->value:Ljava/lang/Object;

    .line 493
    return-object v0
.end method
