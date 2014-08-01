.class public Lorg/apache/commons/collections/CursorableLinkedList;
.super Ljava/lang/Object;
.source "CursorableLinkedList.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/util/List;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/collections/CursorableLinkedList$Cursor;,
        Lorg/apache/commons/collections/CursorableLinkedList$ListIter;,
        Lorg/apache/commons/collections/CursorableLinkedList$Listable;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x7aa12cb4b4f67ac1L


# instance fields
.field protected transient _cursors:Ljava/util/List;

.field protected transient _head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

.field protected transient _modCount:I

.field protected transient _size:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 929
    iput v2, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_size:I

    .line 943
    new-instance v0, Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-direct {v0, v1, v1, v1}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;-><init>(Lorg/apache/commons/collections/CursorableLinkedList$Listable;Lorg/apache/commons/collections/CursorableLinkedList$Listable;Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    .line 946
    iput v2, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_modCount:I

    .line 952
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_cursors:Ljava/util/List;

    .line 54
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 4
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 915
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 916
    iput v2, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_size:I

    .line 917
    iput v2, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_modCount:I

    .line 918
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_cursors:Ljava/util/List;

    .line 919
    new-instance v2, Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-direct {v2, v3, v3, v3}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;-><init>(Lorg/apache/commons/collections/CursorableLinkedList$Listable;Lorg/apache/commons/collections/CursorableLinkedList$Listable;Ljava/lang/Object;)V

    iput-object v2, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    .line 920
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v1

    .line 921
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 924
    return-void

    .line 922
    :cond_0
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/commons/collections/CursorableLinkedList;->add(Ljava/lang/Object;)Z

    .line 921
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 2
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 905
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 906
    iget v1, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_size:I

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 907
    iget-object v1, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v1}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->next()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v0

    .line 908
    .local v0, cur:Lorg/apache/commons/collections/CursorableLinkedList$Listable;
    :goto_0
    if-nez v0, :cond_0

    .line 912
    return-void

    .line 909
    :cond_0
    invoke-virtual {v0}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->value()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 910
    invoke-virtual {v0}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->next()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 5
    .parameter "index"
    .parameter "element"

    .prologue
    const/4 v0, 0x0

    .line 87
    iget v2, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_size:I

    if-ne p1, v2, :cond_0

    .line 88
    invoke-virtual {p0, p2}, Lorg/apache/commons/collections/CursorableLinkedList;->add(Ljava/lang/Object;)Z

    .line 97
    :goto_0
    return-void

    .line 90
    :cond_0
    if-ltz p1, :cond_1

    iget v2, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_size:I

    if-le p1, v2, :cond_2

    .line 91
    :cond_1
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " < 0 or "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " > "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget v4, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_size:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 93
    :cond_2
    invoke-virtual {p0}, Lorg/apache/commons/collections/CursorableLinkedList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    move-object v1, v0

    .line 94
    .local v1, succ:Lorg/apache/commons/collections/CursorableLinkedList$Listable;
    :goto_1
    if-nez v1, :cond_4

    .line 95
    .local v0, pred:Lorg/apache/commons/collections/CursorableLinkedList$Listable;
    :goto_2
    invoke-virtual {p0, v0, v1, p2}, Lorg/apache/commons/collections/CursorableLinkedList;->insertListable(Lorg/apache/commons/collections/CursorableLinkedList$Listable;Lorg/apache/commons/collections/CursorableLinkedList$Listable;Ljava/lang/Object;)Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    goto :goto_0

    .line 93
    .end local v0           #pred:Lorg/apache/commons/collections/CursorableLinkedList$Listable;
    .end local v1           #succ:Lorg/apache/commons/collections/CursorableLinkedList$Listable;
    :cond_3
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/CursorableLinkedList;->getListableAt(I)Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v1

    goto :goto_1

    .line 94
    .restart local v1       #succ:Lorg/apache/commons/collections/CursorableLinkedList$Listable;
    :cond_4
    invoke-virtual {v1}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->prev()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v0

    goto :goto_2
.end method

