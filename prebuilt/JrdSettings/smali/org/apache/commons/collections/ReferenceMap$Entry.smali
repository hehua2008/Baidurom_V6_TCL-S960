.class Lorg/apache/commons/collections/ReferenceMap$Entry;
.super Ljava/lang/Object;
.source "ReferenceMap.java"

# interfaces
.implements Ljava/util/Map$Entry;
.implements Lorg/apache/commons/collections/KeyValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections/ReferenceMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Entry"
.end annotation


# instance fields
.field hash:I

.field key:Ljava/lang/Object;

.field next:Lorg/apache/commons/collections/ReferenceMap$Entry;

.field private final this$0:Lorg/apache/commons/collections/ReferenceMap;

.field value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lorg/apache/commons/collections/ReferenceMap;Ljava/lang/Object;ILjava/lang/Object;Lorg/apache/commons/collections/ReferenceMap$Entry;)V
    .locals 0
    .parameter "this$0"
    .parameter "key"
    .parameter "hash"
    .parameter "value"
    .parameter "next"

    .prologue
    .line 750
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/collections/ReferenceMap$Entry;->this$0:Lorg/apache/commons/collections/ReferenceMap;

    .line 751
    iput-object p2, p0, Lorg/apache/commons/collections/ReferenceMap$Entry;->key:Ljava/lang/Object;

    .line 752
    iput p3, p0, Lorg/apache/commons/collections/ReferenceMap$Entry;->hash:I

    .line 753
    iput-object p4, p0, Lorg/apache/commons/collections/ReferenceMap$Entry;->value:Ljava/lang/Object;

    .line 754
    iput-object p5, p0, Lorg/apache/commons/collections/ReferenceMap$Entry;->next:Lorg/apache/commons/collections/ReferenceMap$Entry;

    .line 755
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter "o"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 777
    if-nez p1, :cond_1

    .line 785
    :cond_0
    :goto_0
    return v4

    .line 778
    :cond_1
    if-ne p1, p0, :cond_2

    move v4, v3

    goto :goto_0

    .line 779
    :cond_2
    instance-of v5, p1, Ljava/util/Map$Entry;

    if-eqz v5, :cond_0

    move-object v0, p1

    .line 781
    check-cast v0, Ljava/util/Map$Entry;

    .line 782
    .local v0, entry:Ljava/util/Map$Entry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 783
    .local v1, key:Ljava/lang/Object;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 784
    .local v2, value:Ljava/lang/Object;
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 785
    invoke-virtual {p0}, Lorg/apache/commons/collections/ReferenceMap$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {p0}, Lorg/apache/commons/collections/ReferenceMap$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    :goto_1
    move v4, v3

    goto :goto_0

    :cond_3
    move v3, v4

    goto :goto_1
.end method

.method public getKey()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 759
    iget-object v0, p0, Lorg/apache/commons/collections/ReferenceMap$Entry;->this$0:Lorg/apache/commons/collections/ReferenceMap;

    invoke-static {v0}, Lorg/apache/commons/collections/ReferenceMap;->access$300(Lorg/apache/commons/collections/ReferenceMap;)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/collections/ReferenceMap$Entry;->key:Ljava/lang/Object;

    check-cast v0, Ljava/lang/ref/Reference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/ReferenceMap$Entry;->key:Ljava/lang/Object;

    goto :goto_0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 764
    iget-object v0, p0, Lorg/apache/commons/collections/ReferenceMap$Entry;->this$0:Lorg/apache/commons/collections/ReferenceMap;

    invoke-static {v0}, Lorg/apache/commons/collections/ReferenceMap;->access$400(Lorg/apache/commons/collections/ReferenceMap;)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/collections/ReferenceMap$Entry;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/ref/Reference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/ReferenceMap$Entry;->value:Ljava/lang/Object;

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 790
    invoke-virtual {p0}, Lorg/apache/commons/collections/ReferenceMap$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 791
    .local v0, v:Ljava/lang/Object;
    iget v2, p0, Lorg/apache/commons/collections/ReferenceMap$Entry;->hash:I

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    xor-int/2addr v1, v2

    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0
.end method

