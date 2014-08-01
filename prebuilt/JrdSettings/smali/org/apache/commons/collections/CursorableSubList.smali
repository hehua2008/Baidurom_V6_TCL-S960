.class Lorg/apache/commons/collections/CursorableSubList;
.super Lorg/apache/commons/collections/CursorableLinkedList;
.source "CursorableLinkedList.java"

# interfaces
.implements Ljava/util/List;


# instance fields
.field protected _list:Lorg/apache/commons/collections/CursorableLinkedList;

.field protected _post:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

.field protected _pre:Lorg/apache/commons/collections/CursorableLinkedList$Listable;


# direct methods
.method constructor <init>(Lorg/apache/commons/collections/CursorableLinkedList;II)V
    .locals 3
    .parameter "list"
    .parameter "from"
    .parameter "to"

    .prologue
    const/4 v1, 0x0

    .line 1201
    invoke-direct {p0}, Lorg/apache/commons/collections/CursorableLinkedList;-><init>()V

    .line 1455
    iput-object v1, p0, Lorg/apache/commons/collections/CursorableSubList;->_list:Lorg/apache/commons/collections/CursorableLinkedList;

    .line 1458
    iput-object v1, p0, Lorg/apache/commons/collections/CursorableSubList;->_pre:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    .line 1461
    iput-object v1, p0, Lorg/apache/commons/collections/CursorableSubList;->_post:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    .line 1202
    if-ltz p2, :cond_0

    invoke-virtual {p1}, Lorg/apache/commons/collections/CursorableLinkedList;->size()I

    move-result v0

    if-ge v0, p3, :cond_1

    .line 1203
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 1204
    :cond_1
    if-le p2, p3, :cond_2

    .line 1205
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 1207
    :cond_2
    iput-object p1, p0, Lorg/apache/commons/collections/CursorableSubList;->_list:Lorg/apache/commons/collections/CursorableLinkedList;

    .line 1208
    invoke-virtual {p1}, Lorg/apache/commons/collections/CursorableLinkedList;->size()I

    move-result v0

    if-ge p2, v0, :cond_4

    .line 1209
    iget-object v0, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    iget-object v2, p0, Lorg/apache/commons/collections/CursorableSubList;->_list:Lorg/apache/commons/collections/CursorableLinkedList;

    invoke-virtual {v2, p2}, Lorg/apache/commons/collections/CursorableLinkedList;->getListableAt(I)Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->setNext(Lorg/apache/commons/collections/CursorableLinkedList$Listable;)V

    .line 1210
    iget-object v0, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v0}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->next()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v0

    if-nez v0, :cond_3

    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lorg/apache/commons/collections/CursorableSubList;->_pre:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    .line 1214
    :goto_1
    if-ne p2, p3, :cond_6

    .line 1215
    iget-object v0, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v0, v1}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->setNext(Lorg/apache/commons/collections/CursorableLinkedList$Listable;)V

    .line 1216
    iget-object v0, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v0, v1}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->setPrev(Lorg/apache/commons/collections/CursorableLinkedList$Listable;)V

    .line 1217
    invoke-virtual {p1}, Lorg/apache/commons/collections/CursorableLinkedList;->size()I

    move-result v0

    if-ge p3, v0, :cond_5

    .line 1218
    iget-object v0, p0, Lorg/apache/commons/collections/CursorableSubList;->_list:Lorg/apache/commons/collections/CursorableLinkedList;

    invoke-virtual {v0, p3}, Lorg/apache/commons/collections/CursorableLinkedList;->getListableAt(I)Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections/CursorableSubList;->_post:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    .line 1226
    :goto_2
    sub-int v0, p3, p2

    iput v0, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_size:I

    .line 1227
    iget-object v0, p0, Lorg/apache/commons/collections/CursorableSubList;->_list:Lorg/apache/commons/collections/CursorableLinkedList;

    iget v0, v0, Lorg/apache/commons/collections/CursorableLinkedList;->_modCount:I

    iput v0, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_modCount:I

    .line 1228
    return-void

    .line 1210
    :cond_3
    iget-object v0, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v0}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->next()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->prev()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v0

    goto :goto_0

    .line 1212
    :cond_4
    iget-object v0, p0, Lorg/apache/commons/collections/CursorableSubList;->_list:Lorg/apache/commons/collections/CursorableLinkedList;

    add-int/lit8 v2, p2, -0x1

    invoke-virtual {v0, v2}, Lorg/apache/commons/collections/CursorableLinkedList;->getListableAt(I)Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections/CursorableSubList;->_pre:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    goto :goto_1

    .line 1220
    :cond_5
    iput-object v1, p0, Lorg/apache/commons/collections/CursorableSubList;->_post:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    goto :goto_2

    .line 1223
    :cond_6
    iget-object v0, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    iget-object v1, p0, Lorg/apache/commons/collections/CursorableSubList;->_list:Lorg/apache/commons/collections/CursorableLinkedList;

    add-int/lit8 v2, p3, -0x1

    invoke-virtual {v1, v2}, Lorg/apache/commons/collections/CursorableLinkedList;->getListableAt(I)Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->setPrev(Lorg/apache/commons/collections/CursorableLinkedList$Listable;)V

    .line 1224
    iget-object v0, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v0}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->prev()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->next()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections/CursorableSubList;->_post:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    goto :goto_2
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 0
    .parameter "index"
    .parameter "element"

    .prologue
    .line 1357
    invoke-virtual {p0}, Lorg/apache/commons/collections/CursorableSubList;->checkForComod()V

    .line 1358
    invoke-super {p0, p1, p2}, Lorg/apache/commons/collections/CursorableLinkedList;->add(ILjava/lang/Object;)V

    .line 1359
    return-void
