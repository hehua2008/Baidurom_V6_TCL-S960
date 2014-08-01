.class public Lorg/apache/commons/collections/map/AbstractHashedMap;
.super Ljava/util/AbstractMap;
.source "AbstractHashedMap.java"

# interfaces
.implements Lorg/apache/commons/collections/IterableMap;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/collections/map/AbstractHashedMap$HashIterator;,
        Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;,
        Lorg/apache/commons/collections/map/AbstractHashedMap$ValuesIterator;,
        Lorg/apache/commons/collections/map/AbstractHashedMap$Values;,
        Lorg/apache/commons/collections/map/AbstractHashedMap$KeySetIterator;,
        Lorg/apache/commons/collections/map/AbstractHashedMap$KeySet;,
        Lorg/apache/commons/collections/map/AbstractHashedMap$EntrySetIterator;,
        Lorg/apache/commons/collections/map/AbstractHashedMap$EntrySet;,
        Lorg/apache/commons/collections/map/AbstractHashedMap$HashMapIterator;
    }
.end annotation


# static fields
.field protected static final DEFAULT_CAPACITY:I = 0x10

.field protected static final DEFAULT_LOAD_FACTOR:F = 0.75f

.field protected static final DEFAULT_THRESHOLD:I = 0xc

.field protected static final GETKEY_INVALID:Ljava/lang/String; = "getKey() can only be called after next() and before remove()"

.field protected static final GETVALUE_INVALID:Ljava/lang/String; = "getValue() can only be called after next() and before remove()"

.field protected static final MAXIMUM_CAPACITY:I = 0x40000000

.field protected static final NO_NEXT_ENTRY:Ljava/lang/String; = "No next() entry in the iteration"

.field protected static final NO_PREVIOUS_ENTRY:Ljava/lang/String; = "No previous() entry in the iteration"

.field protected static final NULL:Ljava/lang/Object; = null

.field protected static final REMOVE_INVALID:Ljava/lang/String; = "remove() can only be called once after next()"

.field protected static final SETVALUE_INVALID:Ljava/lang/String; = "setValue() can only be called after next() and before remove()"


# instance fields
.field protected transient data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

.field protected transient entrySet:Lorg/apache/commons/collections/map/AbstractHashedMap$EntrySet;

.field protected transient keySet:Lorg/apache/commons/collections/map/AbstractHashedMap$KeySet;

.field protected transient loadFactor:F

.field protected transient modCount:I

.field protected transient size:I

.field protected transient threshold:I

.field protected transient values:Lorg/apache/commons/collections/map/AbstractHashedMap$Values;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 78
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/apache/commons/collections/map/AbstractHashedMap;->NULL:Ljava/lang/Object;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 102
    return-void
.end method

.method protected constructor <init>(I)V
    .locals 1
    .parameter "initialCapacity"

    .prologue
    .line 127
    const/high16 v0, 0x3f40

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/collections/map/AbstractHashedMap;-><init>(IF)V

    .line 128
    return-void
.end method

