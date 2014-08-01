.class Lorg/apache/commons/collections/CursorableLinkedList$ListIter;
.super Ljava/lang/Object;
.source "CursorableLinkedList.java"

# interfaces
.implements Ljava/util/ListIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections/CursorableLinkedList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ListIter"
.end annotation


# instance fields
.field _cur:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

.field _expectedModCount:I

.field _lastReturned:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

.field _nextIndex:I

.field private final this$0:Lorg/apache/commons/collections/CursorableLinkedList;


# direct methods
.method constructor <init>(Lorg/apache/commons/collections/CursorableLinkedList;I)V
    .locals 5
    .parameter "this$0"
    .parameter "index"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1000
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->this$0:Lorg/apache/commons/collections/CursorableLinkedList;

    .line 995
    iput-object v3, p0, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->_cur:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    .line 996
    iput-object v3, p0, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->_lastReturned:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    .line 997
    iget-object v1, p0, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->this$0:Lorg/apache/commons/collections/CursorableLinkedList;

    iget v1, v1, Lorg/apache/commons/collections/CursorableLinkedList;->_modCount:I

    iput v1, p0, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->_expectedModCount:I

    .line 998
    iput v4, p0, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->_nextIndex:I

    .line 1001
    if-nez p2, :cond_0

    .line 1002
    new-instance v1, Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    iget-object v2, p1, Lorg/apache/commons/collections/CursorableLinkedList;->_head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v2}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->next()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v2

    invoke-direct {v1, v3, v2, v3}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;-><init>(Lorg/apache/commons/collections/CursorableLinkedList$Listable;Lorg/apache/commons/collections/CursorableLinkedList$Listable;Ljava/lang/Object;)V

    iput-object v1, p0, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->_cur:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    .line 1003
    iput v4, p0, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->_nextIndex:I

    .line 1012
    :goto_0
    return-void

    .line 1004
    :cond_0
    iget v1, p1, Lorg/apache/commons/collections/CursorableLinkedList;->_size:I

    if-ne p2, v1, :cond_1

    .line 1005
    new-instance v1, Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    iget-object v2, p1, Lorg/apache/commons/collections/CursorableLinkedList;->_head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v2}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->prev()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v2

    invoke-direct {v1, v2, v3, v3}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;-><init>(Lorg/apache/commons/collections/CursorableLinkedList$Listable;Lorg/apache/commons/collections/CursorableLinkedList$Listable;Ljava/lang/Object;)V

    iput-object v1, p0, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->_cur:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    .line 1006
    iget v1, p1, Lorg/apache/commons/collections/CursorableLinkedList;->_size:I

    iput v1, p0, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->_nextIndex:I

    goto :goto_0

    .line 1008
    :cond_1
    invoke-virtual {p1, p2}, Lorg/apache/commons/collections/CursorableLinkedList;->getListableAt(I)Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v0

    .line 1009
    .local v0, temp:Lorg/apache/commons/collections/CursorableLinkedList$Listable;
    new-instance v1, Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v0}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->prev()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v2

    invoke-direct {v1, v2, v0, v3}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;-><init>(Lorg/apache/commons/collections/CursorableLinkedList$Listable;Lorg/apache/commons/collections/CursorableLinkedList$Listable;Ljava/lang/Object;)V

    iput-object v1, p0, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->_cur:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    .line 1010
    iput p2, p0, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->_nextIndex:I

    goto :goto_0
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 4
    .parameter "o"

    .prologue
    .line 1092
    invoke-virtual {p0}, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->checkForComod()V

    .line 1093
    iget-object v0, p0, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->_cur:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    iget-object v1, p0, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->this$0:Lorg/apache/commons/collections/CursorableLinkedList;

    iget-object v2, p0, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->_cur:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v2}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->prev()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->_cur:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v3}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->next()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v3

    invoke-virtual {v1, v2, v3, p1}, Lorg/apache/commons/collections/CursorableLinkedList;->insertListable(Lorg/apache/commons/collections/CursorableLinkedList$Listable;Lorg/apache/commons/collections/CursorableLinkedList$Listable;Ljava/lang/Object;)Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->setPrev(Lorg/apache/commons/collections/CursorableLinkedList$Listable;)V

    .line 1094
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->_lastReturned:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    .line 1095
    iget v0, p0, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->_nextIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->_nextIndex:I

    .line 1096
    iget v0, p0, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->_expectedModCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->_expectedModCount:I

    .line 1097
    return-void
.end method

.method protected checkForComod()V
    .locals 2

    .prologue
    .line 1100
    iget v0, p0, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->_expectedModCount:I

    iget-object v1, p0, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->this$0:Lorg/apache/commons/collections/CursorableLinkedList;

    iget v1, v1, Lorg/apache/commons/collections/CursorableLinkedList;->_modCount:I

    if-eq v0, v1, :cond_0

    .line 1101
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 1103
    :cond_0
    return-void
.end method

