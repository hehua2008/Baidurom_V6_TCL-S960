.class Lorg/apache/commons/collections/ReferenceMap$2;
.super Ljava/util/AbstractSet;
.source "ReferenceMap.java"


# instance fields
.field private final this$0:Lorg/apache/commons/collections/ReferenceMap;


# direct methods
.method constructor <init>(Lorg/apache/commons/collections/ReferenceMap;)V
    .locals 0
    .parameter "this$0"

    .prologue
    .line 692
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/collections/ReferenceMap$2;->this$0:Lorg/apache/commons/collections/ReferenceMap;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 685
    iget-object v0, p0, Lorg/apache/commons/collections/ReferenceMap$2;->this$0:Lorg/apache/commons/collections/ReferenceMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections/ReferenceMap;->clear()V

    .line 686
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .parameter "o"

    .prologue
    .line 675
    iget-object v0, p0, Lorg/apache/commons/collections/ReferenceMap$2;->this$0:Lorg/apache/commons/collections/ReferenceMap;

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections/ReferenceMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 3

    .prologue
    .line 671
    new-instance v0, Lorg/apache/commons/collections/ReferenceMap$KeyIterator;

    iget-object v1, p0, Lorg/apache/commons/collections/ReferenceMap$2;->this$0:Lorg/apache/commons/collections/ReferenceMap;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/collections/ReferenceMap$KeyIterator;-><init>(Lorg/apache/commons/collections/ReferenceMap;Lorg/apache/commons/collections/ReferenceMap$1;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2
    .parameter "o"

    .prologue
    .line 680
    iget-object v1, p0, Lorg/apache/commons/collections/ReferenceMap$2;->this$0:Lorg/apache/commons/collections/ReferenceMap;

    invoke-virtual {v1, p1}, Lorg/apache/commons/collections/ReferenceMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 681
    .local v0, r:Ljava/lang/Object;
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
    .line 667
    iget-object v0, p0, Lorg/apache/commons/collections/ReferenceMap$2;->this$0:Lorg/apache/commons/collections/ReferenceMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections/ReferenceMap;->size()I

    move-result v0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 689
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/ReferenceMap$2;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 3
    .parameter "array"

    .prologue
    .line 693
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lorg/apache/commons/collections/ReferenceMap$2;->size()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 694
    .local v0, c:Ljava/util/Collection;
    invoke-virtual {p0}, Lorg/apache/commons/collections/ReferenceMap$2;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, it:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 697
    invoke-interface {v0, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 695
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
