.class public Lorg/apache/commons/collections/MultiHashMap;
.super Ljava/util/HashMap;
.source "MultiHashMap.java"

# interfaces
.implements Lorg/apache/commons/collections/MultiMap;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/collections/MultiHashMap$1;,
        Lorg/apache/commons/collections/MultiHashMap$ValueIterator;,
        Lorg/apache/commons/collections/MultiHashMap$Values;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1af8ed01208a04d5L


# instance fields
.field private transient values:Ljava/util/Collection;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/collections/MultiHashMap;->values:Ljava/util/Collection;

    .line 77
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "initialCapacity"

    .prologue
    .line 85
    invoke-direct {p0, p1}, Ljava/util/HashMap;-><init>(I)V

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/collections/MultiHashMap;->values:Ljava/util/Collection;

    .line 86
    return-void
.end method

.method public constructor <init>(IF)V
    .locals 1
    .parameter "initialCapacity"
    .parameter "loadFactor"

    .prologue
    .line 95
    invoke-direct {p0, p1, p2}, Ljava/util/HashMap;-><init>(IF)V

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/collections/MultiHashMap;->values:Ljava/util/Collection;

    .line 96
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 6
    .parameter "mapToCopy"

    .prologue
    .line 113
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v4

    int-to-float v4, v4

    const v5, 0x3fb33333

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-direct {p0, v4}, Ljava/util/HashMap;-><init>(I)V

    .line 67
    const/4 v4, 0x0

    iput-object v4, p0, Lorg/apache/commons/collections/MultiHashMap;->values:Ljava/util/Collection;

    .line 114
    instance-of v4, p1, Lorg/apache/commons/collections/MultiMap;

    if-eqz v4, :cond_1

    .line 115
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, it:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 124
    .end local v2           #it:Ljava/util/Iterator;
    :goto_1
    return-void

    .line 116
    .restart local v2       #it:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 117
    .local v1, entry:Ljava/util/Map$Entry;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 118
    .local v0, coll:Ljava/util/Collection;
    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/MultiHashMap;->createCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v3

    .line 119
    .local v3, newColl:Ljava/util/Collection;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-super {p0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 122
    .end local v0           #coll:Ljava/util/Collection;
    .end local v1           #entry:Ljava/util/Map$Entry;
    .end local v2           #it:Ljava/util/Iterator;
    .end local v3           #newColl:Ljava/util/Collection;
    :cond_1
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    goto :goto_1
.end method

.method static access$201(Lorg/apache/commons/collections/MultiHashMap;)Ljava/util/Collection;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    invoke-super {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 5
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 134
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 137
    const-string v2, "1.2"

    .line 139
    .local v2, version:Ljava/lang/String;
    :try_start_0
    const-string v3, "java.version"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 144
    :goto_0
    const-string v3, "1.2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "1.3"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 145
    :cond_0
    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, iterator:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 151
    .end local v1           #iterator:Ljava/util/Iterator;
    :cond_1
    return-void

    .line 146
    .restart local v1       #iterator:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 148
    .local v0, entry:Ljava/util/Map$Entry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-super {p0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 140
    .end local v0           #entry:Ljava/util/Map$Entry;
    .end local v1           #iterator:Ljava/util/Iterator;
    :catch_0
    move-exception v3

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 5

    .prologue
    .line 334
    invoke-super {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    .line 335
    .local v2, pairs:Ljava/util/Set;
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 336
    .local v3, pairsIterator:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 341
    invoke-super {p0}, Ljava/util/HashMap;->clear()V

    .line 342
    return-void

    .line 337
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 338
    .local v1, keyValuePair:Ljava/util/Map$Entry;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 339
    .local v0, coll:Ljava/util/Collection;
    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    goto :goto_0
.end method

.method public clone()Ljava/lang/Object;
    .locals 6

    .prologue
    .line 432
    invoke-super {p0}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/collections/MultiHashMap;

    .line 435
    .local v0, cloned:Lorg/apache/commons/collections/MultiHashMap;
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, it:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_0

    .line 441
    return-object v0

    .line 436
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 437
    .local v2, entry:Ljava/util/Map$Entry;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    .line 438
    .local v1, coll:Ljava/util/Collection;
    invoke-virtual {p0, v1}, Lorg/apache/commons/collections/MultiHashMap;->createCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v4

    .line 439
    .local v4, newColl:Ljava/util/Collection;
    invoke-interface {v2, v4}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 6
    .parameter "value"

    .prologue
    const/4 v4, 0x0

    .line 268
    invoke-super {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    .line 270
    .local v2, pairs:Ljava/util/Set;
    if-nez v2, :cond_1

    .line 281
    :cond_0
    :goto_0
    return v4

    .line 273
    :cond_1
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 274
    .local v3, pairsIterator:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 275
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 276
    .local v1, keyValuePair:Ljava/util/Map$Entry;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 277
    .local v0, coll:Ljava/util/Collection;
    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 278
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public containsValue(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .parameter "key"
    .parameter "value"

    .prologue
    .line 292
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/MultiHashMap;->getCollection(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    .line 293
    .local v0, coll:Ljava/util/Collection;
    if-nez v0, :cond_0

    .line 294
    const/4 v1, 0x0

    .line 296
    :goto_0
    return v1

    :cond_0
    invoke-interface {v0, p2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method protected createCollection(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 1
    .parameter "coll"

    .prologue
    .line 453
    if-nez p1, :cond_0

    .line 454
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 456
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0
.end method

.method public getCollection(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1
    .parameter "key"

    .prologue
    .line 179
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    return-object v0
.end method

.method public iterator(Ljava/lang/Object;)Ljava/util/Iterator;
    .locals 2
    .parameter "key"

    .prologue
    .line 205
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/MultiHashMap;->getCollection(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    .line 206
    .local v0, coll:Ljava/util/Collection;
    if-nez v0, :cond_0

    .line 207
    sget-object v1, Lorg/apache/commons/collections/iterators/EmptyIterator;->INSTANCE:Ljava/util/Iterator;

    .line 209
    :goto_0
    return-object v1

    :cond_0
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    goto :goto_0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter "key"
    .parameter "value"

    .prologue
    const/4 v2, 0x0

    .line 225
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/MultiHashMap;->getCollection(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    .line 226
    .local v0, coll:Ljava/util/Collection;
    if-nez v0, :cond_0

    .line 227
    invoke-virtual {p0, v2}, Lorg/apache/commons/collections/MultiHashMap;->createCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    .line 228
    invoke-super {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v1

    .line 231
    .local v1, results:Z
    if-eqz v1, :cond_1

    .end local p2
    :goto_0
    return-object p2

    .restart local p2
    :cond_1
    move-object p2, v2

    goto :goto_0
.end method

.method public putAll(Ljava/lang/Object;Ljava/util/Collection;)Z
    .locals 3
    .parameter "key"
    .parameter "values"

    .prologue
    const/4 v1, 0x0

    .line 243
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 255
    :cond_0
    :goto_0
    return v1

    .line 246
    :cond_1
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/MultiHashMap;->getCollection(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    .line 247
    .local v0, coll:Ljava/util/Collection;
    if-nez v0, :cond_2

    .line 248
    invoke-virtual {p0, p2}, Lorg/apache/commons/collections/MultiHashMap;->createCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    .line 249
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v2

    if-eqz v2, :cond_0

    .line 252
    invoke-super {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    const/4 v1, 0x1

    goto :goto_0

    .line 255
    :cond_2
    invoke-interface {v0, p2}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    move-result v1

    goto :goto_0
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "key"
    .parameter "item"

    .prologue
    .line 313
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/MultiHashMap;->getCollection(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    .line 314
    .local v0, valuesForKey:Ljava/util/Collection;
    if-nez v0, :cond_1

    .line 315
    const/4 p2, 0x0

    .line 324
    .end local p2
    :cond_0
    :goto_0
    return-object p2

    .line 317
    .restart local p2
    :cond_1
    invoke-interface {v0, p2}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 321
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 322
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public size(Ljava/lang/Object;)I
    .locals 2
    .parameter "key"

    .prologue
    .line 190
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/MultiHashMap;->getCollection(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    .line 191
    .local v0, coll:Ljava/util/Collection;
    if-nez v0, :cond_0

    .line 192
    const/4 v1, 0x0

    .line 194
    :goto_0
    return v1

    :cond_0
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    goto :goto_0
.end method

.method public totalSize()I
    .locals 5

    .prologue
    .line 161
    const/4 v2, 0x0

    .line 162
    .local v2, total:I
    invoke-super {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    .line 163
    .local v3, values:Ljava/util/Collection;
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, it:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 167
    return v2

    .line 164
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 165
    .local v0, coll:Ljava/util/Collection;
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v4

    add-int/2addr v2, v4

    goto :goto_0
.end method

.method public values()Ljava/util/Collection;
    .locals 2

    .prologue
    .line 352
    iget-object v0, p0, Lorg/apache/commons/collections/MultiHashMap;->values:Ljava/util/Collection;

    .line 353
    .local v0, vs:Ljava/util/Collection;
    if-eqz v0, :cond_0

    .end local v0           #vs:Ljava/util/Collection;
    :goto_0
    return-object v0

    .restart local v0       #vs:Ljava/util/Collection;
    :cond_0
    new-instance v0, Lorg/apache/commons/collections/MultiHashMap$Values;

    .end local v0           #vs:Ljava/util/Collection;
    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/collections/MultiHashMap$Values;-><init>(Lorg/apache/commons/collections/MultiHashMap;Lorg/apache/commons/collections/MultiHashMap$1;)V

    iput-object v0, p0, Lorg/apache/commons/collections/MultiHashMap;->values:Ljava/util/Collection;

    goto :goto_0
.end method
