.class public Lorg/apache/commons/collections/map/LRUMap;
.super Lorg/apache/commons/collections/map/AbstractLinkedMap;
.source "LRUMap.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Lorg/apache/commons/collections/BoundedMap;


# static fields
.field protected static final DEFAULT_MAX_SIZE:I = 0x64

.field static final serialVersionUID:J = -0x87eab066ef95b52L


# instance fields
.field private transient maxSize:I

.field private scanUntilRemovable:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 69
    const/16 v0, 0x64

    const/high16 v1, 0x3f40

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/commons/collections/map/LRUMap;-><init>(IFZ)V

    .line 70
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "maxSize"

    .prologue
    .line 79
    const/high16 v0, 0x3f40

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/collections/map/LRUMap;-><init>(IF)V

    .line 80
    return-void
.end method

.method public constructor <init>(IF)V
    .locals 1
    .parameter "maxSize"
    .parameter "loadFactor"

    .prologue
    .line 104
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/collections/map/LRUMap;-><init>(IFZ)V

    .line 105
    return-void
.end method

.method public constructor <init>(IFZ)V
    .locals 2
    .parameter "maxSize"
    .parameter "loadFactor"
    .parameter "scanUntilRemovable"

    .prologue
    const/4 v1, 0x1

    .line 119
    if-ge p1, v1, :cond_0

    const/16 v0, 0x10

    :goto_0
    invoke-direct {p0, v0, p2}, Lorg/apache/commons/collections/map/AbstractLinkedMap;-><init>(IF)V

    .line 120
    if-ge p1, v1, :cond_1

    .line 121
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "LRUMap max size must be greater than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move v0, p1

    .line 119
    goto :goto_0

    .line 123
    :cond_1
    iput p1, p0, Lorg/apache/commons/collections/map/LRUMap;->maxSize:I

    .line 124
    iput-boolean p3, p0, Lorg/apache/commons/collections/map/LRUMap;->scanUntilRemovable:Z

    .line 125
    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 1
    .parameter "maxSize"
    .parameter "scanUntilRemovable"

    .prologue
    .line 91
    const/high16 v0, 0x3f40

    invoke-direct {p0, p1, v0, p2}, Lorg/apache/commons/collections/map/LRUMap;-><init>(IFZ)V

    .line 92
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 1
    .parameter "map"

    .prologue
    .line 137
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/collections/map/LRUMap;-><init>(Ljava/util/Map;Z)V

    .line 138
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;Z)V
    .locals 2
    .parameter "map"
    .parameter "scanUntilRemovable"

    .prologue
    .line 152
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    const/high16 v1, 0x3f40

    invoke-direct {p0, v0, v1, p2}, Lorg/apache/commons/collections/map/LRUMap;-><init>(IFZ)V

    .line 153
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/map/AbstractHashedMap;->putAll(Ljava/util/Map;)V

    .line 154
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
    .line 371
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 372
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/map/LRUMap;->doReadObject(Ljava/io/ObjectInputStream;)V

    .line 373
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
    .line 363
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 364
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/map/LRUMap;->doWriteObject(Ljava/io/ObjectOutputStream;)V

    .line 365
    return-void
.end method


