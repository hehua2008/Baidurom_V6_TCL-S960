.class public Lorg/apache/commons/collections/list/CursorableLinkedList$Cursor;
.super Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedListIterator;
.source "CursorableLinkedList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections/list/CursorableLinkedList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Cursor"
.end annotation


# instance fields
.field nextIndexValid:Z

.field valid:Z


# direct methods
.method protected constructor <init>(Lorg/apache/commons/collections/list/CursorableLinkedList;I)V
    .locals 1
    .parameter "parent"
    .parameter "index"

    .prologue
    const/4 v0, 0x1

    .line 394
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedListIterator;-><init>(Lorg/apache/commons/collections/list/AbstractLinkedList;I)V

    .line 384
    iput-boolean v0, p0, Lorg/apache/commons/collections/list/CursorableLinkedList$Cursor;->valid:Z

    .line 386
    iput-boolean v0, p0, Lorg/apache/commons/collections/list/CursorableLinkedList$Cursor;->nextIndexValid:Z

    .line 395
    iput-boolean v0, p0, Lorg/apache/commons/collections/list/CursorableLinkedList$Cursor;->valid:Z

    .line 396
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 1
    .parameter "obj"

    .prologue
    .line 405
    invoke-super {p0, p1}, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedListIterator;->add(Ljava/lang/Object;)V

    .line 407
    iget-object v0, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedListIterator;->next:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    iget-object v0, v0, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->next:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    iput-object v0, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedListIterator;->next:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    .line 408
    return-void
.end method

.method protected checkModCount()V
    .locals 2

    .prologue
    .line 477
    iget-boolean v0, p0, Lorg/apache/commons/collections/list/CursorableLinkedList$Cursor;->valid:Z

    if-nez v0, :cond_0

    .line 478
    new-instance v0, Ljava/util/ConcurrentModificationException;

    const-string v1, "Cursor closed"

    invoke-direct {v0, v1}, Ljava/util/ConcurrentModificationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 480
    :cond_0
    return-void
.end method

.method public close()V
    .locals 1

    .prologue
    .line 491
    iget-boolean v0, p0, Lorg/apache/commons/collections/list/CursorableLinkedList$Cursor;->valid:Z

    if-eqz v0, :cond_0

    .line 492
    iget-object v0, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedListIterator;->parent:Lorg/apache/commons/collections/list/AbstractLinkedList;

    check-cast v0, Lorg/apache/commons/collections/list/CursorableLinkedList;

    invoke-virtual {v0, p0}, Lorg/apache/commons/collections/list/CursorableLinkedList;->unregisterCursor(Lorg/apache/commons/collections/list/CursorableLinkedList$Cursor;)V

    .line 493
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/collections/list/CursorableLinkedList$Cursor;->valid:Z

    .line 495
    :cond_0
    return-void
.end method

.method public nextIndex()I
    .locals 4

    .prologue
    .line 416
    iget-boolean v2, p0, Lorg/apache/commons/collections/list/CursorableLinkedList$Cursor;->nextIndexValid:Z

    if-nez v2, :cond_0

    .line 417
    iget-object v2, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedListIterator;->next:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    iget-object v3, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedListIterator;->parent:Lorg/apache/commons/collections/list/AbstractLinkedList;

    iget-object v3, v3, Lorg/apache/commons/collections/list/AbstractLinkedList;->header:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    if-ne v2, v3, :cond_1

    .line 418
    iget-object v2, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedListIterator;->parent:Lorg/apache/commons/collections/list/AbstractLinkedList;

    invoke-virtual {v2}, Lorg/apache/commons/collections/list/AbstractLinkedList;->size()I

    move-result v2

    iput v2, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedListIterator;->nextIndex:I

    .line 428
    :goto_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/apache/commons/collections/list/CursorableLinkedList$Cursor;->nextIndexValid:Z

    .line 430
    :cond_0
    iget v2, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedListIterator;->nextIndex:I

    return v2

    .line 420
    :cond_1
    const/4 v0, 0x0

    .line 421
    .local v0, pos:I
    iget-object v2, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedListIterator;->parent:Lorg/apache/commons/collections/list/AbstractLinkedList;

    iget-object v2, v2, Lorg/apache/commons/collections/list/AbstractLinkedList;->header:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    iget-object v1, v2, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->next:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    .line 422
    .local v1, temp:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;
    :goto_1
    iget-object v2, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedListIterator;->next:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    if-ne v1, v2, :cond_2

    .line 426
    iput v0, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedListIterator;->nextIndex:I

    goto :goto_0

    .line 423
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 424
    iget-object v1, v1, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->next:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    goto :goto_1
.end method

.method protected nodeChanged(Lorg/apache/commons/collections/list/AbstractLinkedList$Node;)V
    .locals 0
    .parameter "node"

    .prologue
    .line 440
    return-void
.end method

.method protected nodeInserted(Lorg/apache/commons/collections/list/AbstractLinkedList$Node;)V
    .locals 2
    .parameter "node"

    .prologue
    .line 464
    iget-object v0, p1, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->previous:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    iget-object v1, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedListIterator;->current:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    if-ne v0, v1, :cond_0

    .line 465
    iput-object p1, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedListIterator;->next:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    .line 471
    :goto_0
    return-void

    .line 466
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedListIterator;->next:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    iget-object v0, v0, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->previous:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    if-ne v0, p1, :cond_1

    .line 467
    iput-object p1, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedListIterator;->next:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    goto :goto_0

    .line 469
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/collections/list/CursorableLinkedList$Cursor;->nextIndexValid:Z

    goto :goto_0
.end method

.method protected nodeRemoved(Lorg/apache/commons/collections/list/AbstractLinkedList$Node;)V
    .locals 1
    .parameter "node"

    .prologue
    .line 448
    iget-object v0, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedListIterator;->next:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    if-ne p1, v0, :cond_0

    .line 449
    iget-object v0, p1, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->next:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    iput-object v0, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedListIterator;->next:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    .line 456
    :goto_0
    return-void

    .line 450
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedListIterator;->current:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    if-ne p1, v0, :cond_1

    .line 451
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedListIterator;->current:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    .line 452
    iget v0, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedListIterator;->nextIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedListIterator;->nextIndex:I

    goto :goto_0

    .line 454
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/collections/list/CursorableLinkedList$Cursor;->nextIndexValid:Z

    goto :goto_0
.end method