.method protected constructor <init>(IF)V
    .locals 2
    .parameter "initialCapacity"
    .parameter "loadFactor"

    .prologue
    .line 140
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 141
    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    .line 142
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Initial capacity must be greater than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 144
    :cond_0
    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-lez v0, :cond_1

    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 145
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Load factor must be greater than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 147
    :cond_2
    iput p2, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->loadFactor:F

    .line 148
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/collections/map/AbstractHashedMap;->calculateThreshold(IF)I

    move-result v0

    iput v0, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->threshold:I

    .line 149
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/map/AbstractHashedMap;->calculateNewCapacity(I)I

    move-result p1

    .line 150
    new-array v0, p1, [Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    iput-object v0, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    .line 151
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/AbstractHashedMap;->init()V

    .line 152
    return-void
.end method

.method protected constructor <init>(IFI)V
    .locals 1
    .parameter "initialCapacity"
    .parameter "loadFactor"
    .parameter "threshold"

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 113
    iput p2, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->loadFactor:F

    .line 114
    new-array v0, p1, [Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    iput-object v0, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    .line 115
    iput p3, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->threshold:I

    .line 116
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/AbstractHashedMap;->init()V

    .line 117
    return-void
.end method

.method protected constructor <init>(Ljava/util/Map;)V
    .locals 2
    .parameter "map"

    .prologue
    .line 161
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/high16 v1, 0x3f40

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/collections/map/AbstractHashedMap;-><init>(IF)V

    .line 162
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/map/AbstractHashedMap;->putAll(Ljava/util/Map;)V

    .line 163
    return-void
.end method


# virtual methods
.method protected addEntry(Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;I)V
    .locals 1
    .parameter "entry"
    .parameter "hashIndex"

    .prologue
    .line 524
    iget-object v0, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    aput-object p1, v0, p2

    .line 525
    return-void
.end method

.method protected addMapping(IILjava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .parameter "hashIndex"
    .parameter "hashCode"
    .parameter "key"
    .parameter "value"

    .prologue
    .line 490
    iget v1, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->modCount:I

    .line 491
    iget-object v1, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    aget-object v1, v1, p1

    invoke-virtual {p0, v1, p2, p3, p4}, Lorg/apache/commons/collections/map/AbstractHashedMap;->createEntry(Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;ILjava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    move-result-object v0

    .line 492
    .local v0, entry:Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;
    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/collections/map/AbstractHashedMap;->addEntry(Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;I)V

    .line 493
    iget v1, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->size:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->size:I

    .line 494
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/AbstractHashedMap;->checkCapacity()V

    .line 495
    return-void
.end method

.method protected calculateNewCapacity(I)I
    .locals 2
    .parameter "proposedCapacity"

    .prologue
    const/high16 v1, 0x4000

    .line 638
    const/4 v0, 0x1

    .line 639
    .local v0, newCapacity:I
    if-le p1, v1, :cond_2

    .line 640
    const/high16 v0, 0x4000

    .line 649
    :cond_0
    :goto_0
    return v0

    .line 643
    :cond_1
    shl-int/lit8 v0, v0, 0x1

    .line 642
    :cond_2
    if-lt v0, p1, :cond_1

    .line 645
    if-le v0, v1, :cond_0

    .line 646
    const/high16 v0, 0x4000

    goto :goto_0
.end method

.method protected calculateThreshold(IF)I
    .locals 1
    .parameter "newCapacity"
    .parameter "factor"

    .prologue
    .line 661
    int-to-float v0, p1

    mul-float/2addr v0, p2

    float-to-int v0, v0

    return v0
.end method

.method protected checkCapacity()V
    .locals 3

    .prologue
    .line 586
    iget v1, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->size:I

    iget v2, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->threshold:I

    if-lt v1, v2, :cond_0

    .line 587
    iget-object v1, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    array-length v1, v1

    mul-int/lit8 v0, v1, 0x2

    .line 588
    .local v0, newCapacity:I
    const/high16 v1, 0x4000

    if-gt v0, v1, :cond_0

    .line 589
    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/map/AbstractHashedMap;->ensureCapacity(I)V

    .line 592
    .end local v0           #newCapacity:I
    :cond_0
    return-void
.end method

.method public clear()V
    .locals 3

    .prologue
    .line 337
    iget v2, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->modCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->modCount:I

    .line 338
    iget-object v0, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    .line 339
    .local v0, data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;
    array-length v2, v0

    add-int/lit8 v1, v2, -0x1

    .local v1, i:I
    :goto_0
    if-gez v1, :cond_0

    .line 342
    const/4 v2, 0x0

    iput v2, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->size:I

    .line 343
    return-void

    .line 340
    :cond_0
    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 339
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method protected clone()Ljava/lang/Object;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 1227
    :try_start_0
    invoke-super {p0}, Ljava/util/AbstractMap;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/collections/map/AbstractHashedMap;

    .line 1228
    .local v0, cloned:Lorg/apache/commons/collections/map/AbstractHashedMap;
    iget-object v3, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    array-length v3, v3

    new-array v3, v3, [Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    iput-object v3, v0, Lorg/apache/commons/collections/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    .line 1229
    const/4 v3, 0x0

    iput-object v3, v0, Lorg/apache/commons/collections/map/AbstractHashedMap;->entrySet:Lorg/apache/commons/collections/map/AbstractHashedMap$EntrySet;

    .line 1230
    const/4 v3, 0x0

    iput-object v3, v0, Lorg/apache/commons/collections/map/AbstractHashedMap;->keySet:Lorg/apache/commons/collections/map/AbstractHashedMap$KeySet;

    .line 1231
    const/4 v3, 0x0

    iput-object v3, v0, Lorg/apache/commons/collections/map/AbstractHashedMap;->values:Lorg/apache/commons/collections/map/AbstractHashedMap$Values;

    .line 1232
    const/4 v3, 0x0

    iput v3, v0, Lorg/apache/commons/collections/map/AbstractHashedMap;->modCount:I

    .line 1233
    const/4 v3, 0x0

    iput v3, v0, Lorg/apache/commons/collections/map/AbstractHashedMap;->size:I

    .line 1234
    invoke-virtual {v0}, Lorg/apache/commons/collections/map/AbstractHashedMap;->init()V

    .line 1235
    invoke-virtual {v0, p0}, Lorg/apache/commons/collections/map/AbstractHashedMap;->putAll(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1239
    .end local v0           #cloned:Lorg/apache/commons/collections/map/AbstractHashedMap;
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    .local v1, ex:Ljava/lang/CloneNotSupportedException;
    move-object v0, v2

    goto :goto_0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 4
    .parameter "key"

    .prologue
    .line 217
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/map/AbstractHashedMap;->convertKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 218
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/map/AbstractHashedMap;->hash(Ljava/lang/Object;)I

    move-result v1

    .line 219
    .local v1, hashCode:I
    iget-object v2, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    iget-object v3, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    array-length v3, v3

    invoke-virtual {p0, v1, v3}, Lorg/apache/commons/collections/map/AbstractHashedMap;->hashIndex(II)I

    move-result v3

    aget-object v0, v2, v3

    .line 220
    .local v0, entry:Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;
    :goto_0
    if-nez v0, :cond_0

    .line 226
    const/4 v2, 0x0

    :goto_1
    return v2

    .line 221
    :cond_0
    iget v2, v0, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->hashCode:I

    if-ne v2, v1, :cond_1

    iget-object v2, v0, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->key:Ljava/lang/Object;

    invoke-virtual {p0, p1, v2}, Lorg/apache/commons/collections/map/AbstractHashedMap;->isEqualKey(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 222
    const/4 v2, 0x1

    goto :goto_1

    .line 224
    :cond_1
    iget-object v0, v0, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    goto :goto_0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 5
    .parameter "value"

    .prologue
    const/4 v3, 0x1

    .line 236
    if-nez p1, :cond_4

    .line 237
    const/4 v1, 0x0

    .local v1, i:I
    iget-object v4, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    array-length v2, v4

    .local v2, isize:I
    :goto_0
    if-lt v1, v2, :cond_2

    .line 257
    :cond_0
    const/4 v3, 0x0

    :cond_1
    return v3

    .line 238
    :cond_2
    iget-object v4, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    aget-object v0, v4, v1

    .line 239
    .local v0, entry:Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;
    :goto_1
    if-nez v0, :cond_3

    .line 237
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 240
    :cond_3
    invoke-virtual {v0}, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->getValue()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 243
    iget-object v0, v0, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    goto :goto_1

    .line 247
    .end local v0           #entry:Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;
    .end local v1           #i:I
    .end local v2           #isize:I
    :cond_4
    const/4 v1, 0x0

    .restart local v1       #i:I
    iget-object v4, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    array-length v2, v4

    .restart local v2       #isize:I
    :goto_2
    if-ge v1, v2, :cond_0

    .line 248
    iget-object v4, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    aget-object v0, v4, v1

    .line 249
    .restart local v0       #entry:Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;
    :goto_3
    if-nez v0, :cond_5

    .line 247
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 250
    :cond_5
    invoke-virtual {v0}, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, p1, v4}, Lorg/apache/commons/collections/map/AbstractHashedMap;->isEqualValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 253
    iget-object v0, v0, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    goto :goto_3
.end method

.method protected convertKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "key"

    .prologue
    .line 358
    if-nez p1, :cond_0

    sget-object p1, Lorg/apache/commons/collections/map/AbstractHashedMap;->NULL:Ljava/lang/Object;

    .end local p1
    :cond_0
    return-object p1
.end method

.method protected createEntry(Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;ILjava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;
    .locals 1
    .parameter "next"
    .parameter "hashCode"
    .parameter "key"
    .parameter "value"

    .prologue
    .line 511
    new-instance v0, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    invoke-direct {v0, p1, p2, p3, p4}, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;-><init>(Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;ILjava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method protected createEntrySetIterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 796
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/AbstractHashedMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 797
    sget-object v0, Lorg/apache/commons/collections/iterators/EmptyIterator;->INSTANCE:Ljava/util/Iterator;

    .line 799
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/apache/commons/collections/map/AbstractHashedMap$EntrySetIterator;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/map/AbstractHashedMap$EntrySetIterator;-><init>(Lorg/apache/commons/collections/map/AbstractHashedMap;)V

    goto :goto_0
.end method

.method protected createKeySetIterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 885
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/AbstractHashedMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 886
    sget-object v0, Lorg/apache/commons/collections/iterators/EmptyIterator;->INSTANCE:Ljava/util/Iterator;

    .line 888
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/apache/commons/collections/map/AbstractHashedMap$KeySetIterator;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/map/AbstractHashedMap$KeySetIterator;-><init>(Lorg/apache/commons/collections/map/AbstractHashedMap;)V

    goto :goto_0
.end method

.method protected createValuesIterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 962
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/AbstractHashedMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 963
    sget-object v0, Lorg/apache/commons/collections/iterators/EmptyIterator;->INSTANCE:Ljava/util/Iterator;

    .line 965
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/apache/commons/collections/map/AbstractHashedMap$ValuesIterator;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/map/AbstractHashedMap$ValuesIterator;-><init>(Lorg/apache/commons/collections/map/AbstractHashedMap;)V

    goto :goto_0
.end method

.method protected destroyEntry(Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;)V
    .locals 1
    .parameter "entry"

    .prologue
    const/4 v0, 0x0

    .line 574
    iput-object v0, p1, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    .line 575
    iput-object v0, p1, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->key:Ljava/lang/Object;

    .line 576
    iput-object v0, p1, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->value:Ljava/lang/Object;

    .line 577
    return-void
.end method

.method protected doReadObject(Ljava/io/ObjectInputStream;)V
    .locals 7
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 1203
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readFloat()F

    move-result v5

    iput v5, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->loadFactor:F

    .line 1204
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    .line 1205
    .local v0, capacity:I
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v3

    .line 1206
    .local v3, size:I
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/AbstractHashedMap;->init()V

    .line 1207
    new-array v5, v0, [Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    iput-object v5, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    .line 1208
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, v3, :cond_0

    .line 1213
    iget-object v5, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    array-length v5, v5

    iget v6, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->loadFactor:F

    invoke-virtual {p0, v5, v6}, Lorg/apache/commons/collections/map/AbstractHashedMap;->calculateThreshold(IF)I

    move-result v5

    iput v5, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->threshold:I

    .line 1214
    return-void

    .line 1209
    :cond_0
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    .line 1210
    .local v2, key:Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v4

    .line 1211
    .local v4, value:Ljava/lang/Object;
    invoke-virtual {p0, v2, v4}, Lorg/apache/commons/collections/map/AbstractHashedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1208
    add-int/lit8 v1, v1, 0x1

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
    .line 1175
    iget v1, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->loadFactor:F

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeFloat(F)V

    .line 1176
    iget-object v1, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    array-length v1, v1

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 1177
    iget v1, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->size:I

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 1178
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/AbstractHashedMap;->mapIterator()Lorg/apache/commons/collections/MapIterator;

    move-result-object v0

    .local v0, it:Lorg/apache/commons/collections/MapIterator;
    :goto_0
    invoke-interface {v0}, Lorg/apache/commons/collections/MapIterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1182
    return-void

    .line 1179
    :cond_0
    invoke-interface {v0}, Lorg/apache/commons/collections/MapIterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1180
    invoke-interface {v0}, Lorg/apache/commons/collections/MapIterator;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected ensureCapacity(I)V
    .locals 8
    .parameter "newCapacity"

    .prologue
    .line 600
    iget-object v7, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    array-length v5, v7

    .line 601
    .local v5, oldCapacity:I
    if-gt p1, v5, :cond_0

    .line 628
    :goto_0
    return-void

    .line 604
    :cond_0
    iget v7, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->size:I

    if-nez v7, :cond_1

    .line 605
    iget v7, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->loadFactor:F

    invoke-virtual {p0, p1, v7}, Lorg/apache/commons/collections/map/AbstractHashedMap;->calculateThreshold(IF)I

    move-result v7

    iput v7, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->threshold:I

    .line 606
    new-array v7, p1, [Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    iput-object v7, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    goto :goto_0

    .line 608
    :cond_1
    iget-object v6, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    .line 609
    .local v6, oldEntries:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;
    new-array v3, p1, [Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    .line 611
    .local v3, newEntries:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;
    iget v7, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->modCount:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->modCount:I

    .line 612
    add-int/lit8 v1, v5, -0x1

    .local v1, i:I
    :goto_1
    if-gez v1, :cond_2

    .line 625
    iget v7, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->loadFactor:F

    invoke-virtual {p0, p1, v7}, Lorg/apache/commons/collections/map/AbstractHashedMap;->calculateThreshold(IF)I

    move-result v7

    iput v7, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->threshold:I

    .line 626
    iput-object v3, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    goto :goto_0

    .line 613
    :cond_2
    aget-object v0, v6, v1

    .line 614
    .local v0, entry:Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;
    if-eqz v0, :cond_4

    .line 615
    const/4 v7, 0x0

    aput-object v7, v6, v1

    .line 617
    :cond_3
    iget-object v4, v0, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    .line 618
    .local v4, next:Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;
    iget v7, v0, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->hashCode:I

    invoke-virtual {p0, v7, p1}, Lorg/apache/commons/collections/map/AbstractHashedMap;->hashIndex(II)I

    move-result v2

    .line 619
    .local v2, index:I
    aget-object v7, v3, v2

    iput-object v7, v0, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    .line 620
    aput-object v0, v3, v2

    .line 621
    move-object v0, v4

    .line 622
    if-nez v0, :cond_3

    .line 612
    .end local v2           #index:I
    .end local v4           #next:Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;
    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_1
.end method

.method protected entryHashCode(Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;)I
    .locals 1
    .parameter "entry"

    .prologue
    .line 688
    iget v0, p1, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->hashCode:I

    return v0
.end method

.method protected entryKey(Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;)Ljava/lang/Object;
    .locals 1
    .parameter "entry"

    .prologue
    .line 701
    iget-object v0, p1, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->key:Ljava/lang/Object;

    return-object v0
.end method

.method protected entryNext(Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;)Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;
    .locals 1
    .parameter "entry"

    .prologue
    .line 675
    iget-object v0, p1, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    return-object v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 783
    iget-object v0, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->entrySet:Lorg/apache/commons/collections/map/AbstractHashedMap$EntrySet;

    if-nez v0, :cond_0

    .line 784
    new-instance v0, Lorg/apache/commons/collections/map/AbstractHashedMap$EntrySet;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/map/AbstractHashedMap$EntrySet;-><init>(Lorg/apache/commons/collections/map/AbstractHashedMap;)V

    iput-object v0, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->entrySet:Lorg/apache/commons/collections/map/AbstractHashedMap$EntrySet;

    .line 786
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->entrySet:Lorg/apache/commons/collections/map/AbstractHashedMap$EntrySet;

    return-object v0
.end method

.method protected entryValue(Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;)Ljava/lang/Object;
    .locals 1
    .parameter "entry"

    .prologue
    .line 714
    iget-object v0, p1, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 9
    .parameter "obj"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1250
    if-ne p1, p0, :cond_1

    .line 1280
    :cond_0
    :goto_0
    return v5

    .line 1253
    :cond_1
    instance-of v7, p1, Ljava/util/Map;

    if-nez v7, :cond_2

    move v5, v6

    .line 1254
    goto :goto_0

    :cond_2
    move-object v3, p1

    .line 1256
    check-cast v3, Ljava/util/Map;

    .line 1257
    .local v3, map:Ljava/util/Map;
    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v7

    invoke-virtual {p0}, Lorg/apache/commons/collections/map/AbstractHashedMap;->size()I

    move-result v8

    if-eq v7, v8, :cond_3

    move v5, v6

    .line 1258
    goto :goto_0

    .line 1260
    :cond_3
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/AbstractHashedMap;->mapIterator()Lorg/apache/commons/collections/MapIterator;

    move-result-object v1

    .line 1262
    .local v1, it:Lorg/apache/commons/collections/MapIterator;
    :cond_4
    :try_start_0
    invoke-interface {v1}, Lorg/apache/commons/collections/MapIterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1263
    invoke-interface {v1}, Lorg/apache/commons/collections/MapIterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1264
    .local v2, key:Ljava/lang/Object;
    invoke-interface {v1}, Lorg/apache/commons/collections/MapIterator;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 1265
    .local v4, value:Ljava/lang/Object;
    if-nez v4, :cond_6

    .line 1266
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_5

    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    :cond_5
    move v5, v6

    .line 1267
    goto :goto_0

    .line 1270
    :cond_6
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v7

    if-nez v7, :cond_4

    move v5, v6

    .line 1271
    goto :goto_0

    .line 1276
    .end local v2           #key:Ljava/lang/Object;
    .end local v4           #value:Ljava/lang/Object;
    :catch_0
    move-exception v0

    .local v0, ignored:Ljava/lang/ClassCastException;
    move v5, v6

    goto :goto_0

    .line 1278
    .end local v0           #ignored:Ljava/lang/ClassCastException;
    :catch_1
    move-exception v0

    .local v0, ignored:Ljava/lang/NullPointerException;
    move v5, v6

    goto :goto_0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .parameter "key"

    .prologue
    .line 179
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/map/AbstractHashedMap;->convertKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 180
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/map/AbstractHashedMap;->hash(Ljava/lang/Object;)I

    move-result v1

    .line 181
    .local v1, hashCode:I
    iget-object v2, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    iget-object v3, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    array-length v3, v3

    invoke-virtual {p0, v1, v3}, Lorg/apache/commons/collections/map/AbstractHashedMap;->hashIndex(II)I

    move-result v3

    aget-object v0, v2, v3

    .line 182
    .local v0, entry:Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;
    :goto_0
    if-nez v0, :cond_0

    .line 188
    const/4 v2, 0x0

    :goto_1
    return-object v2

    .line 183
    :cond_0
    iget v2, v0, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->hashCode:I

    if-ne v2, v1, :cond_1

    iget-object v2, v0, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->key:Ljava/lang/Object;

    invoke-virtual {p0, p1, v2}, Lorg/apache/commons/collections/map/AbstractHashedMap;->isEqualKey(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 184
    invoke-virtual {v0}, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->getValue()Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 186
    :cond_1
    iget-object v0, v0, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    goto :goto_0
.end method

.method protected getEntry(Ljava/lang/Object;)Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;
    .locals 4
    .parameter "key"

    .prologue
    .line 430
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/map/AbstractHashedMap;->convertKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 431
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/map/AbstractHashedMap;->hash(Ljava/lang/Object;)I

    move-result v1

    .line 432
    .local v1, hashCode:I
    iget-object v2, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    iget-object v3, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    array-length v3, v3

    invoke-virtual {p0, v1, v3}, Lorg/apache/commons/collections/map/AbstractHashedMap;->hashIndex(II)I

    move-result v3

    aget-object v0, v2, v3

    .line 433
    .local v0, entry:Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;
    :goto_0
    if-nez v0, :cond_1

    .line 439
    const/4 v0, 0x0

    .end local v0           #entry:Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;
    :cond_0
    return-object v0

    .line 434
    .restart local v0       #entry:Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;
    :cond_1
    iget v2, v0, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->hashCode:I

    if-ne v2, v1, :cond_2

    iget-object v2, v0, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->key:Ljava/lang/Object;

    invoke-virtual {p0, p1, v2}, Lorg/apache/commons/collections/map/AbstractHashedMap;->isEqualKey(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 437
    :cond_2
    iget-object v0, v0, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    goto :goto_0
.end method

.method protected hash(Ljava/lang/Object;)I
    .locals 2
    .parameter "key"

    .prologue
    .line 371
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 372
    .local v0, h:I
    shl-int/lit8 v1, v0, 0x9

    xor-int/lit8 v1, v1, -0x1

    add-int/2addr v0, v1

    .line 373
    ushr-int/lit8 v1, v0, 0xe

    xor-int/2addr v0, v1

    .line 374
    shl-int/lit8 v1, v0, 0x4

    add-int/2addr v0, v1

    .line 375
    ushr-int/lit8 v1, v0, 0xa

    xor-int/2addr v0, v1

    .line 376
    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 1289
    const/4 v1, 0x0

    .line 1290
    .local v1, total:I
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/AbstractHashedMap;->createEntrySetIterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1291
    .local v0, it:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1294
    return v1

    .line 1292
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0
.end method

.method protected hashIndex(II)I
    .locals 1
    .parameter "hashCode"
    .parameter "dataSize"

    .prologue
    .line 415
    add-int/lit8 v0, p2, -0x1

    and-int/2addr v0, p1

    return v0
.end method

.method protected init()V
    .locals 0

    .prologue
    .line 169
    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 206
    iget v0, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->size:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isEqualKey(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .parameter "key1"
    .parameter "key2"

    .prologue
    .line 389
    if-eq p1, p2, :cond_0

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isEqualValue(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .parameter "value1"
    .parameter "value2"

    .prologue
    .line 402
    if-eq p1, p2, :cond_0

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 872
    iget-object v0, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->keySet:Lorg/apache/commons/collections/map/AbstractHashedMap$KeySet;

    if-nez v0, :cond_0

    .line 873
    new-instance v0, Lorg/apache/commons/collections/map/AbstractHashedMap$KeySet;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/map/AbstractHashedMap$KeySet;-><init>(Lorg/apache/commons/collections/map/AbstractHashedMap;)V

    iput-object v0, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->keySet:Lorg/apache/commons/collections/map/AbstractHashedMap$KeySet;

    .line 875
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->keySet:Lorg/apache/commons/collections/map/AbstractHashedMap$KeySet;

    return-object v0
.end method

.method public mapIterator()Lorg/apache/commons/collections/MapIterator;
    .locals 1

    .prologue
    .line 730
    iget v0, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->size:I

    if-nez v0, :cond_0

    .line 731
    sget-object v0, Lorg/apache/commons/collections/iterators/EmptyMapIterator;->INSTANCE:Lorg/apache/commons/collections/MapIterator;

    .line 733
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/apache/commons/collections/map/AbstractHashedMap$HashMapIterator;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/map/AbstractHashedMap$HashMapIterator;-><init>(Lorg/apache/commons/collections/map/AbstractHashedMap;)V

    goto :goto_0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .parameter "key"
    .parameter "value"

    .prologue
    .line 269
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/map/AbstractHashedMap;->convertKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 270
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/map/AbstractHashedMap;->hash(Ljava/lang/Object;)I

    move-result v1

    .line 271
    .local v1, hashCode:I
    iget-object v4, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    array-length v4, v4

    invoke-virtual {p0, v1, v4}, Lorg/apache/commons/collections/map/AbstractHashedMap;->hashIndex(II)I

    move-result v2

    .line 272
    .local v2, index:I
    iget-object v4, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    aget-object v0, v4, v2

    .line 273
    .local v0, entry:Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;
    :goto_0
    if-nez v0, :cond_0

    .line 282
    invoke-virtual {p0, v2, v1, p1, p2}, Lorg/apache/commons/collections/map/AbstractHashedMap;->addMapping(IILjava/lang/Object;Ljava/lang/Object;)V

    .line 283
    const/4 v3, 0x0

    :goto_1
    return-object v3

    .line 274
    :cond_0
    iget v4, v0, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->hashCode:I

    if-ne v4, v1, :cond_1

    iget-object v4, v0, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->key:Ljava/lang/Object;

    invoke-virtual {p0, p1, v4}, Lorg/apache/commons/collections/map/AbstractHashedMap;->isEqualKey(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 275
    invoke-virtual {v0}, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 276
    .local v3, oldValue:Ljava/lang/Object;
    invoke-virtual {p0, v0, p2}, Lorg/apache/commons/collections/map/AbstractHashedMap;->updateEntry(Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;Ljava/lang/Object;)V

    goto :goto_1

    .line 279
    .end local v3           #oldValue:Ljava/lang/Object;
    :cond_1
    iget-object v0, v0, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    goto :goto_0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 6
    .parameter "map"

    .prologue
    .line 296
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v2

    .line 297
    .local v2, mapSize:I
    if-nez v2, :cond_1

    .line 306
    :cond_0
    return-void

    .line 300
    :cond_1
    iget v4, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->size:I

    add-int/2addr v4, v2

    int-to-float v4, v4

    iget v5, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->loadFactor:F

    div-float/2addr v4, v5

    const/high16 v5, 0x3f80

    add-float/2addr v4, v5

    float-to-int v3, v4

    .line 301
    .local v3, newSize:I
    invoke-virtual {p0, v3}, Lorg/apache/commons/collections/map/AbstractHashedMap;->calculateNewCapacity(I)I

    move-result v4

    invoke-virtual {p0, v4}, Lorg/apache/commons/collections/map/AbstractHashedMap;->ensureCapacity(I)V

    .line 302
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, it:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 303
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 304
    .local v0, entry:Ljava/util/Map$Entry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lorg/apache/commons/collections/map/AbstractHashedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .parameter "key"

    .prologue
    .line 315
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/map/AbstractHashedMap;->convertKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 316
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/map/AbstractHashedMap;->hash(Ljava/lang/Object;)I

    move-result v1

    .line 317
    .local v1, hashCode:I
    iget-object v5, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    array-length v5, v5

    invoke-virtual {p0, v1, v5}, Lorg/apache/commons/collections/map/AbstractHashedMap;->hashIndex(II)I

    move-result v2

    .line 318
    .local v2, index:I
    iget-object v5, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    aget-object v0, v5, v2

    .line 319
    .local v0, entry:Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;
    const/4 v4, 0x0

    .line 320
    .local v4, previous:Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;
    :goto_0
    if-nez v0, :cond_0

    .line 329
    const/4 v3, 0x0

    :goto_1
    return-object v3

    .line 321
    :cond_0
    iget v5, v0, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->hashCode:I

    if-ne v5, v1, :cond_1

    iget-object v5, v0, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->key:Ljava/lang/Object;

    invoke-virtual {p0, p1, v5}, Lorg/apache/commons/collections/map/AbstractHashedMap;->isEqualKey(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 322
    invoke-virtual {v0}, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 323
    .local v3, oldValue:Ljava/lang/Object;
    invoke-virtual {p0, v0, v2, v4}, Lorg/apache/commons/collections/map/AbstractHashedMap;->removeMapping(Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;ILorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;)V

    goto :goto_1

    .line 326
    .end local v3           #oldValue:Ljava/lang/Object;
    :cond_1
    move-object v4, v0

    .line 327
    iget-object v0, v0, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    goto :goto_0
.end method

.method protected removeEntry(Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;ILorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;)V
    .locals 2
    .parameter "entry"
    .parameter "hashIndex"
    .parameter "previous"

    .prologue
    .line 558
    if-nez p3, :cond_0

    .line 559
    iget-object v0, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    iget-object v1, p1, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    aput-object v1, v0, p2

    .line 563
    :goto_0
    return-void

    .line 561
    :cond_0
    iget-object v0, p1, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    iput-object v0, p3, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    goto :goto_0
.end method

.method protected removeMapping(Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;ILorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;)V
    .locals 1
    .parameter "entry"
    .parameter "hashIndex"
    .parameter "previous"

    .prologue
    .line 540
    iget v0, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->modCount:I

    .line 541
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/collections/map/AbstractHashedMap;->removeEntry(Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;ILorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;)V

    .line 542
    iget v0, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->size:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->size:I

    .line 543
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/map/AbstractHashedMap;->destroyEntry(Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;)V

    .line 544
    return-void
.end method

.method protected reuseEntry(Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;IILjava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .parameter "entry"
    .parameter "hashIndex"
    .parameter "hashCode"
    .parameter "key"
    .parameter "value"

    .prologue
    .line 469
    iget-object v0, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    aget-object v0, v0, p2

    iput-object v0, p1, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    .line 470
    iput p3, p1, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->hashCode:I

    .line 471
    iput-object p4, p1, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->key:Ljava/lang/Object;

    .line 472
    iput-object p5, p1, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->value:Ljava/lang/Object;

    .line 473
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 197
    iget v0, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->size:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 1303
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/AbstractHashedMap;->size()I

    move-result v5

    if-nez v5, :cond_0

    .line 1304
    const-string v5, "{}"

    .line 1325
    :goto_0
    return-object v5

    .line 1306
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/commons/collections/map/AbstractHashedMap;->size()I

    move-result v5

    mul-int/lit8 v5, v5, 0x20

    invoke-direct {v0, v5}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 1307
    .local v0, buf:Ljava/lang/StringBuffer;
    const/16 v5, 0x7b

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1309
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/AbstractHashedMap;->mapIterator()Lorg/apache/commons/collections/MapIterator;

    move-result-object v2

    .line 1310
    .local v2, it:Lorg/apache/commons/collections/MapIterator;
    invoke-interface {v2}, Lorg/apache/commons/collections/MapIterator;->hasNext()Z

    move-result v1

    .line 1311
    .local v1, hasNext:Z
    :cond_1
    :goto_1
    if-nez v1, :cond_2

    .line 1324
    const/16 v5, 0x7d

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1325
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 1312
    :cond_2
    invoke-interface {v2}, Lorg/apache/commons/collections/MapIterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 1313
    .local v3, key:Ljava/lang/Object;
    invoke-interface {v2}, Lorg/apache/commons/collections/MapIterator;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 1314
    .local v4, value:Ljava/lang/Object;
    if-ne v3, p0, :cond_3

    const-string v3, "(this Map)"

    .end local v3           #key:Ljava/lang/Object;
    :cond_3
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v5

    const/16 v6, 0x3d

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v5

    if-ne v4, p0, :cond_4

    const-string v4, "(this Map)"

    .end local v4           #value:Ljava/lang/Object;
    :cond_4
    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 1318
    invoke-interface {v2}, Lorg/apache/commons/collections/MapIterator;->hasNext()Z

    move-result v1

    .line 1319
    if-eqz v1, :cond_1

    .line 1320
    const/16 v5, 0x2c

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v5

    const/16 v6, 0x20

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1
.end method

.method protected updateEntry(Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;Ljava/lang/Object;)V
    .locals 0
    .parameter "entry"
    .parameter "newValue"

    .prologue
    .line 453
    invoke-virtual {p1, p2}, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    return-void
.end method

.method public values()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 949
    iget-object v0, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->values:Lorg/apache/commons/collections/map/AbstractHashedMap$Values;

    if-nez v0, :cond_0

    .line 950
    new-instance v0, Lorg/apache/commons/collections/map/AbstractHashedMap$Values;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/map/AbstractHashedMap$Values;-><init>(Lorg/apache/commons/collections/map/AbstractHashedMap;)V

    iput-object v0, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->values:Lorg/apache/commons/collections/map/AbstractHashedMap$Values;

    .line 952
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/map/AbstractHashedMap;->values:Lorg/apache/commons/collections/map/AbstractHashedMap$Values;

    return-object v0
.end method