.method public add(Ljava/lang/Object;)Z
    .locals 2
    .parameter "o"

    .prologue
    .line 67
    iget-object v0, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v0}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->prev()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lorg/apache/commons/collections/CursorableLinkedList;->insertListable(Lorg/apache/commons/collections/CursorableLinkedList$Listable;Lorg/apache/commons/collections/CursorableLinkedList$Listable;Ljava/lang/Object;)Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    .line 68
    const/4 v0, 0x1

    return v0
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 4
    .parameter "index"
    .parameter "c"

    .prologue
    .line 153
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 154
    const/4 v3, 0x0

    .line 164
    :goto_0
    return v3

    .line 155
    :cond_0
    iget v3, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_size:I

    if-eq v3, p1, :cond_1

    iget v3, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_size:I

    if-nez v3, :cond_2

    .line 156
    :cond_1
    invoke-virtual {p0, p2}, Lorg/apache/commons/collections/CursorableLinkedList;->addAll(Ljava/util/Collection;)Z

    move-result v3

    goto :goto_0

    .line 158
    :cond_2
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/CursorableLinkedList;->getListableAt(I)Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v2

    .line 159
    .local v2, succ:Lorg/apache/commons/collections/CursorableLinkedList$Listable;
    if-nez v2, :cond_3

    const/4 v1, 0x0

    .line 160
    .local v1, pred:Lorg/apache/commons/collections/CursorableLinkedList$Listable;
    :goto_1
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 161
    .local v0, it:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_4

    .line 164
    const/4 v3, 0x1

    goto :goto_0

    .line 159
    .end local v0           #it:Ljava/util/Iterator;
    .end local v1           #pred:Lorg/apache/commons/collections/CursorableLinkedList$Listable;
    :cond_3
    invoke-virtual {v2}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->prev()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v1

    goto :goto_1

    .line 162
    .restart local v0       #it:Ljava/util/Iterator;
    .restart local v1       #pred:Lorg/apache/commons/collections/CursorableLinkedList$Listable;
    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v1, v2, v3}, Lorg/apache/commons/collections/CursorableLinkedList;->insertListable(Lorg/apache/commons/collections/CursorableLinkedList$Listable;Lorg/apache/commons/collections/CursorableLinkedList$Listable;Ljava/lang/Object;)Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v1

    goto :goto_2
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 4
    .parameter "c"

    .prologue
    .line 117
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 118
    const/4 v1, 0x0

    .line 124
    :goto_0
    return v1

    .line 120
    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 121
    .local v0, it:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 124
    const/4 v1, 0x1

    goto :goto_0

    .line 122
    :cond_1
    iget-object v1, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v1}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->prev()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v1, v2, v3}, Lorg/apache/commons/collections/CursorableLinkedList;->insertListable(Lorg/apache/commons/collections/CursorableLinkedList$Listable;Lorg/apache/commons/collections/CursorableLinkedList$Listable;Ljava/lang/Object;)Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    goto :goto_1
.end method

.method public addFirst(Ljava/lang/Object;)Z
    .locals 2
    .parameter "o"

    .prologue
    .line 176
    const/4 v0, 0x0

    iget-object v1, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v1}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->next()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p1}, Lorg/apache/commons/collections/CursorableLinkedList;->insertListable(Lorg/apache/commons/collections/CursorableLinkedList$Listable;Lorg/apache/commons/collections/CursorableLinkedList$Listable;Ljava/lang/Object;)Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    .line 177
    const/4 v0, 0x1

    return v0
.end method

.method public addLast(Ljava/lang/Object;)Z
    .locals 2
    .parameter "o"

    .prologue
    .line 188
    iget-object v0, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v0}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->prev()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lorg/apache/commons/collections/CursorableLinkedList;->insertListable(Lorg/apache/commons/collections/CursorableLinkedList$Listable;Lorg/apache/commons/collections/CursorableLinkedList$Listable;Ljava/lang/Object;)Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    .line 189
    const/4 v0, 0x1

    return v0
.end method

.method protected broadcastListableChanged(Lorg/apache/commons/collections/CursorableLinkedList$Listable;)V
    .locals 4
    .parameter "elt"

    .prologue
    .line 858
    iget-object v3, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_cursors:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 859
    .local v1, it:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 868
    return-void

    .line 860
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 861
    .local v2, ref:Ljava/lang/ref/WeakReference;
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/collections/CursorableLinkedList$Cursor;

    .line 862
    .local v0, cursor:Lorg/apache/commons/collections/CursorableLinkedList$Cursor;
    if-nez v0, :cond_1

    .line 863
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 865
    :cond_1
    invoke-virtual {v0, p1}, Lorg/apache/commons/collections/CursorableLinkedList$Cursor;->listableChanged(Lorg/apache/commons/collections/CursorableLinkedList$Listable;)V

    goto :goto_0
.end method

