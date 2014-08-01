.class public Lorg/apache/commons/collections/map/AbstractLinkedMap;
.super Lorg/apache/commons/collections/map/AbstractHashedMap;
.source "AbstractLinkedMap.java"

# interfaces
.implements Lorg/apache/commons/collections/OrderedMap;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkIterator;,
        Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;,
        Lorg/apache/commons/collections/map/AbstractLinkedMap$ValuesIterator;,
        Lorg/apache/commons/collections/map/AbstractLinkedMap$KeySetIterator;,
        Lorg/apache/commons/collections/map/AbstractLinkedMap$EntrySetIterator;,
        Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkMapIterator;
    }
.end annotation


# instance fields
.field protected transient header:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Lorg/apache/commons/collections/map/AbstractHashedMap;-><init>()V

    .line 75
    return-void
.end method

.method protected constructor <init>(I)V
    .locals 0
    .parameter "initialCapacity"

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/map/AbstractHashedMap;-><init>(I)V

    .line 96
    return-void
.end method

.method protected constructor <init>(IF)V
    .locals 0
    .parameter "initialCapacity"
    .parameter "loadFactor"

    .prologue
    .line 108
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections/map/AbstractHashedMap;-><init>(IF)V

    .line 109
    return-void
.end method

.method protected constructor <init>(IFI)V
    .locals 0
    .parameter "initialCapacity"
    .parameter "loadFactor"
    .parameter "threshold"

    .prologue
    .line 85
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/collections/map/AbstractHashedMap;-><init>(IFI)V

    .line 86
    return-void
.end method

.method protected constructor <init>(Ljava/util/Map;)V
    .locals 0
    .parameter "map"

    .prologue
    .line 118
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/map/AbstractHashedMap;-><init>(Ljava/util/Map;)V

    .line 119
    return-void
.end method


# virtual methods
.method protected addEntry(Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;I)V
    .locals 2
    .parameter "entry"
    .parameter "hashIndex"

    .prologue
    .line 253
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    .line 254
    .local v0, link:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;
    iget-object v1, p0, Lorg/apache/commons/collections/map/AbstractLinkedMap;->header:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    iput-object v1, v0, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;->after:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    .line 255
    iget-object v1, p0, Lorg/apache/commons/collections/map/AbstractLinkedMap;->header:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    iget-object v1, v1, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;->before:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    iput-object v1, v0, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;->before:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    .line 256
    iget-object v1, p0, Lorg/apache/commons/collections/map/AbstractLinkedMap;->header:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    iget-object v1, v1, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;->before:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    iput-object v0, v1, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;->after:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    .line 257
    iget-object v1, p0, Lorg/apache/commons/collections/map/AbstractLinkedMap;->header:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    iput-object v0, v1, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;->before:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    .line 258
    iget-object v1, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    aput-object p1, v1, p2

    .line 259
    return-void
.end method

.method public clear()V
    .locals 3

    .prologue
    .line 160
    invoke-super {p0}, Lorg/apache/commons/collections/map/AbstractHashedMap;->clear()V

    .line 161
    iget-object v0, p0, Lorg/apache/commons/collections/map/AbstractLinkedMap;->header:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    iget-object v1, p0, Lorg/apache/commons/collections/map/AbstractLinkedMap;->header:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    iget-object v2, p0, Lorg/apache/commons/collections/map/AbstractLinkedMap;->header:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    iput-object v2, v1, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;->after:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    iput-object v2, v0, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;->before:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    .line 162
    return-void
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 3
    .parameter "value"

    .prologue
    const/4 v1, 0x1

    .line 138
    if-nez p1, :cond_3

    .line 139
    iget-object v2, p0, Lorg/apache/commons/collections/map/AbstractLinkedMap;->header:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    iget-object v0, v2, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;->after:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    .local v0, entry:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;
    :goto_0
    iget-object v2, p0, Lorg/apache/commons/collections/map/AbstractLinkedMap;->header:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    if-ne v0, v2, :cond_2

    .line 151
    :cond_0
    const/4 v1, 0x0

    :cond_1
    return v1

    .line 140
    :cond_2
    invoke-virtual {v0}, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 139
    iget-object v0, v0, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;->after:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    goto :goto_0

    .line 145
    .end local v0           #entry:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;
    :cond_3
    iget-object v2, p0, Lorg/apache/commons/collections/map/AbstractLinkedMap;->header:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    iget-object v0, v2, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;->after:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    .restart local v0       #entry:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;
    :goto_1
    iget-object v2, p0, Lorg/apache/commons/collections/map/AbstractLinkedMap;->header:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    if-eq v0, v2, :cond_0

    .line 146
    invoke-virtual {v0}, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lorg/apache/commons/collections/map/AbstractHashedMap;->isEqualValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 145
    iget-object v0, v0, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;->after:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    goto :goto_1
