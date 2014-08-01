.class public abstract Lorg/apache/commons/collections/list/AbstractLinkedList;
.super Ljava/lang/Object;
.source "AbstractLinkedList.java"

# interfaces
.implements Ljava/util/List;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedSubList;,
        Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedSubListIterator;,
        Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedListIterator;,
        Lorg/apache/commons/collections/list/AbstractLinkedList$Node;
    }
.end annotation


# instance fields
.field protected transient header:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

.field protected transient modCount:I

.field protected transient size:I


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    return-void
.end method

.method protected constructor <init>(Ljava/util/Collection;)V
    .locals 0
    .parameter "coll"

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    invoke-virtual {p0}, Lorg/apache/commons/collections/list/AbstractLinkedList;->init()V

    .line 89
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/list/AbstractLinkedList;->addAll(Ljava/util/Collection;)Z

    .line 90
    return-void
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 2
    .parameter "index"
    .parameter "value"

    .prologue
    .line 207
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lorg/apache/commons/collections/list/AbstractLinkedList;->getNode(IZ)Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    move-result-object v0

    .line 208
    .local v0, node:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;
    invoke-virtual {p0, v0, p2}, Lorg/apache/commons/collections/list/AbstractLinkedList;->addNodeBefore(Lorg/apache/commons/collections/list/AbstractLinkedList$Node;Ljava/lang/Object;)V

    .line 209
    return-void
.end method