.method protected broadcastListableInserted(Lorg/apache/commons/collections/CursorableLinkedList$Listable;)V
    .locals 4
    .parameter "elt"

    .prologue
    .line 892
    iget-object v3, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_cursors:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 893
    .local v1, it:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 902
    return-void

    .line 894
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 895
    .local v2, ref:Ljava/lang/ref/WeakReference;
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/collections/CursorableLinkedList$Cursor;

    .line 896
    .local v0, cursor:Lorg/apache/commons/collections/CursorableLinkedList$Cursor;
    if-nez v0, :cond_1

    .line 897
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 899
    :cond_1
    invoke-virtual {v0, p1}, Lorg/apache/commons/collections/CursorableLinkedList$Cursor;->listableInserted(Lorg/apache/commons/collections/CursorableLinkedList$Listable;)V

    goto :goto_0
.end method

.method protected broadcastListableRemoved(Lorg/apache/commons/collections/CursorableLinkedList$Listable;)V
    .locals 4
    .parameter "elt"

    .prologue
    .line 875
    iget-object v3, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_cursors:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 876
    .local v1, it:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 885
    return-void

    .line 877
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 878
    .local v2, ref:Ljava/lang/ref/WeakReference;
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/collections/CursorableLinkedList$Cursor;

    .line 879
    .local v0, cursor:Lorg/apache/commons/collections/CursorableLinkedList$Cursor;
    if-nez v0, :cond_1

    .line 880
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 882
    :cond_1
    invoke-virtual {v0, p1}, Lorg/apache/commons/collections/CursorableLinkedList$Cursor;->listableRemoved(Lorg/apache/commons/collections/CursorableLinkedList$Listable;)V

    goto :goto_0
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 206
    invoke-virtual {p0}, Lorg/apache/commons/collections/CursorableLinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 207
    .local v0, it:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 211
    return-void

    .line 208
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 209
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 3
    .parameter "o"

    .prologue
    .line 223
    iget-object v2, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v2}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->next()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v0

    .local v0, elt:Lorg/apache/commons/collections/CursorableLinkedList$Listable;
    const/4 v1, 0x0

    .local v1, past:Lorg/apache/commons/collections/CursorableLinkedList$Listable;
    :goto_0
    if-eqz v0, :cond_0

    iget-object v2, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v2}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->prev()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v2

    if-ne v1, v2, :cond_1

    .line 229
    :cond_0
    const/4 v2, 0x0

    :goto_1
    return v2

    .line 224
    :cond_1
    if-nez p1, :cond_2

    invoke-virtual {v0}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->value()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    :cond_2
    if-eqz p1, :cond_4

    invoke-virtual {v0}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->value()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 226
    :cond_3
    const/4 v2, 0x1

    goto :goto_1

    .line 223
    :cond_4
    move-object v1, v0

    invoke-virtual {v0}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->next()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v0

    goto :goto_0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 2
    .parameter "c"

    .prologue
    .line 241
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 242
    .local v0, it:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 247
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 243
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/collections/CursorableLinkedList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 244
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public cursor()Lorg/apache/commons/collections/CursorableLinkedList$Cursor;
    .locals 2

    .prologue
    .line 276
    new-instance v0, Lorg/apache/commons/collections/CursorableLinkedList$Cursor;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/collections/CursorableLinkedList$Cursor;-><init>(Lorg/apache/commons/collections/CursorableLinkedList;I)V

    return-object v0
.end method

.method public cursor(I)Lorg/apache/commons/collections/CursorableLinkedList$Cursor;
    .locals 1
    .parameter "i"

    .prologue
    .line 296
    new-instance v0, Lorg/apache/commons/collections/CursorableLinkedList$Cursor;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections/CursorableLinkedList$Cursor;-><init>(Lorg/apache/commons/collections/CursorableLinkedList;I)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .parameter "o"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 314
    if-ne p1, p0, :cond_1

    .line 325
    .end local p1
    :cond_0
    :goto_0
    return v3

    .line 316
    .restart local p1
    :cond_1
    instance-of v5, p1, Ljava/util/List;

    if-nez v5, :cond_2

    move v3, v4

    .line 317
    goto :goto_0

    .line 319
    :cond_2
    check-cast p1, Ljava/util/List;

    .end local p1
    invoke-interface {p1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .line 320
    .local v1, it:Ljava/util/Iterator;
    iget-object v5, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v5}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->next()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v0

    .local v0, elt:Lorg/apache/commons/collections/CursorableLinkedList$Listable;
    const/4 v2, 0x0

    .local v2, past:Lorg/apache/commons/collections/CursorableLinkedList$Listable;
    :goto_1
    if-eqz v0, :cond_3

    iget-object v5, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v5}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->prev()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v5

    if-ne v2, v5, :cond_4

    .line 325
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    move v3, v4

    goto :goto_0

    .line 321
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {v0}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->value()Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_6

    move v5, v3

    :goto_2
    if-eqz v5, :cond_9

    :cond_5
    move v3, v4

    .line 322
    goto :goto_0

    :cond_6
    move v5, v4

    .line 321
    goto :goto_2

    :cond_7
    invoke-virtual {v0}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->value()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    move v5, v3

    goto :goto_2

    :cond_8
    move v5, v4

    goto :goto_2

    .line 320
    :cond_9
    move-object v2, v0

    invoke-virtual {v0}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->next()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v0

    goto :goto_1
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1
    .parameter "index"

    .prologue
    .line 338
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/CursorableLinkedList;->getListableAt(I)Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->value()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getFirst()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 346
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v1}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->next()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->value()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 348
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/NullPointerException;
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1
.end method

