.class public Lorg/apache/commons/collections/keyvalue/TiedMapEntry;
.super Ljava/lang/Object;
.source "TiedMapEntry.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/util/Map$Entry;
.implements Lorg/apache/commons/collections/KeyValue;


# static fields
.field private static final serialVersionUID:J = -0x75522d64c63ee025L


# instance fields
.field private final key:Ljava/lang/Object;

.field private final map:Ljava/util/Map;


# direct methods
.method public constructor <init>(Ljava/util/Map;Ljava/lang/Object;)V
    .locals 0
    .parameter "map"
    .parameter "key"

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lorg/apache/commons/collections/keyvalue/TiedMapEntry;->map:Ljava/util/Map;

    .line 53
    iput-object p2, p0, Lorg/apache/commons/collections/keyvalue/TiedMapEntry;->key:Ljava/lang/Object;

    .line 54
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter "obj"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 99
    if-ne p1, p0, :cond_1

    .line 107
    :cond_0
    :goto_0
    return v2

    .line 102
    :cond_1
    instance-of v4, p1, Ljava/util/Map$Entry;

    if-nez v4, :cond_2

    move v2, v3

    .line 103
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 105
    check-cast v0, Ljava/util/Map$Entry;

    .line 106
    .local v0, other:Ljava/util/Map$Entry;
    invoke-virtual {p0}, Lorg/apache/commons/collections/keyvalue/TiedMapEntry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 107
    .local v1, value:Ljava/lang/Object;
    iget-object v4, p0, Lorg/apache/commons/collections/keyvalue/TiedMapEntry;->key:Ljava/lang/Object;

    if-nez v4, :cond_5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_4

    move v4, v2

    :goto_1
    if-eqz v4, :cond_3

    if-nez v1, :cond_7

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_6

    move v4, v2

    :goto_2
    if-nez v4, :cond_0

    :cond_3
    move v2, v3

    goto :goto_0

    :cond_4
    move v4, v3

    goto :goto_1

    :cond_5
    iget-object v4, p0, Lorg/apache/commons/collections/keyvalue/TiedMapEntry;->key:Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    goto :goto_1

    :cond_6
    move v4, v3

    goto :goto_2

    :cond_7
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    goto :goto_2
.end method

.method public getKey()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lorg/apache/commons/collections/keyvalue/TiedMapEntry;->key:Ljava/lang/Object;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Lorg/apache/commons/collections/keyvalue/TiedMapEntry;->map:Ljava/util/Map;

    iget-object v1, p0, Lorg/apache/commons/collections/keyvalue/TiedMapEntry;->key:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 120
    invoke-virtual {p0}, Lorg/apache/commons/collections/keyvalue/TiedMapEntry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 121
    .local v0, value:Ljava/lang/Object;
    invoke-virtual {p0}, Lorg/apache/commons/collections/keyvalue/TiedMapEntry;->getKey()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v1

    :goto_0
    if-nez v0, :cond_1

    :goto_1
    xor-int/2addr v1, v2

    return v1

    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/collections/keyvalue/TiedMapEntry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_1
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "value"

    .prologue
    .line 84
    if-ne p1, p0, :cond_0

    .line 85
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot set value to this map entry"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 87
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/keyvalue/TiedMapEntry;->map:Ljava/util/Map;

    iget-object v1, p0, Lorg/apache/commons/collections/keyvalue/TiedMapEntry;->key:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 131
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Lorg/apache/commons/collections/keyvalue/TiedMapEntry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/commons/collections/keyvalue/TiedMapEntry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
