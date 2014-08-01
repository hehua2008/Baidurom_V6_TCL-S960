.class Lorg/apache/commons/collections/SequencedHashMap$1;
.super Ljava/util/AbstractSet;
.source "SequencedHashMap.java"


# instance fields
.field private final this$0:Lorg/apache/commons/collections/SequencedHashMap;


# direct methods
.method constructor <init>(Lorg/apache/commons/collections/SequencedHashMap;)V
    .locals 0
    .parameter "this$0"

    .prologue
    .line 579
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/collections/SequencedHashMap$1;->this$0:Lorg/apache/commons/collections/SequencedHashMap;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 571
    iget-object v0, p0, Lorg/apache/commons/collections/SequencedHashMap$1;->this$0:Lorg/apache/commons/collections/SequencedHashMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections/SequencedHashMap;->clear()V

    .line 572
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .parameter "o"

    .prologue
    .line 580
    iget-object v0, p0, Lorg/apache/commons/collections/SequencedHashMap$1;->this$0:Lorg/apache/commons/collections/SequencedHashMap;

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections/SequencedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 577
    iget-object v0, p0, Lorg/apache/commons/collections/SequencedHashMap$1;->this$0:Lorg/apache/commons/collections/SequencedHashMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections/SequencedHashMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 3

    .prologue
    .line 562
    new-instance v0, Lorg/apache/commons/collections/SequencedHashMap$OrderedIterator;

    iget-object v1, p0, Lorg/apache/commons/collections/SequencedHashMap$1;->this$0:Lorg/apache/commons/collections/SequencedHashMap;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/collections/SequencedHashMap$OrderedIterator;-><init>(Lorg/apache/commons/collections/SequencedHashMap;I)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2
    .parameter "o"

    .prologue
    .line 565
    iget-object v1, p0, Lorg/apache/commons/collections/SequencedHashMap$1;->this$0:Lorg/apache/commons/collections/SequencedHashMap;

    invoke-static {v1, p1}, Lorg/apache/commons/collections/SequencedHashMap;->access$000(Lorg/apache/commons/collections/SequencedHashMap;Ljava/lang/Object;)Lorg/apache/commons/collections/SequencedHashMap$Entry;

    move-result-object v0

    .line 566
    .local v0, e:Lorg/apache/commons/collections/SequencedHashMap$Entry;
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 574
    iget-object v0, p0, Lorg/apache/commons/collections/SequencedHashMap$1;->this$0:Lorg/apache/commons/collections/SequencedHashMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections/SequencedHashMap;->size()I

    move-result v0

    return v0
.end method