.method public getLast()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 357
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v1}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->prev()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->value()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 359
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/NullPointerException;
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1
.end method

.method protected getListableAt(I)Lorg/apache/commons/collections/CursorableLinkedList$Listable;
    .locals 6
    .parameter "index"

    .prologue
    .line 777
    if-ltz p1, :cond_0

    iget v3, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_size:I

    if-lt p1, v3, :cond_1

    .line 778
    :cond_0
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, " < 0 or "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, " >= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget v5, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_size:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 780
    :cond_1
    iget v3, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_size:I

    div-int/lit8 v3, v3, 0x2

    if-gt p1, v3, :cond_3

    .line 781
    iget-object v3, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v3}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->next()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v0

    .line 782
    .local v0, elt:Lorg/apache/commons/collections/CursorableLinkedList$Listable;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-lt v2, p1, :cond_2

    move-object v1, v0

    .line 791
    .end local v0           #elt:Lorg/apache/commons/collections/CursorableLinkedList$Listable;
    .local v1, elt:Lorg/apache/commons/collections/CursorableLinkedList$Listable;
    :goto_1
    return-object v1

    .line 783
    .end local v1           #elt:Lorg/apache/commons/collections/CursorableLinkedList$Listable;
    .restart local v0       #elt:Lorg/apache/commons/collections/CursorableLinkedList$Listable;
    :cond_2
    invoke-virtual {v0}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->next()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v0

    .line 782
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 787
    .end local v0           #elt:Lorg/apache/commons/collections/CursorableLinkedList$Listable;
    .end local v2           #i:I
    :cond_3
    iget-object v3, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v3}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->prev()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v0

    .line 788
    .restart local v0       #elt:Lorg/apache/commons/collections/CursorableLinkedList$Listable;
    iget v3, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_size:I

    add-int/lit8 v2, v3, -0x1

    .restart local v2       #i:I
    :goto_2
    if-gt v2, p1, :cond_4

    move-object v1, v0

    .line 791
    .end local v0           #elt:Lorg/apache/commons/collections/CursorableLinkedList$Listable;
    .restart local v1       #elt:Lorg/apache/commons/collections/CursorableLinkedList$Listable;
    goto :goto_1

    .line 789
    .end local v1           #elt:Lorg/apache/commons/collections/CursorableLinkedList$Listable;
    .restart local v0       #elt:Lorg/apache/commons/collections/CursorableLinkedList$Listable;
    :cond_4
    invoke-virtual {v0}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->prev()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v0

    .line 788
    add-int/lit8 v2, v2, -0x1

    goto :goto_2
.end method

