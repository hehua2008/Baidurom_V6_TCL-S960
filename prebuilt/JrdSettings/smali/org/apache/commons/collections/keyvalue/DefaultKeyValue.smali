.class public Lorg/apache/commons/collections/keyvalue/DefaultKeyValue;
.super Lorg/apache/commons/collections/keyvalue/AbstractKeyValue;
.source "DefaultKeyValue.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 42
    invoke-direct {p0, v0, v0}, Lorg/apache/commons/collections/keyvalue/AbstractKeyValue;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter "key"
    .parameter "value"

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections/keyvalue/AbstractKeyValue;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Ljava/util/Map$Entry;)V
    .locals 2
    .parameter "entry"

    .prologue
    .line 72
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/collections/keyvalue/AbstractKeyValue;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 73
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/collections/KeyValue;)V
    .locals 2
    .parameter "pair"

    .prologue
    .line 62
    invoke-interface {p1}, Lorg/apache/commons/collections/KeyValue;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Lorg/apache/commons/collections/KeyValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/collections/keyvalue/AbstractKeyValue;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 63
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "obj"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 131
    if-ne p1, p0, :cond_1

    .line 139
    :cond_0
    :goto_0
    return v1

    .line 134
    :cond_1
    instance-of v3, p1, Lorg/apache/commons/collections/keyvalue/DefaultKeyValue;

    if-nez v3, :cond_2

    move v1, v2

    .line 135
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 138
    check-cast v0, Lorg/apache/commons/collections/keyvalue/DefaultKeyValue;

    .line 139
    .local v0, other:Lorg/apache/commons/collections/keyvalue/DefaultKeyValue;
    invoke-virtual {p0}, Lorg/apache/commons/collections/keyvalue/AbstractKeyValue;->getKey()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_5

    invoke-virtual {v0}, Lorg/apache/commons/collections/keyvalue/AbstractKeyValue;->getKey()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_4

    move v3, v1

    :goto_1
    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lorg/apache/commons/collections/keyvalue/AbstractKeyValue;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_7

    invoke-virtual {v0}, Lorg/apache/commons/collections/keyvalue/AbstractKeyValue;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_6

    move v3, v1

    :goto_2
    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    :cond_4
    move v3, v2

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Lorg/apache/commons/collections/keyvalue/AbstractKeyValue;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0}, Lorg/apache/commons/collections/keyvalue/AbstractKeyValue;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_1

    :cond_6
    move v3, v2

    goto :goto_2

    :cond_7
    invoke-virtual {p0}, Lorg/apache/commons/collections/keyvalue/AbstractKeyValue;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0}, Lorg/apache/commons/collections/keyvalue/AbstractKeyValue;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_2
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 153
    invoke-virtual {p0}, Lorg/apache/commons/collections/keyvalue/AbstractKeyValue;->getKey()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0}, Lorg/apache/commons/collections/keyvalue/AbstractKeyValue;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    :goto_1
    xor-int/2addr v0, v1

    return v0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/collections/keyvalue/AbstractKeyValue;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/apache/commons/collections/keyvalue/AbstractKeyValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_1
.end method

.method public setKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter "key"

    .prologue
    .line 84
    if-ne p1, p0, :cond_0

    .line 85
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "DefaultKeyValue may not contain itself as a key."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 88
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/keyvalue/AbstractKeyValue;->key:Ljava/lang/Object;

    .line 89
    .local v0, old:Ljava/lang/Object;
    iput-object p1, p0, Lorg/apache/commons/collections/keyvalue/AbstractKeyValue;->key:Ljava/lang/Object;

    .line 90
    return-object v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter "value"

    .prologue
    .line 101
    if-ne p1, p0, :cond_0

    .line 102
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "DefaultKeyValue may not contain itself as a value."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 105
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/keyvalue/AbstractKeyValue;->value:Ljava/lang/Object;

    .line 106
    .local v0, old:Ljava/lang/Object;
    iput-object p1, p0, Lorg/apache/commons/collections/keyvalue/AbstractKeyValue;->value:Ljava/lang/Object;

    .line 107
    return-object v0
.end method

.method public toMapEntry()Ljava/util/Map$Entry;
    .locals 1

    .prologue
    .line 117
    new-instance v0, Lorg/apache/commons/collections/keyvalue/DefaultMapEntry;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/keyvalue/DefaultMapEntry;-><init>(Lorg/apache/commons/collections/KeyValue;)V

    return-object v0
.end method