.end method

.method protected createEntry(Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;ILjava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;
    .locals 1
    .parameter "next"
    .parameter "hashCode"
    .parameter "key"
    .parameter "value"

    .prologue
    .line 273
    new-instance v0, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    invoke-direct {v0, p1, p2, p3, p4}, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;-><init>(Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;ILjava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method protected createEntrySetIterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 407
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/AbstractHashedMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 408
    sget-object v0, Lorg/apache/commons/collections/iterators/EmptyOrderedIterator;->INSTANCE:Lorg/apache/commons/collections/OrderedIterator;

    .line 410
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/apache/commons/collections/map/AbstractLinkedMap$EntrySetIterator;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/map/AbstractLinkedMap$EntrySetIterator;-><init>(Lorg/apache/commons/collections/map/AbstractLinkedMap;)V

    goto :goto_0
.end method

.method protected createKeySetIterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 439
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/AbstractHashedMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 440
    sget-object v0, Lorg/apache/commons/collections/iterators/EmptyOrderedIterator;->INSTANCE:Lorg/apache/commons/collections/OrderedIterator;

    .line 442
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/apache/commons/collections/map/AbstractLinkedMap$KeySetIterator;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/map/AbstractLinkedMap$KeySetIterator;-><init>(Lorg/apache/commons/collections/map/AbstractLinkedMap;)V

    goto :goto_0
.end method

.method protected createValuesIterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 471
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/AbstractHashedMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 472
    sget-object v0, Lorg/apache/commons/collections/iterators/EmptyOrderedIterator;->INSTANCE:Lorg/apache/commons/collections/OrderedIterator;

    .line 474
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/apache/commons/collections/map/AbstractLinkedMap$ValuesIterator;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/map/AbstractLinkedMap$ValuesIterator;-><init>(Lorg/apache/commons/collections/map/AbstractLinkedMap;)V

    goto :goto_0
.end method

.method protected entryAfter(Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;)Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;
    .locals 1
    .parameter "entry"

    .prologue
    .line 319
    iget-object v0, p1, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;->after:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    return-object v0
.end method

.method protected entryBefore(Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;)Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;
    .locals 1
    .parameter "entry"

    .prologue
    .line 306
    iget-object v0, p1, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;->before:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    return-object v0
.end method

.method public firstKey()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 171
    iget v0, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->size:I

    if-nez v0, :cond_0

    .line 172
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "Map is empty"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 174
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/map/AbstractLinkedMap;->header:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    iget-object v0, v0, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;->after:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    invoke-virtual {v0}, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected getEntry(I)Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;
    .locals 5
    .parameter "index"

    .prologue
    .line 220
    if-gez p1, :cond_0

    .line 221
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " is less than zero"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 223
    :cond_0
    iget v2, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->size:I

    if-lt p1, v2, :cond_1

    .line 224
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " is invalid for size "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget v4, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->size:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 227
    :cond_1
    iget v2, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->size:I

    div-int/lit8 v2, v2, 0x2

    if-ge p1, v2, :cond_4

    .line 229
    iget-object v2, p0, Lorg/apache/commons/collections/map/AbstractLinkedMap;->header:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    iget-object v1, v2, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;->after:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    .line 230
    .local v1, entry:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;
    const/4 v0, 0x0

    .local v0, currentIndex:I
    :goto_0
    if-lt v0, p1, :cond_3

    .line 240
    :cond_2
    return-object v1

    .line 231
    :cond_3
    iget-object v1, v1, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;->after:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    .line 230
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 235
    .end local v0           #currentIndex:I
    .end local v1           #entry:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;
    :cond_4
    iget-object v1, p0, Lorg/apache/commons/collections/map/AbstractLinkedMap;->header:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    .line 236
    .restart local v1       #entry:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;
    iget v0, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->size:I

    .restart local v0       #currentIndex:I
    :goto_1
    if-le v0, p1, :cond_2

    .line 237
    iget-object v1, v1, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;->before:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    .line 236
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method protected init()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 125
    new-instance v0, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    const/4 v1, -0x1

    invoke-direct {v0, v2, v1, v2, v2}, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;-><init>(Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/apache/commons/collections/map/AbstractLinkedMap;->header:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    .line 126
    iget-object v0, p0, Lorg/apache/commons/collections/map/AbstractLinkedMap;->header:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    iget-object v1, p0, Lorg/apache/commons/collections/map/AbstractLinkedMap;->header:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    iget-object v2, p0, Lorg/apache/commons/collections/map/AbstractLinkedMap;->header:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    iput-object v2, v1, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;->after:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    iput-object v2, v0, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;->before:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    .line 127
    return-void
.end method

.method public lastKey()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 183
    iget v0, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->size:I

    if-nez v0, :cond_0

    .line 184
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "Map is empty"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 186
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/map/AbstractLinkedMap;->header:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    iget-object v0, v0, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;->before:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    invoke-virtual {v0}, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public mapIterator()Lorg/apache/commons/collections/MapIterator;
    .locals 1

    .prologue
    .line 334
    iget v0, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->size:I

    if-nez v0, :cond_0

    .line 335
    sget-object v0, Lorg/apache/commons/collections/iterators/EmptyOrderedMapIterator;->INSTANCE:Lorg/apache/commons/collections/OrderedMapIterator;

    .line 337
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkMapIterator;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkMapIterator;-><init>(Lorg/apache/commons/collections/map/AbstractLinkedMap;)V

    goto :goto_0
.end method

.method public nextKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter "key"

    .prologue
    .line 196
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/map/AbstractHashedMap;->getEntry(Ljava/lang/Object;)Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    .line 197
    .local v0, entry:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;->after:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    iget-object v2, p0, Lorg/apache/commons/collections/map/AbstractLinkedMap;->header:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_1
    iget-object v1, v0, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;->after:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    invoke-virtual {v1}, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->getKey()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public orderedMapIterator()Lorg/apache/commons/collections/OrderedMapIterator;
    .locals 1

    .prologue
    .line 351
    iget v0, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->size:I

    if-nez v0, :cond_0

    .line 352
    sget-object v0, Lorg/apache/commons/collections/iterators/EmptyOrderedMapIterator;->INSTANCE:Lorg/apache/commons/collections/OrderedMapIterator;

    .line 354
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkMapIterator;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkMapIterator;-><init>(Lorg/apache/commons/collections/map/AbstractLinkedMap;)V

    goto :goto_0
.end method

.method public previousKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter "key"

    .prologue
    .line 207
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/map/AbstractHashedMap;->getEntry(Ljava/lang/Object;)Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    .line 208
    .local v0, entry:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;->before:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    iget-object v2, p0, Lorg/apache/commons/collections/map/AbstractLinkedMap;->header:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_1
    iget-object v1, v0, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;->before:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    invoke-virtual {v1}, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->getKey()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method protected removeEntry(Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;ILorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;)V
    .locals 4
    .parameter "entry"
    .parameter "hashIndex"
    .parameter "previous"

    .prologue
    const/4 v3, 0x0

    .line 287
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    .line 288
    .local v0, link:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;
    iget-object v1, v0, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;->before:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    iget-object v2, v0, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;->after:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    iput-object v2, v1, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;->after:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    .line 289
    iget-object v1, v0, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;->after:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    iget-object v2, v0, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;->before:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    iput-object v2, v1, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;->before:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    .line 290
    iput-object v3, v0, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;->after:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    .line 291
    iput-object v3, v0, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;->before:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    .line 292
    invoke-super {p0, p1, p2, p3}, Lorg/apache/commons/collections/map/AbstractHashedMap;->removeEntry(Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;ILorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;)V

    .line 293
    return-void
.end method