.method public hashCode()I
    .locals 5

    .prologue
    .line 385
    const/4 v1, 0x1

    .line 386
    .local v1, hash:I
    iget-object v3, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v3}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->next()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v0

    .local v0, elt:Lorg/apache/commons/collections/CursorableLinkedList$Listable;
    const/4 v2, 0x0

    .local v2, past:Lorg/apache/commons/collections/CursorableLinkedList$Listable;
    :goto_0
    if-eqz v0, :cond_0

    iget-object v3, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v3}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->prev()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v3

    if-ne v2, v3, :cond_1

    .line 389
    :cond_0
    return v1

    .line 387
    :cond_1
    mul-int/lit8 v4, v1, 0x1f

    invoke-virtual {v0}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->value()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_2

    const/4 v3, 0x0

    :goto_1
    add-int v1, v4, v3

    .line 386
    move-object v2, v0

    invoke-virtual {v0}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->next()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v0

    goto :goto_0

    .line 387
    :cond_2
    invoke-virtual {v0}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->value()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto :goto_1
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 4
    .parameter "o"

    .prologue
    .line 404
    const/4 v1, 0x0

    .line 408
    .local v1, ndx:I
    if-nez p1, :cond_3

    .line 409
    iget-object v3, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v3}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->next()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v0

    .local v0, elt:Lorg/apache/commons/collections/CursorableLinkedList$Listable;
    const/4 v2, 0x0

    .local v2, past:Lorg/apache/commons/collections/CursorableLinkedList$Listable;
    :goto_0
    if-eqz v0, :cond_0

    iget-object v3, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v3}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->prev()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v3

    if-ne v2, v3, :cond_1

    .line 424
    :cond_0
    const/4 v3, -0x1

    :goto_1
    return v3

    .line 410
    :cond_1
    invoke-virtual {v0}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->value()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_2

    move v3, v1

    .line 411
    goto :goto_1

    .line 413
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 409
    move-object v2, v0

    invoke-virtual {v0}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->next()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v0

    goto :goto_0

    .line 417
    .end local v0           #elt:Lorg/apache/commons/collections/CursorableLinkedList$Listable;
    .end local v2           #past:Lorg/apache/commons/collections/CursorableLinkedList$Listable;
    :cond_3
    iget-object v3, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v3}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->next()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v0

    .restart local v0       #elt:Lorg/apache/commons/collections/CursorableLinkedList$Listable;
    const/4 v2, 0x0

    .restart local v2       #past:Lorg/apache/commons/collections/CursorableLinkedList$Listable;
    :goto_2
    if-eqz v0, :cond_0

    iget-object v3, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v3}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->prev()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v3

    if-eq v2, v3, :cond_0

    .line 418
    invoke-virtual {v0}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->value()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    move v3, v1

    .line 419
    goto :goto_1

    .line 421
    :cond_4
    add-int/lit8 v1, v1, 0x1

    .line 417
    move-object v2, v0

    invoke-virtual {v0}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->next()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v0

    goto :goto_2
.end method

.method protected insertListable(Lorg/apache/commons/collections/CursorableLinkedList$Listable;Lorg/apache/commons/collections/CursorableLinkedList$Listable;Ljava/lang/Object;)Lorg/apache/commons/collections/CursorableLinkedList$Listable;
    .locals 2
    .parameter "before"
    .parameter "after"
    .parameter "value"

    .prologue
    .line 727
    iget v1, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_modCount:I

    .line 728
    iget v1, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_size:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_size:I

    .line 729
    new-instance v0, Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-direct {v0, p1, p2, p3}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;-><init>(Lorg/apache/commons/collections/CursorableLinkedList$Listable;Lorg/apache/commons/collections/CursorableLinkedList$Listable;Ljava/lang/Object;)V

    .line 730
    .local v0, elt:Lorg/apache/commons/collections/CursorableLinkedList$Listable;
    if-eqz p1, :cond_0

    .line 731
    invoke-virtual {p1, v0}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->setNext(Lorg/apache/commons/collections/CursorableLinkedList$Listable;)V

    .line 736
    :goto_0
    if-eqz p2, :cond_1

    .line 737
    invoke-virtual {p2, v0}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->setPrev(Lorg/apache/commons/collections/CursorableLinkedList$Listable;)V

    .line 741
    :goto_1
    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/CursorableLinkedList;->broadcastListableInserted(Lorg/apache/commons/collections/CursorableLinkedList$Listable;)V

    .line 742
    return-object v0

    .line 733
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v1, v0}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->setNext(Lorg/apache/commons/collections/CursorableLinkedList$Listable;)V

    goto :goto_0

    .line 739
    :cond_1
    iget-object v1, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v1, v0}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->setPrev(Lorg/apache/commons/collections/CursorableLinkedList$Listable;)V

    goto :goto_1
.end method

