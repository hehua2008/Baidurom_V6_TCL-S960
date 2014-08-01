.class Lorg/apache/commons/collections/map/Flat3Map$KeySet;
.super Ljava/util/AbstractSet;
.source "Flat3Map.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections/map/Flat3Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "KeySet"
.end annotation


# instance fields
.field private final parent:Lorg/apache/commons/collections/map/Flat3Map;


# direct methods
.method constructor <init>(Lorg/apache/commons/collections/map/Flat3Map;)V
    .locals 0
    .parameter "parent"

    .prologue
    .line 862
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 863
    iput-object p1, p0, Lorg/apache/commons/collections/map/Flat3Map$KeySet;->parent:Lorg/apache/commons/collections/map/Flat3Map;

    .line 864
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 871
    iget-object v0, p0, Lorg/apache/commons/collections/map/Flat3Map$KeySet;->parent:Lorg/apache/commons/collections/map/Flat3Map;

    invoke-virtual {v0}, Lorg/apache/commons/collections/map/Flat3Map;->clear()V

    .line 872
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .parameter "key"

    .prologue
    .line 875
    iget-object v0, p0, Lorg/apache/commons/collections/map/Flat3Map$KeySet;->parent:Lorg/apache/commons/collections/map/Flat3Map;

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections/map/Flat3Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2

    .prologue
    .line 885
    iget-object v0, p0, Lorg/apache/commons/collections/map/Flat3Map$KeySet;->parent:Lorg/apache/commons/collections/map/Flat3Map;

    invoke-static {v0}, Lorg/apache/commons/collections/map/Flat3Map;->access$700(Lorg/apache/commons/collections/map/Flat3Map;)Lorg/apache/commons/collections/map/AbstractHashedMap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 886
    iget-object v0, p0, Lorg/apache/commons/collections/map/Flat3Map$KeySet;->parent:Lorg/apache/commons/collections/map/Flat3Map;

    invoke-static {v0}, Lorg/apache/commons/collections/map/Flat3Map;->access$700(Lorg/apache/commons/collections/map/Flat3Map;)Lorg/apache/commons/collections/map/AbstractHashedMap;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/collections/map/AbstractHashedMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 891
    :goto_0
    return-object v0

    .line 888
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/map/Flat3Map$KeySet;->parent:Lorg/apache/commons/collections/map/Flat3Map;

    invoke-virtual {v0}, Lorg/apache/commons/collections/map/Flat3Map;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 889
    sget-object v0, Lorg/apache/commons/collections/iterators/EmptyIterator;->INSTANCE:Ljava/util/Iterator;

    goto :goto_0

    .line 891
    :cond_1
    new-instance v0, Lorg/apache/commons/collections/map/Flat3Map$KeySetIterator;

    iget-object v1, p0, Lorg/apache/commons/collections/map/Flat3Map$KeySet;->parent:Lorg/apache/commons/collections/map/Flat3Map;

    invoke-direct {v0, v1}, Lorg/apache/commons/collections/map/Flat3Map$KeySetIterator;-><init>(Lorg/apache/commons/collections/map/Flat3Map;)V

    goto :goto_0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2
    .parameter "key"

    .prologue
    .line 879
    iget-object v1, p0, Lorg/apache/commons/collections/map/Flat3Map$KeySet;->parent:Lorg/apache/commons/collections/map/Flat3Map;

    invoke-virtual {v1, p1}, Lorg/apache/commons/collections/map/Flat3Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    .line 880
    .local v0, result:Z
    iget-object v1, p0, Lorg/apache/commons/collections/map/Flat3Map$KeySet;->parent:Lorg/apache/commons/collections/map/Flat3Map;

    invoke-virtual {v1, p1}, Lorg/apache/commons/collections/map/Flat3Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 881
    return v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 867
    iget-object v0, p0, Lorg/apache/commons/collections/map/Flat3Map$KeySet;->parent:Lorg/apache/commons/collections/map/Flat3Map;

    invoke-virtual {v0}, Lorg/apache/commons/collections/map/Flat3Map;->size()I

    move-result v0

    return v0
.end method
