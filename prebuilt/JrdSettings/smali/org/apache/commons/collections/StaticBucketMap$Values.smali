.class Lorg/apache/commons/collections/StaticBucketMap$Values;
.super Ljava/util/AbstractCollection;
.source "StaticBucketMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections/StaticBucketMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Values"
.end annotation


# instance fields
.field private final this$0:Lorg/apache/commons/collections/StaticBucketMap;


# direct methods
.method private constructor <init>(Lorg/apache/commons/collections/StaticBucketMap;)V
    .locals 0
    .parameter "this$0"

    .prologue
    .line 642
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/collections/StaticBucketMap$Values;->this$0:Lorg/apache/commons/collections/StaticBucketMap;

    return-void
.end method

.method constructor <init>(Lorg/apache/commons/collections/StaticBucketMap;Lorg/apache/commons/collections/StaticBucketMap$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 642
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/StaticBucketMap$Values;-><init>(Lorg/apache/commons/collections/StaticBucketMap;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 649
    iget-object v0, p0, Lorg/apache/commons/collections/StaticBucketMap$Values;->this$0:Lorg/apache/commons/collections/StaticBucketMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections/StaticBucketMap;->clear()V

    .line 650
    return-void
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 3

    .prologue
    .line 653
    new-instance v0, Lorg/apache/commons/collections/StaticBucketMap$ValueIterator;

    iget-object v1, p0, Lorg/apache/commons/collections/StaticBucketMap$Values;->this$0:Lorg/apache/commons/collections/StaticBucketMap;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/collections/StaticBucketMap$ValueIterator;-><init>(Lorg/apache/commons/collections/StaticBucketMap;Lorg/apache/commons/collections/StaticBucketMap$1;)V

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 645
    iget-object v0, p0, Lorg/apache/commons/collections/StaticBucketMap$Values;->this$0:Lorg/apache/commons/collections/StaticBucketMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections/StaticBucketMap;->size()I

    move-result v0

    return v0
.end method