.method protected invalidateCursors()V
    .locals 4

    .prologue
    .line 839
    iget-object v3, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_cursors:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 840
    .local v1, it:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 850
    return-void

    .line 841
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 842
    .local v2, ref:Ljava/lang/ref/WeakReference;
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/collections/CursorableLinkedList$Cursor;

    .line 843
    .local v0, cursor:Lorg/apache/commons/collections/CursorableLinkedList$Cursor;
    if-eqz v0, :cond_1

    .line 845
    invoke-virtual {v0}, Lorg/apache/commons/collections/CursorableLinkedList$Cursor;->invalidate()V

    .line 846
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->clear()V

    .line 848
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 432
    iget v0, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_size:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 440
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/CursorableLinkedList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 4
    .parameter "o"

    .prologue
    .line 455
    iget v3, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_size:I

    add-int/lit8 v1, v3, -0x1

    .line 459
    .local v1, ndx:I
    if-nez p1, :cond_3

    .line 460
    iget-object v3, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v3}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->prev()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v0

    .local v0, elt:Lorg/apache/commons/collections/CursorableLinkedList$Listable;
    const/4 v2, 0x0

    .local v2, past:Lorg/apache/commons/collections/CursorableLinkedList$Listable;
    :goto_0
    if-eqz v0, :cond_0

    iget-object v3, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v3}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->next()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v3

    if-ne v2, v3, :cond_1

    .line 474
    :cond_0
    const/4 v3, -0x1

    :goto_1
    return v3

    .line 461
    :cond_1
    invoke-virtual {v0}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->value()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_2

    move v3, v1

    .line 462
    goto :goto_1

    .line 464
    :cond_2
    add-int/lit8 v1, v1, -0x1

    .line 460
    move-object v2, v0

    invoke-virtual {v0}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->prev()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v0

    goto :goto_0

    .line 467
    .end local v0           #elt:Lorg/apache/commons/collections/CursorableLinkedList$Listable;
    .end local v2           #past:Lorg/apache/commons/collections/CursorableLinkedList$Listable;
    :cond_3
    iget-object v3, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v3}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->prev()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v0

    .restart local v0       #elt:Lorg/apache/commons/collections/CursorableLinkedList$Listable;
    const/4 v2, 0x0

    .restart local v2       #past:Lorg/apache/commons/collections/CursorableLinkedList$Listable;
    :goto_2
    if-eqz v0, :cond_0

    iget-object v3, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v3}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->next()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v3

    if-eq v2, v3, :cond_0

    .line 468
    invoke-virtual {v0}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->value()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    move v3, v1

    .line 469
    goto :goto_1

    .line 471
    :cond_4
    add-int/lit8 v1, v1, -0x1

    .line 467
    move-object v2, v0

    invoke-virtual {v0}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->prev()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v0

    goto :goto_2
.end method

.method public listIterator()Ljava/util/ListIterator;
    .locals 1

    .prologue
    .line 482
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/CursorableLinkedList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 3
    .parameter "index"

    .prologue
    .line 490
    if-ltz p1, :cond_0

    iget v0, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_size:I

    if-le p1, v0, :cond_1

    .line 491
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " < 0 or > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 493
    :cond_1
    new-instance v0, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;-><init>(Lorg/apache/commons/collections/CursorableLinkedList;I)V

    return-object v0
.end method

.method protected registerCursor(Lorg/apache/commons/collections/CursorableLinkedList$Cursor;)V
    .locals 4
    .parameter "cur"

    .prologue
    .line 802
    iget-object v2, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_cursors:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, it:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 809
    iget-object v2, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_cursors:Ljava/util/List;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 810
    return-void

    .line 803
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 804
    .local v1, ref:Ljava/lang/ref/WeakReference;
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 805
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 2
    .parameter "index"

    .prologue
    .line 532
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/CursorableLinkedList;->getListableAt(I)Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v0

    .line 533
    .local v0, elt:Lorg/apache/commons/collections/CursorableLinkedList$Listable;
    invoke-virtual {v0}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->value()Ljava/lang/Object;

    move-result-object v1

    .line 534
    .local v1, ret:Ljava/lang/Object;
    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/CursorableLinkedList;->removeListable(Lorg/apache/commons/collections/CursorableLinkedList$Listable;)V

    .line 535
    return-object v1
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 4
    .parameter "o"

    .prologue
    const/4 v2, 0x1

    .line 507
    iget-object v3, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v3}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->next()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v0

    .local v0, elt:Lorg/apache/commons/collections/CursorableLinkedList$Listable;
    const/4 v1, 0x0

    .local v1, past:Lorg/apache/commons/collections/CursorableLinkedList$Listable;
    :goto_0
    if-eqz v0, :cond_0

    iget-object v3, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v3}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->prev()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v3

    if-ne v1, v3, :cond_1

    .line 516
    :cond_0
    const/4 v2, 0x0

    :goto_1
    return v2

    .line 508
    :cond_1
    if-nez p1, :cond_2

    invoke-virtual {v0}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->value()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_2

    .line 509
    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/CursorableLinkedList;->removeListable(Lorg/apache/commons/collections/CursorableLinkedList$Listable;)V

    goto :goto_1

    .line 511
    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {v0}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->value()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 512
    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/CursorableLinkedList;->removeListable(Lorg/apache/commons/collections/CursorableLinkedList$Listable;)V

    goto :goto_1

    .line 507
    :cond_3
    move-object v1, v0

    invoke-virtual {v0}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->next()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v0

    goto :goto_0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 3
    .parameter "c"

    .prologue
    .line 547
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_size:I

    if-nez v2, :cond_2

    .line 548
    :cond_0
    const/4 v0, 0x0

    .line 558
    :cond_1
    return v0

    .line 550
    :cond_2
    const/4 v0, 0x0

    .line 551
    .local v0, changed:Z
    invoke-virtual {p0}, Lorg/apache/commons/collections/CursorableLinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 552
    .local v1, it:Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 553
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 554
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 555
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public removeFirst()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 566
    iget-object v1, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v1}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->next()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 567
    iget-object v1, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v1}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->next()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->value()Ljava/lang/Object;

    move-result-object v0

    .line 568
    .local v0, val:Ljava/lang/Object;
    iget-object v1, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v1}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->next()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/collections/CursorableLinkedList;->removeListable(Lorg/apache/commons/collections/CursorableLinkedList$Listable;)V

    .line 569
    return-object v0

    .line 571
    .end local v0           #val:Ljava/lang/Object;
    :cond_0
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1
.end method