.method purge(Ljava/lang/ref/Reference;)Z
    .locals 4
    .parameter "ref"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 801
    iget-object v3, p0, Lorg/apache/commons/collections/ReferenceMap$Entry;->this$0:Lorg/apache/commons/collections/ReferenceMap;

    invoke-static {v3}, Lorg/apache/commons/collections/ReferenceMap;->access$300(Lorg/apache/commons/collections/ReferenceMap;)I

    move-result v3

    if-lez v3, :cond_3

    iget-object v3, p0, Lorg/apache/commons/collections/ReferenceMap$Entry;->key:Ljava/lang/Object;

    if-ne v3, p1, :cond_3

    move v0, v2

    .line 802
    .local v0, r:Z
    :goto_0
    if-nez v0, :cond_0

    iget-object v3, p0, Lorg/apache/commons/collections/ReferenceMap$Entry;->this$0:Lorg/apache/commons/collections/ReferenceMap;

    invoke-static {v3}, Lorg/apache/commons/collections/ReferenceMap;->access$400(Lorg/apache/commons/collections/ReferenceMap;)I

    move-result v3

    if-lez v3, :cond_4

    iget-object v3, p0, Lorg/apache/commons/collections/ReferenceMap$Entry;->value:Ljava/lang/Object;

    if-ne v3, p1, :cond_4

    :cond_0
    move v0, v2

    .line 803
    :goto_1
    if-eqz v0, :cond_2

    .line 804
    iget-object v1, p0, Lorg/apache/commons/collections/ReferenceMap$Entry;->this$0:Lorg/apache/commons/collections/ReferenceMap;

    invoke-static {v1}, Lorg/apache/commons/collections/ReferenceMap;->access$300(Lorg/apache/commons/collections/ReferenceMap;)I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lorg/apache/commons/collections/ReferenceMap$Entry;->key:Ljava/lang/Object;

    check-cast v1, Ljava/lang/ref/Reference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->clear()V

    .line 805
    :cond_1
    iget-object v1, p0, Lorg/apache/commons/collections/ReferenceMap$Entry;->this$0:Lorg/apache/commons/collections/ReferenceMap;

    invoke-static {v1}, Lorg/apache/commons/collections/ReferenceMap;->access$400(Lorg/apache/commons/collections/ReferenceMap;)I

    move-result v1

    if-lez v1, :cond_5

    .line 806
    iget-object v1, p0, Lorg/apache/commons/collections/ReferenceMap$Entry;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/ref/Reference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->clear()V

    .line 811
    :cond_2
    :goto_2
    return v0

    .end local v0           #r:Z
    :cond_3
    move v0, v1

    .line 801
    goto :goto_0

    .restart local v0       #r:Z
    :cond_4
    move v0, v1

    .line 802
    goto :goto_1

    .line 807
    :cond_5
    iget-object v1, p0, Lorg/apache/commons/collections/ReferenceMap$Entry;->this$0:Lorg/apache/commons/collections/ReferenceMap;

    invoke-static {v1}, Lorg/apache/commons/collections/ReferenceMap;->access$600(Lorg/apache/commons/collections/ReferenceMap;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 808
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/commons/collections/ReferenceMap$Entry;->value:Ljava/lang/Object;

    goto :goto_2
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .parameter "object"

    .prologue
    .line 769
    invoke-virtual {p0}, Lorg/apache/commons/collections/ReferenceMap$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 770
    .local v0, old:Ljava/lang/Object;
    iget-object v1, p0, Lorg/apache/commons/collections/ReferenceMap$Entry;->this$0:Lorg/apache/commons/collections/ReferenceMap;

    invoke-static {v1}, Lorg/apache/commons/collections/ReferenceMap;->access$400(Lorg/apache/commons/collections/ReferenceMap;)I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lorg/apache/commons/collections/ReferenceMap$Entry;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/ref/Reference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->clear()V

    .line 771
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/collections/ReferenceMap$Entry;->this$0:Lorg/apache/commons/collections/ReferenceMap;

    iget-object v2, p0, Lorg/apache/commons/collections/ReferenceMap$Entry;->this$0:Lorg/apache/commons/collections/ReferenceMap;

    invoke-static {v2}, Lorg/apache/commons/collections/ReferenceMap;->access$400(Lorg/apache/commons/collections/ReferenceMap;)I

    move-result v2

    iget v3, p0, Lorg/apache/commons/collections/ReferenceMap$Entry;->hash:I

    invoke-static {v1, v2, p1, v3}, Lorg/apache/commons/collections/ReferenceMap;->access$500(Lorg/apache/commons/collections/ReferenceMap;ILjava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/collections/ReferenceMap$Entry;->value:Ljava/lang/Object;

    .line 772
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 796
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Lorg/apache/commons/collections/ReferenceMap$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/commons/collections/ReferenceMap$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