.method public hasNext()Z
    .locals 2

    .prologue
    .line 1029
    invoke-virtual {p0}, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->checkForComod()V

    .line 1030
    iget-object v0, p0, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->_cur:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v0}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->next()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->_cur:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v0}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->prev()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->this$0:Lorg/apache/commons/collections/CursorableLinkedList;

    iget-object v1, v1, Lorg/apache/commons/collections/CursorableLinkedList;->_head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v1}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->prev()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v1

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
    .line 1056
    invoke-virtual {p0}, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->checkForComod()V

    .line 1057
    iget-object v0, p0, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->_cur:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v0}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->prev()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->_cur:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v0}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->next()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->this$0:Lorg/apache/commons/collections/CursorableLinkedList;

    iget-object v1, v1, Lorg/apache/commons/collections/CursorableLinkedList;->_head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v1}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->next()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 1034
    invoke-virtual {p0}, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->checkForComod()V

    .line 1035
    invoke-virtual {p0}, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1036
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 1038
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->_cur:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v1}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->next()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->value()Ljava/lang/Object;

    move-result-object v0

    .line 1039
    .local v0, ret:Ljava/lang/Object;
    iget-object v1, p0, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->_cur:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v1}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->next()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->_lastReturned:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    .line 1040
    iget-object v1, p0, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->_cur:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    iget-object v2, p0, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->_cur:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v2}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->next()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->setPrev(Lorg/apache/commons/collections/CursorableLinkedList$Listable;)V

    .line 1041
    iget-object v1, p0, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->_cur:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    iget-object v2, p0, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->_cur:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v2}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->next()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->next()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->setNext(Lorg/apache/commons/collections/CursorableLinkedList$Listable;)V

    .line 1042
    iget v1, p0, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->_nextIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->_nextIndex:I

    .line 1043
    return-object v0
.end method

.method public nextIndex()I
    .locals 1

    .prologue
    .line 1070
    invoke-virtual {p0}, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->checkForComod()V

    .line 1071
    invoke-virtual {p0}, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1072
    iget-object v0, p0, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->this$0:Lorg/apache/commons/collections/CursorableLinkedList;

    invoke-virtual {v0}, Lorg/apache/commons/collections/CursorableLinkedList;->size()I

    move-result v0

    .line 1074
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->_nextIndex:I

    goto :goto_0
.end method

.method public previous()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 1015
    invoke-virtual {p0}, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->checkForComod()V

    .line 1016
    invoke-virtual {p0}, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->hasPrevious()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1017
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 1019
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->_cur:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v1}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->prev()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->value()Ljava/lang/Object;

    move-result-object v0

    .line 1020
    .local v0, ret:Ljava/lang/Object;
    iget-object v1, p0, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->_cur:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v1}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->prev()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->_lastReturned:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    .line 1021
    iget-object v1, p0, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->_cur:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    iget-object v2, p0, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->_cur:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v2}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->prev()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->setNext(Lorg/apache/commons/collections/CursorableLinkedList$Listable;)V

    .line 1022
    iget-object v1, p0, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->_cur:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    iget-object v2, p0, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->_cur:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v2}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->prev()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->prev()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->setPrev(Lorg/apache/commons/collections/CursorableLinkedList$Listable;)V

    .line 1023
    iget v1, p0, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->_nextIndex:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->_nextIndex:I

    .line 1024
    return-object v0
.end method

.method public previousIndex()I
    .locals 1

    .prologue
    .line 1048
    invoke-virtual {p0}, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->checkForComod()V

    .line 1049
    invoke-virtual {p0}, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->hasPrevious()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1050
    const/4 v0, -0x1

    .line 1052
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->_nextIndex:I

    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public remove()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1078
    invoke-virtual {p0}, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->checkForComod()V

    .line 1079
    iget-object v0, p0, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->_lastReturned:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    if-nez v0, :cond_0

    .line 1080
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 1082
    :cond_0
    iget-object v2, p0, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->_cur:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    iget-object v0, p0, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->_lastReturned:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    iget-object v3, p0, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->this$0:Lorg/apache/commons/collections/CursorableLinkedList;

    iget-object v3, v3, Lorg/apache/commons/collections/CursorableLinkedList;->_head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v3}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->prev()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v3

    if-ne v0, v3, :cond_1

    move-object v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->setNext(Lorg/apache/commons/collections/CursorableLinkedList$Listable;)V

    .line 1083
    iget-object v2, p0, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->_cur:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    iget-object v0, p0, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->_lastReturned:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    iget-object v3, p0, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->this$0:Lorg/apache/commons/collections/CursorableLinkedList;

    iget-object v3, v3, Lorg/apache/commons/collections/CursorableLinkedList;->_head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v3}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->next()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v3

    if-ne v0, v3, :cond_2

    move-object v0, v1

    :goto_1
    invoke-virtual {v2, v0}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->setPrev(Lorg/apache/commons/collections/CursorableLinkedList$Listable;)V

    .line 1084
    iget-object v0, p0, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->this$0:Lorg/apache/commons/collections/CursorableLinkedList;

    iget-object v2, p0, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->_lastReturned:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v0, v2}, Lorg/apache/commons/collections/CursorableLinkedList;->removeListable(Lorg/apache/commons/collections/CursorableLinkedList$Listable;)V

    .line 1085
    iput-object v1, p0, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->_lastReturned:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    .line 1086
    iget v0, p0, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->_nextIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->_nextIndex:I

    .line 1087
    iget v0, p0, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->_expectedModCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->_expectedModCount:I

    .line 1089
    return-void

    .line 1082
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->_lastReturned:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v0}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->next()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v0

    goto :goto_0

    .line 1083
    :cond_2
    iget-object v0, p0, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->_lastReturned:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v0}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->prev()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v0

    goto :goto_1
.end method

.method public set(Ljava/lang/Object;)V
    .locals 2
    .parameter "o"

    .prologue
    .line 1061
    invoke-virtual {p0}, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->checkForComod()V

    .line 1063
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->_lastReturned:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v1, p1}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->setValue(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1067
    return-void

    .line 1065
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/NullPointerException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1
.end method
