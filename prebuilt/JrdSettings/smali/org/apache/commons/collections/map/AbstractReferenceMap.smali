.class public abstract Lorg/apache/commons/collections/map/AbstractReferenceMap;
.super Lorg/apache/commons/collections/map/AbstractHashedMap;
.source "AbstractReferenceMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/collections/map/AbstractReferenceMap$WeakRef;,
        Lorg/apache/commons/collections/map/AbstractReferenceMap$SoftRef;,
        Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceMapIterator;,
        Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceValuesIterator;,
        Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceKeySetIterator;,
        Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntrySetIterator;,
        Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntry;,
        Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceValues;,
        Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceKeySet;,
        Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntrySet;
    }
.end annotation


# static fields
.field public static final HARD:I = 0x0

.field public static final SOFT:I = 0x1

.field public static final WEAK:I = 0x2


# instance fields
.field protected keyType:I

.field protected purgeValues:Z

.field private transient queue:Ljava/lang/ref/ReferenceQueue;

.field protected valueType:I


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 123
    invoke-direct {p0}, Lorg/apache/commons/collections/map/AbstractHashedMap;-><init>()V

    .line 124
    return-void
.end method

.method protected constructor <init>(IIIFZ)V
    .locals 1
    .parameter "keyType"
    .parameter "valueType"
    .parameter "capacity"
    .parameter "loadFactor"
    .parameter "purgeValues"

    .prologue
    .line 142
    invoke-direct {p0, p3, p4}, Lorg/apache/commons/collections/map/AbstractHashedMap;-><init>(IF)V

    .line 143
    const-string v0, "keyType"

    invoke-static {v0, p1}, Lorg/apache/commons/collections/map/AbstractReferenceMap;->verify(Ljava/lang/String;I)V

    .line 144
    const-string v0, "valueType"

    invoke-static {v0, p2}, Lorg/apache/commons/collections/map/AbstractReferenceMap;->verify(Ljava/lang/String;I)V

    .line 145
    iput p1, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap;->keyType:I

    .line 146
    iput p2, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap;->valueType:I

    .line 147
    iput-boolean p5, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap;->purgeValues:Z

    .line 148
    return-void
.end method

.method static access$000(Lorg/apache/commons/collections/map/AbstractReferenceMap;)Ljava/lang/ref/ReferenceQueue;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap;->queue:Ljava/lang/ref/ReferenceQueue;

    return-object v0
.end method

