.class Lorg/apache/commons/collections/SequencedHashMap$2;
.super Ljava/util/AbstractCollection;
.source "SequencedHashMap.java"


# instance fields
.field private final this$0:Lorg/apache/commons/collections/SequencedHashMap;


# direct methods
.method constructor <init>(Lorg/apache/commons/collections/SequencedHashMap;)V
    .locals 0
    .parameter "this$0"

    .prologue
    .line 628
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/collections/SequencedHashMap$2;->this$0:Lorg/apache/commons/collections/SequencedHashMap;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 620
    iget-object v0, p0, Lorg/apache/commons/collections/SequencedHashMap$2;->this$0:Lorg/apache/commons/collections/SequencedHashMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections/SequencedHashMap;->clear()V

    .line 621
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .parameter "o"

    .prologue
    .line 629
    iget-object v0, p0, Lorg/apache/commons/collections/SequencedHashMap$2;->this$0:Lorg/apache/commons/collections/SequencedHashMap;

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections/SequencedHashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 626
    iget-object v0, p0, Lorg/apache/commons/collections/SequencedHashMap$2;->this$0:Lorg/apache/commons/collections/SequencedHashMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections/SequencedHashMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 3

    .prologue
    .line 593
    new-instance v0, Lorg/apache/commons/collections/SequencedHashMap$OrderedIterator;

    iget-object v1, p0, Lorg/apache/commons/collections/SequencedHashMap$2;->this$0:Lorg/apache/commons/collections/SequencedHashMap;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/collections/SequencedHashMap$OrderedIterator;-><init>(Lorg/apache/commons/collections/SequencedHashMap;I)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 4
    .parameter "value"

    .prologue
    const/4 v1, 0x1

    .line 599
    if-nez p1, :cond_3

    .line 600
    iget-object v2, p0, Lorg/apache/commons/collections/SequencedHashMap$2;->this$0:Lorg/apache/commons/collections/SequencedHashMap;

    invoke-static {v2}, Lorg/apache/commons/collections/SequencedHashMap;->access$100(Lorg/apache/commons/collections/SequencedHashMap;)Lorg/apache/commons/collections/SequencedHashMap$Entry;

    move-result-object v2

    iget-object v0, v2, Lorg/apache/commons/collections/SequencedHashMap$Entry;->next:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    .local v0, pos:Lorg/apache/commons/collections/SequencedHashMap$Entry;
    :goto_0
    iget-object v2, p0, Lorg/apache/commons/collections/SequencedHashMap$2;->this$0:Lorg/apache/commons/collections/SequencedHashMap;

    invoke-static {v2}, Lorg/apache/commons/collections/SequencedHashMap;->access$100(Lorg/apache/commons/collections/SequencedHashMap;)Lorg/apache/commons/collections/SequencedHashMap$Entry;

    move-result-object v2

    if-ne v0, v2, :cond_1

    .line 615
    :cond_0
    const/4 v1, 0x0

    :goto_1
    return v1

    .line 601
    :cond_1
    invoke-virtual {v0}, Lorg/apache/commons/collections/SequencedHashMap$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    .line 602
    iget-object v2, p0, Lorg/apache/commons/collections/SequencedHashMap$2;->this$0:Lorg/apache/commons/collections/SequencedHashMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections/SequencedHashMap$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/apache/commons/collections/SequencedHashMap;->access$000(Lorg/apache/commons/collections/SequencedHashMap;Ljava/lang/Object;)Lorg/apache/commons/collections/SequencedHashMap$Entry;

    goto :goto_1

    .line 600
    :cond_2
    iget-object v0, v0, Lorg/apache/commons/collections/SequencedHashMap$Entry;->next:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    goto :goto_0

    .line 607
    .end local v0           #pos:Lorg/apache/commons/collections/SequencedHashMap$Entry;
    :cond_3
    iget-object v2, p0, Lorg/apache/commons/collections/SequencedHashMap$2;->this$0:Lorg/apache/commons/collections/SequencedHashMap;

    invoke-static {v2}, Lorg/apache/commons/collections/SequencedHashMap;->access$100(Lorg/apache/commons/collections/SequencedHashMap;)Lorg/apache/commons/collections/SequencedHashMap$Entry;

    move-result-object v2

    iget-object v0, v2, Lorg/apache/commons/collections/SequencedHashMap$Entry;->next:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    .restart local v0       #pos:Lorg/apache/commons/collections/SequencedHashMap$Entry;
    :goto_2
    iget-object v2, p0, Lorg/apache/commons/collections/SequencedHashMap$2;->this$0:Lorg/apache/commons/collections/SequencedHashMap;

    invoke-static {v2}, Lorg/apache/commons/collections/SequencedHashMap;->access$100(Lorg/apache/commons/collections/SequencedHashMap;)Lorg/apache/commons/collections/SequencedHashMap$Entry;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 608
    invoke-virtual {v0}, Lorg/apache/commons/collections/SequencedHashMap$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 609
    iget-object v2, p0, Lorg/apache/commons/collections/SequencedHashMap$2;->this$0:Lorg/apache/commons/collections/SequencedHashMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections/SequencedHashMap$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/apache/commons/collections/SequencedHashMap;->access$000(Lorg/apache/commons/collections/SequencedHashMap;Ljava/lang/Object;)Lorg/apache/commons/collections/SequencedHashMap$Entry;

    goto :goto_1

    .line 607
    :cond_4
    iget-object v0, v0, Lorg/apache/commons/collections/SequencedHashMap$Entry;->next:Lorg/apache/commons/collections/SequencedHashMap$Entry;

    goto :goto_2
.end method

.method public size()I
    .locals 1

    .prologue
    .line 623
    iget-object v0, p0, Lorg/apache/commons/collections/SequencedHashMap$2;->this$0:Lorg/apache/commons/collections/SequencedHashMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections/SequencedHashMap;->size()I

    move-result v0

    return v0
.end method
