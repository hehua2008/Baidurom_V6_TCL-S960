.class Lorg/apache/commons/collections/ReferenceMap$1;
.super Ljava/util/AbstractSet;
.source "ReferenceMap.java"


# instance fields
.field private final this$0:Lorg/apache/commons/collections/ReferenceMap;


# direct methods
.method constructor <init>(Lorg/apache/commons/collections/ReferenceMap;)V
    .locals 0
    .parameter "this$0"

    .prologue
    .line 644
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/collections/ReferenceMap$1;->this$0:Lorg/apache/commons/collections/ReferenceMap;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 616
    iget-object v0, p0, Lorg/apache/commons/collections/ReferenceMap$1;->this$0:Lorg/apache/commons/collections/ReferenceMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections/ReferenceMap;->clear()V

    .line 617
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v2, 0x0

    .line 620
    if-nez p1, :cond_1

    .line 624
    :cond_0
    :goto_0
    return v2

    .line 621
    :cond_1
    instance-of v3, p1, Ljava/util/Map$Entry;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 622
    check-cast v0, Ljava/util/Map$Entry;

    .line 623
    .local v0, e:Ljava/util/Map$Entry;
    iget-object v3, p0, Lorg/apache/commons/collections/ReferenceMap$1;->this$0:Lorg/apache/commons/collections/ReferenceMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/apache/commons/collections/ReferenceMap;->access$000(Lorg/apache/commons/collections/ReferenceMap;Ljava/lang/Object;)Lorg/apache/commons/collections/ReferenceMap$Entry;

    move-result-object v1

    .line 624
    .local v1, e2:Lorg/apache/commons/collections/ReferenceMap$Entry;
    if-eqz v1, :cond_0

    invoke-interface {v0, v1}, Ljava/util/Map$Entry;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2

    .prologue
    .line 637
    new-instance v0, Lorg/apache/commons/collections/ReferenceMap$EntryIterator;

    iget-object v1, p0, Lorg/apache/commons/collections/ReferenceMap$1;->this$0:Lorg/apache/commons/collections/ReferenceMap;

    invoke-direct {v0, v1}, Lorg/apache/commons/collections/ReferenceMap$EntryIterator;-><init>(Lorg/apache/commons/collections/ReferenceMap;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 4
    .parameter "o"

    .prologue
    .line 628
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/ReferenceMap$1;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 629
    .local v1, r:Z
    if-eqz v1, :cond_0

    move-object v0, p1

    .line 630
    check-cast v0, Ljava/util/Map$Entry;

    .line 631
    .local v0, e:Ljava/util/Map$Entry;
    iget-object v2, p0, Lorg/apache/commons/collections/ReferenceMap$1;->this$0:Lorg/apache/commons/collections/ReferenceMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/commons/collections/ReferenceMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 633
    .end local v0           #e:Ljava/util/Map$Entry;
    :cond_0
    return v1
.end method

.method public size()I
    .locals 1

    .prologue
    .line 612
    iget-object v0, p0, Lorg/apache/commons/collections/ReferenceMap$1;->this$0:Lorg/apache/commons/collections/ReferenceMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections/ReferenceMap;->size()I

    move-result v0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 641
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/ReferenceMap$1;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 6
    .parameter "arr"

    .prologue
    .line 645
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 646
    .local v2, list:Ljava/util/ArrayList;
    invoke-virtual {p0}, Lorg/apache/commons/collections/ReferenceMap$1;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 647
    .local v1, iterator:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 651
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    return-object v3

    .line 648
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/collections/ReferenceMap$Entry;

    .line 649
    .local v0, e:Lorg/apache/commons/collections/ReferenceMap$Entry;
    new-instance v3, Lorg/apache/commons/collections/keyvalue/DefaultMapEntry;

    invoke-virtual {v0}, Lorg/apache/commons/collections/ReferenceMap$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0}, Lorg/apache/commons/collections/ReferenceMap$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/commons/collections/keyvalue/DefaultMapEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
