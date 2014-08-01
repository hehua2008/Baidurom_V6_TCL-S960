.class Lorg/apache/commons/collections/ReferenceMap$EntryIterator;
.super Ljava/lang/Object;
.source "ReferenceMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections/ReferenceMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EntryIterator"
.end annotation


# instance fields
.field currentKey:Ljava/lang/Object;

.field currentValue:Ljava/lang/Object;

.field entry:Lorg/apache/commons/collections/ReferenceMap$Entry;

.field expectedModCount:I

.field index:I

.field nextKey:Ljava/lang/Object;

.field nextValue:Ljava/lang/Object;

.field previous:Lorg/apache/commons/collections/ReferenceMap$Entry;

.field private final this$0:Lorg/apache/commons/collections/ReferenceMap;


# direct methods
.method public constructor <init>(Lorg/apache/commons/collections/ReferenceMap;)V
    .locals 1
    .parameter "this$0"

    .prologue
    .line 831
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/collections/ReferenceMap$EntryIterator;->this$0:Lorg/apache/commons/collections/ReferenceMap;

    .line 832
    invoke-virtual {p1}, Lorg/apache/commons/collections/ReferenceMap;->size()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lorg/apache/commons/collections/ReferenceMap;->access$700(Lorg/apache/commons/collections/ReferenceMap;)[Lorg/apache/commons/collections/ReferenceMap$Entry;

    move-result-object v0

    array-length v0, v0

    :goto_0
    iput v0, p0, Lorg/apache/commons/collections/ReferenceMap$EntryIterator;->index:I

    .line 835
    invoke-static {p1}, Lorg/apache/commons/collections/ReferenceMap;->access$800(Lorg/apache/commons/collections/ReferenceMap;)I

    move-result v0

    iput v0, p0, Lorg/apache/commons/collections/ReferenceMap$EntryIterator;->expectedModCount:I

    .line 836
    return-void

    .line 832
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkMod()V
    .locals 2

    .prologue
    .line 864
    iget-object v0, p0, Lorg/apache/commons/collections/ReferenceMap$EntryIterator;->this$0:Lorg/apache/commons/collections/ReferenceMap;

    invoke-static {v0}, Lorg/apache/commons/collections/ReferenceMap;->access$800(Lorg/apache/commons/collections/ReferenceMap;)I

    move-result v0

    iget v1, p0, Lorg/apache/commons/collections/ReferenceMap$EntryIterator;->expectedModCount:I

    if-eq v0, v1, :cond_0

    .line 865
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 867
    :cond_0
    return-void
.end method

.method private nextNull()Z
    .locals 1

    .prologue
    .line 871
    iget-object v0, p0, Lorg/apache/commons/collections/ReferenceMap$EntryIterator;->nextKey:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/collections/ReferenceMap$EntryIterator;->nextValue:Ljava/lang/Object;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public hasNext()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 840
    invoke-direct {p0}, Lorg/apache/commons/collections/ReferenceMap$EntryIterator;->checkMod()V

    .line 841
    :cond_0
    :goto_0
    invoke-direct {p0}, Lorg/apache/commons/collections/ReferenceMap$EntryIterator;->nextNull()Z

    move-result v2

    if-nez v2, :cond_1

    .line 859
    const/4 v2, 0x1

    :goto_1
    return v2

    .line 842
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/collections/ReferenceMap$EntryIterator;->entry:Lorg/apache/commons/collections/ReferenceMap$Entry;

    .line 843
    .local v0, e:Lorg/apache/commons/collections/ReferenceMap$Entry;
    iget v1, p0, Lorg/apache/commons/collections/ReferenceMap$EntryIterator;->index:I

    .line 844
    .local v1, i:I
    :goto_2
    if-nez v0, :cond_2

    if-gtz v1, :cond_3

    .line 848
    :cond_2
    iput-object v0, p0, Lorg/apache/commons/collections/ReferenceMap$EntryIterator;->entry:Lorg/apache/commons/collections/ReferenceMap$Entry;

    .line 849
    iput v1, p0, Lorg/apache/commons/collections/ReferenceMap$EntryIterator;->index:I

    .line 850
    if-nez v0, :cond_4

    .line 851
    iput-object v3, p0, Lorg/apache/commons/collections/ReferenceMap$EntryIterator;->currentKey:Ljava/lang/Object;

    .line 852
    iput-object v3, p0, Lorg/apache/commons/collections/ReferenceMap$EntryIterator;->currentValue:Ljava/lang/Object;

    .line 853
    const/4 v2, 0x0

    goto :goto_1

    .line 845
    :cond_3
    add-int/lit8 v1, v1, -0x1

    .line 846
    iget-object v2, p0, Lorg/apache/commons/collections/ReferenceMap$EntryIterator;->this$0:Lorg/apache/commons/collections/ReferenceMap;

    invoke-static {v2}, Lorg/apache/commons/collections/ReferenceMap;->access$700(Lorg/apache/commons/collections/ReferenceMap;)[Lorg/apache/commons/collections/ReferenceMap$Entry;

    move-result-object v2

    aget-object v0, v2, v1

    goto :goto_2

    .line 855
    :cond_4
    invoke-virtual {v0}, Lorg/apache/commons/collections/ReferenceMap$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/commons/collections/ReferenceMap$EntryIterator;->nextKey:Ljava/lang/Object;

    .line 856
    invoke-virtual {v0}, Lorg/apache/commons/collections/ReferenceMap$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/commons/collections/ReferenceMap$EntryIterator;->nextValue:Ljava/lang/Object;

    .line 857
    invoke-direct {p0}, Lorg/apache/commons/collections/ReferenceMap$EntryIterator;->nextNull()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/apache/commons/collections/ReferenceMap$EntryIterator;->entry:Lorg/apache/commons/collections/ReferenceMap$Entry;

    iget-object v2, v2, Lorg/apache/commons/collections/ReferenceMap$Entry;->next:Lorg/apache/commons/collections/ReferenceMap$Entry;

    iput-object v2, p0, Lorg/apache/commons/collections/ReferenceMap$EntryIterator;->entry:Lorg/apache/commons/collections/ReferenceMap$Entry;

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 888
    invoke-virtual {p0}, Lorg/apache/commons/collections/ReferenceMap$EntryIterator;->nextEntry()Lorg/apache/commons/collections/ReferenceMap$Entry;

    move-result-object v0

    return-object v0
.end method

.method protected nextEntry()Lorg/apache/commons/collections/ReferenceMap$Entry;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 875
    invoke-direct {p0}, Lorg/apache/commons/collections/ReferenceMap$EntryIterator;->checkMod()V

    .line 876
    invoke-direct {p0}, Lorg/apache/commons/collections/ReferenceMap$EntryIterator;->nextNull()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/collections/ReferenceMap$EntryIterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 877
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/ReferenceMap$EntryIterator;->entry:Lorg/apache/commons/collections/ReferenceMap$Entry;

    iput-object v0, p0, Lorg/apache/commons/collections/ReferenceMap$EntryIterator;->previous:Lorg/apache/commons/collections/ReferenceMap$Entry;

    .line 878
    iget-object v0, p0, Lorg/apache/commons/collections/ReferenceMap$EntryIterator;->entry:Lorg/apache/commons/collections/ReferenceMap$Entry;

    iget-object v0, v0, Lorg/apache/commons/collections/ReferenceMap$Entry;->next:Lorg/apache/commons/collections/ReferenceMap$Entry;

    iput-object v0, p0, Lorg/apache/commons/collections/ReferenceMap$EntryIterator;->entry:Lorg/apache/commons/collections/ReferenceMap$Entry;

    .line 879
    iget-object v0, p0, Lorg/apache/commons/collections/ReferenceMap$EntryIterator;->nextKey:Ljava/lang/Object;

    iput-object v0, p0, Lorg/apache/commons/collections/ReferenceMap$EntryIterator;->currentKey:Ljava/lang/Object;

    .line 880
    iget-object v0, p0, Lorg/apache/commons/collections/ReferenceMap$EntryIterator;->nextValue:Ljava/lang/Object;

    iput-object v0, p0, Lorg/apache/commons/collections/ReferenceMap$EntryIterator;->currentValue:Ljava/lang/Object;

    .line 881
    iput-object v1, p0, Lorg/apache/commons/collections/ReferenceMap$EntryIterator;->nextKey:Ljava/lang/Object;

    .line 882
    iput-object v1, p0, Lorg/apache/commons/collections/ReferenceMap$EntryIterator;->nextValue:Ljava/lang/Object;

    .line 883
    iget-object v0, p0, Lorg/apache/commons/collections/ReferenceMap$EntryIterator;->previous:Lorg/apache/commons/collections/ReferenceMap$Entry;

    return-object v0
.end method

.method public remove()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 893
    invoke-direct {p0}, Lorg/apache/commons/collections/ReferenceMap$EntryIterator;->checkMod()V

    .line 894
    iget-object v0, p0, Lorg/apache/commons/collections/ReferenceMap$EntryIterator;->previous:Lorg/apache/commons/collections/ReferenceMap$Entry;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 895
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/ReferenceMap$EntryIterator;->this$0:Lorg/apache/commons/collections/ReferenceMap;

    iget-object v1, p0, Lorg/apache/commons/collections/ReferenceMap$EntryIterator;->currentKey:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/apache/commons/collections/ReferenceMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 896
    iput-object v2, p0, Lorg/apache/commons/collections/ReferenceMap$EntryIterator;->previous:Lorg/apache/commons/collections/ReferenceMap$Entry;

    .line 897
    iput-object v2, p0, Lorg/apache/commons/collections/ReferenceMap$EntryIterator;->currentKey:Ljava/lang/Object;

    .line 898
    iput-object v2, p0, Lorg/apache/commons/collections/ReferenceMap$EntryIterator;->currentValue:Ljava/lang/Object;

    .line 899
    iget-object v0, p0, Lorg/apache/commons/collections/ReferenceMap$EntryIterator;->this$0:Lorg/apache/commons/collections/ReferenceMap;

    invoke-static {v0}, Lorg/apache/commons/collections/ReferenceMap;->access$800(Lorg/apache/commons/collections/ReferenceMap;)I

    move-result v0

    iput v0, p0, Lorg/apache/commons/collections/ReferenceMap$EntryIterator;->expectedModCount:I

    .line 900
    return-void
.end method
