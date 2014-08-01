.class public Lorg/apache/commons/collections/map/MultiKeyMap;
.super Ljava/lang/Object;
.source "MultiKeyMap.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lorg/apache/commons/collections/IterableMap;


# static fields
.field private static final serialVersionUID:J = -0x18d0f5b9f1b08c10L


# instance fields
.field protected final map:Lorg/apache/commons/collections/map/AbstractHashedMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    new-instance v0, Lorg/apache/commons/collections/map/HashedMap;

    invoke-direct {v0}, Lorg/apache/commons/collections/map/HashedMap;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    .line 108
    return-void
.end method

.method protected constructor <init>(Lorg/apache/commons/collections/map/AbstractHashedMap;)V
    .locals 0
    .parameter "map"

    .prologue
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    iput-object p1, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    .line 121
    return-void
.end method

.method public static decorate(Lorg/apache/commons/collections/map/AbstractHashedMap;)Lorg/apache/commons/collections/map/MultiKeyMap;
    .locals 2
    .parameter "map"

    .prologue
    .line 92
    if-nez p0, :cond_0

    .line 93
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Map must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/AbstractHashedMap;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 96
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Map must be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 98
    :cond_1
    new-instance v0, Lorg/apache/commons/collections/map/MultiKeyMap;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/map/MultiKeyMap;-><init>(Lorg/apache/commons/collections/map/AbstractHashedMap;)V

    return-object v0
.end method


