.class Lorg/apache/commons/collections/ReferenceMap$3;
.super Ljava/util/AbstractCollection;
.source "ReferenceMap.java"


# instance fields
.field private final this$0:Lorg/apache/commons/collections/ReferenceMap;


# direct methods
.method constructor <init>(Lorg/apache/commons/collections/ReferenceMap;)V
    .locals 0
    .parameter "this$0"

    .prologue
    .line 728
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/collections/ReferenceMap$3;->this$0:Lorg/apache/commons/collections/ReferenceMap;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 717
    iget-object v0, p0, Lorg/apache/commons/collections/ReferenceMap$3;->this$0:Lorg/apache/commons/collections/ReferenceMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections/ReferenceMap;->clear()V

    .line 718
    return-void
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 3

    .prologue
    .line 721
    new-instance v0, Lorg/apache/commons/collections/ReferenceMap$ValueIterator;

    iget-object v1, p0, Lorg/apache/commons/collections/ReferenceMap$3;->this$0:Lorg/apache/commons/collections/ReferenceMap;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/collections/ReferenceMap$ValueIterator;-><init>(Lorg/apache/commons/collections/ReferenceMap;Lorg/apache/commons/collections/ReferenceMap$1;)V

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 713
    iget-object v0, p0, Lorg/apache/commons/collections/ReferenceMap$3;->this$0:Lorg/apache/commons/collections/ReferenceMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections/ReferenceMap;->size()I

    move-result v0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 725
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/ReferenceMap$3;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 3
    .parameter "array"

    .prologue
    .line 729
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lorg/apache/commons/collections/ReferenceMap$3;->size()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 730
    .local v0, c:Ljava/util/Collection;
    invoke-virtual {p0}, Lorg/apache/commons/collections/ReferenceMap$3;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, it:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 733
    invoke-interface {v0, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 731
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
