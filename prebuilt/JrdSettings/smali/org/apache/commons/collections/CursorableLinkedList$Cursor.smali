.class public Lorg/apache/commons/collections/CursorableLinkedList$Cursor;
.super Lorg/apache/commons/collections/CursorableLinkedList$ListIter;
.source "CursorableLinkedList.java"

# interfaces
.implements Ljava/util/ListIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections/CursorableLinkedList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Cursor"
.end annotation


# instance fields
.field _valid:Z

.field private final this$0:Lorg/apache/commons/collections/CursorableLinkedList;


# direct methods
.method constructor <init>(Lorg/apache/commons/collections/CursorableLinkedList;I)V
    .locals 1
    .parameter "this$0"
    .parameter "index"

    .prologue
    .line 1110
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;-><init>(Lorg/apache/commons/collections/CursorableLinkedList;I)V

    .line 1109
    iput-object p1, p0, Lorg/apache/commons/collections/CursorableLinkedList$Cursor;->this$0:Lorg/apache/commons/collections/CursorableLinkedList;

    .line 1107
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/collections/CursorableLinkedList$Cursor;->_valid:Z

    .line 1111
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/collections/CursorableLinkedList$Cursor;->_valid:Z

    .line 1112
    invoke-virtual {p1, p0}, Lorg/apache/commons/collections/CursorableLinkedList;->registerCursor(Lorg/apache/commons/collections/CursorableLinkedList$Cursor;)V

    .line 1113
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 4
    .parameter "o"

    .prologue
    .line 1124
    invoke-virtual {p0}, Lorg/apache/commons/collections/CursorableLinkedList$Cursor;->checkForComod()V

    .line 1125
    iget-object v1, p0, Lorg/apache/commons/collections/CursorableLinkedList$Cursor;->this$0:Lorg/apache/commons/collections/CursorableLinkedList;

    iget-object v2, p0, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->_cur:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v2}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->prev()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->_cur:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v3}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->next()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v3

    invoke-virtual {v1, v2, v3, p1}, Lorg/apache/commons/collections/CursorableLinkedList;->insertListable(Lorg/apache/commons/collections/CursorableLinkedList$Listable;Lorg/apache/commons/collections/CursorableLinkedList$Listable;Ljava/lang/Object;)Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v0

    .line 1126
    .local v0, elt:Lorg/apache/commons/collections/CursorableLinkedList$Listable;
    iget-object v1, p0, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->_cur:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v1, v0}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->setPrev(Lorg/apache/commons/collections/CursorableLinkedList$Listable;)V

    .line 1127
    iget-object v1, p0, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->_cur:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v0}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->next()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->setNext(Lorg/apache/commons/collections/CursorableLinkedList$Listable;)V

    .line 1128
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->_lastReturned:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    .line 1129
    iget v1, p0, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->_nextIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->_nextIndex:I

    .line 1130
    iget v1, p0, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->_expectedModCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->_expectedModCount:I

    .line 1131
    return-void
.end method

.method protected checkForComod()V
    .locals 1

    .prologue
    .line 1170
    iget-boolean v0, p0, Lorg/apache/commons/collections/CursorableLinkedList$Cursor;->_valid:Z

    if-nez v0, :cond_0

    .line 1171
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 1173
    :cond_0
    return-void
.end method

.method public close()V
    .locals 1

    .prologue
    .line 1188
    iget-boolean v0, p0, Lorg/apache/commons/collections/CursorableLinkedList$Cursor;->_valid:Z

    if-eqz v0, :cond_0

    .line 1189
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/collections/CursorableLinkedList$Cursor;->_valid:Z

    .line 1190
    iget-object v0, p0, Lorg/apache/commons/collections/CursorableLinkedList$Cursor;->this$0:Lorg/apache/commons/collections/CursorableLinkedList;

    invoke-virtual {v0, p0}, Lorg/apache/commons/collections/CursorableLinkedList;->unregisterCursor(Lorg/apache/commons/collections/CursorableLinkedList$Cursor;)V

    .line 1192
    :cond_0
    return-void
