.class Lorg/apache/commons/collections/map/Flat3Map$EntrySetIterator;
.super Ljava/lang/Object;
.source "Flat3Map.java"

# interfaces
.implements Ljava/util/Iterator;
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections/map/Flat3Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "EntrySetIterator"
.end annotation


# instance fields
.field private canRemove:Z

.field private nextIndex:I

.field private final parent:Lorg/apache/commons/collections/map/Flat3Map;


# direct methods
.method constructor <init>(Lorg/apache/commons/collections/map/Flat3Map;)V
    .locals 1
    .parameter "parent"

    .prologue
    const/4 v0, 0x0

    .line 736
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 732
    iput v0, p0, Lorg/apache/commons/collections/map/Flat3Map$EntrySetIterator;->nextIndex:I

    .line 733
    iput-boolean v0, p0, Lorg/apache/commons/collections/map/Flat3Map$EntrySetIterator;->canRemove:Z

    .line 737
    iput-object p1, p0, Lorg/apache/commons/collections/map/Flat3Map$EntrySetIterator;->parent:Lorg/apache/commons/collections/map/Flat3Map;

    .line 738
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter "obj"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 809
    iget-boolean v5, p0, Lorg/apache/commons/collections/map/Flat3Map$EntrySetIterator;->canRemove:Z

    if-nez v5, :cond_1

    .line 818
    :cond_0
    :goto_0
    return v4

    .line 812
    :cond_1
    instance-of v5, p1, Ljava/util/Map$Entry;

    if-eqz v5, :cond_0

    move-object v1, p1

    .line 815
    check-cast v1, Ljava/util/Map$Entry;

    .line 816
    .local v1, other:Ljava/util/Map$Entry;
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/Flat3Map$EntrySetIterator;->getKey()Ljava/lang/Object;

    move-result-object v0

    .line 817
    .local v0, key:Ljava/lang/Object;
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/Flat3Map$EntrySetIterator;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 818
    .local v2, value:Ljava/lang/Object;
    if-nez v0, :cond_3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_2

    move v5, v3

    :goto_1
    if-eqz v5, :cond_6

    if-nez v2, :cond_5

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_4

    move v5, v3

    :goto_2
    if-eqz v5, :cond_6

    :goto_3
    move v4, v3

    goto :goto_0

    :cond_2
    move v5, v4

    goto :goto_1

    :cond_3
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    goto :goto_1

    :cond_4
    move v5, v4

    goto :goto_2

    :cond_5
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    goto :goto_2

    :cond_6
    move v3, v4

    goto :goto_3
.end method