.method public add(Ljava/lang/Object;)Z
    .locals 1
    .parameter "value"

    .prologue
    .line 202
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/list/AbstractLinkedList;->addLast(Ljava/lang/Object;)Z

    .line 203
    const/4 v0, 0x1

    return v0
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 5
    .parameter "index"
    .parameter "coll"

    .prologue
    const/4 v4, 0x1

    .line 216
    invoke-virtual {p0, p1, v4}, Lorg/apache/commons/collections/list/AbstractLinkedList;->getNode(IZ)Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    move-result-object v1

    .line 217
    .local v1, node:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, itr:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 221
    return v4

    .line 218
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 219
    .local v2, value:Ljava/lang/Object;
    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/collections/list/AbstractLinkedList;->addNodeBefore(Lorg/apache/commons/collections/list/AbstractLinkedList$Node;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 1
    .parameter "coll"

    .prologue
    .line 212
    iget v0, p0, Lorg/apache/commons/collections/list/AbstractLinkedList;->size:I

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/collections/list/AbstractLinkedList;->addAll(ILjava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public addFirst(Ljava/lang/Object;)Z
    .locals 1
    .parameter "o"

    .prologue
    .line 296
    iget-object v0, p0, Lorg/apache/commons/collections/list/AbstractLinkedList;->header:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/collections/list/AbstractLinkedList;->addNodeAfter(Lorg/apache/commons/collections/list/AbstractLinkedList$Node;Ljava/lang/Object;)V

    .line 297
    const/4 v0, 0x1

    return v0
.end method

.method public addLast(Ljava/lang/Object;)Z
    .locals 1
    .parameter "o"

    .prologue
    .line 301
    iget-object v0, p0, Lorg/apache/commons/collections/list/AbstractLinkedList;->header:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/collections/list/AbstractLinkedList;->addNodeBefore(Lorg/apache/commons/collections/list/AbstractLinkedList$Node;Ljava/lang/Object;)V

    .line 302
    const/4 v0, 0x1

    return v0
.end method

.method protected addNode(Lorg/apache/commons/collections/list/AbstractLinkedList$Node;Lorg/apache/commons/collections/list/AbstractLinkedList$Node;)V
    .locals 1
    .parameter "nodeToInsert"
    .parameter "insertBeforeNode"

    .prologue
    .line 467
    iput-object p2, p1, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->next:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    .line 468
    iget-object v0, p2, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->previous:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    iput-object v0, p1, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->previous:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    .line 469
    iget-object v0, p2, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->previous:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    iput-object p1, v0, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->next:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    .line 470
    iput-object p1, p2, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->previous:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    .line 471
    iget v0, p0, Lorg/apache/commons/collections/list/AbstractLinkedList;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/collections/list/AbstractLinkedList;->size:I

    .line 472
    iget v0, p0, Lorg/apache/commons/collections/list/AbstractLinkedList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/collections/list/AbstractLinkedList;->modCount:I

    .line 473
    return-void
.end method

.method protected addNodeAfter(Lorg/apache/commons/collections/list/AbstractLinkedList$Node;Ljava/lang/Object;)V
    .locals 2
    .parameter "node"
    .parameter "value"

    .prologue
    .line 455
    invoke-virtual {p0, p2}, Lorg/apache/commons/collections/list/AbstractLinkedList;->createNode(Ljava/lang/Object;)Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    move-result-object v0

    .line 456
    .local v0, newNode:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;
    iget-object v1, p1, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->next:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/collections/list/AbstractLinkedList;->addNode(Lorg/apache/commons/collections/list/AbstractLinkedList$Node;Lorg/apache/commons/collections/list/AbstractLinkedList$Node;)V

    .line 457
    return-void
.end method

.method protected addNodeBefore(Lorg/apache/commons/collections/list/AbstractLinkedList$Node;Ljava/lang/Object;)V
    .locals 1
    .parameter "node"
    .parameter "value"

    .prologue
    .line 439
    invoke-virtual {p0, p2}, Lorg/apache/commons/collections/list/AbstractLinkedList;->createNode(Ljava/lang/Object;)Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    move-result-object v0

    .line 440
    .local v0, newNode:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;
    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/collections/list/AbstractLinkedList;->addNode(Lorg/apache/commons/collections/list/AbstractLinkedList$Node;Lorg/apache/commons/collections/list/AbstractLinkedList$Node;)V

    .line 441
    return-void
.end method

.method public clear()V
    .locals 0

    .prologue
    .line 275
    invoke-virtual {p0}, Lorg/apache/commons/collections/list/AbstractLinkedList;->removeAllNodes()V

    .line 276
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 2
    .parameter "value"

    .prologue
    .line 153
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/list/AbstractLinkedList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 2
    .parameter "coll"

    .prologue
    .line 157
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 158
    .local v0, it:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 163
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 159
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/collections/list/AbstractLinkedList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 160
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected createHeaderNode()Lorg/apache/commons/collections/list/AbstractLinkedList$Node;
    .locals 1

    .prologue
    .line 413
    new-instance v0, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    invoke-direct {v0}, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;-><init>()V

    return-object v0
.end method

.method protected createNode(Ljava/lang/Object;)Lorg/apache/commons/collections/list/AbstractLinkedList$Node;
    .locals 1
    .parameter "value"

    .prologue
    .line 424
    new-instance v0, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    invoke-direct {v0, p1}, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method protected createSubListIterator(Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedSubList;)Ljava/util/Iterator;
    .locals 1
    .parameter "subList"

    .prologue
    .line 548
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/collections/list/AbstractLinkedList;->createSubListListIterator(Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedSubList;I)Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method protected createSubListListIterator(Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedSubList;I)Ljava/util/ListIterator;
    .locals 1
    .parameter "subList"
    .parameter "fromIndex"

    .prologue
    .line 558
    new-instance v0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedSubListIterator;

    invoke-direct {v0, p1, p2}, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedSubListIterator;-><init>(Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedSubList;I)V

    return-object v0
.end method

.method protected doReadObject(Ljava/io/ObjectInputStream;)V
    .locals 3
    .parameter "inputStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 583
    invoke-virtual {p0}, Lorg/apache/commons/collections/list/AbstractLinkedList;->init()V

    .line 584
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v1

    .line 585
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 588
    return-void

    .line 586
    :cond_0
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/commons/collections/list/AbstractLinkedList;->add(Ljava/lang/Object;)Z

    .line 585
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected doWriteObject(Ljava/io/ObjectOutputStream;)V
    .locals 2
    .parameter "outputStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 570
    invoke-virtual {p0}, Lorg/apache/commons/collections/list/AbstractLinkedList;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 571
    invoke-virtual {p0}, Lorg/apache/commons/collections/list/AbstractLinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, itr:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 574
    return-void

    .line 572
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 9
    .parameter "obj"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 327
    if-ne p1, p0, :cond_1

    move v6, v5

    .line 345
    :cond_0
    :goto_0
    return v6

    .line 330
    :cond_1
    instance-of v7, p1, Ljava/util/List;

    if-eqz v7, :cond_0

    move-object v4, p1

    .line 333
    check-cast v4, Ljava/util/List;

    .line 334
    .local v4, other:Ljava/util/List;
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {p0}, Lorg/apache/commons/collections/list/AbstractLinkedList;->size()I

    move-result v8

    if-ne v7, v8, :cond_0

    .line 337
    invoke-virtual {p0}, Lorg/apache/commons/collections/list/AbstractLinkedList;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    .line 338
    .local v0, it1:Ljava/util/ListIterator;
    invoke-interface {v4}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .line 339
    .local v1, it2:Ljava/util/ListIterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_4

    .line 345
    :cond_3
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_7

    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_7

    :goto_1
    move v6, v5

    goto :goto_0

    .line 340
    :cond_4
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 341
    .local v2, o1:Ljava/lang/Object;
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 342
    .local v3, o2:Ljava/lang/Object;
    if-nez v2, :cond_6

    if-nez v3, :cond_5

    move v7, v5

    :goto_2
    if-nez v7, :cond_2

    goto :goto_0

    :cond_5
    move v7, v6

    goto :goto_2

    :cond_6
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    goto :goto_2

    .end local v2           #o1:Ljava/lang/Object;
    .end local v3           #o2:Ljava/lang/Object;
    :cond_7
    move v5, v6

    .line 345
    goto :goto_1
.end method

.method public get(I)Ljava/lang/Object;
    .locals 2
    .parameter "index"

    .prologue
    .line 112
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lorg/apache/commons/collections/list/AbstractLinkedList;->getNode(IZ)Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    move-result-object v0

    .line 113
    .local v0, node:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;
    invoke-virtual {v0}, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->getValue()Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public getFirst()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 280
    iget-object v1, p0, Lorg/apache/commons/collections/list/AbstractLinkedList;->header:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    iget-object v0, v1, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->next:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    .line 281
    .local v0, node:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;
    iget-object v1, p0, Lorg/apache/commons/collections/list/AbstractLinkedList;->header:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    if-ne v0, v1, :cond_0

    .line 282
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 284
    :cond_0
    invoke-virtual {v0}, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->getValue()Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public getLast()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 288
    iget-object v1, p0, Lorg/apache/commons/collections/list/AbstractLinkedList;->header:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    iget-object v0, v1, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->previous:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    .line 289
    .local v0, node:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;
    iget-object v1, p0, Lorg/apache/commons/collections/list/AbstractLinkedList;->header:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    if-ne v0, v1, :cond_0

    .line 290
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 292
    :cond_0
    invoke-virtual {v0}, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->getValue()Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method protected getNode(IZ)Lorg/apache/commons/collections/list/AbstractLinkedList$Node;
    .locals 5
    .parameter "index"
    .parameter "endMarkerAllowed"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 510
    if-gez p1, :cond_0

    .line 511
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Couldn\'t get the node: index ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, ") less than zero."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 514
    :cond_0
    if-nez p2, :cond_1

    iget v2, p0, Lorg/apache/commons/collections/list/AbstractLinkedList;->size:I

    if-ne p1, v2, :cond_1

    .line 515
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Couldn\'t get the node: index ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, ") is the size of the list."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 518
    :cond_1
    iget v2, p0, Lorg/apache/commons/collections/list/AbstractLinkedList;->size:I

    if-le p1, v2, :cond_2

    .line 519
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Couldn\'t get the node: index ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, ") greater than the size of the "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "list ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget v4, p0, Lorg/apache/commons/collections/list/AbstractLinkedList;->size:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, ")."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 525
    :cond_2
    iget v2, p0, Lorg/apache/commons/collections/list/AbstractLinkedList;->size:I

    div-int/lit8 v2, v2, 0x2

    if-ge p1, v2, :cond_5

    .line 527
    iget-object v2, p0, Lorg/apache/commons/collections/list/AbstractLinkedList;->header:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    iget-object v1, v2, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->next:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    .line 528
    .local v1, node:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;
    const/4 v0, 0x0

    .local v0, currentIndex:I
    :goto_0
    if-lt v0, p1, :cond_4

    .line 538
    :cond_3
    return-object v1

    .line 529
    :cond_4
    iget-object v1, v1, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->next:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    .line 528
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 533
    .end local v0           #currentIndex:I
    .end local v1           #node:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;
    :cond_5
    iget-object v1, p0, Lorg/apache/commons/collections/list/AbstractLinkedList;->header:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    .line 534
    .restart local v1       #node:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;
    iget v0, p0, Lorg/apache/commons/collections/list/AbstractLinkedList;->size:I

    .restart local v0       #currentIndex:I
    :goto_1
    if-le v0, p1, :cond_3

    .line 535
    iget-object v1, v1, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->previous:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    .line 534
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method public hashCode()I
    .locals 5

    .prologue
    .line 349
    const/4 v0, 0x1

    .line 350
    .local v0, hashCode:I
    invoke-virtual {p0}, Lorg/apache/commons/collections/list/AbstractLinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 351
    .local v1, it:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 355
    return v0

    .line 352
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 353
    .local v2, obj:Ljava/lang/Object;
    mul-int/lit8 v4, v0, 0x1f

    if-nez v2, :cond_1

    const/4 v3, 0x0

    :goto_1
    add-int v0, v4, v3

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto :goto_1
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 3
    .parameter "value"

    .prologue
    .line 131
    const/4 v0, 0x0

    .line 132
    .local v0, i:I
    iget-object v2, p0, Lorg/apache/commons/collections/list/AbstractLinkedList;->header:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    iget-object v1, v2, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->next:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    .local v1, node:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;
    :goto_0
    iget-object v2, p0, Lorg/apache/commons/collections/list/AbstractLinkedList;->header:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    if-ne v1, v2, :cond_1

    .line 138
    const/4 v0, -0x1

    .end local v0           #i:I
    :cond_0
    return v0

    .line 133
    .restart local v0       #i:I
    :cond_1
    invoke-virtual {v1}, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2, p1}, Lorg/apache/commons/collections/list/AbstractLinkedList;->isEqualValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 136
    add-int/lit8 v0, v0, 0x1

    .line 132
    iget-object v1, v1, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->next:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    goto :goto_0
.end method

.method protected init()V
    .locals 1

    .prologue
    .line 99
    invoke-virtual {p0}, Lorg/apache/commons/collections/list/AbstractLinkedList;->createHeaderNode()Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections/list/AbstractLinkedList;->header:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    .line 100
    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 108
    invoke-virtual {p0}, Lorg/apache/commons/collections/list/AbstractLinkedList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isEqualValue(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .parameter "value1"
    .parameter "value2"

    .prologue
    const/4 v0, 0x0

    .line 390
    if-eq p1, p2, :cond_0

    if-nez p1, :cond_2

    move v1, v0

    :goto_0
    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0

    :cond_2
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 118
    invoke-virtual {p0}, Lorg/apache/commons/collections/list/AbstractLinkedList;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 3
    .parameter "value"

    .prologue
    .line 142
    iget v2, p0, Lorg/apache/commons/collections/list/AbstractLinkedList;->size:I

    add-int/lit8 v0, v2, -0x1

    .line 143
    .local v0, i:I
    iget-object v2, p0, Lorg/apache/commons/collections/list/AbstractLinkedList;->header:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    iget-object v1, v2, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->previous:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    .local v1, node:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;
    :goto_0
    iget-object v2, p0, Lorg/apache/commons/collections/list/AbstractLinkedList;->header:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    if-ne v1, v2, :cond_1

    .line 149
    const/4 v0, -0x1

    .end local v0           #i:I
    :cond_0
    return v0

    .line 144
    .restart local v0       #i:I
    :cond_1
    invoke-virtual {v1}, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2, p1}, Lorg/apache/commons/collections/list/AbstractLinkedList;->isEqualValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 147
    add-int/lit8 v0, v0, -0x1

    .line 143
    iget-object v1, v1, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->previous:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    goto :goto_0
.end method

.method public listIterator()Ljava/util/ListIterator;
    .locals 2

    .prologue
    .line 122
    new-instance v0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedListIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedListIterator;-><init>(Lorg/apache/commons/collections/list/AbstractLinkedList;I)V

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 1
    .parameter "fromIndex"

    .prologue
    .line 126
    new-instance v0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedListIterator;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedListIterator;-><init>(Lorg/apache/commons/collections/list/AbstractLinkedList;I)V

    return-object v0
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 3
    .parameter "index"

    .prologue
    .line 226
    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2}, Lorg/apache/commons/collections/list/AbstractLinkedList;->getNode(IZ)Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    move-result-object v0

    .line 227
    .local v0, node:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;
    invoke-virtual {v0}, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 228
    .local v1, oldValue:Ljava/lang/Object;
    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/list/AbstractLinkedList;->removeNode(Lorg/apache/commons/collections/list/AbstractLinkedList$Node;)V

    .line 229
    return-object v1
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2
    .parameter "value"

    .prologue
    .line 233
    iget-object v1, p0, Lorg/apache/commons/collections/list/AbstractLinkedList;->header:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    iget-object v0, v1, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->next:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    .local v0, node:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;
    :goto_0
    iget-object v1, p0, Lorg/apache/commons/collections/list/AbstractLinkedList;->header:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    if-ne v0, v1, :cond_0

    .line 239
    const/4 v1, 0x0

    :goto_1
    return v1

    .line 234
    :cond_0
    invoke-virtual {v0}, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lorg/apache/commons/collections/list/AbstractLinkedList;->isEqualValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 235
    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/list/AbstractLinkedList;->removeNode(Lorg/apache/commons/collections/list/AbstractLinkedList$Node;)V

    .line 236
    const/4 v1, 0x1

    goto :goto_1

    .line 233
    :cond_1
    iget-object v0, v0, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->next:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    goto :goto_0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 3
    .parameter "coll"

    .prologue
    .line 243
    const/4 v1, 0x0

    .line 244
    .local v1, modified:Z
    invoke-virtual {p0}, Lorg/apache/commons/collections/list/AbstractLinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 245
    .local v0, it:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 251
    return v1

    .line 246
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 247
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 248
    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected removeAllNodes()V
    .locals 2

    .prologue
    .line 492
    iget-object v0, p0, Lorg/apache/commons/collections/list/AbstractLinkedList;->header:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    iget-object v1, p0, Lorg/apache/commons/collections/list/AbstractLinkedList;->header:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    iput-object v1, v0, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->next:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    .line 493
    iget-object v0, p0, Lorg/apache/commons/collections/list/AbstractLinkedList;->header:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    iget-object v1, p0, Lorg/apache/commons/collections/list/AbstractLinkedList;->header:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    iput-object v1, v0, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->previous:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    .line 494
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/collections/list/AbstractLinkedList;->size:I

    .line 495
    iget v0, p0, Lorg/apache/commons/collections/list/AbstractLinkedList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/collections/list/AbstractLinkedList;->modCount:I

    .line 496
    return-void