# virtual methods
.method protected checkKey(Ljava/lang/Object;)V
    .locals 2
    .parameter "key"

    .prologue
    .line 799
    if-nez p1, :cond_0

    .line 800
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Key must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 802
    :cond_0
    instance-of v0, p1, Lorg/apache/commons/collections/keyvalue/MultiKey;

    if-nez v0, :cond_1

    .line 803
    new-instance v0, Ljava/lang/ClassCastException;

    const-string v1, "Key must be a MultiKey"

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 805
    :cond_1
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 879
    iget-object v0, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections/map/AbstractHashedMap;->clear()V

    .line 880
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 813
    new-instance v1, Lorg/apache/commons/collections/map/MultiKeyMap;

    iget-object v0, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections/map/AbstractHashedMap;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/collections/map/AbstractHashedMap;

    invoke-direct {v1, v0}, Lorg/apache/commons/collections/map/MultiKeyMap;-><init>(Lorg/apache/commons/collections/map/AbstractHashedMap;)V

    return-object v1
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .parameter "key"

    .prologue
    .line 863
    iget-object v0, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections/map/AbstractHashedMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsKey(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 5
    .parameter "key1"
    .parameter "key2"

    .prologue
    .line 151
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/collections/map/MultiKeyMap;->hash(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    .line 152
    .local v1, hashCode:I
    iget-object v2, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    iget-object v2, v2, Lorg/apache/commons/collections/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    iget-object v3, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    iget-object v4, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    iget-object v4, v4, Lorg/apache/commons/collections/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    array-length v4, v4

    invoke-virtual {v3, v1, v4}, Lorg/apache/commons/collections/map/AbstractHashedMap;->hashIndex(II)I

    move-result v3

    aget-object v0, v2, v3

    .line 153
    .local v0, entry:Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;
    :goto_0
    if-nez v0, :cond_0

    .line 159
    const/4 v2, 0x0

    :goto_1
    return v2

    .line 154
    :cond_0
    iget v2, v0, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->hashCode:I

    if-ne v2, v1, :cond_1

    invoke-virtual {p0, v0, p1, p2}, Lorg/apache/commons/collections/map/MultiKeyMap;->isEqualKey(Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 155
    const/4 v2, 0x1

    goto :goto_1

    .line 157
    :cond_1
    iget-object v0, v0, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    goto :goto_0
.end method

.method public containsKey(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 5
    .parameter "key1"
    .parameter "key2"
    .parameter "key3"

    .prologue
    .line 279
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/collections/map/MultiKeyMap;->hash(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    .line 280
    .local v1, hashCode:I
    iget-object v2, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    iget-object v2, v2, Lorg/apache/commons/collections/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    iget-object v3, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    iget-object v4, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    iget-object v4, v4, Lorg/apache/commons/collections/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    array-length v4, v4

    invoke-virtual {v3, v1, v4}, Lorg/apache/commons/collections/map/AbstractHashedMap;->hashIndex(II)I

    move-result v3

    aget-object v0, v2, v3

    .line 281
    .local v0, entry:Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;
    :goto_0
    if-nez v0, :cond_0

    .line 287
    const/4 v2, 0x0

    :goto_1
    return v2

    .line 282
    :cond_0
    iget v2, v0, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->hashCode:I

    if-ne v2, v1, :cond_1

    invoke-virtual {p0, v0, p1, p2, p3}, Lorg/apache/commons/collections/map/MultiKeyMap;->isEqualKey(Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 283
    const/4 v2, 0x1

    goto :goto_1

    .line 285
    :cond_1
    iget-object v0, v0, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    goto :goto_0
.end method

.method public containsKey(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 7
    .parameter "key1"
    .parameter "key2"
    .parameter "key3"
    .parameter "key4"

    .prologue
    .line 417
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/commons/collections/map/MultiKeyMap;->hash(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v6

    .line 418
    .local v6, hashCode:I
    iget-object v0, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    iget-object v0, v0, Lorg/apache/commons/collections/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    iget-object v2, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    iget-object v3, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    iget-object v3, v3, Lorg/apache/commons/collections/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    array-length v3, v3

    invoke-virtual {v2, v6, v3}, Lorg/apache/commons/collections/map/AbstractHashedMap;->hashIndex(II)I

    move-result v2

    aget-object v1, v0, v2

    .line 419
    .local v1, entry:Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;
    :goto_0
    if-nez v1, :cond_0

    .line 425
    const/4 v0, 0x0

    :goto_1
    return v0

    .line 420
    :cond_0
    iget v0, v1, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->hashCode:I

    if-ne v0, v6, :cond_1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/collections/map/MultiKeyMap;->isEqualKey(Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 421
    const/4 v0, 0x1

    goto :goto_1

    .line 423
    :cond_1
    iget-object v1, v1, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    goto :goto_0
.end method

.method public containsKey(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 8
    .parameter "key1"
    .parameter "key2"
    .parameter "key3"
    .parameter "key4"
    .parameter "key5"

    .prologue
    .line 565
    invoke-virtual/range {p0 .. p5}, Lorg/apache/commons/collections/map/MultiKeyMap;->hash(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v7

    .line 566
    .local v7, hashCode:I
    iget-object v0, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    iget-object v0, v0, Lorg/apache/commons/collections/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    iget-object v2, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    iget-object v3, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    iget-object v3, v3, Lorg/apache/commons/collections/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    array-length v3, v3

    invoke-virtual {v2, v7, v3}, Lorg/apache/commons/collections/map/AbstractHashedMap;->hashIndex(II)I

    move-result v2

    aget-object v1, v0, v2

    .line 567
    .local v1, entry:Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;
    :goto_0
    if-nez v1, :cond_0

    .line 573
    const/4 v0, 0x0

    :goto_1
    return v0

    .line 568
    :cond_0
    iget v0, v1, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->hashCode:I

    if-ne v0, v7, :cond_1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lorg/apache/commons/collections/map/MultiKeyMap;->isEqualKey(Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 569
    const/4 v0, 0x1

    goto :goto_1

    .line 571
    :cond_1
    iget-object v1, v1, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    goto :goto_0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1
    .parameter "value"

    .prologue
    .line 867
    iget-object v0, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections/map/AbstractHashedMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 891
    iget-object v0, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections/map/AbstractHashedMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .parameter "obj"

    .prologue
    .line 895
    if-ne p1, p0, :cond_0

    .line 896
    const/4 v0, 0x1

    .line 898
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections/map/AbstractHashedMap;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "key"

    .prologue
    .line 871
    iget-object v0, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections/map/AbstractHashedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .parameter "key1"
    .parameter "key2"

    .prologue
    .line 132
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/collections/map/MultiKeyMap;->hash(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    .line 133
    .local v1, hashCode:I
    iget-object v2, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    iget-object v2, v2, Lorg/apache/commons/collections/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    iget-object v3, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    iget-object v4, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    iget-object v4, v4, Lorg/apache/commons/collections/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    array-length v4, v4

    invoke-virtual {v3, v1, v4}, Lorg/apache/commons/collections/map/AbstractHashedMap;->hashIndex(II)I

    move-result v3

    aget-object v0, v2, v3

    .line 134
    .local v0, entry:Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;
    :goto_0
    if-nez v0, :cond_0

    .line 140
    const/4 v2, 0x0

    :goto_1
    return-object v2

    .line 135
    :cond_0
    iget v2, v0, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->hashCode:I

    if-ne v2, v1, :cond_1

    invoke-virtual {p0, v0, p1, p2}, Lorg/apache/commons/collections/map/MultiKeyMap;->isEqualKey(Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 136
    invoke-virtual {v0}, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->getValue()Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 138
    :cond_1
    iget-object v0, v0, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    goto :goto_0
.end method

.method public get(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .parameter "key1"
    .parameter "key2"
    .parameter "key3"

    .prologue
    .line 259
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/collections/map/MultiKeyMap;->hash(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    .line 260
    .local v1, hashCode:I
    iget-object v2, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    iget-object v2, v2, Lorg/apache/commons/collections/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    iget-object v3, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    iget-object v4, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    iget-object v4, v4, Lorg/apache/commons/collections/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    array-length v4, v4

    invoke-virtual {v3, v1, v4}, Lorg/apache/commons/collections/map/AbstractHashedMap;->hashIndex(II)I

    move-result v3

    aget-object v0, v2, v3

    .line 261
    .local v0, entry:Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;
    :goto_0
    if-nez v0, :cond_0

    .line 267
    const/4 v2, 0x0

    :goto_1
    return-object v2

    .line 262
    :cond_0
    iget v2, v0, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->hashCode:I

    if-ne v2, v1, :cond_1

    invoke-virtual {p0, v0, p1, p2, p3}, Lorg/apache/commons/collections/map/MultiKeyMap;->isEqualKey(Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 263
    invoke-virtual {v0}, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->getValue()Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 265
    :cond_1
    iget-object v0, v0, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    goto :goto_0
.end method

.method public get(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .parameter "key1"
    .parameter "key2"
    .parameter "key3"
    .parameter "key4"

    .prologue
    .line 396
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/commons/collections/map/MultiKeyMap;->hash(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v6

    .line 397
    .local v6, hashCode:I
    iget-object v0, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    iget-object v0, v0, Lorg/apache/commons/collections/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    iget-object v2, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    iget-object v3, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    iget-object v3, v3, Lorg/apache/commons/collections/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    array-length v3, v3

    invoke-virtual {v2, v6, v3}, Lorg/apache/commons/collections/map/AbstractHashedMap;->hashIndex(II)I

    move-result v2

    aget-object v1, v0, v2

    .line 398
    .local v1, entry:Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;
    :goto_0
    if-nez v1, :cond_0

    .line 404
    const/4 v0, 0x0

    :goto_1
    return-object v0

    .line 399
    :cond_0
    iget v0, v1, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->hashCode:I

    if-ne v0, v6, :cond_1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/collections/map/MultiKeyMap;->isEqualKey(Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 400
    invoke-virtual {v1}, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->getValue()Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    .line 402
    :cond_1
    iget-object v1, v1, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    goto :goto_0
.end method

.method public get(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .parameter "key1"
    .parameter "key2"
    .parameter "key3"
    .parameter "key4"
    .parameter "key5"

    .prologue
    .line 543
    invoke-virtual/range {p0 .. p5}, Lorg/apache/commons/collections/map/MultiKeyMap;->hash(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v7

    .line 544
    .local v7, hashCode:I
    iget-object v0, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    iget-object v0, v0, Lorg/apache/commons/collections/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    iget-object v2, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    iget-object v3, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    iget-object v3, v3, Lorg/apache/commons/collections/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    array-length v3, v3

    invoke-virtual {v2, v7, v3}, Lorg/apache/commons/collections/map/AbstractHashedMap;->hashIndex(II)I

    move-result v2

    aget-object v1, v0, v2

    .line 545
    .local v1, entry:Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;
    :goto_0
    if-nez v1, :cond_0

    .line 551
    const/4 v0, 0x0

    :goto_1
    return-object v0

    .line 546
    :cond_0
    iget v0, v1, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->hashCode:I

    if-ne v0, v7, :cond_1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lorg/apache/commons/collections/map/MultiKeyMap;->isEqualKey(Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 547
    invoke-virtual {v1}, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->getValue()Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    .line 549
    :cond_1
    iget-object v1, v1, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    goto :goto_0
.end method

.method protected hash(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2
    .parameter "key1"
    .parameter "key2"

    .prologue
    .line 219
    const/4 v0, 0x0

    .line 220
    .local v0, h:I
    if-eqz p1, :cond_0

    .line 221
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 223
    :cond_0
    if-eqz p2, :cond_1

    .line 224
    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 226
    :cond_1
    shl-int/lit8 v1, v0, 0x9

    xor-int/lit8 v1, v1, -0x1

    add-int/2addr v0, v1

    .line 227
    ushr-int/lit8 v1, v0, 0xe

    xor-int/2addr v0, v1

    .line 228
    shl-int/lit8 v1, v0, 0x4

    add-int/2addr v0, v1

    .line 229
    ushr-int/lit8 v1, v0, 0xa

    xor-int/2addr v0, v1

    .line 230
    return v0
.end method

.method protected hash(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2
    .parameter "key1"
    .parameter "key2"
    .parameter "key3"

    .prologue
    .line 350
    const/4 v0, 0x0

    .line 351
    .local v0, h:I
    if-eqz p1, :cond_0

    .line 352
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 354
    :cond_0
    if-eqz p2, :cond_1

    .line 355
    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 357
    :cond_1
    if-eqz p3, :cond_2

    .line 358
    invoke-virtual {p3}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 360
    :cond_2
    shl-int/lit8 v1, v0, 0x9

    xor-int/lit8 v1, v1, -0x1

    add-int/2addr v0, v1

    .line 361
    ushr-int/lit8 v1, v0, 0xe

    xor-int/2addr v0, v1

    .line 362
    shl-int/lit8 v1, v0, 0x4

    add-int/2addr v0, v1

    .line 363
    ushr-int/lit8 v1, v0, 0xa

    xor-int/2addr v0, v1

    .line 364
    return v0
.end method

.method protected hash(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2
    .parameter "key1"
    .parameter "key2"
    .parameter "key3"
    .parameter "key4"

    .prologue
    .line 491
    const/4 v0, 0x0

    .line 492
    .local v0, h:I
    if-eqz p1, :cond_0

    .line 493
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 495
    :cond_0
    if-eqz p2, :cond_1

    .line 496
    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 498
    :cond_1
    if-eqz p3, :cond_2

    .line 499
    invoke-virtual {p3}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 501
    :cond_2
    if-eqz p4, :cond_3

    .line 502
    invoke-virtual {p4}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 504
    :cond_3
    shl-int/lit8 v1, v0, 0x9

    xor-int/lit8 v1, v1, -0x1

    add-int/2addr v0, v1

    .line 505
    ushr-int/lit8 v1, v0, 0xe

    xor-int/2addr v0, v1

    .line 506
    shl-int/lit8 v1, v0, 0x4

    add-int/2addr v0, v1

    .line 507
    ushr-int/lit8 v1, v0, 0xa

    xor-int/2addr v0, v1

    .line 508
    return v0
.end method

.method protected hash(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2
    .parameter "key1"
    .parameter "key2"
    .parameter "key3"
    .parameter "key4"
    .parameter "key5"

    .prologue
    .line 642
    const/4 v0, 0x0

    .line 643
    .local v0, h:I
    if-eqz p1, :cond_0

    .line 644
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 646
    :cond_0
    if-eqz p2, :cond_1

    .line 647
    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 649
    :cond_1
    if-eqz p3, :cond_2

    .line 650
    invoke-virtual {p3}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 652
    :cond_2
    if-eqz p4, :cond_3

    .line 653
    invoke-virtual {p4}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 655
    :cond_3
    if-eqz p5, :cond_4

    .line 656
    invoke-virtual {p5}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 658
    :cond_4
    shl-int/lit8 v1, v0, 0x9

    xor-int/lit8 v1, v1, -0x1

    add-int/2addr v0, v1

    .line 659
    ushr-int/lit8 v1, v0, 0xe

    xor-int/2addr v0, v1

    .line 660
    shl-int/lit8 v1, v0, 0x4

    add-int/2addr v0, v1

    .line 661
    ushr-int/lit8 v1, v0, 0xa

    xor-int/2addr v0, v1

    .line 662
    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 902
    iget-object v0, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections/map/AbstractHashedMap;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 859
    iget-object v0, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections/map/AbstractHashedMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method protected isEqualKey(Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 5
    .parameter "entry"
    .parameter "key1"
    .parameter "key2"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 242
    invoke-virtual {p1}, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/collections/keyvalue/MultiKey;

    .line 243
    .local v0, multi:Lorg/apache/commons/collections/keyvalue/MultiKey;
    invoke-virtual {v0}, Lorg/apache/commons/collections/keyvalue/MultiKey;->size()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_4

    if-nez p2, :cond_1

    invoke-virtual {v0, v2}, Lorg/apache/commons/collections/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    move v3, v1

    :goto_0
    if-eqz v3, :cond_4

    if-nez p3, :cond_3

    invoke-virtual {v0, v1}, Lorg/apache/commons/collections/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_2

    move v3, v1

    :goto_1
    if-eqz v3, :cond_4

    :goto_2
    return v1

    :cond_0
    move v3, v2

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v2}, Lorg/apache/commons/collections/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_0

    :cond_2
    move v3, v2

    goto :goto_1

    :cond_3
    invoke-virtual {v0, v1}, Lorg/apache/commons/collections/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_1

    :cond_4
    move v1, v2

    goto :goto_2
.end method

.method protected isEqualKey(Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 6
    .parameter "entry"
    .parameter "key1"
    .parameter "key2"
    .parameter "key3"

    .prologue
    const/4 v5, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 377
    invoke-virtual {p1}, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/collections/keyvalue/MultiKey;

    .line 378
    .local v0, multi:Lorg/apache/commons/collections/keyvalue/MultiKey;
    invoke-virtual {v0}, Lorg/apache/commons/collections/keyvalue/MultiKey;->size()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_6

    if-nez p2, :cond_1

    invoke-virtual {v0, v2}, Lorg/apache/commons/collections/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    move v3, v1

    :goto_0
    if-eqz v3, :cond_6

    if-nez p3, :cond_3

    invoke-virtual {v0, v1}, Lorg/apache/commons/collections/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_2

    move v3, v1

    :goto_1
    if-eqz v3, :cond_6

    if-nez p4, :cond_5

    invoke-virtual {v0, v5}, Lorg/apache/commons/collections/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_4

    move v3, v1

    :goto_2
    if-eqz v3, :cond_6

    :goto_3
    return v1

    :cond_0
    move v3, v2

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v2}, Lorg/apache/commons/collections/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_0

    :cond_2
    move v3, v2

    goto :goto_1

    :cond_3
    invoke-virtual {v0, v1}, Lorg/apache/commons/collections/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_1

    :cond_4
    move v3, v2

    goto :goto_2

    :cond_5
    invoke-virtual {v0, v5}, Lorg/apache/commons/collections/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_2

    :cond_6
    move v1, v2

    goto :goto_3
.end method

.method protected isEqualKey(Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 7
    .parameter "entry"
    .parameter "key1"
    .parameter "key2"
    .parameter "key3"
    .parameter "key4"

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 522
    invoke-virtual {p1}, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/collections/keyvalue/MultiKey;

    .line 523
    .local v0, multi:Lorg/apache/commons/collections/keyvalue/MultiKey;
    invoke-virtual {v0}, Lorg/apache/commons/collections/keyvalue/MultiKey;->size()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_8

    if-nez p2, :cond_1

    invoke-virtual {v0, v2}, Lorg/apache/commons/collections/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    move v3, v1

    :goto_0
    if-eqz v3, :cond_8

    if-nez p3, :cond_3

    invoke-virtual {v0, v1}, Lorg/apache/commons/collections/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_2

    move v3, v1

    :goto_1
    if-eqz v3, :cond_8

    if-nez p4, :cond_5

    invoke-virtual {v0, v5}, Lorg/apache/commons/collections/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_4

    move v3, v1

    :goto_2
    if-eqz v3, :cond_8

    if-nez p5, :cond_7

    invoke-virtual {v0, v6}, Lorg/apache/commons/collections/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_6

    move v3, v1

    :goto_3
    if-eqz v3, :cond_8

    :goto_4
    return v1

    :cond_0
    move v3, v2

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v2}, Lorg/apache/commons/collections/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_0

    :cond_2
    move v3, v2

    goto :goto_1

    :cond_3
    invoke-virtual {v0, v1}, Lorg/apache/commons/collections/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_1

    :cond_4
    move v3, v2

    goto :goto_2

    :cond_5
    invoke-virtual {v0, v5}, Lorg/apache/commons/collections/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_2

    :cond_6
    move v3, v2

    goto :goto_3

    :cond_7
    invoke-virtual {v0, v6}, Lorg/apache/commons/collections/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p5, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_3

    :cond_8
    move v1, v2

    goto :goto_4
.end method

.method protected isEqualKey(Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 8
    .parameter "entry"
    .parameter "key1"
    .parameter "key2"
    .parameter "key3"
    .parameter "key4"
    .parameter "key5"

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 677
    invoke-virtual {p1}, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/collections/keyvalue/MultiKey;

    .line 678
    .local v0, multi:Lorg/apache/commons/collections/keyvalue/MultiKey;
    invoke-virtual {v0}, Lorg/apache/commons/collections/keyvalue/MultiKey;->size()I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_a

    if-nez p2, :cond_1

    invoke-virtual {v0, v2}, Lorg/apache/commons/collections/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    move v3, v1

    :goto_0
    if-eqz v3, :cond_a

    if-nez p3, :cond_3

    invoke-virtual {v0, v1}, Lorg/apache/commons/collections/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_2

    move v3, v1

    :goto_1
    if-eqz v3, :cond_a

    if-nez p4, :cond_5

    invoke-virtual {v0, v5}, Lorg/apache/commons/collections/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_4

    move v3, v1

    :goto_2
    if-eqz v3, :cond_a

    if-nez p5, :cond_7

    invoke-virtual {v0, v6}, Lorg/apache/commons/collections/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_6

    move v3, v1

    :goto_3
    if-eqz v3, :cond_a

    if-nez p6, :cond_9

    invoke-virtual {v0, v7}, Lorg/apache/commons/collections/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_8

    move v3, v1

    :goto_4
    if-eqz v3, :cond_a

    :goto_5
    return v1

    :cond_0
    move v3, v2

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v2}, Lorg/apache/commons/collections/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_0

    :cond_2
    move v3, v2

    goto :goto_1

    :cond_3
    invoke-virtual {v0, v1}, Lorg/apache/commons/collections/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_1

    :cond_4
    move v3, v2

    goto :goto_2

    :cond_5
    invoke-virtual {v0, v5}, Lorg/apache/commons/collections/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_2

    :cond_6
    move v3, v2

    goto :goto_3

    :cond_7
    invoke-virtual {v0, v6}, Lorg/apache/commons/collections/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p5, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_3

    :cond_8
    move v3, v2

    goto :goto_4

    :cond_9
    invoke-virtual {v0, v7}, Lorg/apache/commons/collections/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p6, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_4

    :cond_a
    move v1, v2

    goto :goto_5
.end method

.method public keySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 883
    iget-object v0, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections/map/AbstractHashedMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public mapIterator()Lorg/apache/commons/collections/MapIterator;
    .locals 1

    .prologue
    .line 851
    iget-object v0, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections/map/AbstractHashedMap;->mapIterator()Lorg/apache/commons/collections/MapIterator;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 827
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/map/MultiKeyMap;->checkKey(Ljava/lang/Object;)V

    .line 828
    iget-object v0, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/collections/map/AbstractHashedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .parameter "key1"
    .parameter "key2"
    .parameter "value"

    .prologue
    .line 171
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/collections/map/MultiKeyMap;->hash(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    .line 172
    .local v1, hashCode:I
    iget-object v4, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    iget-object v5, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    iget-object v5, v5, Lorg/apache/commons/collections/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    array-length v5, v5

    invoke-virtual {v4, v1, v5}, Lorg/apache/commons/collections/map/AbstractHashedMap;->hashIndex(II)I

    move-result v2

    .line 173
    .local v2, index:I
    iget-object v4, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    iget-object v4, v4, Lorg/apache/commons/collections/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    aget-object v0, v4, v2

    .line 174
    .local v0, entry:Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;
    :goto_0
    if-nez v0, :cond_0

    .line 183
    iget-object v4, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    new-instance v5, Lorg/apache/commons/collections/keyvalue/MultiKey;

    invoke-direct {v5, p1, p2}, Lorg/apache/commons/collections/keyvalue/MultiKey;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v4, v2, v1, v5, p3}, Lorg/apache/commons/collections/map/AbstractHashedMap;->addMapping(IILjava/lang/Object;Ljava/lang/Object;)V

    .line 184
    const/4 v3, 0x0

    :goto_1
    return-object v3

    .line 175
    :cond_0
    iget v4, v0, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->hashCode:I

    if-ne v4, v1, :cond_1

    invoke-virtual {p0, v0, p1, p2}, Lorg/apache/commons/collections/map/MultiKeyMap;->isEqualKey(Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 176
    invoke-virtual {v0}, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 177
    .local v3, oldValue:Ljava/lang/Object;
    iget-object v4, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    invoke-virtual {v4, v0, p3}, Lorg/apache/commons/collections/map/AbstractHashedMap;->updateEntry(Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;Ljava/lang/Object;)V

    goto :goto_1

    .line 180
    .end local v3           #oldValue:Ljava/lang/Object;
    :cond_1
    iget-object v0, v0, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    goto :goto_0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .parameter "key1"
    .parameter "key2"
    .parameter "key3"
    .parameter "value"

    .prologue
    .line 300
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/collections/map/MultiKeyMap;->hash(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    .line 301
    .local v1, hashCode:I
    iget-object v4, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    iget-object v5, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    iget-object v5, v5, Lorg/apache/commons/collections/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    array-length v5, v5

    invoke-virtual {v4, v1, v5}, Lorg/apache/commons/collections/map/AbstractHashedMap;->hashIndex(II)I

    move-result v2

    .line 302
    .local v2, index:I
    iget-object v4, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    iget-object v4, v4, Lorg/apache/commons/collections/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    aget-object v0, v4, v2

    .line 303
    .local v0, entry:Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;
    :goto_0
    if-nez v0, :cond_0

    .line 312
    iget-object v4, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    new-instance v5, Lorg/apache/commons/collections/keyvalue/MultiKey;

    invoke-direct {v5, p1, p2, p3}, Lorg/apache/commons/collections/keyvalue/MultiKey;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v4, v2, v1, v5, p4}, Lorg/apache/commons/collections/map/AbstractHashedMap;->addMapping(IILjava/lang/Object;Ljava/lang/Object;)V

    .line 313
    const/4 v3, 0x0

    :goto_1
    return-object v3

    .line 304
    :cond_0
    iget v4, v0, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->hashCode:I

    if-ne v4, v1, :cond_1

    invoke-virtual {p0, v0, p1, p2, p3}, Lorg/apache/commons/collections/map/MultiKeyMap;->isEqualKey(Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 305
    invoke-virtual {v0}, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 306
    .local v3, oldValue:Ljava/lang/Object;
    iget-object v4, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    invoke-virtual {v4, v0, p4}, Lorg/apache/commons/collections/map/AbstractHashedMap;->updateEntry(Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;Ljava/lang/Object;)V

    goto :goto_1

    .line 309
    .end local v3           #oldValue:Ljava/lang/Object;
    :cond_1
    iget-object v0, v0, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    goto :goto_0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .parameter "key1"
    .parameter "key2"
    .parameter "key3"
    .parameter "key4"
    .parameter "value"

    .prologue
    .line 439
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/commons/collections/map/MultiKeyMap;->hash(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v6

    .line 440
    .local v6, hashCode:I
    iget-object v0, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    iget-object v2, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    iget-object v2, v2, Lorg/apache/commons/collections/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    array-length v2, v2

    invoke-virtual {v0, v6, v2}, Lorg/apache/commons/collections/map/AbstractHashedMap;->hashIndex(II)I

    move-result v7

    .line 441
    .local v7, index:I
    iget-object v0, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    iget-object v0, v0, Lorg/apache/commons/collections/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    aget-object v1, v0, v7

    .line 442
    .local v1, entry:Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;
    :goto_0
    if-nez v1, :cond_0

    .line 451
    iget-object v0, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    new-instance v2, Lorg/apache/commons/collections/keyvalue/MultiKey;

    invoke-direct {v2, p1, p2, p3, p4}, Lorg/apache/commons/collections/keyvalue/MultiKey;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v7, v6, v2, p5}, Lorg/apache/commons/collections/map/AbstractHashedMap;->addMapping(IILjava/lang/Object;Ljava/lang/Object;)V

    .line 452
    const/4 v8, 0x0

    :goto_1
    return-object v8

    .line 443
    :cond_0
    iget v0, v1, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->hashCode:I

    if-ne v0, v6, :cond_1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/collections/map/MultiKeyMap;->isEqualKey(Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 444
    invoke-virtual {v1}, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->getValue()Ljava/lang/Object;

    move-result-object v8

    .line 445
    .local v8, oldValue:Ljava/lang/Object;
    iget-object v0, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    invoke-virtual {v0, v1, p5}, Lorg/apache/commons/collections/map/AbstractHashedMap;->updateEntry(Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;Ljava/lang/Object;)V

    goto :goto_1

    .line 448
    .end local v8           #oldValue:Ljava/lang/Object;
    :cond_1
    iget-object v1, v1, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    goto :goto_0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12
    .parameter "key1"
    .parameter "key2"
    .parameter "key3"
    .parameter "key4"
    .parameter "key5"
    .parameter "value"

    .prologue
    .line 588
    invoke-virtual/range {p0 .. p5}, Lorg/apache/commons/collections/map/MultiKeyMap;->hash(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v9

    .line 589
    .local v9, hashCode:I
    iget-object v1, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    iget-object v3, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    iget-object v3, v3, Lorg/apache/commons/collections/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    array-length v3, v3

    invoke-virtual {v1, v9, v3}, Lorg/apache/commons/collections/map/AbstractHashedMap;->hashIndex(II)I

    move-result v10

    .line 590
    .local v10, index:I
    iget-object v1, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    iget-object v1, v1, Lorg/apache/commons/collections/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    aget-object v2, v1, v10

    .line 591
    .local v2, entry:Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;
    :goto_0
    if-nez v2, :cond_0

    .line 600
    iget-object v1, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    new-instance v3, Lorg/apache/commons/collections/keyvalue/MultiKey;

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    invoke-direct/range {v3 .. v8}, Lorg/apache/commons/collections/keyvalue/MultiKey;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v0, p6

    invoke-virtual {v1, v10, v9, v3, v0}, Lorg/apache/commons/collections/map/AbstractHashedMap;->addMapping(IILjava/lang/Object;Ljava/lang/Object;)V

    .line 601
    const/4 v11, 0x0

    :goto_1
    return-object v11

    .line 592
    :cond_0
    iget v1, v2, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->hashCode:I

    if-ne v1, v9, :cond_1

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    invoke-virtual/range {v1 .. v7}, Lorg/apache/commons/collections/map/MultiKeyMap;->isEqualKey(Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 593
    invoke-virtual {v2}, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->getValue()Ljava/lang/Object;

    move-result-object v11

    .line 594
    .local v11, oldValue:Ljava/lang/Object;
    iget-object v1, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    move-object/from16 v0, p6

    invoke-virtual {v1, v2, v0}, Lorg/apache/commons/collections/map/AbstractHashedMap;->updateEntry(Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;Ljava/lang/Object;)V

    goto :goto_1

    .line 597
    .end local v11           #oldValue:Ljava/lang/Object;
    :cond_1
    iget-object v2, v2, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    goto :goto_0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 3
    .parameter "mapToCopy"

    .prologue
    .line 842
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, it:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 846
    iget-object v2, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    invoke-virtual {v2, p1}, Lorg/apache/commons/collections/map/AbstractHashedMap;->putAll(Ljava/util/Map;)V

    .line 847
    return-void

    .line 843
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 844
    .local v1, key:Ljava/lang/Object;
    invoke-virtual {p0, v1}, Lorg/apache/commons/collections/map/MultiKeyMap;->checkKey(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "key"

    .prologue
    .line 875
    iget-object v0, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections/map/AbstractHashedMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .parameter "key1"
    .parameter "key2"

    .prologue
    .line 195
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/collections/map/MultiKeyMap;->hash(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    .line 196
    .local v1, hashCode:I
    iget-object v5, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    iget-object v6, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    iget-object v6, v6, Lorg/apache/commons/collections/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    array-length v6, v6

    invoke-virtual {v5, v1, v6}, Lorg/apache/commons/collections/map/AbstractHashedMap;->hashIndex(II)I

    move-result v2

    .line 197
    .local v2, index:I
    iget-object v5, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    iget-object v5, v5, Lorg/apache/commons/collections/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    aget-object v0, v5, v2

    .line 198
    .local v0, entry:Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;
    const/4 v4, 0x0

    .line 199
    .local v4, previous:Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;
    :goto_0
    if-nez v0, :cond_0

    .line 208
    const/4 v3, 0x0

    :goto_1
    return-object v3

    .line 200
    :cond_0
    iget v5, v0, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->hashCode:I

    if-ne v5, v1, :cond_1

    invoke-virtual {p0, v0, p1, p2}, Lorg/apache/commons/collections/map/MultiKeyMap;->isEqualKey(Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 201
    invoke-virtual {v0}, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 202
    .local v3, oldValue:Ljava/lang/Object;
    iget-object v5, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    invoke-virtual {v5, v0, v2, v4}, Lorg/apache/commons/collections/map/AbstractHashedMap;->removeMapping(Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;ILorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;)V

    goto :goto_1

    .line 205
    .end local v3           #oldValue:Ljava/lang/Object;
    :cond_1
    move-object v4, v0

    .line 206
    iget-object v0, v0, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    goto :goto_0
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .parameter "key1"
    .parameter "key2"
    .parameter "key3"

    .prologue
    .line 325
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/collections/map/MultiKeyMap;->hash(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    .line 326
    .local v1, hashCode:I
    iget-object v5, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    iget-object v6, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    iget-object v6, v6, Lorg/apache/commons/collections/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    array-length v6, v6

    invoke-virtual {v5, v1, v6}, Lorg/apache/commons/collections/map/AbstractHashedMap;->hashIndex(II)I

    move-result v2

    .line 327
    .local v2, index:I
    iget-object v5, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    iget-object v5, v5, Lorg/apache/commons/collections/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    aget-object v0, v5, v2

    .line 328
    .local v0, entry:Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;
    const/4 v4, 0x0

    .line 329
    .local v4, previous:Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;
    :goto_0
    if-nez v0, :cond_0

    .line 338
    const/4 v3, 0x0

    :goto_1
    return-object v3

    .line 330
    :cond_0
    iget v5, v0, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->hashCode:I

    if-ne v5, v1, :cond_1

    invoke-virtual {p0, v0, p1, p2, p3}, Lorg/apache/commons/collections/map/MultiKeyMap;->isEqualKey(Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 331
    invoke-virtual {v0}, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 332
    .local v3, oldValue:Ljava/lang/Object;
    iget-object v5, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    invoke-virtual {v5, v0, v2, v4}, Lorg/apache/commons/collections/map/AbstractHashedMap;->removeMapping(Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;ILorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;)V

    goto :goto_1

    .line 335
    .end local v3           #oldValue:Ljava/lang/Object;
    :cond_1
    move-object v4, v0

    .line 336
    iget-object v0, v0, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    goto :goto_0
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10
    .parameter "key1"
    .parameter "key2"
    .parameter "key3"
    .parameter "key4"

    .prologue
    .line 465
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/commons/collections/map/MultiKeyMap;->hash(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v6

    .line 466
    .local v6, hashCode:I
    iget-object v0, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    iget-object v2, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    iget-object v2, v2, Lorg/apache/commons/collections/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    array-length v2, v2

    invoke-virtual {v0, v6, v2}, Lorg/apache/commons/collections/map/AbstractHashedMap;->hashIndex(II)I

    move-result v7

    .line 467
    .local v7, index:I
    iget-object v0, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    iget-object v0, v0, Lorg/apache/commons/collections/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    aget-object v1, v0, v7

    .line 468
    .local v1, entry:Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;
    const/4 v9, 0x0

    .line 469
    .local v9, previous:Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;
    :goto_0
    if-nez v1, :cond_0

    .line 478
    const/4 v8, 0x0

    :goto_1
    return-object v8

    .line 470
    :cond_0
    iget v0, v1, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->hashCode:I

    if-ne v0, v6, :cond_1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/collections/map/MultiKeyMap;->isEqualKey(Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 471
    invoke-virtual {v1}, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->getValue()Ljava/lang/Object;

    move-result-object v8

    .line 472
    .local v8, oldValue:Ljava/lang/Object;
    iget-object v0, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    invoke-virtual {v0, v1, v7, v9}, Lorg/apache/commons/collections/map/AbstractHashedMap;->removeMapping(Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;ILorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;)V

    goto :goto_1

    .line 475
    .end local v8           #oldValue:Ljava/lang/Object;
    :cond_1
    move-object v9, v1

    .line 476
    iget-object v1, v1, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    goto :goto_0
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11
    .parameter "key1"
    .parameter "key2"
    .parameter "key3"
    .parameter "key4"
    .parameter "key5"

    .prologue
    .line 615
    invoke-virtual/range {p0 .. p5}, Lorg/apache/commons/collections/map/MultiKeyMap;->hash(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v7

    .line 616
    .local v7, hashCode:I
    iget-object v0, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    iget-object v2, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    iget-object v2, v2, Lorg/apache/commons/collections/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    array-length v2, v2

    invoke-virtual {v0, v7, v2}, Lorg/apache/commons/collections/map/AbstractHashedMap;->hashIndex(II)I

    move-result v8

    .line 617
    .local v8, index:I
    iget-object v0, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    iget-object v0, v0, Lorg/apache/commons/collections/map/AbstractHashedMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    aget-object v1, v0, v8

    .line 618
    .local v1, entry:Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;
    const/4 v10, 0x0

    .line 619
    .local v10, previous:Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;
    :goto_0
    if-nez v1, :cond_0

    .line 628
    const/4 v9, 0x0

    :goto_1
    return-object v9

    .line 620
    :cond_0
    iget v0, v1, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->hashCode:I

    if-ne v0, v7, :cond_1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    invoke-virtual/range {v0 .. v6}, Lorg/apache/commons/collections/map/MultiKeyMap;->isEqualKey(Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 621
    invoke-virtual {v1}, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->getValue()Ljava/lang/Object;

    move-result-object v9

    .line 622
    .local v9, oldValue:Ljava/lang/Object;
    iget-object v0, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    invoke-virtual {v0, v1, v8, v10}, Lorg/apache/commons/collections/map/AbstractHashedMap;->removeMapping(Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;ILorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;)V

    goto :goto_1

    .line 625
    .end local v9           #oldValue:Ljava/lang/Object;
    :cond_1
    move-object v10, v1

    .line 626
    iget-object v1, v1, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    goto :goto_0
.end method

.method public removeAll(Ljava/lang/Object;)Z
    .locals 6
    .parameter "key1"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 698
    const/4 v1, 0x0

    .line 699
    .local v1, modified:Z
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/MultiKeyMap;->mapIterator()Lorg/apache/commons/collections/MapIterator;

    move-result-object v0

    .line 700
    .local v0, it:Lorg/apache/commons/collections/MapIterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Lorg/apache/commons/collections/MapIterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 708
    return v1

    .line 701
    :cond_1
    invoke-interface {v0}, Lorg/apache/commons/collections/MapIterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/collections/keyvalue/MultiKey;

    .line 702
    .local v2, multi:Lorg/apache/commons/collections/keyvalue/MultiKey;
    invoke-virtual {v2}, Lorg/apache/commons/collections/keyvalue/MultiKey;->size()I

    move-result v3

    if-lt v3, v4, :cond_0

    if-nez p1, :cond_3

    invoke-virtual {v2, v5}, Lorg/apache/commons/collections/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_2

    move v3, v4

    :goto_1
    if-eqz v3, :cond_0

    .line 704
    invoke-interface {v0}, Lorg/apache/commons/collections/MapIterator;->remove()V

    .line 705
    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    move v3, v5

    .line 702
    goto :goto_1

    :cond_3
    invoke-virtual {v2, v5}, Lorg/apache/commons/collections/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_1
.end method

.method public removeAll(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 7
    .parameter "key1"
    .parameter "key2"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 722
    const/4 v1, 0x0

    .line 723
    .local v1, modified:Z
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/MultiKeyMap;->mapIterator()Lorg/apache/commons/collections/MapIterator;

    move-result-object v0

    .line 724
    .local v0, it:Lorg/apache/commons/collections/MapIterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Lorg/apache/commons/collections/MapIterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 733
    return v1

    .line 725
    :cond_1
    invoke-interface {v0}, Lorg/apache/commons/collections/MapIterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/collections/keyvalue/MultiKey;

    .line 726
    .local v2, multi:Lorg/apache/commons/collections/keyvalue/MultiKey;
    invoke-virtual {v2}, Lorg/apache/commons/collections/keyvalue/MultiKey;->size()I

    move-result v3

    const/4 v6, 0x2

    if-lt v3, v6, :cond_0

    if-nez p1, :cond_3

    invoke-virtual {v2, v5}, Lorg/apache/commons/collections/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_2

    move v3, v4

    :goto_1
    if-eqz v3, :cond_0

    if-nez p2, :cond_5

    invoke-virtual {v2, v4}, Lorg/apache/commons/collections/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_4

    move v3, v4

    :goto_2
    if-eqz v3, :cond_0

    .line 729
    invoke-interface {v0}, Lorg/apache/commons/collections/MapIterator;->remove()V

    .line 730
    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    move v3, v5

    .line 726
    goto :goto_1

    :cond_3
    invoke-virtual {v2, v5}, Lorg/apache/commons/collections/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_1

    :cond_4
    move v3, v5

    goto :goto_2

    :cond_5
    invoke-virtual {v2, v4}, Lorg/apache/commons/collections/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_2
.end method

.method public removeAll(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 8
    .parameter "key1"
    .parameter "key2"
    .parameter "key3"

    .prologue
    const/4 v7, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 748
    const/4 v1, 0x0

    .line 749
    .local v1, modified:Z
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/MultiKeyMap;->mapIterator()Lorg/apache/commons/collections/MapIterator;

    move-result-object v0

    .line 750
    .local v0, it:Lorg/apache/commons/collections/MapIterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Lorg/apache/commons/collections/MapIterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 760
    return v1

    .line 751
    :cond_1
    invoke-interface {v0}, Lorg/apache/commons/collections/MapIterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/collections/keyvalue/MultiKey;

    .line 752
    .local v2, multi:Lorg/apache/commons/collections/keyvalue/MultiKey;
    invoke-virtual {v2}, Lorg/apache/commons/collections/keyvalue/MultiKey;->size()I

    move-result v3

    const/4 v6, 0x3

    if-lt v3, v6, :cond_0

    if-nez p1, :cond_3

    invoke-virtual {v2, v5}, Lorg/apache/commons/collections/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_2

    move v3, v4

    :goto_1
    if-eqz v3, :cond_0

    if-nez p2, :cond_5

    invoke-virtual {v2, v4}, Lorg/apache/commons/collections/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_4

    move v3, v4

    :goto_2
    if-eqz v3, :cond_0

    if-nez p3, :cond_7

    invoke-virtual {v2, v7}, Lorg/apache/commons/collections/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_6

    move v3, v4

    :goto_3
    if-eqz v3, :cond_0

    .line 756
    invoke-interface {v0}, Lorg/apache/commons/collections/MapIterator;->remove()V

    .line 757
    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    move v3, v5

    .line 752
    goto :goto_1

    :cond_3
    invoke-virtual {v2, v5}, Lorg/apache/commons/collections/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_1

    :cond_4
    move v3, v5

    goto :goto_2

    :cond_5
    invoke-virtual {v2, v4}, Lorg/apache/commons/collections/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_2

    :cond_6
    move v3, v5

    goto :goto_3

    :cond_7
    invoke-virtual {v2, v7}, Lorg/apache/commons/collections/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_3
.end method

.method public removeAll(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 9
    .parameter "key1"
    .parameter "key2"
    .parameter "key3"
    .parameter "key4"

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 776
    const/4 v1, 0x0

    .line 777
    .local v1, modified:Z
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/MultiKeyMap;->mapIterator()Lorg/apache/commons/collections/MapIterator;

    move-result-object v0

    .line 778
    .local v0, it:Lorg/apache/commons/collections/MapIterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Lorg/apache/commons/collections/MapIterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 789
    return v1

    .line 779
    :cond_1
    invoke-interface {v0}, Lorg/apache/commons/collections/MapIterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/collections/keyvalue/MultiKey;

    .line 780
    .local v2, multi:Lorg/apache/commons/collections/keyvalue/MultiKey;
    invoke-virtual {v2}, Lorg/apache/commons/collections/keyvalue/MultiKey;->size()I

    move-result v3

    const/4 v6, 0x4

    if-lt v3, v6, :cond_0

    if-nez p1, :cond_3

    invoke-virtual {v2, v5}, Lorg/apache/commons/collections/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_2

    move v3, v4

    :goto_1
    if-eqz v3, :cond_0

    if-nez p2, :cond_5

    invoke-virtual {v2, v4}, Lorg/apache/commons/collections/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_4

    move v3, v4

    :goto_2
    if-eqz v3, :cond_0

    if-nez p3, :cond_7

    invoke-virtual {v2, v7}, Lorg/apache/commons/collections/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_6

    move v3, v4

    :goto_3
    if-eqz v3, :cond_0

    if-nez p4, :cond_9

    invoke-virtual {v2, v8}, Lorg/apache/commons/collections/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_8

    move v3, v4

    :goto_4
    if-eqz v3, :cond_0

    .line 785
    invoke-interface {v0}, Lorg/apache/commons/collections/MapIterator;->remove()V

    .line 786
    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    move v3, v5

    .line 780
    goto :goto_1

    :cond_3
    invoke-virtual {v2, v5}, Lorg/apache/commons/collections/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_1

    :cond_4
    move v3, v5

    goto :goto_2

    :cond_5
    invoke-virtual {v2, v4}, Lorg/apache/commons/collections/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_2

    :cond_6
    move v3, v5

    goto :goto_3

    :cond_7
    invoke-virtual {v2, v7}, Lorg/apache/commons/collections/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_3

    :cond_8
    move v3, v5

    goto :goto_4

    :cond_9
    invoke-virtual {v2, v8}, Lorg/apache/commons/collections/keyvalue/MultiKey;->getKey(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_4
.end method

.method public size()I
    .locals 1

    .prologue
    .line 855
    iget-object v0, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections/map/AbstractHashedMap;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 906
    iget-object v0, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections/map/AbstractHashedMap;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public values()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 887
    iget-object v0, p0, Lorg/apache/commons/collections/map/MultiKeyMap;->map:Lorg/apache/commons/collections/map/AbstractHashedMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections/map/AbstractHashedMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
