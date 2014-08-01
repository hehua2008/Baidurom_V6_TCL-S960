.class Lorg/apache/commons/collections/list/TreeList$TreeListIterator;
.super Ljava/lang/Object;
.source "TreeList.java"

# interfaces
.implements Ljava/util/ListIterator;
.implements Lorg/apache/commons/collections/OrderedIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections/list/TreeList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TreeListIterator"
.end annotation


# instance fields
.field protected current:Lorg/apache/commons/collections/list/TreeList$AVLNode;

.field protected currentIndex:I

.field protected expectedModCount:I

.field protected next:Lorg/apache/commons/collections/list/TreeList$AVLNode;

.field protected nextIndex:I

.field protected final parent:Lorg/apache/commons/collections/list/TreeList;


# direct methods
.method protected constructor <init>(Lorg/apache/commons/collections/list/TreeList;I)V
    .locals 1
    .parameter "parent"
    .parameter "fromIndex"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 788
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 789
    iput-object p1, p0, Lorg/apache/commons/collections/list/TreeList$TreeListIterator;->parent:Lorg/apache/commons/collections/list/TreeList;

    .line 790
    invoke-static {p1}, Lorg/apache/commons/collections/list/TreeList;->access$301(Lorg/apache/commons/collections/list/TreeList;)I

    move-result v0

    iput v0, p0, Lorg/apache/commons/collections/list/TreeList$TreeListIterator;->expectedModCount:I

    .line 791
    invoke-static {p1}, Lorg/apache/commons/collections/list/TreeList;->access$400(Lorg/apache/commons/collections/list/TreeList;)Lorg/apache/commons/collections/list/TreeList$AVLNode;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lorg/apache/commons/collections/list/TreeList$TreeListIterator;->next:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    .line 792
    iput p2, p0, Lorg/apache/commons/collections/list/TreeList$TreeListIterator;->nextIndex:I

    .line 793
    return-void

    .line 791
    :cond_0
    invoke-static {p1}, Lorg/apache/commons/collections/list/TreeList;->access$400(Lorg/apache/commons/collections/list/TreeList;)Lorg/apache/commons/collections/list/TreeList$AVLNode;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->get(I)Lorg/apache/commons/collections/list/TreeList$AVLNode;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 2
    .parameter "obj"

    .prologue
    .line 876
    invoke-virtual {p0}, Lorg/apache/commons/collections/list/TreeList$TreeListIterator;->checkModCount()V

    .line 877
    iget-object v0, p0, Lorg/apache/commons/collections/list/TreeList$TreeListIterator;->parent:Lorg/apache/commons/collections/list/TreeList;

    iget v1, p0, Lorg/apache/commons/collections/list/TreeList$TreeListIterator;->nextIndex:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/commons/collections/list/TreeList;->add(ILjava/lang/Object;)V

    .line 878
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/collections/list/TreeList$TreeListIterator;->current:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    .line 879
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/commons/collections/list/TreeList$TreeListIterator;->currentIndex:I

    .line 880
    iget v0, p0, Lorg/apache/commons/collections/list/TreeList$TreeListIterator;->nextIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/collections/list/TreeList$TreeListIterator;->nextIndex:I

    .line 881
    iget v0, p0, Lorg/apache/commons/collections/list/TreeList$TreeListIterator;->expectedModCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/collections/list/TreeList$TreeListIterator;->expectedModCount:I

    .line 882
    return-void
.end method

.method protected checkModCount()V
    .locals 2

    .prologue
    .line 803
    iget-object v0, p0, Lorg/apache/commons/collections/list/TreeList$TreeListIterator;->parent:Lorg/apache/commons/collections/list/TreeList;

    invoke-static {v0}, Lorg/apache/commons/collections/list/TreeList;->access$501(Lorg/apache/commons/collections/list/TreeList;)I

    move-result v0

    iget v1, p0, Lorg/apache/commons/collections/list/TreeList$TreeListIterator;->expectedModCount:I

    if-eq v0, v1, :cond_0

    .line 804
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 806
    :cond_0
    return-void