# virtual methods
.method protected addMapping(IILjava/lang/Object;Ljava/lang/Object;)V
    .locals 7
    .parameter "hashIndex"
    .parameter "hashCode"
    .parameter "key"
    .parameter "value"

    .prologue
    .line 227
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/LRUMap;->isFull()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 228
    iget-object v0, p0, Lorg/apache/commons/collections/map/AbstractLinkedMap;->header:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    iget-object v1, v0, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;->after:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    .line 229
    .local v1, reuse:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;
    const/4 v6, 0x0

    .line 230
    .local v6, removeLRUEntry:Z
    iget-boolean v0, p0, Lorg/apache/commons/collections/map/LRUMap;->scanUntilRemovable:Z

    if-eqz v0, :cond_2

    .line 231
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/collections/map/AbstractLinkedMap;->header:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    if-ne v1, v0, :cond_0

    .line 242
    :goto_1
    if-eqz v6, :cond_3

    move-object v0, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 243
    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/collections/map/LRUMap;->reuseMapping(Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;IILjava/lang/Object;Ljava/lang/Object;)V

    .line 250
    .end local v1           #reuse:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;
    .end local v6           #removeLRUEntry:Z
    :goto_2
    return-void

    .line 232
    .restart local v1       #reuse:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;
    .restart local v6       #removeLRUEntry:Z
    :cond_0
    invoke-virtual {p0, v1}, Lorg/apache/commons/collections/map/LRUMap;->removeLRU(Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 233
    const/4 v6, 0x1

    .line 234
    goto :goto_1

    .line 236
    :cond_1
    iget-object v1, v1, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;->after:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    goto :goto_0

    .line 239
    :cond_2
    invoke-virtual {p0, v1}, Lorg/apache/commons/collections/map/LRUMap;->removeLRU(Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;)Z

    move-result v6

    goto :goto_1

    .line 245
    :cond_3
    invoke-super {p0, p1, p2, p3, p4}, Lorg/apache/commons/collections/map/AbstractHashedMap;->addMapping(IILjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    .line 248
    .end local v1           #reuse:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;
    .end local v6           #removeLRUEntry:Z
    :cond_4
    invoke-super {p0, p1, p2, p3, p4}, Lorg/apache/commons/collections/map/AbstractHashedMap;->addMapping(IILjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2
.end method

.method public clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 356
    invoke-super {p0}, Lorg/apache/commons/collections/map/AbstractHashedMap;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected doReadObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 387
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/commons/collections/map/LRUMap;->maxSize:I

    .line 388
    invoke-super {p0, p1}, Lorg/apache/commons/collections/map/AbstractHashedMap;->doReadObject(Ljava/io/ObjectInputStream;)V

    .line 389
    return-void
.end method

.method protected doWriteObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 379
    iget v0, p0, Lorg/apache/commons/collections/map/LRUMap;->maxSize:I

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 380
    invoke-super {p0, p1}, Lorg/apache/commons/collections/map/AbstractHashedMap;->doWriteObject(Ljava/io/ObjectOutputStream;)V

    .line 381
    return-void
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "key"

    .prologue
    .line 167
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/map/AbstractHashedMap;->getEntry(Ljava/lang/Object;)Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    .line 168
    .local v0, entry:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;
    if-nez v0, :cond_0

    .line 169
    const/4 v1, 0x0

    .line 172
    :goto_0
    return-object v1

    .line 171
    :cond_0
    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/map/LRUMap;->moveToMRU(Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;)V

    .line 172
    invoke-virtual {v0}, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->getValue()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public isFull()Z
    .locals 2

    .prologue
    .line 326
    iget v0, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->size:I

    iget v1, p0, Lorg/apache/commons/collections/map/LRUMap;->maxSize:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isScanUntilRemovable()Z
    .locals 1

    .prologue
    .line 346
    iget-boolean v0, p0, Lorg/apache/commons/collections/map/LRUMap;->scanUntilRemovable:Z

    return v0
.end method

.method public maxSize()I
    .locals 1

    .prologue
    .line 335
    iget v0, p0, Lorg/apache/commons/collections/map/LRUMap;->maxSize:I

    return v0
.end method

.method protected moveToMRU(Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;)V
    .locals 2
    .parameter "entry"

    .prologue
    .line 184
    iget-object v0, p1, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;->after:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    iget-object v1, p0, Lorg/apache/commons/collections/map/AbstractLinkedMap;->header:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    if-eq v0, v1, :cond_0

    .line 185
    iget v0, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->modCount:I

    .line 187
    iget-object v0, p1, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;->before:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    iget-object v1, p1, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;->after:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    iput-object v1, v0, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;->after:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    .line 188
    iget-object v0, p1, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;->after:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    iget-object v1, p1, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;->before:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    iput-object v1, v0, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;->before:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    .line 190
    iget-object v0, p0, Lorg/apache/commons/collections/map/AbstractLinkedMap;->header:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    iput-object v0, p1, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;->after:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    .line 191
    iget-object v0, p0, Lorg/apache/commons/collections/map/AbstractLinkedMap;->header:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    iget-object v0, v0, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;->before:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    iput-object v0, p1, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;->before:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    .line 192
    iget-object v0, p0, Lorg/apache/commons/collections/map/AbstractLinkedMap;->header:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    iget-object v0, v0, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;->before:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    iput-object p1, v0, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;->after:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    .line 193
    iget-object v0, p0, Lorg/apache/commons/collections/map/AbstractLinkedMap;->header:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    iput-object p1, v0, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;->before:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    .line 195
    :cond_0
    return-void
.end method

.method protected removeLRU(Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;)Z
    .locals 1
    .parameter "entry"

    .prologue
    .line 316
    const/4 v0, 0x1

    return v0
.end method

.method protected reuseMapping(Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;IILjava/lang/Object;Ljava/lang/Object;)V
    .locals 5
    .parameter "entry"
    .parameter "hashIndex"
    .parameter "hashCode"
    .parameter "key"
    .parameter "value"

    .prologue
    .line 267
    iget v3, p1, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->hashCode:I

    iget-object v4, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    array-length v4, v4

    invoke-virtual {p0, v3, v4}, Lorg/apache/commons/collections/map/AbstractHashedMap;->hashIndex(II)I

    move-result v2

    .line 268
    .local v2, removeIndex:I
    iget-object v3, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    aget-object v0, v3, v2

    .line 269
    .local v0, loop:Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;
    const/4 v1, 0x0

    .line 270
    .local v1, previous:Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;
    :goto_0
    if-ne v0, p1, :cond_0

    .line 276
    iget v3, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->modCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->modCount:I

    .line 277
    invoke-virtual {p0, p1, v2, v1}, Lorg/apache/commons/collections/map/AbstractLinkedMap;->removeEntry(Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;ILorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;)V

    .line 278
    invoke-virtual/range {p0 .. p5}, Lorg/apache/commons/collections/map/AbstractHashedMap;->reuseEntry(Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;IILjava/lang/Object;Ljava/lang/Object;)V

    .line 279
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/collections/map/AbstractLinkedMap;->addEntry(Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;I)V

    .line 280
    return-void

    .line 271
    :cond_0
    move-object v1, v0

    .line 272
    iget-object v0, v0, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    goto :goto_0
.end method

.method protected updateEntry(Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;Ljava/lang/Object;)V
    .locals 1
    .parameter "entry"
    .parameter "newValue"

    .prologue
    .line 207
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/map/LRUMap;->moveToMRU(Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;)V

    .line 208
    invoke-virtual {p1, p2}, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    return-void
.end method