.method public removeLast()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 579
    iget-object v1, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v1}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->prev()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 580
    iget-object v1, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v1}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->prev()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->value()Ljava/lang/Object;

    move-result-object v0

    .line 581
    .local v0, val:Ljava/lang/Object;
    iget-object v1, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v1}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->prev()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/collections/CursorableLinkedList;->removeListable(Lorg/apache/commons/collections/CursorableLinkedList$Listable;)V

    .line 582
    return-object v0

    .line 584
    .end local v0           #val:Ljava/lang/Object;
    :cond_0
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1
.end method

.method protected removeListable(Lorg/apache/commons/collections/CursorableLinkedList$Listable;)V
    .locals 2
    .parameter "elt"

    .prologue
    .line 751
    iget v0, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_modCount:I

    .line 752
    iget v0, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_size:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_size:I

    .line 753
    iget-object v0, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v0}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->next()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 754
    iget-object v0, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {p1}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->next()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->setNext(Lorg/apache/commons/collections/CursorableLinkedList$Listable;)V

    .line 756
    :cond_0
    invoke-virtual {p1}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->next()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 757
    invoke-virtual {p1}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->next()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->prev()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->setPrev(Lorg/apache/commons/collections/CursorableLinkedList$Listable;)V

    .line 759
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v0}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->prev()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v0

    if-ne v0, p1, :cond_2

    .line 760
    iget-object v0, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {p1}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->prev()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->setPrev(Lorg/apache/commons/collections/CursorableLinkedList$Listable;)V

    .line 762
    :cond_2
    invoke-virtual {p1}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->prev()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 763
    invoke-virtual {p1}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->prev()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->next()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->setNext(Lorg/apache/commons/collections/CursorableLinkedList$Listable;)V

    .line 765
    :cond_3
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/CursorableLinkedList;->broadcastListableRemoved(Lorg/apache/commons/collections/CursorableLinkedList$Listable;)V

    .line 766
    return-void
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 3
    .parameter "c"

    .prologue
    .line 599
    const/4 v0, 0x0

    .line 600
    .local v0, changed:Z
    invoke-virtual {p0}, Lorg/apache/commons/collections/CursorableLinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 601
    .local v1, it:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 607
    return v0

    .line 602
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 603
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 604
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "index"
    .parameter "element"

    .prologue
    .line 626
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/CursorableLinkedList;->getListableAt(I)Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v0

    .line 627
    .local v0, elt:Lorg/apache/commons/collections/CursorableLinkedList$Listable;
    invoke-virtual {v0, p2}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 628
    .local v1, val:Ljava/lang/Object;
    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/CursorableLinkedList;->broadcastListableChanged(Lorg/apache/commons/collections/CursorableLinkedList$Listable;)V

    .line 629
    return-object v1
.end method

.method public size()I
    .locals 1

    .prologue
    .line 637
    iget v0, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_size:I

    return v0
.end method