.method public getKey()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 763
    iget-boolean v0, p0, Lorg/apache/commons/collections/map/Flat3Map$EntrySetIterator;->canRemove:Z

    if-nez v0, :cond_0

    .line 764
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getKey() can only be called after next() and before remove()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 766
    :cond_0
    iget v0, p0, Lorg/apache/commons/collections/map/Flat3Map$EntrySetIterator;->nextIndex:I

    packed-switch v0, :pswitch_data_0

    .line 774
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid map index"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 768
    :pswitch_0
    iget-object v0, p0, Lorg/apache/commons/collections/map/Flat3Map$EntrySetIterator;->parent:Lorg/apache/commons/collections/map/Flat3Map;

    invoke-static {v0}, Lorg/apache/commons/collections/map/Flat3Map;->access$100(Lorg/apache/commons/collections/map/Flat3Map;)Ljava/lang/Object;

    move-result-object v0

    .line 772
    :goto_0
    return-object v0

    .line 770
    :pswitch_1
    iget-object v0, p0, Lorg/apache/commons/collections/map/Flat3Map$EntrySetIterator;->parent:Lorg/apache/commons/collections/map/Flat3Map;

    invoke-static {v0}, Lorg/apache/commons/collections/map/Flat3Map;->access$200(Lorg/apache/commons/collections/map/Flat3Map;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 772
    :pswitch_2
    iget-object v0, p0, Lorg/apache/commons/collections/map/Flat3Map$EntrySetIterator;->parent:Lorg/apache/commons/collections/map/Flat3Map;

    invoke-static {v0}, Lorg/apache/commons/collections/map/Flat3Map;->access$300(Lorg/apache/commons/collections/map/Flat3Map;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 766
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getValue()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 778
    iget-boolean v0, p0, Lorg/apache/commons/collections/map/Flat3Map$EntrySetIterator;->canRemove:Z

    if-nez v0, :cond_0

    .line 779
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getValue() can only be called after next() and before remove()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 781
    :cond_0
    iget v0, p0, Lorg/apache/commons/collections/map/Flat3Map$EntrySetIterator;->nextIndex:I

    packed-switch v0, :pswitch_data_0

    .line 789
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid map index"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 783
    :pswitch_0
    iget-object v0, p0, Lorg/apache/commons/collections/map/Flat3Map$EntrySetIterator;->parent:Lorg/apache/commons/collections/map/Flat3Map;

    invoke-static {v0}, Lorg/apache/commons/collections/map/Flat3Map;->access$400(Lorg/apache/commons/collections/map/Flat3Map;)Ljava/lang/Object;

    move-result-object v0

    .line 787
    :goto_0
    return-object v0

    .line 785
    :pswitch_1
    iget-object v0, p0, Lorg/apache/commons/collections/map/Flat3Map$EntrySetIterator;->parent:Lorg/apache/commons/collections/map/Flat3Map;

    invoke-static {v0}, Lorg/apache/commons/collections/map/Flat3Map;->access$500(Lorg/apache/commons/collections/map/Flat3Map;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 787
    :pswitch_2
    iget-object v0, p0, Lorg/apache/commons/collections/map/Flat3Map$EntrySetIterator;->parent:Lorg/apache/commons/collections/map/Flat3Map;

    invoke-static {v0}, Lorg/apache/commons/collections/map/Flat3Map;->access$600(Lorg/apache/commons/collections/map/Flat3Map;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 781
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public hasNext()Z
    .locals 2

    .prologue
    .line 741
    iget v0, p0, Lorg/apache/commons/collections/map/Flat3Map$EntrySetIterator;->nextIndex:I

    iget-object v1, p0, Lorg/apache/commons/collections/map/Flat3Map$EntrySetIterator;->parent:Lorg/apache/commons/collections/map/Flat3Map;

    invoke-static {v1}, Lorg/apache/commons/collections/map/Flat3Map;->access$000(Lorg/apache/commons/collections/map/Flat3Map;)I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 823
    iget-boolean v3, p0, Lorg/apache/commons/collections/map/Flat3Map$EntrySetIterator;->canRemove:Z

    if-nez v3, :cond_0

    .line 828
    :goto_0
    return v2

    .line 826
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/Flat3Map$EntrySetIterator;->getKey()Ljava/lang/Object;

    move-result-object v0

    .line 827
    .local v0, key:Ljava/lang/Object;
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/Flat3Map$EntrySetIterator;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 828
    .local v1, value:Ljava/lang/Object;
    if-nez v0, :cond_1

    move v3, v2

    :goto_1
    if-nez v1, :cond_2

    :goto_2
    xor-int/2addr v2, v3

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2
.end method

.method public next()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 745
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/Flat3Map$EntrySetIterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 746
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "No next() entry in the iteration"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 748
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/collections/map/Flat3Map$EntrySetIterator;->canRemove:Z

    .line 749
    iget v0, p0, Lorg/apache/commons/collections/map/Flat3Map$EntrySetIterator;->nextIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/collections/map/Flat3Map$EntrySetIterator;->nextIndex:I

    .line 750
    return-object p0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 754
    iget-boolean v0, p0, Lorg/apache/commons/collections/map/Flat3Map$EntrySetIterator;->canRemove:Z

    if-nez v0, :cond_0

    .line 755
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "remove() can only be called once after next()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 757
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/map/Flat3Map$EntrySetIterator;->parent:Lorg/apache/commons/collections/map/Flat3Map;

    invoke-virtual {p0}, Lorg/apache/commons/collections/map/Flat3Map$EntrySetIterator;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/collections/map/Flat3Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 758
    iget v0, p0, Lorg/apache/commons/collections/map/Flat3Map$EntrySetIterator;->nextIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/commons/collections/map/Flat3Map$EntrySetIterator;->nextIndex:I

    .line 759
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/collections/map/Flat3Map$EntrySetIterator;->canRemove:Z

    .line 760
    return-void
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter "value"

    .prologue
    .line 793
    iget-boolean v1, p0, Lorg/apache/commons/collections/map/Flat3Map$EntrySetIterator;->canRemove:Z

    if-nez v1, :cond_0

    .line 794
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "setValue() can only be called after next() and before remove()"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 796
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/Flat3Map$EntrySetIterator;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 797
    .local v0, old:Ljava/lang/Object;
    iget v1, p0, Lorg/apache/commons/collections/map/Flat3Map$EntrySetIterator;->nextIndex:I

    packed-switch v1, :pswitch_data_0

    .line 805
    :goto_0
    return-object v0

    .line 799
    :pswitch_0
    iget-object v1, p0, Lorg/apache/commons/collections/map/Flat3Map$EntrySetIterator;->parent:Lorg/apache/commons/collections/map/Flat3Map;

    invoke-static {v1, p1}, Lorg/apache/commons/collections/map/Flat3Map;->access$402(Lorg/apache/commons/collections/map/Flat3Map;Ljava/lang/Object;)Ljava/lang/Object;

    .line 801
    :pswitch_1
    iget-object v1, p0, Lorg/apache/commons/collections/map/Flat3Map$EntrySetIterator;->parent:Lorg/apache/commons/collections/map/Flat3Map;

    invoke-static {v1, p1}, Lorg/apache/commons/collections/map/Flat3Map;->access$502(Lorg/apache/commons/collections/map/Flat3Map;Ljava/lang/Object;)Ljava/lang/Object;

    .line 803
    :pswitch_2
    iget-object v1, p0, Lorg/apache/commons/collections/map/Flat3Map$EntrySetIterator;->parent:Lorg/apache/commons/collections/map/Flat3Map;

    invoke-static {v1, p1}, Lorg/apache/commons/collections/map/Flat3Map;->access$602(Lorg/apache/commons/collections/map/Flat3Map;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 797
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 833
    iget-boolean v0, p0, Lorg/apache/commons/collections/map/Flat3Map$EntrySetIterator;->canRemove:Z

    if-eqz v0, :cond_0

    .line 834
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Lorg/apache/commons/collections/map/Flat3Map$EntrySetIterator;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/commons/collections/map/Flat3Map$EntrySetIterator;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 836
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method
