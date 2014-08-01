.class public Lorg/apache/commons/collections/list/CursorableLinkedList;
.super Lorg/apache/commons/collections/list/AbstractLinkedList;
.source "CursorableLinkedList.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/collections/list/CursorableLinkedList$Cursor;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x7aa12cb4b4f67ac1L


# instance fields
.field protected transient cursors:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 75
    invoke-direct {p0}, Lorg/apache/commons/collections/list/AbstractLinkedList;-><init>()V

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/collections/list/CursorableLinkedList;->cursors:Ljava/util/List;

    .line 76
    invoke-virtual {p0}, Lorg/apache/commons/collections/list/CursorableLinkedList;->init()V

    .line 77
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 1
    .parameter "coll"

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/list/AbstractLinkedList;-><init>(Ljava/util/Collection;)V

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/collections/list/CursorableLinkedList;->cursors:Ljava/util/List;

    .line 86
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 0
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 373
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 374
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/list/AbstractLinkedList;->doReadObject(Ljava/io/ObjectInputStream;)V

    .line 375
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 0
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 365
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 366
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/list/AbstractLinkedList;->doWriteObject(Ljava/io/ObjectOutputStream;)V

    .line 367
    return-void
.end method


# virtual methods
.method protected addNode(Lorg/apache/commons/collections/list/AbstractLinkedList$Node;Lorg/apache/commons/collections/list/AbstractLinkedList$Node;)V
    .locals 0
    .parameter "nodeToInsert"
    .parameter "insertBeforeNode"

    .prologue
    .line 232
    invoke-super {p0, p1, p2}, Lorg/apache/commons/collections/list/AbstractLinkedList;->addNode(Lorg/apache/commons/collections/list/AbstractLinkedList$Node;Lorg/apache/commons/collections/list/AbstractLinkedList$Node;)V

    .line 233
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/list/CursorableLinkedList;->broadcastNodeInserted(Lorg/apache/commons/collections/list/AbstractLinkedList$Node;)V

    .line 234
    return-void
.end method

.method protected broadcastNodeChanged(Lorg/apache/commons/collections/list/AbstractLinkedList$Node;)V
    .locals 4
    .parameter "node"

    .prologue
    .line 310
    iget-object v3, p0, Lorg/apache/commons/collections/list/CursorableLinkedList;->cursors:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 311
    .local v1, it:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 320
    return-void

    .line 312
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 313
    .local v2, ref:Ljava/lang/ref/WeakReference;
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/collections/list/CursorableLinkedList$Cursor;

    .line 314
    .local v0, cursor:Lorg/apache/commons/collections/list/CursorableLinkedList$Cursor;
    if-nez v0, :cond_1

    .line 315
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 317
    :cond_1
    invoke-virtual {v0, p1}, Lorg/apache/commons/collections/list/CursorableLinkedList$Cursor;->nodeChanged(Lorg/apache/commons/collections/list/AbstractLinkedList$Node;)V

    goto :goto_0
.end method

.method protected broadcastNodeInserted(Lorg/apache/commons/collections/list/AbstractLinkedList$Node;)V
    .locals 4
    .parameter "node"

    .prologue
    .line 348
    iget-object v3, p0, Lorg/apache/commons/collections/list/CursorableLinkedList;->cursors:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 349
    .local v1, it:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 358
    return-void

    .line 350
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 351
    .local v2, ref:Ljava/lang/ref/WeakReference;
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/collections/list/CursorableLinkedList$Cursor;

    .line 352
    .local v0, cursor:Lorg/apache/commons/collections/list/CursorableLinkedList$Cursor;
    if-nez v0, :cond_1

    .line 353
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 355
    :cond_1
    invoke-virtual {v0, p1}, Lorg/apache/commons/collections/list/CursorableLinkedList$Cursor;->nodeInserted(Lorg/apache/commons/collections/list/AbstractLinkedList$Node;)V

    goto :goto_0
.end method

.method protected broadcastNodeRemoved(Lorg/apache/commons/collections/list/AbstractLinkedList$Node;)V
    .locals 4
    .parameter "node"

    .prologue
    .line 329
    iget-object v3, p0, Lorg/apache/commons/collections/list/CursorableLinkedList;->cursors:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 330
    .local v1, it:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 339
    return-void

    .line 331
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 332
    .local v2, ref:Ljava/lang/ref/WeakReference;
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/collections/list/CursorableLinkedList$Cursor;

    .line 333
    .local v0, cursor:Lorg/apache/commons/collections/list/CursorableLinkedList$Cursor;
    if-nez v0, :cond_1

    .line 334
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 336
    :cond_1
    invoke-virtual {v0, p1}, Lorg/apache/commons/collections/list/CursorableLinkedList$Cursor;->nodeRemoved(Lorg/apache/commons/collections/list/AbstractLinkedList$Node;)V

    goto :goto_0
.end method