.end method

.method public removeFirst()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 306
    iget-object v2, p0, Lorg/apache/commons/collections/list/AbstractLinkedList;->header:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    iget-object v0, v2, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->next:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    .line 307
    .local v0, node:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;
    iget-object v2, p0, Lorg/apache/commons/collections/list/AbstractLinkedList;->header:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    if-ne v0, v2, :cond_0

    .line 308
    new-instance v2, Ljava/util/NoSuchElementException;

    invoke-direct {v2}, Ljava/util/NoSuchElementException;-><init>()V

    throw v2

    .line 310
    :cond_0
    invoke-virtual {v0}, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 311
    .local v1, oldValue:Ljava/lang/Object;
    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/list/AbstractLinkedList;->removeNode(Lorg/apache/commons/collections/list/AbstractLinkedList$Node;)V

    .line 312
    return-object v1
.end method

.method public removeLast()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 316
    iget-object v2, p0, Lorg/apache/commons/collections/list/AbstractLinkedList;->header:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    iget-object v0, v2, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->previous:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    .line 317
    .local v0, node:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;
    iget-object v2, p0, Lorg/apache/commons/collections/list/AbstractLinkedList;->header:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    if-ne v0, v2, :cond_0

    .line 318
    new-instance v2, Ljava/util/NoSuchElementException;

    invoke-direct {v2}, Ljava/util/NoSuchElementException;-><init>()V

    throw v2

    .line 320
    :cond_0
    invoke-virtual {v0}, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 321
    .local v1, oldValue:Ljava/lang/Object;
    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/list/AbstractLinkedList;->removeNode(Lorg/apache/commons/collections/list/AbstractLinkedList$Node;)V

    .line 322
    return-object v1