.end method

.method protected invalidate()V
    .locals 1

    .prologue
    .line 1176
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/collections/CursorableLinkedList$Cursor;->_valid:Z

    .line 1177
    return-void
.end method

.method protected listableChanged(Lorg/apache/commons/collections/CursorableLinkedList$Listable;)V
    .locals 1
    .parameter "elt"

    .prologue
    .line 1164
    iget-object v0, p0, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->_lastReturned:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    if-ne v0, p1, :cond_0

    .line 1165
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->_lastReturned:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    .line 1167
    :cond_0
    return-void
.end method

.method protected listableInserted(Lorg/apache/commons/collections/CursorableLinkedList$Listable;)V
    .locals 2
    .parameter "elt"

    .prologue
    .line 1150
    iget-object v0, p0, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->_cur:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v0}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->next()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->_cur:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v0}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->prev()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v0

    if-nez v0, :cond_3

    .line 1151
    iget-object v0, p0, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->_cur:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->setNext(Lorg/apache/commons/collections/CursorableLinkedList$Listable;)V

    .line 1155
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->_cur:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v0}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->next()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->next()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 1156
    iget-object v0, p0, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->_cur:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->setPrev(Lorg/apache/commons/collections/CursorableLinkedList$Listable;)V

    .line 1158
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->_lastReturned:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    if-ne v0, p1, :cond_2

    .line 1159
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->_lastReturned:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    .line 1161
    :cond_2
    return-void

    .line 1152
    :cond_3
    iget-object v0, p0, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->_cur:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v0}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->prev()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->prev()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 1153
    iget-object v0, p0, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->_cur:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->setNext(Lorg/apache/commons/collections/CursorableLinkedList$Listable;)V

    goto :goto_0
.end method

.method protected listableRemoved(Lorg/apache/commons/collections/CursorableLinkedList$Listable;)V
    .locals 3
    .parameter "elt"

    .prologue
    const/4 v2, 0x0

    .line 1134
    iget-object v0, p0, Lorg/apache/commons/collections/CursorableLinkedList$Cursor;->this$0:Lorg/apache/commons/collections/CursorableLinkedList;

    iget-object v0, v0, Lorg/apache/commons/collections/CursorableLinkedList;->_head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v0}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->prev()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v0

    if-nez v0, :cond_3

    .line 1135
    iget-object v0, p0, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->_cur:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v0, v2}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->setNext(Lorg/apache/commons/collections/CursorableLinkedList$Listable;)V

    .line 1139
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/collections/CursorableLinkedList$Cursor;->this$0:Lorg/apache/commons/collections/CursorableLinkedList;

    iget-object v0, v0, Lorg/apache/commons/collections/CursorableLinkedList;->_head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v0}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->next()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v0

    if-nez v0, :cond_4

    .line 1140
    iget-object v0, p0, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->_cur:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v0, v2}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->setPrev(Lorg/apache/commons/collections/CursorableLinkedList$Listable;)V

    .line 1144
    :cond_1
    :goto_1
    iget-object v0, p0, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->_lastReturned:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    if-ne v0, p1, :cond_2

    .line 1145
    iput-object v2, p0, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->_lastReturned:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    .line 1147
    :cond_2
    return-void

    .line 1136
    :cond_3
    iget-object v0, p0, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->_cur:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v0}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->next()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 1137
    iget-object v0, p0, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->_cur:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {p1}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->next()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->setNext(Lorg/apache/commons/collections/CursorableLinkedList$Listable;)V

    goto :goto_0

    .line 1141
    :cond_4
    iget-object v0, p0, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->_cur:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v0}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->prev()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v0

    if-ne v0, p1, :cond_1

    .line 1142
    iget-object v0, p0, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;->_cur:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {p1}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->prev()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->setPrev(Lorg/apache/commons/collections/CursorableLinkedList$Listable;)V

    goto :goto_1
.end method

.method public nextIndex()I
    .locals 1

    .prologue
    .line 1120
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public previousIndex()I
    .locals 1

    .prologue
    .line 1116
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