.method public cursor()Lorg/apache/commons/collections/list/CursorableLinkedList$Cursor;
    .locals 1

    .prologue
    .line 174
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/list/CursorableLinkedList;->cursor(I)Lorg/apache/commons/collections/list/CursorableLinkedList$Cursor;

    move-result-object v0

    return-object v0
.end method

.method public cursor(I)Lorg/apache/commons/collections/list/CursorableLinkedList$Cursor;
    .locals 1
    .parameter "fromIndex"

    .prologue
    .line 205
    new-instance v0, Lorg/apache/commons/collections/list/CursorableLinkedList$Cursor;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections/list/CursorableLinkedList$Cursor;-><init>(Lorg/apache/commons/collections/list/CursorableLinkedList;I)V

    .line 206
    .local v0, cursor:Lorg/apache/commons/collections/list/CursorableLinkedList$Cursor;
    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/list/CursorableLinkedList;->registerCursor(Lorg/apache/commons/collections/list/CursorableLinkedList$Cursor;)V

    .line 207
    return-object v0
.end method

.method protected init()V
    .locals 1

    .prologue
    .line 93
    invoke-super {p0}, Lorg/apache/commons/collections/list/AbstractLinkedList;->init()V

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/collections/list/CursorableLinkedList;->cursors:Ljava/util/List;

    .line 95
    return-void
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x0

    invoke-super {p0, v0}, Lorg/apache/commons/collections/list/AbstractLinkedList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public listIterator()Ljava/util/ListIterator;
    .locals 1

    .prologue
    .line 127
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/list/CursorableLinkedList;->cursor(I)Lorg/apache/commons/collections/list/CursorableLinkedList$Cursor;

    move-result-object v0

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 1
    .parameter "fromIndex"

    .prologue
    .line 147
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/list/CursorableLinkedList;->cursor(I)Lorg/apache/commons/collections/list/CursorableLinkedList$Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected registerCursor(Lorg/apache/commons/collections/list/CursorableLinkedList$Cursor;)V
    .locals 4
    .parameter "cursor"

    .prologue
    .line 270
    iget-object v2, p0, Lorg/apache/commons/collections/list/CursorableLinkedList;->cursors:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, it:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 276
    iget-object v2, p0, Lorg/apache/commons/collections/list/CursorableLinkedList;->cursors:Ljava/util/List;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 277
    return-void

    .line 271
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 272
    .local v1, ref:Ljava/lang/ref/WeakReference;
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 273
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0
.end method

.method protected removeAllNodes()V
    .locals 2

    .prologue
    .line 251
    invoke-virtual {p0}, Lorg/apache/commons/collections/list/AbstractLinkedList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 253
    invoke-virtual {p0}, Lorg/apache/commons/collections/list/CursorableLinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 254
    .local v0, it:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 259
    .end local v0           #it:Ljava/util/Iterator;
    :cond_0
    return-void

    .line 255
    .restart local v0       #it:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 256
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0
.end method

.method protected removeNode(Lorg/apache/commons/collections/list/AbstractLinkedList$Node;)V
    .locals 0
    .parameter "node"

    .prologue
    .line 243
    invoke-super {p0, p1}, Lorg/apache/commons/collections/list/AbstractLinkedList;->removeNode(Lorg/apache/commons/collections/list/AbstractLinkedList$Node;)V

    .line 244
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/list/CursorableLinkedList;->broadcastNodeRemoved(Lorg/apache/commons/collections/list/AbstractLinkedList$Node;)V

    .line 245
    return-void
.end method

.method protected unregisterCursor(Lorg/apache/commons/collections/list/CursorableLinkedList$Cursor;)V
    .locals 4
    .parameter "cursor"

    .prologue
    .line 285
    iget-object v3, p0, Lorg/apache/commons/collections/list/CursorableLinkedList;->cursors:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, it:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 300
    :goto_1
    return-void

    .line 286
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 287
    .local v2, ref:Ljava/lang/ref/WeakReference;
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/collections/list/CursorableLinkedList$Cursor;

    .line 288
    .local v0, cur:Lorg/apache/commons/collections/list/CursorableLinkedList$Cursor;
    if-nez v0, :cond_2

    .line 292
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 294
    :cond_2
    if-ne v0, p1, :cond_0

    .line 295
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->clear()V

    .line 296
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_1
.end method

.method protected updateNode(Lorg/apache/commons/collections/list/AbstractLinkedList$Node;Ljava/lang/Object;)V
    .locals 0
    .parameter "node"
    .parameter "value"

    .prologue
    .line 220
    invoke-super {p0, p1, p2}, Lorg/apache/commons/collections/list/AbstractLinkedList;->updateNode(Lorg/apache/commons/collections/list/AbstractLinkedList$Node;Ljava/lang/Object;)V

    .line 221
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/list/CursorableLinkedList;->broadcastNodeChanged(Lorg/apache/commons/collections/list/AbstractLinkedList$Node;)V

    .line 222
    return-void
.end method