.end method

.method protected removeNode(Lorg/apache/commons/collections/list/AbstractLinkedList$Node;)V
    .locals 2
    .parameter "node"

    .prologue
    .line 482
    iget-object v0, p1, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->previous:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    iget-object v1, p1, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->next:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    iput-object v1, v0, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->next:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    .line 483
    iget-object v0, p1, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->next:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    iget-object v1, p1, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->previous:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    iput-object v1, v0, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->previous:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    .line 484
    iget v0, p0, Lorg/apache/commons/collections/list/AbstractLinkedList;->size:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/commons/collections/list/AbstractLinkedList;->size:I

    .line 485
    iget v0, p0, Lorg/apache/commons/collections/list/AbstractLinkedList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/collections/list/AbstractLinkedList;->modCount:I

    .line 486
    return-void
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 3
    .parameter "coll"

    .prologue
    .line 256
    const/4 v1, 0x0

    .line 257
    .local v1, modified:Z
    invoke-virtual {p0}, Lorg/apache/commons/collections/list/AbstractLinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 258
    .local v0, it:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 264
    return v1

    .line 259
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 260
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 261
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter "index"
    .parameter "value"

    .prologue
    .line 268
    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2}, Lorg/apache/commons/collections/list/AbstractLinkedList;->getNode(IZ)Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    move-result-object v0

    .line 269
    .local v0, node:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;
    invoke-virtual {v0}, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 270
    .local v1, oldValue:Ljava/lang/Object;
    invoke-virtual {p0, v0, p2}, Lorg/apache/commons/collections/list/AbstractLinkedList;->updateNode(Lorg/apache/commons/collections/list/AbstractLinkedList$Node;Ljava/lang/Object;)V

    .line 271
    return-object v1
