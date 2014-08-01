.class public Lorg/apache/commons/collections/ReferenceMap;
.super Ljava/util/AbstractMap;
.source "ReferenceMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/collections/ReferenceMap$WeakRef;,
        Lorg/apache/commons/collections/ReferenceMap$SoftRef;,
        Lorg/apache/commons/collections/ReferenceMap$KeyIterator;,
        Lorg/apache/commons/collections/ReferenceMap$ValueIterator;,
        Lorg/apache/commons/collections/ReferenceMap$EntryIterator;,
        Lorg/apache/commons/collections/ReferenceMap$Entry;
    }
.end annotation


# static fields
.field public static final HARD:I = 0x0

.field public static final SOFT:I = 0x1

.field public static final WEAK:I = 0x2

.field private static final serialVersionUID:J = -0x2ec6c8098723be00L


# instance fields
.field private transient entrySet:Ljava/util/Set;

.field private transient keySet:Ljava/util/Set;

.field private keyType:I

.field private loadFactor:F

.field private volatile transient modCount:I

.field private purgeValues:Z

.field private transient queue:Ljava/lang/ref/ReferenceQueue;

.field private transient size:I

.field private transient table:[Lorg/apache/commons/collections/ReferenceMap$Entry;

.field private transient threshold:I

.field private valueType:I

.field private transient values:Ljava/util/Collection;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 203
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/collections/ReferenceMap;-><init>(II)V

    .line 204
    return-void
.end method

.method public constructor <init>(II)V
    .locals 2
    .parameter "keyType"
    .parameter "valueType"

    .prologue
    .line 232
    const/16 v0, 0x10

    const/high16 v1, 0x3f40

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/apache/commons/collections/ReferenceMap;-><init>(IIIF)V

    .line 233
    return-void
.end method

.method public constructor <init>(IIIF)V
    .locals 3
    .parameter "keyType"
    .parameter "valueType"
    .parameter "capacity"
    .parameter "loadFactor"

    .prologue
    .line 272
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 143
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/apache/commons/collections/ReferenceMap;->purgeValues:Z

    .line 152
    new-instance v1, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v1}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v1, p0, Lorg/apache/commons/collections/ReferenceMap;->queue:Ljava/lang/ref/ReferenceQueue;

    .line 274
    const-string v1, "keyType"

    invoke-static {v1, p1}, Lorg/apache/commons/collections/ReferenceMap;->verify(Ljava/lang/String;I)V

    .line 275
    const-string v1, "valueType"

    invoke-static {v1, p2}, Lorg/apache/commons/collections/ReferenceMap;->verify(Ljava/lang/String;I)V

    .line 277
    if-gtz p3, :cond_0

    .line 278
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "capacity must be positive"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 280
    :cond_0
    const/4 v1, 0x0

    cmpg-float v1, p4, v1

    if-lez v1, :cond_1

    const/high16 v1, 0x3f80

    cmpl-float v1, p4, v1

    if-ltz v1, :cond_2

    .line 281
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Load factor must be greater than 0 and less than 1."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 284
    :cond_2
    iput p1, p0, Lorg/apache/commons/collections/ReferenceMap;->keyType:I

    .line 285
    iput p2, p0, Lorg/apache/commons/collections/ReferenceMap;->valueType:I

    .line 287
    const/4 v0, 0x1

    .line 288
    .local v0, v:I
    :goto_0
    if-lt v0, p3, :cond_3

    .line 290
    new-array v1, v0, [Lorg/apache/commons/collections/ReferenceMap$Entry;

    iput-object v1, p0, Lorg/apache/commons/collections/ReferenceMap;->table:[Lorg/apache/commons/collections/ReferenceMap$Entry;

    .line 291
    iput p4, p0, Lorg/apache/commons/collections/ReferenceMap;->loadFactor:F

    .line 292
    int-to-float v1, v0

    mul-float/2addr v1, p4

    float-to-int v1, v1

    iput v1, p0, Lorg/apache/commons/collections/ReferenceMap;->threshold:I

    .line 293
    return-void

    .line 288
    :cond_3
    mul-int/lit8 v0, v0, 0x2

    goto :goto_0
.end method

.method public constructor <init>(IIIFZ)V
    .locals 0
    .parameter "keyType"
    .parameter "valueType"
    .parameter "capacity"
    .parameter "loadFactor"
    .parameter "purgeValues"

    .prologue
    .line 255
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/commons/collections/ReferenceMap;-><init>(IIIF)V

    .line 256
    iput-boolean p5, p0, Lorg/apache/commons/collections/ReferenceMap;->purgeValues:Z

    .line 257
    return-void
.end method

.method public constructor <init>(IIZ)V
    .locals 0
    .parameter "keyType"
    .parameter "valueType"
    .parameter "purgeValues"

    .prologue
    .line 218
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections/ReferenceMap;-><init>(II)V

    .line 219
    iput-boolean p3, p0, Lorg/apache/commons/collections/ReferenceMap;->purgeValues:Z

    .line 220
    return-void
.end method

.method static access$000(Lorg/apache/commons/collections/ReferenceMap;Ljava/lang/Object;)Lorg/apache/commons/collections/ReferenceMap$Entry;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/ReferenceMap;->getEntry(Ljava/lang/Object;)Lorg/apache/commons/collections/ReferenceMap$Entry;

    move-result-object v0

    return-object v0
.end method

.method static access$300(Lorg/apache/commons/collections/ReferenceMap;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget v0, p0, Lorg/apache/commons/collections/ReferenceMap;->keyType:I

    return v0
.end method

.method static access$400(Lorg/apache/commons/collections/ReferenceMap;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget v0, p0, Lorg/apache/commons/collections/ReferenceMap;->valueType:I

    return v0
.end method

.method static access$500(Lorg/apache/commons/collections/ReferenceMap;ILjava/lang/Object;I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 84
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/collections/ReferenceMap;->toReference(ILjava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static access$600(Lorg/apache/commons/collections/ReferenceMap;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-boolean v0, p0, Lorg/apache/commons/collections/ReferenceMap;->purgeValues:Z

    return v0
.end method

.method static access$700(Lorg/apache/commons/collections/ReferenceMap;)[Lorg/apache/commons/collections/ReferenceMap$Entry;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lorg/apache/commons/collections/ReferenceMap;->table:[Lorg/apache/commons/collections/ReferenceMap$Entry;

    return-object v0
.end method

.method static access$800(Lorg/apache/commons/collections/ReferenceMap;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget v0, p0, Lorg/apache/commons/collections/ReferenceMap;->modCount:I

    return v0
.end method

.method private getEntry(Ljava/lang/Object;)Lorg/apache/commons/collections/ReferenceMap$Entry;
    .locals 5
    .parameter "key"

    .prologue
    const/4 v3, 0x0

    .line 377
    if-nez p1, :cond_1

    move-object v0, v3

    .line 385
    :cond_0
    :goto_0
    return-object v0

    .line 378
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    .line 379
    .local v1, hash:I
    invoke-direct {p0, v1}, Lorg/apache/commons/collections/ReferenceMap;->indexFor(I)I

    move-result v2

    .line 380
    .local v2, index:I
    iget-object v4, p0, Lorg/apache/commons/collections/ReferenceMap;->table:[Lorg/apache/commons/collections/ReferenceMap$Entry;

    aget-object v0, v4, v2

    .local v0, entry:Lorg/apache/commons/collections/ReferenceMap$Entry;
    :goto_1
    if-nez v0, :cond_2

    move-object v0, v3

    .line 385
    goto :goto_0

    .line 381
    :cond_2
    iget v4, v0, Lorg/apache/commons/collections/ReferenceMap$Entry;->hash:I

    if-ne v4, v1, :cond_3

    invoke-virtual {v0}, Lorg/apache/commons/collections/ReferenceMap$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 380
    :cond_3
    iget-object v0, v0, Lorg/apache/commons/collections/ReferenceMap$Entry;->next:Lorg/apache/commons/collections/ReferenceMap$Entry;

    goto :goto_1
.end method

.method private indexFor(I)I
    .locals 1
    .parameter "hash"

    .prologue
    .line 395
    shl-int/lit8 v0, p1, 0xf

    xor-int/lit8 v0, v0, -0x1

    add-int/2addr p1, v0

    .line 396
    ushr-int/lit8 v0, p1, 0xa

    xor-int/2addr p1, v0

    .line 397
    shl-int/lit8 v0, p1, 0x3

    add-int/2addr p1, v0

    .line 398
    ushr-int/lit8 v0, p1, 0x6

    xor-int/2addr p1, v0

    .line 399
    shl-int/lit8 v0, p1, 0xb

    xor-int/lit8 v0, v0, -0x1

    add-int/2addr p1, v0

    .line 400
    ushr-int/lit8 v0, p1, 0x10

    xor-int/2addr p1, v0

    .line 401
    iget-object v0, p0, Lorg/apache/commons/collections/ReferenceMap;->table:[Lorg/apache/commons/collections/ReferenceMap$Entry;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    and-int/2addr v0, p1

    return v0
.end method

.method private purge()V
    .locals 2

    .prologue
    .line 445
    iget-object v1, p0, Lorg/apache/commons/collections/ReferenceMap;->queue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v1}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    .line 446
    .local v0, ref:Ljava/lang/ref/Reference;
    :goto_0
    if-nez v0, :cond_0

    .line 450
    return-void

    .line 447
    :cond_0
    invoke-direct {p0, v0}, Lorg/apache/commons/collections/ReferenceMap;->purge(Ljava/lang/ref/Reference;)V

    .line 448
    iget-object v1, p0, Lorg/apache/commons/collections/ReferenceMap;->queue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v1}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    goto :goto_0
.end method

.method private purge(Ljava/lang/ref/Reference;)V
    .locals 6
    .parameter "ref"

    .prologue
    .line 457
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    .line 458
    .local v1, hash:I
    invoke-direct {p0, v1}, Lorg/apache/commons/collections/ReferenceMap;->indexFor(I)I

    move-result v2

    .line 459
    .local v2, index:I
    const/4 v3, 0x0

    .line 460
    .local v3, previous:Lorg/apache/commons/collections/ReferenceMap$Entry;
    iget-object v4, p0, Lorg/apache/commons/collections/ReferenceMap;->table:[Lorg/apache/commons/collections/ReferenceMap$Entry;

    aget-object v0, v4, v2

    .line 461
    .local v0, entry:Lorg/apache/commons/collections/ReferenceMap$Entry;
    :goto_0
    if-nez v0, :cond_0

    .line 472
    :goto_1
    return-void

    .line 462
    :cond_0
    invoke-virtual {v0, p1}, Lorg/apache/commons/collections/ReferenceMap$Entry;->purge(Ljava/lang/ref/Reference;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 463
    if-nez v3, :cond_1

    iget-object v4, p0, Lorg/apache/commons/collections/ReferenceMap;->table:[Lorg/apache/commons/collections/ReferenceMap$Entry;

    iget-object v5, v0, Lorg/apache/commons/collections/ReferenceMap$Entry;->next:Lorg/apache/commons/collections/ReferenceMap$Entry;

    aput-object v5, v4, v2

    .line 465
    :goto_2
    iget v4, p0, Lorg/apache/commons/collections/ReferenceMap;->size:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lorg/apache/commons/collections/ReferenceMap;->size:I

    goto :goto_1

    .line 464
    :cond_1
    iget-object v4, v0, Lorg/apache/commons/collections/ReferenceMap$Entry;->next:Lorg/apache/commons/collections/ReferenceMap$Entry;

    iput-object v4, v3, Lorg/apache/commons/collections/ReferenceMap$Entry;->next:Lorg/apache/commons/collections/ReferenceMap$Entry;

    goto :goto_2

    .line 468
    :cond_2
    move-object v3, v0

    .line 469
    iget-object v0, v0, Lorg/apache/commons/collections/ReferenceMap$Entry;->next:Lorg/apache/commons/collections/ReferenceMap$Entry;

    goto :goto_0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 4
    .parameter "inp"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 335
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 336
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v2

    new-array v2, v2, [Lorg/apache/commons/collections/ReferenceMap$Entry;

    iput-object v2, p0, Lorg/apache/commons/collections/ReferenceMap;->table:[Lorg/apache/commons/collections/ReferenceMap$Entry;

    .line 337
    iget-object v2, p0, Lorg/apache/commons/collections/ReferenceMap;->table:[Lorg/apache/commons/collections/ReferenceMap$Entry;

    array-length v2, v2

    int-to-float v2, v2

    iget v3, p0, Lorg/apache/commons/collections/ReferenceMap;->loadFactor:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lorg/apache/commons/collections/ReferenceMap;->threshold:I

    .line 338
    new-instance v2, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v2}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v2, p0, Lorg/apache/commons/collections/ReferenceMap;->queue:Ljava/lang/ref/ReferenceQueue;

    .line 339
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    .line 340
    .local v0, key:Ljava/lang/Object;
    :goto_0
    if-nez v0, :cond_0

    .line 345
    return-void

    .line 341
    :cond_0
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    .line 342
    .local v1, value:Ljava/lang/Object;
    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/collections/ReferenceMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method private resize()V
    .locals 7

    .prologue
    .line 413
    iget-object v4, p0, Lorg/apache/commons/collections/ReferenceMap;->table:[Lorg/apache/commons/collections/ReferenceMap$Entry;

    .line 414
    .local v4, old:[Lorg/apache/commons/collections/ReferenceMap$Entry;
    array-length v5, v4

    mul-int/lit8 v5, v5, 0x2

    new-array v5, v5, [Lorg/apache/commons/collections/ReferenceMap$Entry;

    iput-object v5, p0, Lorg/apache/commons/collections/ReferenceMap;->table:[Lorg/apache/commons/collections/ReferenceMap$Entry;

    .line 416
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v5, v4

    if-lt v1, v5, :cond_0

    .line 427
    iget-object v5, p0, Lorg/apache/commons/collections/ReferenceMap;->table:[Lorg/apache/commons/collections/ReferenceMap$Entry;

    array-length v5, v5

    int-to-float v5, v5

    iget v6, p0, Lorg/apache/commons/collections/ReferenceMap;->loadFactor:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, p0, Lorg/apache/commons/collections/ReferenceMap;->threshold:I

    .line 428
    return-void

    .line 417
    :cond_0
    aget-object v3, v4, v1

    .line 418
    .local v3, next:Lorg/apache/commons/collections/ReferenceMap$Entry;
    :goto_1
    if-nez v3, :cond_1

    .line 425
    const/4 v5, 0x0

    aput-object v5, v4, v1

    .line 416
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 419
    :cond_1
    move-object v0, v3

    .line 420
    .local v0, entry:Lorg/apache/commons/collections/ReferenceMap$Entry;
    iget-object v3, v3, Lorg/apache/commons/collections/ReferenceMap$Entry;->next:Lorg/apache/commons/collections/ReferenceMap$Entry;

    .line 421
    iget v5, v0, Lorg/apache/commons/collections/ReferenceMap$Entry;->hash:I

    invoke-direct {p0, v5}, Lorg/apache/commons/collections/ReferenceMap;->indexFor(I)I

    move-result v2

    .line 422
    .local v2, index:I
    iget-object v5, p0, Lorg/apache/commons/collections/ReferenceMap;->table:[Lorg/apache/commons/collections/ReferenceMap$Entry;

    aget-object v5, v5, v2

    iput-object v5, v0, Lorg/apache/commons/collections/ReferenceMap$Entry;->next:Lorg/apache/commons/collections/ReferenceMap$Entry;

    .line 423
    iget-object v5, p0, Lorg/apache/commons/collections/ReferenceMap;->table:[Lorg/apache/commons/collections/ReferenceMap$Entry;

    aput-object v0, v5, v2

    goto :goto_1
.end method

.method private toReference(ILjava/lang/Object;I)Ljava/lang/Object;
    .locals 2
    .parameter "type"
    .parameter "referent"
    .parameter "hash"

    .prologue
    .line 360
    packed-switch p1, :pswitch_data_0

    .line 364
    new-instance v0, Ljava/lang/Error;

    invoke-direct {v0}, Ljava/lang/Error;-><init>()V

    throw v0

    .line 362
    :pswitch_0
    new-instance v0, Lorg/apache/commons/collections/ReferenceMap$SoftRef;

    iget-object v1, p0, Lorg/apache/commons/collections/ReferenceMap;->queue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0, p3, p2, v1}, Lorg/apache/commons/collections/ReferenceMap$SoftRef;-><init>(ILjava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    move-object p2, v0

    .line 363
    .end local p2
    :goto_0
    :pswitch_1
    return-object p2

    .restart local p2
    :pswitch_2
    new-instance v0, Lorg/apache/commons/collections/ReferenceMap$WeakRef;

    iget-object v1, p0, Lorg/apache/commons/collections/ReferenceMap;->queue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0, p3, p2, v1}, Lorg/apache/commons/collections/ReferenceMap$WeakRef;-><init>(ILjava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    move-object p2, v0

    goto :goto_0

    .line 360
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private static verify(Ljava/lang/String;I)V
    .locals 3
    .parameter "name"
    .parameter "type"

    .prologue
    .line 298
    if-ltz p1, :cond_0

    const/4 v0, 0x2

    if-le p1, v0, :cond_1

    .line 299
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

    .line 302
    :cond_1
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 3
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 312
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 313
    iget-object v2, p0, Lorg/apache/commons/collections/ReferenceMap;->table:[Lorg/apache/commons/collections/ReferenceMap$Entry;

    array-length v2, v2

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 318
    invoke-virtual {p0}, Lorg/apache/commons/collections/ReferenceMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, iter:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 323
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 324
    return-void

    .line 319
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 320
    .local v0, entry:Ljava/util/Map$Entry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 321
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    .line 595
    iget-object v0, p0, Lorg/apache/commons/collections/ReferenceMap;->table:[Lorg/apache/commons/collections/ReferenceMap$Entry;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 596
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/collections/ReferenceMap;->size:I

    .line 597
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/ReferenceMap;->queue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    if-nez v0, :cond_0

    .line 598
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 3
    .parameter "key"

    .prologue
    const/4 v1, 0x0

    .line 503
    invoke-direct {p0}, Lorg/apache/commons/collections/ReferenceMap;->purge()V

    .line 504
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/ReferenceMap;->getEntry(Ljava/lang/Object;)Lorg/apache/commons/collections/ReferenceMap$Entry;

    move-result-object v0

    .line 505
    .local v0, entry:Lorg/apache/commons/collections/ReferenceMap$Entry;
    if-nez v0, :cond_1

    .line 506
    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {v0}, Lorg/apache/commons/collections/ReferenceMap$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 607
    iget-object v0, p0, Lorg/apache/commons/collections/ReferenceMap;->entrySet:Ljava/util/Set;

    if-eqz v0, :cond_0

    .line 608
    iget-object v0, p0, Lorg/apache/commons/collections/ReferenceMap;->entrySet:Ljava/util/Set;

    .line 654
    :goto_0
    return-object v0

    .line 610
    :cond_0
    new-instance v0, Lorg/apache/commons/collections/ReferenceMap$1;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/ReferenceMap$1;-><init>(Lorg/apache/commons/collections/ReferenceMap;)V

    iput-object v0, p0, Lorg/apache/commons/collections/ReferenceMap;->entrySet:Ljava/util/Set;

    .line 654
    iget-object v0, p0, Lorg/apache/commons/collections/ReferenceMap;->entrySet:Ljava/util/Set;

    goto :goto_0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "key"

    .prologue
    .line 517
    invoke-direct {p0}, Lorg/apache/commons/collections/ReferenceMap;->purge()V

    .line 518
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/ReferenceMap;->getEntry(Ljava/lang/Object;)Lorg/apache/commons/collections/ReferenceMap$Entry;

    move-result-object v0

    .line 519
    .local v0, entry:Lorg/apache/commons/collections/ReferenceMap$Entry;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 520
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lorg/apache/commons/collections/ReferenceMap$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 492
    invoke-direct {p0}, Lorg/apache/commons/collections/ReferenceMap;->purge()V

    .line 493
    iget v0, p0, Lorg/apache/commons/collections/ReferenceMap;->size:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 664
    iget-object v0, p0, Lorg/apache/commons/collections/ReferenceMap;->keySet:Ljava/util/Set;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/collections/ReferenceMap;->keySet:Ljava/util/Set;

    .line 700
    :goto_0
    return-object v0

    .line 665
    :cond_0
    new-instance v0, Lorg/apache/commons/collections/ReferenceMap$2;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/ReferenceMap$2;-><init>(Lorg/apache/commons/collections/ReferenceMap;)V

    iput-object v0, p0, Lorg/apache/commons/collections/ReferenceMap;->keySet:Ljava/util/Set;

    .line 700
    iget-object v0, p0, Lorg/apache/commons/collections/ReferenceMap;->keySet:Ljava/util/Set;

    goto :goto_0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10
    .parameter "key"
    .parameter "value"

    .prologue
    .line 536
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null keys not allowed"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 537
    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null values not allowed"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 539
    :cond_1
    invoke-direct {p0}, Lorg/apache/commons/collections/ReferenceMap;->purge()V

    .line 540
    iget v0, p0, Lorg/apache/commons/collections/ReferenceMap;->size:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lorg/apache/commons/collections/ReferenceMap;->threshold:I

    if-le v0, v1, :cond_2

    invoke-direct {p0}, Lorg/apache/commons/collections/ReferenceMap;->resize()V

    .line 542
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    .line 543
    .local v3, hash:I
    invoke-direct {p0, v3}, Lorg/apache/commons/collections/ReferenceMap;->indexFor(I)I

    move-result v7

    .line 544
    .local v7, index:I
    iget-object v0, p0, Lorg/apache/commons/collections/ReferenceMap;->table:[Lorg/apache/commons/collections/ReferenceMap$Entry;

    aget-object v6, v0, v7

    .line 545
    .local v6, entry:Lorg/apache/commons/collections/ReferenceMap$Entry;
    :goto_0
    if-nez v6, :cond_3

    .line 553
    iget v0, p0, Lorg/apache/commons/collections/ReferenceMap;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/collections/ReferenceMap;->size:I

    .line 554
    iget v0, p0, Lorg/apache/commons/collections/ReferenceMap;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/collections/ReferenceMap;->modCount:I

    .line 555
    iget v0, p0, Lorg/apache/commons/collections/ReferenceMap;->keyType:I

    invoke-direct {p0, v0, p1, v3}, Lorg/apache/commons/collections/ReferenceMap;->toReference(ILjava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    .line 556
    iget v0, p0, Lorg/apache/commons/collections/ReferenceMap;->valueType:I

    invoke-direct {p0, v0, p2, v3}, Lorg/apache/commons/collections/ReferenceMap;->toReference(ILjava/lang/Object;I)Ljava/lang/Object;

    move-result-object p2

    .line 557
    iget-object v9, p0, Lorg/apache/commons/collections/ReferenceMap;->table:[Lorg/apache/commons/collections/ReferenceMap$Entry;

    new-instance v0, Lorg/apache/commons/collections/ReferenceMap$Entry;

    iget-object v1, p0, Lorg/apache/commons/collections/ReferenceMap;->table:[Lorg/apache/commons/collections/ReferenceMap$Entry;

    aget-object v5, v1, v7

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/collections/ReferenceMap$Entry;-><init>(Lorg/apache/commons/collections/ReferenceMap;Ljava/lang/Object;ILjava/lang/Object;Lorg/apache/commons/collections/ReferenceMap$Entry;)V

    aput-object v0, v9, v7

    .line 558
    const/4 v8, 0x0

    :goto_1
    return-object v8

    .line 546
    :cond_3
    iget v0, v6, Lorg/apache/commons/collections/ReferenceMap$Entry;->hash:I

    if-ne v3, v0, :cond_4

    invoke-virtual {v6}, Lorg/apache/commons/collections/ReferenceMap$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 547
    invoke-virtual {v6}, Lorg/apache/commons/collections/ReferenceMap$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    .line 548
    .local v8, result:Ljava/lang/Object;
    invoke-virtual {v6, p2}, Lorg/apache/commons/collections/ReferenceMap$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 551
    .end local v8           #result:Ljava/lang/Object;
    :cond_4
    iget-object v6, v6, Lorg/apache/commons/collections/ReferenceMap$Entry;->next:Lorg/apache/commons/collections/ReferenceMap$Entry;

    goto :goto_0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .parameter "key"

    .prologue
    const/4 v4, 0x0

    .line 570
    if-nez p1, :cond_1

    .line 587
    :cond_0
    :goto_0
    return-object v4

    .line 571
    :cond_1
    invoke-direct {p0}, Lorg/apache/commons/collections/ReferenceMap;->purge()V

    .line 572
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    .line 573
    .local v1, hash:I
    invoke-direct {p0, v1}, Lorg/apache/commons/collections/ReferenceMap;->indexFor(I)I

    move-result v2

    .line 574
    .local v2, index:I
    const/4 v3, 0x0

    .line 575
    .local v3, previous:Lorg/apache/commons/collections/ReferenceMap$Entry;
    iget-object v5, p0, Lorg/apache/commons/collections/ReferenceMap;->table:[Lorg/apache/commons/collections/ReferenceMap$Entry;

    aget-object v0, v5, v2

    .line 576
    .local v0, entry:Lorg/apache/commons/collections/ReferenceMap$Entry;
    :goto_1
    if-eqz v0, :cond_0

    .line 577
    iget v5, v0, Lorg/apache/commons/collections/ReferenceMap$Entry;->hash:I

    if-ne v1, v5, :cond_3

    invoke-virtual {v0}, Lorg/apache/commons/collections/ReferenceMap$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 578
    if-nez v3, :cond_2

    iget-object v4, p0, Lorg/apache/commons/collections/ReferenceMap;->table:[Lorg/apache/commons/collections/ReferenceMap$Entry;

    iget-object v5, v0, Lorg/apache/commons/collections/ReferenceMap$Entry;->next:Lorg/apache/commons/collections/ReferenceMap$Entry;

    aput-object v5, v4, v2

    .line 580
    :goto_2
    iget v4, p0, Lorg/apache/commons/collections/ReferenceMap;->size:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lorg/apache/commons/collections/ReferenceMap;->size:I

    .line 581
    iget v4, p0, Lorg/apache/commons/collections/ReferenceMap;->modCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/apache/commons/collections/ReferenceMap;->modCount:I

    .line 582
    invoke-virtual {v0}, Lorg/apache/commons/collections/ReferenceMap$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    goto :goto_0

    .line 579
    :cond_2
    iget-object v4, v0, Lorg/apache/commons/collections/ReferenceMap$Entry;->next:Lorg/apache/commons/collections/ReferenceMap$Entry;

    iput-object v4, v3, Lorg/apache/commons/collections/ReferenceMap$Entry;->next:Lorg/apache/commons/collections/ReferenceMap$Entry;

    goto :goto_2

    .line 584
    :cond_3
    move-object v3, v0

    .line 585
    iget-object v0, v0, Lorg/apache/commons/collections/ReferenceMap$Entry;->next:Lorg/apache/commons/collections/ReferenceMap$Entry;

    goto :goto_1
.end method

.method public size()I
    .locals 1

    .prologue
    .line 481
    invoke-direct {p0}, Lorg/apache/commons/collections/ReferenceMap;->purge()V

    .line 482
    iget v0, p0, Lorg/apache/commons/collections/ReferenceMap;->size:I

    return v0
.end method

.method public values()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 710
    iget-object v0, p0, Lorg/apache/commons/collections/ReferenceMap;->values:Ljava/util/Collection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/collections/ReferenceMap;->values:Ljava/util/Collection;

    .line 736
    :goto_0
    return-object v0

    .line 711
    :cond_0
    new-instance v0, Lorg/apache/commons/collections/ReferenceMap$3;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/ReferenceMap$3;-><init>(Lorg/apache/commons/collections/ReferenceMap;)V

    iput-object v0, p0, Lorg/apache/commons/collections/ReferenceMap;->values:Ljava/util/Collection;

    .line 736
    iget-object v0, p0, Lorg/apache/commons/collections/ReferenceMap;->values:Ljava/util/Collection;

    goto :goto_0
.end method
