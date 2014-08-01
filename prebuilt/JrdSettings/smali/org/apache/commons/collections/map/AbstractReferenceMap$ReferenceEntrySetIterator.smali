.class Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntrySetIterator;
.super Ljava/lang/Object;
.source "AbstractReferenceMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections/map/AbstractReferenceMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ReferenceEntrySetIterator"
.end annotation


# instance fields
.field currentKey:Ljava/lang/Object;

.field currentValue:Ljava/lang/Object;

.field entry:Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntry;

.field expectedModCount:I

.field index:I

.field nextKey:Ljava/lang/Object;

.field nextValue:Ljava/lang/Object;

.field final parent:Lorg/apache/commons/collections/map/AbstractReferenceMap;

.field previous:Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntry;


# direct methods
.method public constructor <init>(Lorg/apache/commons/collections/map/AbstractReferenceMap;)V
    .locals 1
    .parameter "parent"

    .prologue
    .line 726
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 727
    iput-object p1, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntrySetIterator;->parent:Lorg/apache/commons/collections/map/AbstractReferenceMap;

    .line 728
    invoke-virtual {p1}, Lorg/apache/commons/collections/map/AbstractReferenceMap;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lorg/apache/commons/collections/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    array-length v0, v0

    :goto_0
    iput v0, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntrySetIterator;->index:I

    .line 731
    iget v0, p1, Lorg/apache/commons/collections/map/AbstractHashedMap;->modCount:I

    iput v0, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntrySetIterator;->expectedModCount:I

    .line 732
    return-void

    .line 728
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkMod()V
    .locals 2

    .prologue
    .line 760
    iget-object v0, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntrySetIterator;->parent:Lorg/apache/commons/collections/map/AbstractReferenceMap;

    iget v0, v0, Lorg/apache/commons/collections/map/AbstractHashedMap;->modCount:I

    iget v1, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntrySetIterator;->expectedModCount:I

    if-eq v0, v1, :cond_0

    .line 761
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 763
    :cond_0
    return-void
.end method

.method private nextNull()Z
    .locals 1

    .prologue
    .line 766
    iget-object v0, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntrySetIterator;->nextKey:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntrySetIterator;->nextValue:Ljava/lang/Object;

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
.method protected currentEntry()Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntry;
    .locals 1

    .prologue
    .line 784
    invoke-direct {p0}, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntrySetIterator;->checkMod()V

    .line 785
    iget-object v0, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntrySetIterator;->previous:Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntry;

    return-object v0
.end method

.method public hasNext()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 735
    invoke-direct {p0}, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntrySetIterator;->checkMod()V

    .line 736
    :cond_0
    :goto_0
    invoke-direct {p0}, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntrySetIterator;->nextNull()Z

    move-result v2

    if-nez v2, :cond_1

    .line 756
    const/4 v2, 0x1

    :goto_1
    return v2

    .line 737
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntrySetIterator;->entry:Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntry;

    .line 738
    .local v0, e:Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntry;
    iget v1, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntrySetIterator;->index:I

    .line 739
    .local v1, i:I
    :goto_2
    if-nez v0, :cond_2

    if-gtz v1, :cond_3

    .line 743
    :cond_2
    iput-object v0, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntrySetIterator;->entry:Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntry;

    .line 744
    iput v1, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntrySetIterator;->index:I

    .line 745
    if-nez v0, :cond_4

    .line 746
    iput-object v3, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntrySetIterator;->currentKey:Ljava/lang/Object;

    .line 747
    iput-object v3, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntrySetIterator;->currentValue:Ljava/lang/Object;

    .line 748
    const/4 v2, 0x0

    goto :goto_1

    .line 740
    :cond_3
    add-int/lit8 v1, v1, -0x1

    .line 741
    iget-object v2, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntrySetIterator;->parent:Lorg/apache/commons/collections/map/AbstractReferenceMap;

    iget-object v2, v2, Lorg/apache/commons/collections/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    aget-object v0, v2, v1

    .end local v0           #e:Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntry;
    check-cast v0, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntry;

    .restart local v0       #e:Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntry;
    goto :goto_2

    .line 750
    :cond_4
    invoke-virtual {v0}, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntrySetIterator;->nextKey:Ljava/lang/Object;

    .line 751
    invoke-virtual {v0}, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntry;->getValue()Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntrySetIterator;->nextValue:Ljava/lang/Object;

    .line 752
    invoke-direct {p0}, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntrySetIterator;->nextNull()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 753
    iget-object v2, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntrySetIterator;->entry:Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntry;

    invoke-virtual {v2}, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntry;->next()Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntry;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntrySetIterator;->entry:Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntry;

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 789
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntrySetIterator;->nextEntry()Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntry;

    move-result-object v0

    return-object v0
.end method

.method protected nextEntry()Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntry;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 770
    invoke-direct {p0}, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntrySetIterator;->checkMod()V

    .line 771
    invoke-direct {p0}, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntrySetIterator;->nextNull()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntrySetIterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 772
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 774
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntrySetIterator;->entry:Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntry;

    iput-object v0, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntrySetIterator;->previous:Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntry;

    .line 775
    iget-object v0, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntrySetIterator;->entry:Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntry;

    invoke-virtual {v0}, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntry;->next()Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntry;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntrySetIterator;->entry:Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntry;

    .line 776
    iget-object v0, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntrySetIterator;->nextKey:Ljava/lang/Object;

    iput-object v0, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntrySetIterator;->currentKey:Ljava/lang/Object;

    .line 777
    iget-object v0, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntrySetIterator;->nextValue:Ljava/lang/Object;

    iput-object v0, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntrySetIterator;->currentValue:Ljava/lang/Object;

    .line 778
    iput-object v1, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntrySetIterator;->nextKey:Ljava/lang/Object;

    .line 779
    iput-object v1, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntrySetIterator;->nextValue:Ljava/lang/Object;

    .line 780
    iget-object v0, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntrySetIterator;->previous:Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntry;

    return-object v0
.end method

.method public remove()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 793
    invoke-direct {p0}, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntrySetIterator;->checkMod()V

    .line 794
    iget-object v0, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntrySetIterator;->previous:Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntry;

    if-nez v0, :cond_0

    .line 795
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 797
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntrySetIterator;->parent:Lorg/apache/commons/collections/map/AbstractReferenceMap;

    iget-object v1, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntrySetIterator;->currentKey:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/apache/commons/collections/map/AbstractReferenceMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 798
    iput-object v2, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntrySetIterator;->previous:Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntry;

    .line 799
    iput-object v2, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntrySetIterator;->currentKey:Ljava/lang/Object;

    .line 800
    iput-object v2, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntrySetIterator;->currentValue:Ljava/lang/Object;

    .line 801
    iget-object v0, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntrySetIterator;->parent:Lorg/apache/commons/collections/map/AbstractReferenceMap;

    iget v0, v0, Lorg/apache/commons/collections/map/AbstractHashedMap;->modCount:I

    iput v0, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntrySetIterator;->expectedModCount:I

    .line 802
    return-void
.end method