.method private static verify(Ljava/lang/String;I)V
    .locals 3
    .parameter "name"
    .parameter "type"

    .prologue
    .line 166
    if-ltz p1, :cond_0

    const/4 v0, 0x2

    if-le p1, v0, :cond_1

    .line 167
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " must be HARD, SOFT, WEAK."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 169
    :cond_1
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 276
    invoke-super {p0}, Lorg/apache/commons/collections/map/AbstractHashedMap;->clear()V

    .line 277
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap;->queue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    if-nez v0, :cond_0

    .line 278
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 3
    .parameter "key"

    .prologue
    const/4 v1, 0x0

    .line 199
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/AbstractReferenceMap;->purgeBeforeRead()V

    .line 200
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/map/AbstractReferenceMap;->getEntry(Ljava/lang/Object;)Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    move-result-object v0

    .line 201
    .local v0, entry:Ljava/util/Map$Entry;
    if-nez v0, :cond_1

    .line 204
    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1
    .parameter "value"

    .prologue
    .line 214
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/AbstractReferenceMap;->purgeBeforeRead()V

    .line 215
    if-nez p1, :cond_0

    .line 216
    const/4 v0, 0x0

    .line 218
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lorg/apache/commons/collections/map/AbstractHashedMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method protected createEntry(Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;ILjava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;
    .locals 6
    .parameter "next"
    .parameter "hashCode"
    .parameter "key"
    .parameter "value"

    .prologue
    .line 446
    new-instance v0, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntry;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntry;-><init>(Lorg/apache/commons/collections/map/AbstractReferenceMap;Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;ILjava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method protected createEntrySetIterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 455
    new-instance v0, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntrySetIterator;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntrySetIterator;-><init>(Lorg/apache/commons/collections/map/AbstractReferenceMap;)V

    return-object v0
.end method

.method protected createKeySetIterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 464
    new-instance v0, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceKeySetIterator;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceKeySetIterator;-><init>(Lorg/apache/commons/collections/map/AbstractReferenceMap;)V

    return-object v0
.end method

.method protected createValuesIterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 473
    new-instance v0, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceValuesIterator;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceValuesIterator;-><init>(Lorg/apache/commons/collections/map/AbstractReferenceMap;)V

    return-object v0
.end method

.method protected doReadObject(Ljava/io/ObjectInputStream;)V
    .locals 5
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 961
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v3

    iput v3, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap;->keyType:I

    .line 962
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v3

    iput v3, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap;->valueType:I

    .line 963
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result v3

    iput-boolean v3, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap;->purgeValues:Z

    .line 964
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readFloat()F

    move-result v3

    iput v3, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->loadFactor:F

    .line 965
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    .line 966
    .local v0, capacity:I
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/AbstractReferenceMap;->init()V

    .line 967
    new-array v3, v0, [Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    iput-object v3, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    .line 969
    :goto_0
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    .line 970
    .local v1, key:Ljava/lang/Object;
    if-nez v1, :cond_0

    .line 976
    iget-object v3, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    array-length v3, v3

    iget v4, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->loadFactor:F

    invoke-virtual {p0, v3, v4}, Lorg/apache/commons/collections/map/AbstractHashedMap;->calculateThreshold(IF)I

    move-result v3

    iput v3, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->threshold:I

    .line 978
    return-void

    .line 973
    :cond_0
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    .line 974
    .local v2, value:Ljava/lang/Object;
    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/collections/map/AbstractReferenceMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method protected doWriteObject(Ljava/io/ObjectOutputStream;)V
    .locals 2
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 930
    iget v1, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap;->keyType:I

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 931
    iget v1, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap;->valueType:I

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 932
    iget-boolean v1, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap;->purgeValues:Z

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    .line 933
    iget v1, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->loadFactor:F

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeFloat(F)V

    .line 934
    iget-object v1, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    array-length v1, v1

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 935
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/AbstractReferenceMap;->mapIterator()Lorg/apache/commons/collections/MapIterator;

    move-result-object v0

    .local v0, it:Lorg/apache/commons/collections/MapIterator;
    :goto_0
    invoke-interface {v0}, Lorg/apache/commons/collections/MapIterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 939
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 941
    return-void

    .line 936
    :cond_0
    invoke-interface {v0}, Lorg/apache/commons/collections/MapIterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 937
    invoke-interface {v0}, Lorg/apache/commons/collections/MapIterator;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->entrySet:Lorg/apache/commons/collections/map/AbstractHashedMap$EntrySet;

    if-nez v0, :cond_0

    .line 300
    new-instance v0, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntrySet;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntrySet;-><init>(Lorg/apache/commons/collections/map/AbstractHashedMap;)V

    iput-object v0, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->entrySet:Lorg/apache/commons/collections/map/AbstractHashedMap$EntrySet;

    .line 302
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->entrySet:Lorg/apache/commons/collections/map/AbstractHashedMap$EntrySet;

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "key"

    .prologue
    .line 228
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/AbstractReferenceMap;->purgeBeforeRead()V

    .line 229
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/map/AbstractReferenceMap;->getEntry(Ljava/lang/Object;)Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    move-result-object v0

    .line 230
    .local v0, entry:Ljava/util/Map$Entry;
    if-nez v0, :cond_0

    .line 231
    const/4 v1, 0x0

    .line 233
    :goto_0
    return-object v1

    :cond_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method protected getEntry(Ljava/lang/Object;)Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;
    .locals 1
    .parameter "key"

    .prologue
    .line 401
    if-nez p1, :cond_0

    .line 402
    const/4 v0, 0x0

    .line 404
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lorg/apache/commons/collections/map/AbstractHashedMap;->getEntry(Ljava/lang/Object;)Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    move-result-object v0

    goto :goto_0
.end method

.method protected hashEntry(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2
    .parameter "key"
    .parameter "value"

    .prologue
    const/4 v0, 0x0

    .line 417
    if-nez p1, :cond_0

    move v1, v0

    :goto_0
    if-nez p2, :cond_1

    :goto_1
    xor-int/2addr v0, v1

    return v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_1
.end method

.method protected init()V
    .locals 1

    .prologue
    .line 154
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap;->queue:Ljava/lang/ref/ReferenceQueue;

    .line 155
    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 188
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/AbstractReferenceMap;->purgeBeforeRead()V

    .line 189
    invoke-super {p0}, Lorg/apache/commons/collections/map/AbstractHashedMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method protected isEqualKey(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .parameter "key1"
    .parameter "key2"

    .prologue
    .line 432
    iget v0, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap;->keyType:I

    if-lez v0, :cond_0

    check-cast p2, Ljava/lang/ref/Reference;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p2

    .line 433
    .restart local p2
    :cond_0
    if-eq p1, p2, :cond_1

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->keySet:Lorg/apache/commons/collections/map/AbstractHashedMap$KeySet;

    if-nez v0, :cond_0

    .line 312
    new-instance v0, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceKeySet;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceKeySet;-><init>(Lorg/apache/commons/collections/map/AbstractHashedMap;)V

    iput-object v0, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->keySet:Lorg/apache/commons/collections/map/AbstractHashedMap$KeySet;

    .line 314
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->keySet:Lorg/apache/commons/collections/map/AbstractHashedMap$KeySet;

    return-object v0
.end method

.method public mapIterator()Lorg/apache/commons/collections/MapIterator;
    .locals 1

    .prologue
    .line 288
    new-instance v0, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceMapIterator;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceMapIterator;-><init>(Lorg/apache/commons/collections/map/AbstractReferenceMap;)V

    return-object v0
.end method

.method protected purge()V
    .locals 2

    .prologue
    .line 357
    iget-object v1, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap;->queue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v1}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    .line 358
    .local v0, ref:Ljava/lang/ref/Reference;
    :goto_0
    if-nez v0, :cond_0

    .line 362
    return-void

    .line 359
    :cond_0
    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/map/AbstractReferenceMap;->purge(Ljava/lang/ref/Reference;)V

    .line 360
    iget-object v1, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap;->queue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v1}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    goto :goto_0
.end method

.method protected purge(Ljava/lang/ref/Reference;)V
    .locals 6
    .parameter "ref"

    .prologue
    .line 373
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    .line 374
    .local v1, hash:I
    iget-object v4, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    array-length v4, v4

    invoke-virtual {p0, v1, v4}, Lorg/apache/commons/collections/map/AbstractHashedMap;->hashIndex(II)I

    move-result v2

    .line 375
    .local v2, index:I
    const/4 v3, 0x0

    .line 376
    .local v3, previous:Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;
    iget-object v4, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    aget-object v0, v4, v2

    .line 377
    .local v0, entry:Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;
    :goto_0
    if-nez v0, :cond_0

    .line 391
    :goto_1
    return-void

    :cond_0
    move-object v4, v0

    .line 378
    check-cast v4, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntry;

    invoke-virtual {v4, p1}, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntry;->purge(Ljava/lang/ref/Reference;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 379
    if-nez v3, :cond_1

    .line 380
    iget-object v4, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    iget-object v5, v0, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    aput-object v5, v4, v2

    .line 384
    :goto_2
    iget v4, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->size:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->size:I

    goto :goto_1

    .line 382
    :cond_1
    iget-object v4, v0, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    iput-object v4, v3, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    goto :goto_2

    .line 387
    :cond_2
    move-object v3, v0

    .line 388
    iget-object v0, v0, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    goto :goto_0
.end method

.method protected purgeBeforeRead()V
    .locals 0

    .prologue
    .line 336
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/AbstractReferenceMap;->purge()V

    .line 337
    return-void
.end method

.method protected purgeBeforeWrite()V
    .locals 0

    .prologue
    .line 345
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/AbstractReferenceMap;->purge()V

    .line 346
    return-void
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "key"
    .parameter "value"

    .prologue
    .line 247
    if-nez p1, :cond_0

    .line 248
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null keys not allowed"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 250
    :cond_0
    if-nez p2, :cond_1

    .line 251
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null values not allowed"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 254
    :cond_1
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/AbstractReferenceMap;->purgeBeforeWrite()V

    .line 255
    invoke-super {p0, p1, p2}, Lorg/apache/commons/collections/map/AbstractHashedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "key"

    .prologue
    .line 265
    if-nez p1, :cond_0

    .line 266
    const/4 v0, 0x0

    .line 269
    :goto_0
    return-object v0

    .line 268
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/AbstractReferenceMap;->purgeBeforeWrite()V

    .line 269
    invoke-super {p0, p1}, Lorg/apache/commons/collections/map/AbstractHashedMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 178
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/AbstractReferenceMap;->purgeBeforeRead()V

    .line 179
    invoke-super {p0}, Lorg/apache/commons/collections/map/AbstractHashedMap;->size()I

    move-result v0

    return v0
.end method

.method public values()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->values:Lorg/apache/commons/collections/map/AbstractHashedMap$Values;

    if-nez v0, :cond_0

    .line 324
    new-instance v0, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceValues;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceValues;-><init>(Lorg/apache/commons/collections/map/AbstractHashedMap;)V

    iput-object v0, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->values:Lorg/apache/commons/collections/map/AbstractHashedMap$Values;

    .line 326
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->values:Lorg/apache/commons/collections/map/AbstractHashedMap$Values;

    return-object v0
.end method