.end method

.method public size()I
    .locals 1

    .prologue
    .line 104
    iget v0, p0, Lorg/apache/commons/collections/list/AbstractLinkedList;->size:I

    return v0
.end method

.method public subList(II)Ljava/util/List;
    .locals 1
    .parameter "fromIndexInclusive"
    .parameter "toIndexExclusive"

    .prologue
    .line 197
    new-instance v0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedSubList;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedSubList;-><init>(Lorg/apache/commons/collections/list/AbstractLinkedList;II)V

    return-object v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 168
    iget v0, p0, Lorg/apache/commons/collections/list/AbstractLinkedList;->size:I

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/list/AbstractLinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 5
    .parameter "array"

    .prologue
    .line 173
    array-length v3, p1

    iget v4, p0, Lorg/apache/commons/collections/list/AbstractLinkedList;->size:I

    if-ge v3, v4, :cond_0

    .line 174
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    .line 175
    .local v0, componentType:Ljava/lang/Class;
    iget v3, p0, Lorg/apache/commons/collections/list/AbstractLinkedList;->size:I

    invoke-static {v0, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, [Ljava/lang/Object;

    .line 178
    .end local v0           #componentType:Ljava/lang/Class;
    .restart local p1
    :cond_0
    const/4 v1, 0x0

    .line 179
    .local v1, i:I
    iget-object v3, p0, Lorg/apache/commons/collections/list/AbstractLinkedList;->header:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    iget-object v2, v3, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->next:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    .local v2, node:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;
    :goto_0
    iget-object v3, p0, Lorg/apache/commons/collections/list/AbstractLinkedList;->header:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    if-ne v2, v3, :cond_2

    .line 183
    array-length v3, p1

    iget v4, p0, Lorg/apache/commons/collections/list/AbstractLinkedList;->size:I

    if-le v3, v4, :cond_1

    .line 184
    iget v3, p0, Lorg/apache/commons/collections/list/AbstractLinkedList;->size:I

    const/4 v4, 0x0

    aput-object v4, p1, v3

    .line 186
    :cond_1
    return-object p1

    .line 180
    :cond_2
    invoke-virtual {v2}, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->getValue()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, p1, v1

    .line 179
    iget-object v2, v2, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->next:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 359
    invoke-virtual {p0}, Lorg/apache/commons/collections/list/AbstractLinkedList;->size()I

    move-result v4

    if-nez v4, :cond_0

    .line 360
    const-string v4, "[]"

    .line 376
    :goto_0
    return-object v4

    .line 362
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/commons/collections/list/AbstractLinkedList;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x10

    invoke-direct {v0, v4}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 363
    .local v0, buf:Ljava/lang/StringBuffer;
    const-string v4, "["

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 365
    invoke-virtual {p0}, Lorg/apache/commons/collections/list/AbstractLinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 366
    .local v2, it:Ljava/util/Iterator;
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    .line 367
    .local v1, hasNext:Z
    :cond_1
    :goto_1
    if-nez v1, :cond_2

    .line 375
    const-string v4, "]"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 376
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 368
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 369
    .local v3, value:Ljava/lang/Object;
    if-ne v3, p0, :cond_3

    const-string v3, "(this Collection)"

    .end local v3           #value:Ljava/lang/Object;
    :cond_3
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 370
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    .line 371
    if-eqz v1, :cond_1

    .line 372
    const-string v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1
.end method

.method protected updateNode(Lorg/apache/commons/collections/list/AbstractLinkedList$Node;Ljava/lang/Object;)V
    .locals 0
    .parameter "node"
    .parameter "value"

    .prologue
    .line 402
    invoke-virtual {p1, p2}, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->setValue(Ljava/lang/Object;)V

    .line 403
    return-void
.end method
