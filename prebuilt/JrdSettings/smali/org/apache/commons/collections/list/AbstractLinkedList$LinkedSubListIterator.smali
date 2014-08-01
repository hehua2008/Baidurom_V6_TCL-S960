.class public Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedSubListIterator;
.super Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedListIterator;
.source "AbstractLinkedList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections/list/AbstractLinkedList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "LinkedSubListIterator"
.end annotation


# instance fields
.field protected final sub:Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedSubList;


# direct methods
.method protected constructor <init>(Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedSubList;I)V
    .locals 2
    .parameter "sub"
    .parameter "startIndex"

    .prologue
    .line 853
    invoke-static {p1}, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedSubList;->access$000(Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedSubList;)Lorg/apache/commons/collections/list/AbstractLinkedList;

    move-result-object v0

    invoke-static {p1}, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedSubList;->access$100(Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedSubList;)I

    move-result v1

    add-int/2addr v1, p2

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedListIterator;-><init>(Lorg/apache/commons/collections/list/AbstractLinkedList;I)V

    .line 854
    iput-object p1, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedSubListIterator;->sub:Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedSubList;

    .line 855
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 2
    .parameter "obj"

    .prologue
    .line 870
    invoke-super {p0, p1}, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedListIterator;->add(Ljava/lang/Object;)V

    .line 871
    iget-object v0, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedSubListIterator;->sub:Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedSubList;

    iget-object v1, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedListIterator;->parent:Lorg/apache/commons/collections/list/AbstractLinkedList;

    iget v1, v1, Lorg/apache/commons/collections/list/AbstractLinkedList;->modCount:I

    invoke-static {v0, v1}, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedSubList;->access$302(Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedSubList;I)I

    .line 872
    iget-object v0, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedSubListIterator;->sub:Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedSubList;

    invoke-static {v0}, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedSubList;->access$208(Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedSubList;)I

    .line 873
    return-void
.end method

.method public hasNext()Z
    .locals 2

    .prologue
    .line 858
    invoke-virtual {p0}, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedSubListIterator;->nextIndex()I

    move-result v0

    iget-object v1, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedSubListIterator;->sub:Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedSubList;

    invoke-static {v1}, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedSubList;->access$200(Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedSubList;)I

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
    .line 862
    invoke-virtual {p0}, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedListIterator;->previousIndex()I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public nextIndex()I
    .locals 2

    .prologue
    .line 866
    invoke-super {p0}, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedListIterator;->nextIndex()I

    move-result v0

    iget-object v1, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedSubListIterator;->sub:Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedSubList;

    invoke-static {v1}, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedSubList;->access$100(Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedSubList;)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 876
    invoke-super {p0}, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedListIterator;->remove()V

    .line 877
    iget-object v0, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedSubListIterator;->sub:Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedSubList;

    iget-object v1, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedListIterator;->parent:Lorg/apache/commons/collections/list/AbstractLinkedList;

    iget v1, v1, Lorg/apache/commons/collections/list/AbstractLinkedList;->modCount:I

    invoke-static {v0, v1}, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedSubList;->access$302(Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedSubList;I)I

    .line 878
    iget-object v0, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedSubListIterator;->sub:Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedSubList;

    invoke-static {v0}, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedSubList;->access$210(Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedSubList;)I

    .line 879
    return-void
.end method