.end method

.method public hasNext()Z
    .locals 2

    .prologue
    .line 809
    iget v0, p0, Lorg/apache/commons/collections/list/TreeList$TreeListIterator;->nextIndex:I

    iget-object v1, p0, Lorg/apache/commons/collections/list/TreeList$TreeListIterator;->parent:Lorg/apache/commons/collections/list/TreeList;

    invoke-virtual {v1}, Lorg/apache/commons/collections/list/TreeList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPrevious()Z
    .locals 1

    .prologue
    .line 828
    iget v0, p0, Lorg/apache/commons/collections/list/TreeList$TreeListIterator;->nextIndex:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 813
    invoke-virtual {p0}, Lorg/apache/commons/collections/list/TreeList$TreeListIterator;->checkModCount()V

    .line 814
    invoke-virtual {p0}, Lorg/apache/commons/collections/list/TreeList$TreeListIterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 815
    new-instance v1, Ljava/util/NoSuchElementException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "No element at index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Lorg/apache/commons/collections/list/TreeList$TreeListIterator;->nextIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 817
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/collections/list/TreeList$TreeListIterator;->next:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    if-nez v1, :cond_1

    .line 818
    iget-object v1, p0, Lorg/apache/commons/collections/list/TreeList$TreeListIterator;->parent:Lorg/apache/commons/collections/list/TreeList;

    invoke-static {v1}, Lorg/apache/commons/collections/list/TreeList;->access$400(Lorg/apache/commons/collections/list/TreeList;)Lorg/apache/commons/collections/list/TreeList$AVLNode;

    move-result-object v1

    iget v2, p0, Lorg/apache/commons/collections/list/TreeList$TreeListIterator;->nextIndex:I

    invoke-virtual {v1, v2}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->get(I)Lorg/apache/commons/collections/list/TreeList$AVLNode;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/collections/list/TreeList$TreeListIterator;->next:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    .line 820
    :cond_1
    iget-object v1, p0, Lorg/apache/commons/collections/list/TreeList$TreeListIterator;->next:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    invoke-virtual {v1}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 821
    .local v0, value:Ljava/lang/Object;
    iget-object v1, p0, Lorg/apache/commons/collections/list/TreeList$TreeListIterator;->next:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    iput-object v1, p0, Lorg/apache/commons/collections/list/TreeList$TreeListIterator;->current:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    .line 822
    iget v1, p0, Lorg/apache/commons/collections/list/TreeList$TreeListIterator;->nextIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/commons/collections/list/TreeList$TreeListIterator;->nextIndex:I

    iput v1, p0, Lorg/apache/commons/collections/list/TreeList$TreeListIterator;->currentIndex:I

    .line 823
    iget-object v1, p0, Lorg/apache/commons/collections/list/TreeList$TreeListIterator;->next:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    invoke-virtual {v1}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->next()Lorg/apache/commons/collections/list/TreeList$AVLNode;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/collections/list/TreeList$TreeListIterator;->next:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    .line 824
    return-object v0
.end method

.method public nextIndex()I
    .locals 1

    .prologue
    .line 848
    iget v0, p0, Lorg/apache/commons/collections/list/TreeList$TreeListIterator;->nextIndex:I

    return v0
.end method

