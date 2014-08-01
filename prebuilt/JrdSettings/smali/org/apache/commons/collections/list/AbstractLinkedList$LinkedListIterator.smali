.class public Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedListIterator;
.super Ljava/lang/Object;
.source "AbstractLinkedList.java"

# interfaces
.implements Ljava/util/ListIterator;
.implements Lorg/apache/commons/collections/OrderedIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections/list/AbstractLinkedList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "LinkedListIterator"
.end annotation


# instance fields
.field protected current:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

.field protected expectedModCount:I

.field protected next:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

.field protected nextIndex:I

.field protected final parent:Lorg/apache/commons/collections/list/AbstractLinkedList;


# direct methods
.method protected constructor <init>(Lorg/apache/commons/collections/list/AbstractLinkedList;I)V
    .locals 1
    .parameter "parent"
    .parameter "fromIndex"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 745
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 746
    iput-object p1, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedListIterator;->parent:Lorg/apache/commons/collections/list/AbstractLinkedList;

    .line 747
    iget v0, p1, Lorg/apache/commons/collections/list/AbstractLinkedList;->modCount:I

    iput v0, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedListIterator;->expectedModCount:I

    .line 748
    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Lorg/apache/commons/collections/list/AbstractLinkedList;->getNode(IZ)Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedListIterator;->next:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    .line 749
    iput p2, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedListIterator;->nextIndex:I

    .line 750
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 2
    .parameter "obj"

    .prologue
    .line 834
    invoke-virtual {p0}, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedListIterator;->checkModCount()V

    .line 835
    iget-object v0, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedListIterator;->parent:Lorg/apache/commons/collections/list/AbstractLinkedList;

    iget-object v1, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedListIterator;->next:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    invoke-virtual {v0, v1, p1}, Lorg/apache/commons/collections/list/AbstractLinkedList;->addNodeBefore(Lorg/apache/commons/collections/list/AbstractLinkedList$Node;Ljava/lang/Object;)V

    .line 836
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedListIterator;->current:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    .line 837
    iget v0, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedListIterator;->nextIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedListIterator;->nextIndex:I

    .line 838
    iget v0, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedListIterator;->expectedModCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedListIterator;->expectedModCount:I

    .line 839
    return-void
.end method

.method protected checkModCount()V
    .locals 2

    .prologue
    .line 760
    iget-object v0, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedListIterator;->parent:Lorg/apache/commons/collections/list/AbstractLinkedList;

    iget v0, v0, Lorg/apache/commons/collections/list/AbstractLinkedList;->modCount:I

    iget v1, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedListIterator;->expectedModCount:I

    if-eq v0, v1, :cond_0

    .line 761
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 763
    :cond_0
    return-void
.end method

.method protected getLastNodeReturned()Lorg/apache/commons/collections/list/AbstractLinkedList$Node;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 773
    iget-object v0, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedListIterator;->current:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    if-nez v0, :cond_0

    .line 774
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 776
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedListIterator;->current:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    return-object v0
.end method

.method public hasNext()Z
    .locals 2

    .prologue
    .line 780
    iget-object v0, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedListIterator;->next:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    iget-object v1, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedListIterator;->parent:Lorg/apache/commons/collections/list/AbstractLinkedList;

    iget-object v1, v1, Lorg/apache/commons/collections/list/AbstractLinkedList;->header:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPrevious()Z
    .locals 2

    .prologue
    .line 796
    iget-object v0, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedListIterator;->next:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    iget-object v0, v0, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->previous:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    iget-object v1, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedListIterator;->parent:Lorg/apache/commons/collections/list/AbstractLinkedList;

    iget-object v1, v1, Lorg/apache/commons/collections/list/AbstractLinkedList;->header:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    if-eq v0, v1, :cond_0

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
    .line 784
    invoke-virtual {p0}, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedListIterator;->checkModCount()V

    .line 785
    invoke-virtual {p0}, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedListIterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 786
    new-instance v1, Ljava/util/NoSuchElementException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "No element at index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedListIterator;->nextIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 788
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedListIterator;->next:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    invoke-virtual {v1}, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 789
    .local v0, value:Ljava/lang/Object;
    iget-object v1, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedListIterator;->next:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    iput-object v1, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedListIterator;->current:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    .line 790
    iget-object v1, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedListIterator;->next:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    iget-object v1, v1, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->next:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    iput-object v1, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedListIterator;->next:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    .line 791
    iget v1, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedListIterator;->nextIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedListIterator;->nextIndex:I

    .line 792
    return-object v0
.end method

.method public nextIndex()I
    .locals 1

    .prologue
    .line 812
    iget v0, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedListIterator;->nextIndex:I

    return v0
.end method

.method public previous()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 800
    invoke-virtual {p0}, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedListIterator;->checkModCount()V

    .line 801
    invoke-virtual {p0}, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedListIterator;->hasPrevious()Z

    move-result v1

    if-nez v1, :cond_0

    .line 802
    new-instance v1, Ljava/util/NoSuchElementException;

    const-string v2, "Already at start of list."

    invoke-direct {v1, v2}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 804
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedListIterator;->next:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    iget-object v1, v1, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->previous:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    iput-object v1, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedListIterator;->next:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    .line 805
    iget-object v1, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedListIterator;->next:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    invoke-virtual {v1}, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 806
    .local v0, value:Ljava/lang/Object;
    iget-object v1, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedListIterator;->next:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    iput-object v1, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedListIterator;->current:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    .line 807
    iget v1, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedListIterator;->nextIndex:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedListIterator;->nextIndex:I

    .line 808
    return-object v0
.end method

.method public previousIndex()I
    .locals 1

    .prologue
    .line 817
    invoke-virtual {p0}, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedListIterator;->nextIndex()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 821
    invoke-virtual {p0}, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedListIterator;->checkModCount()V

    .line 822
    iget-object v0, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedListIterator;->parent:Lorg/apache/commons/collections/list/AbstractLinkedList;

    invoke-virtual {p0}, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedListIterator;->getLastNodeReturned()Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/collections/list/AbstractLinkedList;->removeNode(Lorg/apache/commons/collections/list/AbstractLinkedList$Node;)V

    .line 823
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedListIterator;->current:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    .line 824
    iget v0, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedListIterator;->nextIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedListIterator;->nextIndex:I

    .line 825
    iget v0, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedListIterator;->expectedModCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedListIterator;->expectedModCount:I

    .line 826
    return-void
.end method

.method public set(Ljava/lang/Object;)V
    .locals 1
    .parameter "obj"

    .prologue
    .line 829
    invoke-virtual {p0}, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedListIterator;->checkModCount()V

    .line 830
    invoke-virtual {p0}, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedListIterator;->getLastNodeReturned()Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->setValue(Ljava/lang/Object;)V

    .line 831
    return-void
.end method
