.class public Lorg/apache/commons/collections/map/SingletonMap;
.super Ljava/lang/Object;
.source "SingletonMap.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Lorg/apache/commons/collections/BoundedMap;
.implements Lorg/apache/commons/collections/KeyValue;
.implements Lorg/apache/commons/collections/OrderedMap;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/collections/map/SingletonMap$SingletonValues;,
        Lorg/apache/commons/collections/map/SingletonMap$SingletonMapIterator;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x7bf23fc3356fbebdL


# instance fields
.field private final key:Ljava/lang/Object;

.field private value:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/collections/map/SingletonMap;->key:Ljava/lang/Object;

    .line 78
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter "key"
    .parameter "value"

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p1, p0, Lorg/apache/commons/collections/map/SingletonMap;->key:Ljava/lang/Object;

    .line 89
    iput-object p2, p0, Lorg/apache/commons/collections/map/SingletonMap;->value:Ljava/lang/Object;

    .line 90
    return-void
.end method

.method public constructor <init>(Ljava/util/Map$Entry;)V
    .locals 1
    .parameter "entry"

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections/map/SingletonMap;->key:Ljava/lang/Object;

    .line 111
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections/map/SingletonMap;->value:Ljava/lang/Object;

    .line 112
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 3
    .parameter "map"

    .prologue
    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 124
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The map size must be 1"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 126
    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 127
    .local v0, entry:Ljava/util/Map$Entry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/collections/map/SingletonMap;->key:Ljava/lang/Object;

    .line 128
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/collections/map/SingletonMap;->value:Ljava/lang/Object;

    .line 129
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/collections/KeyValue;)V
    .locals 1
    .parameter "keyValue"

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    invoke-interface {p1}, Lorg/apache/commons/collections/KeyValue;->getKey()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections/map/SingletonMap;->key:Ljava/lang/Object;

    .line 100
    invoke-interface {p1}, Lorg/apache/commons/collections/KeyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections/map/SingletonMap;->value:Ljava/lang/Object;

    .line 101
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 297
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public clone()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 539
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/collections/map/SingletonMap;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 540
    .local v0, cloned:Lorg/apache/commons/collections/map/SingletonMap;
    return-object v0

    .line 542
    .end local v0           #cloned:Lorg/apache/commons/collections/map/SingletonMap;
    :catch_0
    move-exception v1

    .local v1, ex:Ljava/lang/CloneNotSupportedException;
    new-instance v2, Ljava/lang/InternalError;

    invoke-direct {v2}, Ljava/lang/InternalError;-><init>()V

    throw v2
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .parameter "key"

    .prologue
    .line 224
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/map/SingletonMap;->isEqualKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1
    .parameter "value"

    .prologue
    .line 234
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/map/SingletonMap;->isEqualValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 2

    .prologue
    .line 309
    new-instance v0, Lorg/apache/commons/collections/keyvalue/TiedMapEntry;

    invoke-virtual {p0}, Lorg/apache/commons/collections/map/SingletonMap;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/collections/keyvalue/TiedMapEntry;-><init>(Ljava/util/Map;Ljava/lang/Object;)V

    .line 310
    .local v0, entry:Ljava/util/Map$Entry;
    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "obj"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 553
    if-ne p1, p0, :cond_1

    .line 564
    :cond_0
    :goto_0
    return v2

    .line 556
    :cond_1
    instance-of v4, p1, Ljava/util/Map;

    if-nez v4, :cond_2

    move v2, v3

    .line 557
    goto :goto_0

    :cond_2
    move-object v1, p1

    .line 559
    check-cast v1, Ljava/util/Map;

    .line 560
    .local v1, other:Ljava/util/Map;
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v4

    if-eq v4, v2, :cond_3

    move v2, v3

    .line 561
    goto :goto_0

    .line 563
    :cond_3
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 564
    .local v0, entry:Ljava/util/Map$Entry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/apache/commons/collections/map/SingletonMap;->isEqualKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/apache/commons/collections/map/SingletonMap;->isEqualValue(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    :cond_4
    move v2, v3

    goto :goto_0
.end method

.method public firstKey()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 371
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/SingletonMap;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "key"

    .prologue
    .line 192
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/map/SingletonMap;->isEqualKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lorg/apache/commons/collections/map/SingletonMap;->value:Ljava/lang/Object;

    .line 195
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getKey()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lorg/apache/commons/collections/map/SingletonMap;->key:Ljava/lang/Object;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lorg/apache/commons/collections/map/SingletonMap;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 573
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/SingletonMap;->getKey()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/SingletonMap;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    :goto_1
    xor-int/2addr v0, v1

    return v0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/SingletonMap;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/SingletonMap;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_1
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 213
    const/4 v0, 0x0

    return v0
.end method

.method protected isEqualKey(Ljava/lang/Object;)Z
    .locals 1
    .parameter "key"

    .prologue
    .line 411
    if-nez p1, :cond_1

    invoke-virtual {p0}, Lorg/apache/commons/collections/map/SingletonMap;->getKey()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/SingletonMap;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method protected isEqualValue(Ljava/lang/Object;)Z
    .locals 1
    .parameter "value"

    .prologue
    .line 421
    if-nez p1, :cond_1

    invoke-virtual {p0}, Lorg/apache/commons/collections/map/SingletonMap;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/SingletonMap;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public isFull()Z
    .locals 1

    .prologue
    .line 171
    const/4 v0, 0x1

    return v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lorg/apache/commons/collections/map/SingletonMap;->key:Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public lastKey()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 380
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/SingletonMap;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public mapIterator()Lorg/apache/commons/collections/MapIterator;
    .locals 1

    .prologue
    .line 348
    new-instance v0, Lorg/apache/commons/collections/map/SingletonMap$SingletonMapIterator;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/map/SingletonMap$SingletonMapIterator;-><init>(Lorg/apache/commons/collections/map/SingletonMap;)V

    return-object v0
.end method

.method public maxSize()I
    .locals 1

    .prologue
    .line 180
    const/4 v0, 0x1

    return v0
.end method

.method public nextKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "key"

    .prologue
    .line 390
    const/4 v0, 0x0

    return-object v0
.end method

.method public orderedMapIterator()Lorg/apache/commons/collections/OrderedMapIterator;
    .locals 1

    .prologue
    .line 362
    new-instance v0, Lorg/apache/commons/collections/map/SingletonMap$SingletonMapIterator;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/map/SingletonMap$SingletonMapIterator;-><init>(Lorg/apache/commons/collections/map/SingletonMap;)V

    return-object v0
.end method

.method public previousKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "key"

    .prologue
    .line 400
    const/4 v0, 0x0

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "key"
    .parameter "value"

    .prologue
    .line 250
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/map/SingletonMap;->isEqualKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 251
    invoke-virtual {p0, p2}, Lorg/apache/commons/collections/map/SingletonMap;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 253
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot put new key/value pair - Map is fixed size singleton"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 3
    .parameter "map"

    .prologue
    .line 268
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 278
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The map size must be 0 or 1"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 273
    :pswitch_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 274
    .local v0, entry:Ljava/util/Map$Entry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/collections/map/SingletonMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    .end local v0           #entry:Ljava/util/Map$Entry;
    :pswitch_1
    return-void

    .line 268
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "key"

    .prologue
    .line 290
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "value"

    .prologue
    .line 158
    iget-object v0, p0, Lorg/apache/commons/collections/map/SingletonMap;->value:Ljava/lang/Object;

    .line 159
    .local v0, old:Ljava/lang/Object;
    iput-object p1, p0, Lorg/apache/commons/collections/map/SingletonMap;->value:Ljava/lang/Object;

    .line 160
    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 204
    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 583
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/commons/collections/map/SingletonMap;->getKey()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p0, :cond_0

    const-string v0, "(this Map)"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/commons/collections/map/SingletonMap;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p0, :cond_1

    const-string v0, "(this Map)"

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/SingletonMap;->getKey()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/SingletonMap;->getValue()Ljava/lang/Object;

    move-result-object v0

    goto :goto_1
.end method

.method public values()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 332
    new-instance v0, Lorg/apache/commons/collections/map/SingletonMap$SingletonValues;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/map/SingletonMap$SingletonValues;-><init>(Lorg/apache/commons/collections/map/SingletonMap;)V

    return-object v0
.end method