.end method

.method public add(Ljava/lang/Object;)Z
    .locals 1
    .parameter "o"

    .prologue
    .line 1292
    invoke-virtual {p0}, Lorg/apache/commons/collections/CursorableSubList;->checkForComod()V

    .line 1293
    invoke-super {p0, p1}, Lorg/apache/commons/collections/CursorableLinkedList;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 1
    .parameter "index"
    .parameter "c"

    .prologue
    .line 1317
    invoke-virtual {p0}, Lorg/apache/commons/collections/CursorableSubList;->checkForComod()V

    .line 1318
    invoke-super {p0, p1, p2}, Lorg/apache/commons/collections/CursorableLinkedList;->addAll(ILjava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 1
    .parameter "c"

    .prologue
    .line 1287
    invoke-virtual {p0}, Lorg/apache/commons/collections/CursorableSubList;->checkForComod()V

    .line 1288
    invoke-super {p0, p1}, Lorg/apache/commons/collections/CursorableLinkedList;->addAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public addFirst(Ljava/lang/Object;)Z
    .locals 1
    .parameter "o"

    .prologue
    .line 1297
    invoke-virtual {p0}, Lorg/apache/commons/collections/CursorableSubList;->checkForComod()V

    .line 1298
    invoke-super {p0, p1}, Lorg/apache/commons/collections/CursorableLinkedList;->addFirst(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public addLast(Ljava/lang/Object;)Z
    .locals 1
    .parameter "o"

    .prologue
    .line 1302
    invoke-virtual {p0}, Lorg/apache/commons/collections/CursorableSubList;->checkForComod()V

    .line 1303
    invoke-super {p0, p1}, Lorg/apache/commons/collections/CursorableLinkedList;->addLast(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected checkForComod()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/ConcurrentModificationException;
        }
    .end annotation

    .prologue
    .line 1447
    iget v0, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_modCount:I

    iget-object v1, p0, Lorg/apache/commons/collections/CursorableSubList;->_list:Lorg/apache/commons/collections/CursorableLinkedList;

    iget v1, v1, Lorg/apache/commons/collections/CursorableLinkedList;->_modCount:I

    if-eq v0, v1, :cond_0

    .line 1448
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 1450
    :cond_0
    return-void
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 1233
    invoke-virtual {p0}, Lorg/apache/commons/collections/CursorableSubList;->checkForComod()V

    .line 1234
    invoke-virtual {p0}, Lorg/apache/commons/collections/CursorableSubList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1235
    .local v0, it:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1239
    return-void

    .line 1236
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1237
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .parameter "o"

    .prologue
    .line 1267
    invoke-virtual {p0}, Lorg/apache/commons/collections/CursorableSubList;->checkForComod()V

    .line 1268
    invoke-super {p0, p1}, Lorg/apache/commons/collections/CursorableLinkedList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1
    .parameter "c"

    .prologue
    .line 1312
    invoke-virtual {p0}, Lorg/apache/commons/collections/CursorableSubList;->checkForComod()V

    .line 1313
    invoke-super {p0, p1}, Lorg/apache/commons/collections/CursorableLinkedList;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .parameter "o"

    .prologue
    .line 1337
    invoke-virtual {p0}, Lorg/apache/commons/collections/CursorableSubList;->checkForComod()V

    .line 1338
    invoke-super {p0, p1}, Lorg/apache/commons/collections/CursorableLinkedList;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1
    .parameter "index"

    .prologue
    .line 1342
    invoke-virtual {p0}, Lorg/apache/commons/collections/CursorableSubList;->checkForComod()V

    .line 1343
    invoke-super {p0, p1}, Lorg/apache/commons/collections/CursorableLinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getFirst()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1347
    invoke-virtual {p0}, Lorg/apache/commons/collections/CursorableSubList;->checkForComod()V

    .line 1348
    invoke-super {p0}, Lorg/apache/commons/collections/CursorableLinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getLast()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1352
    invoke-virtual {p0}, Lorg/apache/commons/collections/CursorableSubList;->checkForComod()V

    .line 1353
    invoke-super {p0}, Lorg/apache/commons/collections/CursorableLinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 1322
    invoke-virtual {p0}, Lorg/apache/commons/collections/CursorableSubList;->checkForComod()V

    .line 1323
    invoke-super {p0}, Lorg/apache/commons/collections/CursorableLinkedList;->hashCode()I

    move-result v0

    return v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 1
    .parameter "o"

    .prologue
    .line 1372
    invoke-virtual {p0}, Lorg/apache/commons/collections/CursorableSubList;->checkForComod()V

    .line 1373
    invoke-super {p0, p1}, Lorg/apache/commons/collections/CursorableLinkedList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method protected insertListable(Lorg/apache/commons/collections/CursorableLinkedList$Listable;Lorg/apache/commons/collections/CursorableLinkedList$Listable;Ljava/lang/Object;)Lorg/apache/commons/collections/CursorableLinkedList$Listable;
    .locals 4
    .parameter "before"
    .parameter "after"
    .parameter "value"

    .prologue
    .line 1401
    iget v1, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_modCount:I

    .line 1402
    iget v1, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_size:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_size:I

    .line 1403
    iget-object v3, p0, Lorg/apache/commons/collections/CursorableSubList;->_list:Lorg/apache/commons/collections/CursorableLinkedList;

    if-nez p1, :cond_3

    iget-object v1, p0, Lorg/apache/commons/collections/CursorableSubList;->_pre:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-object v2, v1

    :goto_0
    if-nez p2, :cond_4

    iget-object v1, p0, Lorg/apache/commons/collections/CursorableSubList;->_post:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    :goto_1
    invoke-virtual {v3, v2, v1, p3}, Lorg/apache/commons/collections/CursorableLinkedList;->insertListable(Lorg/apache/commons/collections/CursorableLinkedList$Listable;Lorg/apache/commons/collections/CursorableLinkedList$Listable;Ljava/lang/Object;)Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v0

    .line 1404
    .local v0, elt:Lorg/apache/commons/collections/CursorableLinkedList$Listable;
    iget-object v1, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v1}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->next()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1405
    iget-object v1, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v1, v0}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->setNext(Lorg/apache/commons/collections/CursorableLinkedList$Listable;)V

    .line 1406
    iget-object v1, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v1, v0}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->setPrev(Lorg/apache/commons/collections/CursorableLinkedList$Listable;)V

    .line 1408
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v1}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->prev()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v1

    if-ne p1, v1, :cond_1

    .line 1409
    iget-object v1, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v1, v0}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->setPrev(Lorg/apache/commons/collections/CursorableLinkedList$Listable;)V

    .line 1411
    :cond_1
    iget-object v1, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v1}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->next()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v1

    if-ne p2, v1, :cond_2

    .line 1412
    iget-object v1, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v1, v0}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->setNext(Lorg/apache/commons/collections/CursorableLinkedList$Listable;)V

    .line 1414
    :cond_2
    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/CursorableLinkedList;->broadcastListableInserted(Lorg/apache/commons/collections/CursorableLinkedList$Listable;)V

    .line 1415
    return-object v0

    .end local v0           #elt:Lorg/apache/commons/collections/CursorableLinkedList$Listable;
    :cond_3
    move-object v2, p1

    .line 1403
    goto :goto_0

    :cond_4
    move-object v1, p2

    goto :goto_1
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 1252
    invoke-virtual {p0}, Lorg/apache/commons/collections/CursorableSubList;->checkForComod()V

    .line 1253
    invoke-super {p0}, Lorg/apache/commons/collections/CursorableLinkedList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 1242
    invoke-virtual {p0}, Lorg/apache/commons/collections/CursorableSubList;->checkForComod()V

    .line 1243
    invoke-super {p0}, Lorg/apache/commons/collections/CursorableLinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 1
    .parameter "o"

    .prologue
    .line 1377
    invoke-virtual {p0}, Lorg/apache/commons/collections/CursorableSubList;->checkForComod()V

    .line 1378
    invoke-super {p0, p1}, Lorg/apache/commons/collections/CursorableLinkedList;->lastIndexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public listIterator()Ljava/util/ListIterator;
    .locals 1

    .prologue
    .line 1382
    invoke-virtual {p0}, Lorg/apache/commons/collections/CursorableSubList;->checkForComod()V

    .line 1383
    invoke-super {p0}, Lorg/apache/commons/collections/CursorableLinkedList;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 1
    .parameter "index"

    .prologue
    .line 1362
    invoke-virtual {p0}, Lorg/apache/commons/collections/CursorableSubList;->checkForComod()V

    .line 1363
    invoke-super {p0, p1}, Lorg/apache/commons/collections/CursorableLinkedList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 1
    .parameter "index"

    .prologue
    .line 1367
    invoke-virtual {p0}, Lorg/apache/commons/collections/CursorableSubList;->checkForComod()V

    .line 1368
    invoke-super {p0, p1}, Lorg/apache/commons/collections/CursorableLinkedList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .parameter "o"

    .prologue
    .line 1272
    invoke-virtual {p0}, Lorg/apache/commons/collections/CursorableSubList;->checkForComod()V

    .line 1273
    invoke-super {p0, p1}, Lorg/apache/commons/collections/CursorableLinkedList;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 1
    .parameter "c"

    .prologue
    .line 1307
    invoke-virtual {p0}, Lorg/apache/commons/collections/CursorableSubList;->checkForComod()V

    .line 1308
    invoke-super {p0, p1}, Lorg/apache/commons/collections/CursorableLinkedList;->removeAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public removeFirst()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1277
    invoke-virtual {p0}, Lorg/apache/commons/collections/CursorableSubList;->checkForComod()V

    .line 1278
    invoke-super {p0}, Lorg/apache/commons/collections/CursorableLinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public removeLast()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1282
    invoke-virtual {p0}, Lorg/apache/commons/collections/CursorableSubList;->checkForComod()V

    .line 1283
    invoke-super {p0}, Lorg/apache/commons/collections/CursorableLinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected removeListable(Lorg/apache/commons/collections/CursorableLinkedList$Listable;)V
    .locals 2
    .parameter "elt"

    .prologue
    const/4 v1, 0x0

    .line 1422
    iget v0, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_modCount:I

    .line 1423
    iget v0, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_size:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_size:I

    .line 1424
    iget-object v0, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v0}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->next()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v0

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v0}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->prev()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 1425
    iget-object v0, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v0, v1}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->setNext(Lorg/apache/commons/collections/CursorableLinkedList$Listable;)V

    .line 1426
    iget-object v0, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v0, v1}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->setPrev(Lorg/apache/commons/collections/CursorableLinkedList$Listable;)V

    .line 1428
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v0}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->next()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v0

    if-ne v0, p1, :cond_1

    .line 1429
    iget-object v0, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {p1}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->next()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->setNext(Lorg/apache/commons/collections/CursorableLinkedList$Listable;)V

    .line 1431
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v0}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->prev()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v0

    if-ne v0, p1, :cond_2

    .line 1432
    iget-object v0, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {p1}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->prev()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->setPrev(Lorg/apache/commons/collections/CursorableLinkedList$Listable;)V

    .line 1434
    :cond_2
    iget-object v0, p0, Lorg/apache/commons/collections/CursorableSubList;->_list:Lorg/apache/commons/collections/CursorableLinkedList;

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections/CursorableLinkedList;->removeListable(Lorg/apache/commons/collections/CursorableLinkedList$Listable;)V

    .line 1435
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/CursorableLinkedList;->broadcastListableRemoved(Lorg/apache/commons/collections/CursorableLinkedList$Listable;)V

    .line 1436
    return-void
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 1
    .parameter "c"

    .prologue
    .line 1327
    invoke-virtual {p0}, Lorg/apache/commons/collections/CursorableSubList;->checkForComod()V

    .line 1328
    invoke-super {p0, p1}, Lorg/apache/commons/collections/CursorableLinkedList;->retainAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "index"
    .parameter "element"

    .prologue
    .line 1332
    invoke-virtual {p0}, Lorg/apache/commons/collections/CursorableSubList;->checkForComod()V

    .line 1333
    invoke-super {p0, p1, p2}, Lorg/apache/commons/collections/CursorableLinkedList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 1247
    invoke-virtual {p0}, Lorg/apache/commons/collections/CursorableSubList;->checkForComod()V

    .line 1248
    invoke-super {p0}, Lorg/apache/commons/collections/CursorableLinkedList;->size()I

    move-result v0

    return v0
.end method

.method public subList(II)Ljava/util/List;
    .locals 1
    .parameter "fromIndex"
    .parameter "toIndex"

    .prologue
    .line 1387
    invoke-virtual {p0}, Lorg/apache/commons/collections/CursorableSubList;->checkForComod()V

    .line 1388
    invoke-super {p0, p1, p2}, Lorg/apache/commons/collections/CursorableLinkedList;->subList(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1257
    invoke-virtual {p0}, Lorg/apache/commons/collections/CursorableSubList;->checkForComod()V

    .line 1258
    invoke-super {p0}, Lorg/apache/commons/collections/CursorableLinkedList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .parameter "a"

    .prologue
    .line 1262
    invoke-virtual {p0}, Lorg/apache/commons/collections/CursorableSubList;->checkForComod()V

    .line 1263
    invoke-super {p0, p1}, Lorg/apache/commons/collections/CursorableLinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