.method public subList(II)Ljava/util/List;
    .locals 1
    .parameter "i"
    .parameter "j"

    .prologue
    .line 707
    if-ltz p1, :cond_0

    iget v0, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_size:I

    if-gt p2, v0, :cond_0

    if-le p1, p2, :cond_1

    .line 708
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 709
    :cond_1
    if-nez p1, :cond_2

    iget v0, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_size:I

    if-ne p2, v0, :cond_2

    .line 712
    .end local p0
    :goto_0
    return-object p0

    .restart local p0
    :cond_2
    new-instance v0, Lorg/apache/commons/collections/CursorableSubList;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/commons/collections/CursorableSubList;-><init>(Lorg/apache/commons/collections/CursorableLinkedList;II)V

    move-object p0, v0

    goto :goto_0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 6

    .prologue
    .line 648
    iget v5, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_size:I

    new-array v0, v5, [Ljava/lang/Object;

    .line 649
    .local v0, array:[Ljava/lang/Object;
    const/4 v2, 0x0

    .line 650
    .local v2, i:I
    iget-object v5, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v5}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->next()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v1

    .local v1, elt:Lorg/apache/commons/collections/CursorableLinkedList$Listable;
    const/4 v4, 0x0

    .local v4, past:Lorg/apache/commons/collections/CursorableLinkedList$Listable;
    move v3, v2

    .end local v2           #i:I
    .local v3, i:I
    :goto_0
    if-eqz v1, :cond_0

    iget-object v5, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v5}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->prev()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v5

    if-ne v4, v5, :cond_1

    .line 653
    :cond_0
    return-object v0

    .line 651
    :cond_1
    add-int/lit8 v2, v3, 0x1

    .end local v3           #i:I
    .restart local v2       #i:I
    invoke-virtual {v1}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->value()Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v0, v3

    .line 650
    move-object v4, v1

    invoke-virtual {v1}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->next()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v1

    move v3, v2

    .end local v2           #i:I
    .restart local v3       #i:I
    goto :goto_0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 6
    .parameter "a"

    .prologue
    .line 672
    array-length v4, p1

    iget v5, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_size:I

    if-ge v4, v5, :cond_0

    .line 673
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v4

    iget v5, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_size:I

    invoke-static {v4, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, [Ljava/lang/Object;

    .line 675
    .restart local p1
    :cond_0
    const/4 v1, 0x0

    .line 676
    .local v1, i:I
    iget-object v4, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v4}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->next()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v0

    .local v0, elt:Lorg/apache/commons/collections/CursorableLinkedList$Listable;
    const/4 v3, 0x0

    .local v3, past:Lorg/apache/commons/collections/CursorableLinkedList$Listable;
    move v2, v1

    .end local v1           #i:I
    .local v2, i:I
    :goto_0
    if-eqz v0, :cond_1

    iget-object v4, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v4}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->prev()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v4

    if-ne v3, v4, :cond_3

    .line 679
    :cond_1
    array-length v4, p1

    iget v5, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_size:I

    if-le v4, v5, :cond_2

    .line 680
    iget v4, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_size:I

    const/4 v5, 0x0

    aput-object v5, p1, v4

    .line 682
    :cond_2
    return-object p1

    .line 677
    :cond_3
    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    invoke-virtual {v0}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->value()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, p1, v2

    .line 676
    move-object v3, v0

    invoke-virtual {v0}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->next()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v0

    move v2, v1

    .end local v1           #i:I
    .restart local v2       #i:I
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 690
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 691
    .local v0, buf:Ljava/lang/StringBuffer;
    const-string v3, "["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 692
    iget-object v3, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v3}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->next()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v1

    .local v1, elt:Lorg/apache/commons/collections/CursorableLinkedList$Listable;
    const/4 v2, 0x0

    .local v2, past:Lorg/apache/commons/collections/CursorableLinkedList$Listable;
    :goto_0
    if-eqz v1, :cond_0

    iget-object v3, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v3}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->prev()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v3

    if-ne v2, v3, :cond_1

    .line 698
    :cond_0
    const-string v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 699
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 693
    :cond_1
    iget-object v3, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v3}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->next()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v3

    if-eq v3, v1, :cond_2

    .line 694
    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 696
    :cond_2
    invoke-virtual {v1}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->value()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 692
    move-object v2, v1

    invoke-virtual {v1}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->next()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v1

    goto :goto_0
.end method

.method protected unregisterCursor(Lorg/apache/commons/collections/CursorableLinkedList$Cursor;)V
    .locals 4
    .parameter "cur"

    .prologue
    .line 817
    iget-object v3, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_cursors:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, it:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 832
    :goto_1
    return-void

    .line 818
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 819
    .local v2, ref:Ljava/lang/ref/WeakReference;
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/collections/CursorableLinkedList$Cursor;

    .line 820
    .local v0, cursor:Lorg/apache/commons/collections/CursorableLinkedList$Cursor;
    if-nez v0, :cond_2

    .line 824
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 826
    :cond_2
    if-ne v0, p1, :cond_0

    .line 827
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->clear()V

    .line 828
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_1
.end method
