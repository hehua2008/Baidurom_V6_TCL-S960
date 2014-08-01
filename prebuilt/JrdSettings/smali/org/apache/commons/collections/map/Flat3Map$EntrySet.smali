.class Lorg/apache/commons/collections/map/Flat3Map$EntrySet;
.super Ljava/util/AbstractSet;
.source "Flat3Map.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections/map/Flat3Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "EntrySet"
.end annotation


# instance fields
.field private final parent:Lorg/apache/commons/collections/map/Flat3Map;


# direct methods
.method constructor <init>(Lorg/apache/commons/collections/map/Flat3Map;)V
    .locals 0
    .parameter "parent"

    .prologue
    .line 693
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 694
    iput-object p1, p0, Lorg/apache/commons/collections/map/Flat3Map$EntrySet;->parent:Lorg/apache/commons/collections/map/Flat3Map;

    .line 695
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 702
    iget-object v0, p0, Lorg/apache/commons/collections/map/Flat3Map$EntrySet;->parent:Lorg/apache/commons/collections/map/Flat3Map;

    invoke-virtual {v0}, Lorg/apache/commons/collections/map/Flat3Map;->clear()V

    .line 703
    return-void
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2

    .prologue
    .line 717
    iget-object v0, p0, Lorg/apache/commons/collections/map/Flat3Map$EntrySet;->parent:Lorg/apache/commons/collections/map/Flat3Map;

    invoke-static {v0}, Lorg/apache/commons/collections/map/Flat3Map;->access$700(Lorg/apache/commons/collections/map/Flat3Map;)Lorg/apache/commons/collections/map/AbstractHashedMap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 718
    iget-object v0, p0, Lorg/apache/commons/collections/map/Flat3Map$EntrySet;->parent:Lorg/apache/commons/collections/map/Flat3Map;

    invoke-static {v0}, Lorg/apache/commons/collections/map/Flat3Map;->access$700(Lorg/apache/commons/collections/map/Flat3Map;)Lorg/apache/commons/collections/map/AbstractHashedMap;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/collections/map/AbstractHashedMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 723
    :goto_0
    return-object v0

    .line 720
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/map/Flat3Map$EntrySet;->parent:Lorg/apache/commons/collections/map/Flat3Map;

    invoke-virtual {v0}, Lorg/apache/commons/collections/map/Flat3Map;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 721
    sget-object v0, Lorg/apache/commons/collections/iterators/EmptyIterator;->INSTANCE:Ljava/util/Iterator;

    goto :goto_0

    .line 723
    :cond_1
    new-instance v0, Lorg/apache/commons/collections/map/Flat3Map$EntrySetIterator;

    iget-object v1, p0, Lorg/apache/commons/collections/map/Flat3Map$EntrySet;->parent:Lorg/apache/commons/collections/map/Flat3Map;

    invoke-direct {v0, v1}, Lorg/apache/commons/collections/map/Flat3Map$EntrySetIterator;-><init>(Lorg/apache/commons/collections/map/Flat3Map;)V

    goto :goto_0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 4
    .parameter "obj"

    .prologue
    .line 706
    instance-of v3, p1, Ljava/util/Map$Entry;

    if-nez v3, :cond_0

    .line 707
    const/4 v2, 0x0

    .line 713
    :goto_0
    return v2

    :cond_0
    move-object v0, p1

    .line 709
    check-cast v0, Ljava/util/Map$Entry;

    .line 710
    .local v0, entry:Ljava/util/Map$Entry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 711
    .local v1, key:Ljava/lang/Object;
    iget-object v3, p0, Lorg/apache/commons/collections/map/Flat3Map$EntrySet;->parent:Lorg/apache/commons/collections/map/Flat3Map;

    invoke-virtual {v3, v1}, Lorg/apache/commons/collections/map/Flat3Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    .line 712
    .local v2, result:Z
    iget-object v3, p0, Lorg/apache/commons/collections/map/Flat3Map$EntrySet;->parent:Lorg/apache/commons/collections/map/Flat3Map;

    invoke-virtual {v3, v1}, Lorg/apache/commons/collections/map/Flat3Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 698
    iget-object v0, p0, Lorg/apache/commons/collections/map/Flat3Map$EntrySet;->parent:Lorg/apache/commons/collections/map/Flat3Map;

    invoke-virtual {v0}, Lorg/apache/commons/collections/map/Flat3Map;->size()I

    move-result v0

    return v0
.end method