.method public previous()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 832
    invoke-virtual {p0}, Lorg/apache/commons/collections/list/TreeList$TreeListIterator;->checkModCount()V

    .line 833
    invoke-virtual {p0}, Lorg/apache/commons/collections/list/TreeList$TreeListIterator;->hasPrevious()Z

    move-result v1

    if-nez v1, :cond_0

    .line 834
    new-instance v1, Ljava/util/NoSuchElementException;

    const-string v2, "Already at start of list."

    invoke-direct {v1, v2}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 836
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/collections/list/TreeList$TreeListIterator;->next:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    if-nez v1, :cond_1

    .line 837
    iget-object v1, p0, Lorg/apache/commons/collections/list/TreeList$TreeListIterator;->parent:Lorg/apache/commons/collections/list/TreeList;

    invoke-static {v1}, Lorg/apache/commons/collections/list/TreeList;->access$400(Lorg/apache/commons/collections/list/TreeList;)Lorg/apache/commons/collections/list/TreeList$AVLNode;

    move-result-object v1

    iget v2, p0, Lorg/apache/commons/collections/list/TreeList$TreeListIterator;->nextIndex:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->get(I)Lorg/apache/commons/collections/list/TreeList$AVLNode;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/collections/list/TreeList$TreeListIterator;->next:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    .line 841
    :goto_0
    iget-object v1, p0, Lorg/apache/commons/collections/list/TreeList$TreeListIterator;->next:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    invoke-virtual {v1}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 842
    .local v0, value:Ljava/lang/Object;
    iget-object v1, p0, Lorg/apache/commons/collections/list/TreeList$TreeListIterator;->next:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    iput-object v1, p0, Lorg/apache/commons/collections/list/TreeList$TreeListIterator;->current:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    .line 843
    iget v1, p0, Lorg/apache/commons/collections/list/TreeList$TreeListIterator;->nextIndex:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/apache/commons/collections/list/TreeList$TreeListIterator;->nextIndex:I

    iput v1, p0, Lorg/apache/commons/collections/list/TreeList$TreeListIterator;->currentIndex:I

    .line 844
    return-object v0

    .line 839
    .end local v0           #value:Ljava/lang/Object;
    :cond_1
    iget-object v1, p0, Lorg/apache/commons/collections/list/TreeList$TreeListIterator;->next:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    invoke-virtual {v1}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->previous()Lorg/apache/commons/collections/list/TreeList$AVLNode;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/collections/list/TreeList$TreeListIterator;->next:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    goto :goto_0
.end method

.method public previousIndex()I
    .locals 1

    .prologue
    .line 852
    invoke-virtual {p0}, Lorg/apache/commons/collections/list/TreeList$TreeListIterator;->nextIndex()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 856
    invoke-virtual {p0}, Lorg/apache/commons/collections/list/TreeList$TreeListIterator;->checkModCount()V

    .line 857
    iget-object v0, p0, Lorg/apache/commons/collections/list/TreeList$TreeListIterator;->current:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    if-nez v0, :cond_0

    .line 858
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 860
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/list/TreeList$TreeListIterator;->parent:Lorg/apache/commons/collections/list/TreeList;

    iget v1, p0, Lorg/apache/commons/collections/list/TreeList$TreeListIterator;->currentIndex:I

    invoke-virtual {v0, v1}, Lorg/apache/commons/collections/list/TreeList;->remove(I)Ljava/lang/Object;

    .line 861
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/collections/list/TreeList$TreeListIterator;->current:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    .line 862
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/commons/collections/list/TreeList$TreeListIterator;->currentIndex:I

    .line 863
    iget v0, p0, Lorg/apache/commons/collections/list/TreeList$TreeListIterator;->nextIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/commons/collections/list/TreeList$TreeListIterator;->nextIndex:I

    .line 864
    iget v0, p0, Lorg/apache/commons/collections/list/TreeList$TreeListIterator;->expectedModCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/collections/list/TreeList$TreeListIterator;->expectedModCount:I

    .line 865
    return-void
.end method

.method public set(Ljava/lang/Object;)V
    .locals 1
    .parameter "obj"

    .prologue
    .line 868
    invoke-virtual {p0}, Lorg/apache/commons/collections/list/TreeList$TreeListIterator;->checkModCount()V

    .line 869
    iget-object v0, p0, Lorg/apache/commons/collections/list/TreeList$TreeListIterator;->current:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    if-nez v0, :cond_0

    .line 870
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 872
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/list/TreeList$TreeListIterator;->current:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->setValue(Ljava/lang/Object;)V

    .line 873
    return-void
.end method
