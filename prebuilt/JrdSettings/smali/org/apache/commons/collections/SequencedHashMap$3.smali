.class Lorg/apache/commons/collections/SequencedHashMap$3;
.super Ljava/util/AbstractSet;
.source "SequencedHashMap.java"


# instance fields
.field private final this$0:Lorg/apache/commons/collections/SequencedHashMap;


# direct methods
.method constructor <init>(Lorg/apache/commons/collections/SequencedHashMap;)V
    .locals 0
    .parameter "this$0"

    .prologue
    .line 676
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/collections/SequencedHashMap$3;->this$0:Lorg/apache/commons/collections/SequencedHashMap;

    return-void
.end method

.method private findEntry(Ljava/lang/Object;)Lorg/apache/commons/collections/SequencedHashMap$Entry;
    .locals 5
    .parameter "o"

    .prologue
    const/4 v2, 0x0

    .line 641
    if-nez p1, :cond_1

    move-object v1, v2

    .line 651
    :cond_0
    :goto_0
    return-object v1

    .line 643
    :cond_1
    instance-of v3, p1, Ljava/util/Map$Entry;

    if-nez v3, :cond_2

    move-object v1, v2

    .line 644
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 646
    check-cast v0, Ljava/util/Map$Entry;

    .line 647
    .local v0, e:Ljava/util/Map$Entry;
    iget-object v3, p0, Lorg/apache/commons/collections/SequencedHashMap$3;->this$0:Lorg/apache/commons/collections/SequencedHashMap;

    invoke-static {v3}, Lorg/apache/commons/collections/SequencedHashMap;->access$200(Lorg/apache/commons/collections/SequencedHashMap;)Ljava/util/HashMap;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/collections/SequencedHashMap$Entry;

    .line 648
    .local v1, entry:Lorg/apache/commons/collections/SequencedHashMap$Entry;
    if-eqz v1, :cond_3

    invoke-virtual {v1, v0}, Lorg/apache/commons/collections/SequencedHashMap$Entry;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move-object v1, v2

    .line 651
    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 668
    iget-object v0, p0, Lorg/apache/commons/collections/SequencedHashMap$3;->this$0:Lorg/apache/commons/collections/SequencedHashMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections/SequencedHashMap;->clear()V

    .line 669
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .parameter "o"

    .prologue
    .line 677
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/SequencedHashMap$3;->findEntry(Ljava/lang/Object;)Lorg/apache/commons/collections/SequencedHashMap$Entry;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 674
    iget-object v0, p0, Lorg/apache/commons/collections/SequencedHashMap$3;->this$0:Lorg/apache/commons/collections/SequencedHashMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections/SequencedHashMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 3

    .prologue
    .line 656
    new-instance v0, Lorg/apache/commons/collections/SequencedHashMap$OrderedIterator;

    iget-object v1, p0, Lorg/apache/commons/collections/SequencedHashMap$3;->this$0:Lorg/apache/commons/collections/SequencedHashMap;

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/collections/SequencedHashMap$OrderedIterator;-><init>(Lorg/apache/commons/collections/SequencedHashMap;I)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 4
    .parameter "o"

    .prologue
    const/4 v1, 0x0

    .line 659
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/SequencedHashMap$3;->findEntry(Ljava/lang/Object;)Lorg/apache/commons/collections/SequencedHashMap$Entry;

    move-result-object v0

    .line 660
    .local v0, e:Lorg/apache/commons/collections/SequencedHashMap$Entry;
    if-nez v0, :cond_1

    .line 663
    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v2, p0, Lorg/apache/commons/collections/SequencedHashMap$3;->this$0:Lorg/apache/commons/collections/SequencedHashMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections/SequencedHashMap$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/apache/commons/collections/SequencedHashMap;->access$000(Lorg/apache/commons/collections/SequencedHashMap;Ljava/lang/Object;)Lorg/apache/commons/collections/SequencedHashMap$Entry;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 671
    iget-object v0, p0, Lorg/apache/commons/collections/SequencedHashMap$3;->this$0:Lorg/apache/commons/collections/SequencedHashMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections/SequencedHashMap;->size()I

    move-result v0

    return v0
.end method
