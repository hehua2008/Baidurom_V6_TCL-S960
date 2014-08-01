.class public Lorg/apache/commons/collections/map/Flat3Map;
.super Ljava/lang/Object;
.source "Flat3Map.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Lorg/apache/commons/collections/IterableMap;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/collections/map/Flat3Map$ValuesIterator;,
        Lorg/apache/commons/collections/map/Flat3Map$Values;,
        Lorg/apache/commons/collections/map/Flat3Map$KeySetIterator;,
        Lorg/apache/commons/collections/map/Flat3Map$KeySet;,
        Lorg/apache/commons/collections/map/Flat3Map$EntrySetIterator;,
        Lorg/apache/commons/collections/map/Flat3Map$EntrySet;,
        Lorg/apache/commons/collections/map/Flat3Map$FlatMapIterator;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x5cff0b811e8e7b68L


# instance fields
.field private transient delegateMap:Lorg/apache/commons/collections/map/AbstractHashedMap;

.field private transient hash1:I

.field private transient hash2:I

.field private transient hash3:I

.field private transient key1:Ljava/lang/Object;

.field private transient key2:Ljava/lang/Object;

.field private transient key3:Ljava/lang/Object;

.field private transient size:I

.field private transient value1:Ljava/lang/Object;

.field private transient value2:Ljava/lang/Object;

.field private transient value3:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 0
    .parameter "map"

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/map/Flat3Map;->putAll(Ljava/util/Map;)V

    .line 112
    return-void
.end method

.method static access$000(Lorg/apache/commons/collections/map/Flat3Map;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget v0, p0, Lorg/apache/commons/collections/map/Flat3Map;->size:I

    return v0
.end method

.method static access$100(Lorg/apache/commons/collections/map/Flat3Map;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lorg/apache/commons/collections/map/Flat3Map;->key3:Ljava/lang/Object;

    return-object v0
.end method

.method static access$200(Lorg/apache/commons/collections/map/Flat3Map;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lorg/apache/commons/collections/map/Flat3Map;->key2:Ljava/lang/Object;

    return-object v0
.end method

.method static access$300(Lorg/apache/commons/collections/map/Flat3Map;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lorg/apache/commons/collections/map/Flat3Map;->key1:Ljava/lang/Object;

    return-object v0
.end method

.method static access$400(Lorg/apache/commons/collections/map/Flat3Map;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lorg/apache/commons/collections/map/Flat3Map;->value3:Ljava/lang/Object;

    return-object v0
.end method

.method static access$402(Lorg/apache/commons/collections/map/Flat3Map;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput-object p1, p0, Lorg/apache/commons/collections/map/Flat3Map;->value3:Ljava/lang/Object;

    return-object p1
.end method

.method static access$500(Lorg/apache/commons/collections/map/Flat3Map;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lorg/apache/commons/collections/map/Flat3Map;->value2:Ljava/lang/Object;

    return-object v0
.end method

.method static access$502(Lorg/apache/commons/collections/map/Flat3Map;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput-object p1, p0, Lorg/apache/commons/collections/map/Flat3Map;->value2:Ljava/lang/Object;

    return-object p1
.end method

.method static access$600(Lorg/apache/commons/collections/map/Flat3Map;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lorg/apache/commons/collections/map/Flat3Map;->value1:Ljava/lang/Object;

    return-object v0
.end method

.method static access$602(Lorg/apache/commons/collections/map/Flat3Map;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput-object p1, p0, Lorg/apache/commons/collections/map/Flat3Map;->value1:Ljava/lang/Object;

    return-object p1
.end method

.method static access$700(Lorg/apache/commons/collections/map/Flat3Map;)Lorg/apache/commons/collections/map/AbstractHashedMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lorg/apache/commons/collections/map/Flat3Map;->delegateMap:Lorg/apache/commons/collections/map/AbstractHashedMap;

    return-object v0
.end method

.method private convertToMap()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 357
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/Flat3Map;->createDelegateMap()Lorg/apache/commons/collections/map/AbstractHashedMap;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections/map/Flat3Map;->delegateMap:Lorg/apache/commons/collections/map/AbstractHashedMap;

    .line 358
    iget v0, p0, Lorg/apache/commons/collections/map/Flat3Map;->size:I

    packed-switch v0, :pswitch_data_0

    .line 367
    :goto_0
    iput v3, p0, Lorg/apache/commons/collections/map/Flat3Map;->size:I

    .line 368
    iput v3, p0, Lorg/apache/commons/collections/map/Flat3Map;->hash3:I

    iput v3, p0, Lorg/apache/commons/collections/map/Flat3Map;->hash2:I

    iput v3, p0, Lorg/apache/commons/collections/map/Flat3Map;->hash1:I

    .line 369
    iput-object v4, p0, Lorg/apache/commons/collections/map/Flat3Map;->key3:Ljava/lang/Object;

    iput-object v4, p0, Lorg/apache/commons/collections/map/Flat3Map;->key2:Ljava/lang/Object;

    iput-object v4, p0, Lorg/apache/commons/collections/map/Flat3Map;->key1:Ljava/lang/Object;

    .line 370
    iput-object v4, p0, Lorg/apache/commons/collections/map/Flat3Map;->value3:Ljava/lang/Object;

    iput-object v4, p0, Lorg/apache/commons/collections/map/Flat3Map;->value2:Ljava/lang/Object;

    iput-object v4, p0, Lorg/apache/commons/collections/map/Flat3Map;->value1:Ljava/lang/Object;

    .line 371
    return-void

    .line 360
    :pswitch_0
    iget-object v0, p0, Lorg/apache/commons/collections/map/Flat3Map;->delegateMap:Lorg/apache/commons/collections/map/AbstractHashedMap;

    iget-object v1, p0, Lorg/apache/commons/collections/map/Flat3Map;->key3:Ljava/lang/Object;

    iget-object v2, p0, Lorg/apache/commons/collections/map/Flat3Map;->value3:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/collections/map/AbstractHashedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    :pswitch_1
    iget-object v0, p0, Lorg/apache/commons/collections/map/Flat3Map;->delegateMap:Lorg/apache/commons/collections/map/AbstractHashedMap;

    iget-object v1, p0, Lorg/apache/commons/collections/map/Flat3Map;->key2:Ljava/lang/Object;

    iget-object v2, p0, Lorg/apache/commons/collections/map/Flat3Map;->value2:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/collections/map/AbstractHashedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    :pswitch_2
    iget-object v0, p0, Lorg/apache/commons/collections/map/Flat3Map;->delegateMap:Lorg/apache/commons/collections/map/AbstractHashedMap;

    iget-object v1, p0, Lorg/apache/commons/collections/map/Flat3Map;->key1:Ljava/lang/Object;

    iget-object v2, p0, Lorg/apache/commons/collections/map/Flat3Map;->value1:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/collections/map/AbstractHashedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 358
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 4
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 990
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 991
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    .line 992
    .local v0, count:I
    const/4 v2, 0x3

    if-le v0, v2, :cond_0

    .line 993
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/Flat3Map;->createDelegateMap()Lorg/apache/commons/collections/map/AbstractHashedMap;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/commons/collections/map/Flat3Map;->delegateMap:Lorg/apache/commons/collections/map/AbstractHashedMap;

    .line 995
    :cond_0
    move v1, v0

    .local v1, i:I
    :goto_0
    if-gtz v1, :cond_1

    .line 998
    return-void

    .line 996
    :cond_1
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lorg/apache/commons/collections/map/Flat3Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 995
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 2
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 978
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 979
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/Flat3Map;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 980
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/Flat3Map;->mapIterator()Lorg/apache/commons/collections/MapIterator;

    move-result-object v0

    .local v0, it:Lorg/apache/commons/collections/MapIterator;
    :goto_0
    invoke-interface {v0}, Lorg/apache/commons/collections/MapIterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 984
    return-void

    .line 981
    :cond_0
    invoke-interface {v0}, Lorg/apache/commons/collections/MapIterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 982
    invoke-interface {v0}, Lorg/apache/commons/collections/MapIterator;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 542
    iget-object v0, p0, Lorg/apache/commons/collections/map/Flat3Map;->delegateMap:Lorg/apache/commons/collections/map/AbstractHashedMap;

    if-eqz v0, :cond_0

    .line 543
    iget-object v0, p0, Lorg/apache/commons/collections/map/Flat3Map;->delegateMap:Lorg/apache/commons/collections/map/AbstractHashedMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections/map/AbstractHashedMap;->clear()V

    .line 544
    iput-object v1, p0, Lorg/apache/commons/collections/map/Flat3Map;->delegateMap:Lorg/apache/commons/collections/map/AbstractHashedMap;

    .line 551
    :goto_0
    return-void

    .line 546
    :cond_0
    iput v2, p0, Lorg/apache/commons/collections/map/Flat3Map;->size:I

    .line 547
    iput v2, p0, Lorg/apache/commons/collections/map/Flat3Map;->hash3:I

    iput v2, p0, Lorg/apache/commons/collections/map/Flat3Map;->hash2:I

    iput v2, p0, Lorg/apache/commons/collections/map/Flat3Map;->hash1:I

    .line 548
    iput-object v1, p0, Lorg/apache/commons/collections/map/Flat3Map;->key3:Ljava/lang/Object;

    iput-object v1, p0, Lorg/apache/commons/collections/map/Flat3Map;->key2:Ljava/lang/Object;

    iput-object v1, p0, Lorg/apache/commons/collections/map/Flat3Map;->key1:Ljava/lang/Object;

    .line 549
    iput-object v1, p0, Lorg/apache/commons/collections/map/Flat3Map;->value3:Ljava/lang/Object;

    iput-object v1, p0, Lorg/apache/commons/collections/map/Flat3Map;->value2:Ljava/lang/Object;

    iput-object v1, p0, Lorg/apache/commons/collections/map/Flat3Map;->value1:Ljava/lang/Object;

    goto :goto_0
.end method

.method public clone()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 1009
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/collections/map/Flat3Map;

    .line 1010
    .local v0, cloned:Lorg/apache/commons/collections/map/Flat3Map;
    iget-object v2, v0, Lorg/apache/commons/collections/map/Flat3Map;->delegateMap:Lorg/apache/commons/collections/map/AbstractHashedMap;

    if-eqz v2, :cond_0

    .line 1011
    iget-object v2, v0, Lorg/apache/commons/collections/map/Flat3Map;->delegateMap:Lorg/apache/commons/collections/map/AbstractHashedMap;

    invoke-virtual {v2}, Lorg/apache/commons/collections/map/AbstractHashedMap;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/collections/map/HashedMap;

    iput-object v2, v0, Lorg/apache/commons/collections/map/Flat3Map;->delegateMap:Lorg/apache/commons/collections/map/AbstractHashedMap;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1013
    :cond_0
    return-object v0

    .line 1015
    .end local v0           #cloned:Lorg/apache/commons/collections/map/Flat3Map;
    :catch_0
    move-exception v1

    .local v1, ex:Ljava/lang/CloneNotSupportedException;
    new-instance v2, Ljava/lang/InternalError;

    invoke-direct {v2}, Ljava/lang/InternalError;-><init>()V

    throw v2
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 3
    .parameter "key"

    .prologue
    const/4 v1, 0x1

    .line 181
    iget-object v2, p0, Lorg/apache/commons/collections/map/Flat3Map;->delegateMap:Lorg/apache/commons/collections/map/AbstractHashedMap;

    if-eqz v2, :cond_1

    .line 182
    iget-object v1, p0, Lorg/apache/commons/collections/map/Flat3Map;->delegateMap:Lorg/apache/commons/collections/map/AbstractHashedMap;

    invoke-virtual {v1, p1}, Lorg/apache/commons/collections/map/AbstractHashedMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    .line 206
    :cond_0
    :goto_0
    return v1

    .line 184
    :cond_1
    if-nez p1, :cond_3

    .line 185
    iget v2, p0, Lorg/apache/commons/collections/map/Flat3Map;->size:I

    packed-switch v2, :pswitch_data_0

    .line 206
    :cond_2
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 187
    :pswitch_0
    iget-object v2, p0, Lorg/apache/commons/collections/map/Flat3Map;->key3:Ljava/lang/Object;

    if-eqz v2, :cond_0

    .line 189
    :pswitch_1
    iget-object v2, p0, Lorg/apache/commons/collections/map/Flat3Map;->key2:Ljava/lang/Object;

    if-eqz v2, :cond_0

    .line 191
    :pswitch_2
    iget-object v2, p0, Lorg/apache/commons/collections/map/Flat3Map;->key1:Ljava/lang/Object;

    if-nez v2, :cond_2

    goto :goto_0

    .line 194
    :cond_3
    iget v2, p0, Lorg/apache/commons/collections/map/Flat3Map;->size:I

    if-lez v2, :cond_2

    .line 195
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 196
    .local v0, hashCode:I
    iget v2, p0, Lorg/apache/commons/collections/map/Flat3Map;->size:I

    packed-switch v2, :pswitch_data_1

    goto :goto_1

    .line 202
    :cond_4
    :pswitch_3
    iget v2, p0, Lorg/apache/commons/collections/map/Flat3Map;->hash1:I

    if-ne v2, v0, :cond_2

    iget-object v2, p0, Lorg/apache/commons/collections/map/Flat3Map;->key1:Ljava/lang/Object;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    .line 198
    :pswitch_4
    iget v2, p0, Lorg/apache/commons/collections/map/Flat3Map;->hash3:I

    if-ne v2, v0, :cond_5

    iget-object v2, p0, Lorg/apache/commons/collections/map/Flat3Map;->key3:Ljava/lang/Object;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 200
    :cond_5
    :pswitch_5
    iget v2, p0, Lorg/apache/commons/collections/map/Flat3Map;->hash2:I

    if-ne v2, v0, :cond_4

    iget-object v2, p0, Lorg/apache/commons/collections/map/Flat3Map;->key2:Ljava/lang/Object;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_0

    .line 185
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 196
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 2
    .parameter "value"

    .prologue
    const/4 v0, 0x1

    .line 216
    iget-object v1, p0, Lorg/apache/commons/collections/map/Flat3Map;->delegateMap:Lorg/apache/commons/collections/map/AbstractHashedMap;

    if-eqz v1, :cond_1

    .line 217
    iget-object v0, p0, Lorg/apache/commons/collections/map/Flat3Map;->delegateMap:Lorg/apache/commons/collections/map/AbstractHashedMap;

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections/map/AbstractHashedMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    .line 238
    :cond_0
    :goto_0
    return v0

    .line 219
    :cond_1
    if-nez p1, :cond_3

    .line 220
    iget v1, p0, Lorg/apache/commons/collections/map/Flat3Map;->size:I

    packed-switch v1, :pswitch_data_0

    .line 238
    :cond_2
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 222
    :pswitch_0
    iget-object v1, p0, Lorg/apache/commons/collections/map/Flat3Map;->value3:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 224
    :pswitch_1
    iget-object v1, p0, Lorg/apache/commons/collections/map/Flat3Map;->value2:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 226
    :pswitch_2
    iget-object v1, p0, Lorg/apache/commons/collections/map/Flat3Map;->value1:Ljava/lang/Object;

    if-nez v1, :cond_2

    goto :goto_0

    .line 229
    :cond_3
    iget v1, p0, Lorg/apache/commons/collections/map/Flat3Map;->size:I

    packed-switch v1, :pswitch_data_1

    goto :goto_1

    .line 235
    :cond_4
    :pswitch_3
    iget-object v1, p0, Lorg/apache/commons/collections/map/Flat3Map;->value1:Ljava/lang/Object;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 231
    :pswitch_4
    iget-object v1, p0, Lorg/apache/commons/collections/map/Flat3Map;->value3:Ljava/lang/Object;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 233
    :pswitch_5
    iget-object v1, p0, Lorg/apache/commons/collections/map/Flat3Map;->value2:Ljava/lang/Object;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_0

    .line 220
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 229
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method protected createDelegateMap()Lorg/apache/commons/collections/map/AbstractHashedMap;
    .locals 1

    .prologue
    .line 384
    new-instance v0, Lorg/apache/commons/collections/map/HashedMap;

    invoke-direct {v0}, Lorg/apache/commons/collections/map/HashedMap;-><init>()V

    return-object v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 680
    iget-object v0, p0, Lorg/apache/commons/collections/map/Flat3Map;->delegateMap:Lorg/apache/commons/collections/map/AbstractHashedMap;

    if-eqz v0, :cond_0

    .line 681
    iget-object v0, p0, Lorg/apache/commons/collections/map/Flat3Map;->delegateMap:Lorg/apache/commons/collections/map/AbstractHashedMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections/map/AbstractHashedMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 683
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/apache/commons/collections/map/Flat3Map$EntrySet;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/map/Flat3Map$EntrySet;-><init>(Lorg/apache/commons/collections/map/Flat3Map;)V

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter "obj"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1026
    if-ne p1, p0, :cond_1

    .line 1065
    :cond_0
    :goto_0
    return v2

    .line 1029
    :cond_1
    iget-object v4, p0, Lorg/apache/commons/collections/map/Flat3Map;->delegateMap:Lorg/apache/commons/collections/map/AbstractHashedMap;

    if-eqz v4, :cond_2

    .line 1030
    iget-object v2, p0, Lorg/apache/commons/collections/map/Flat3Map;->delegateMap:Lorg/apache/commons/collections/map/AbstractHashedMap;

    invoke-virtual {v2, p1}, Lorg/apache/commons/collections/map/AbstractHashedMap;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0

    .line 1032
    :cond_2
    instance-of v4, p1, Ljava/util/Map;

    if-nez v4, :cond_3

    move v2, v3

    .line 1033
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 1035
    check-cast v0, Ljava/util/Map;

    .line 1036
    .local v0, other:Ljava/util/Map;
    iget v4, p0, Lorg/apache/commons/collections/map/Flat3Map;->size:I

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v5

    if-eq v4, v5, :cond_4

    move v2, v3

    .line 1037
    goto :goto_0

    .line 1039
    :cond_4
    iget v4, p0, Lorg/apache/commons/collections/map/Flat3Map;->size:I

    if-lez v4, :cond_0

    .line 1040
    const/4 v1, 0x0

    .line 1041
    .local v1, otherValue:Ljava/lang/Object;
    iget v4, p0, Lorg/apache/commons/collections/map/Flat3Map;->size:I

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    .line 1057
    .end local v1           #otherValue:Ljava/lang/Object;
    :cond_5
    :pswitch_0
    iget-object v4, p0, Lorg/apache/commons/collections/map/Flat3Map;->key1:Ljava/lang/Object;

    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1058
    iget-object v4, p0, Lorg/apache/commons/collections/map/Flat3Map;->key1:Ljava/lang/Object;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1059
    .restart local v1       #otherValue:Ljava/lang/Object;
    iget-object v4, p0, Lorg/apache/commons/collections/map/Flat3Map;->value1:Ljava/lang/Object;

    if-nez v4, :cond_e

    if-eqz v1, :cond_d

    move v4, v2

    :goto_1
    if-eqz v4, :cond_0

    move v2, v3

    .line 1060
    goto :goto_0

    .line 1043
    :pswitch_1
    iget-object v4, p0, Lorg/apache/commons/collections/map/Flat3Map;->key3:Ljava/lang/Object;

    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 1044
    iget-object v4, p0, Lorg/apache/commons/collections/map/Flat3Map;->key3:Ljava/lang/Object;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1045
    iget-object v4, p0, Lorg/apache/commons/collections/map/Flat3Map;->value3:Ljava/lang/Object;

    if-nez v4, :cond_7

    if-eqz v1, :cond_6

    move v4, v2

    :goto_2
    if-eqz v4, :cond_9

    move v2, v3

    .line 1046
    goto :goto_0

    :cond_6
    move v4, v3

    .line 1045
    goto :goto_2

    :cond_7
    iget-object v4, p0, Lorg/apache/commons/collections/map/Flat3Map;->value3:Ljava/lang/Object;

    invoke-virtual {v4, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    move v4, v2

    goto :goto_2

    :cond_8
    move v4, v3

    goto :goto_2

    .line 1050
    .end local v1           #otherValue:Ljava/lang/Object;
    :cond_9
    :pswitch_2
    iget-object v4, p0, Lorg/apache/commons/collections/map/Flat3Map;->key2:Ljava/lang/Object;

    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 1051
    iget-object v4, p0, Lorg/apache/commons/collections/map/Flat3Map;->key2:Ljava/lang/Object;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1052
    .restart local v1       #otherValue:Ljava/lang/Object;
    iget-object v4, p0, Lorg/apache/commons/collections/map/Flat3Map;->value2:Ljava/lang/Object;

    if-nez v4, :cond_b

    if-eqz v1, :cond_a

    move v4, v2

    :goto_3
    if-eqz v4, :cond_5

    move v2, v3

    .line 1053
    goto/16 :goto_0

    :cond_a
    move v4, v3

    .line 1052
    goto :goto_3

    :cond_b
    iget-object v4, p0, Lorg/apache/commons/collections/map/Flat3Map;->value2:Ljava/lang/Object;

    invoke-virtual {v4, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    move v4, v2

    goto :goto_3

    :cond_c
    move v4, v3

    goto :goto_3

    :cond_d
    move v4, v3

    .line 1059
    goto :goto_1

    :cond_e
    iget-object v4, p0, Lorg/apache/commons/collections/map/Flat3Map;->value1:Ljava/lang/Object;

    invoke-virtual {v4, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_f

    move v4, v2

    goto :goto_1

    :cond_f
    move v4, v3

    goto :goto_1

    .line 1041
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "key"

    .prologue
    .line 122
    iget-object v1, p0, Lorg/apache/commons/collections/map/Flat3Map;->delegateMap:Lorg/apache/commons/collections/map/AbstractHashedMap;

    if-eqz v1, :cond_0

    .line 123
    iget-object v1, p0, Lorg/apache/commons/collections/map/Flat3Map;->delegateMap:Lorg/apache/commons/collections/map/AbstractHashedMap;

    invoke-virtual {v1, p1}, Lorg/apache/commons/collections/map/AbstractHashedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 149
    :goto_0
    return-object v1

    .line 125
    :cond_0
    if-nez p1, :cond_4

    .line 126
    iget v1, p0, Lorg/apache/commons/collections/map/Flat3Map;->size:I

    packed-switch v1, :pswitch_data_0

    .line 149
    :cond_1
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 129
    :pswitch_0
    iget-object v1, p0, Lorg/apache/commons/collections/map/Flat3Map;->key3:Ljava/lang/Object;

    if-nez v1, :cond_2

    iget-object v1, p0, Lorg/apache/commons/collections/map/Flat3Map;->value3:Ljava/lang/Object;

    goto :goto_0

    .line 131
    :cond_2
    :pswitch_1
    iget-object v1, p0, Lorg/apache/commons/collections/map/Flat3Map;->key2:Ljava/lang/Object;

    if-nez v1, :cond_3

    iget-object v1, p0, Lorg/apache/commons/collections/map/Flat3Map;->value2:Ljava/lang/Object;

    goto :goto_0

    .line 133
    :cond_3
    :pswitch_2
    iget-object v1, p0, Lorg/apache/commons/collections/map/Flat3Map;->key1:Ljava/lang/Object;

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/apache/commons/collections/map/Flat3Map;->value1:Ljava/lang/Object;

    goto :goto_0

    .line 136
    :cond_4
    iget v1, p0, Lorg/apache/commons/collections/map/Flat3Map;->size:I

    if-lez v1, :cond_1

    .line 137
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 138
    .local v0, hashCode:I
    iget v1, p0, Lorg/apache/commons/collections/map/Flat3Map;->size:I

    packed-switch v1, :pswitch_data_1

    goto :goto_1

    .line 145
    :cond_5
    :pswitch_3
    iget v1, p0, Lorg/apache/commons/collections/map/Flat3Map;->hash1:I

    if-ne v1, v0, :cond_1

    iget-object v1, p0, Lorg/apache/commons/collections/map/Flat3Map;->key1:Ljava/lang/Object;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/apache/commons/collections/map/Flat3Map;->value1:Ljava/lang/Object;

    goto :goto_0

    .line 141
    :pswitch_4
    iget v1, p0, Lorg/apache/commons/collections/map/Flat3Map;->hash3:I

    if-ne v1, v0, :cond_6

    iget-object v1, p0, Lorg/apache/commons/collections/map/Flat3Map;->key3:Ljava/lang/Object;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lorg/apache/commons/collections/map/Flat3Map;->value3:Ljava/lang/Object;

    goto :goto_0

    .line 143
    :cond_6
    :pswitch_5
    iget v1, p0, Lorg/apache/commons/collections/map/Flat3Map;->hash2:I

    if-ne v1, v0, :cond_5

    iget-object v1, p0, Lorg/apache/commons/collections/map/Flat3Map;->key2:Ljava/lang/Object;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lorg/apache/commons/collections/map/Flat3Map;->value2:Ljava/lang/Object;

    goto :goto_0

    .line 126
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 138
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 1074
    iget-object v1, p0, Lorg/apache/commons/collections/map/Flat3Map;->delegateMap:Lorg/apache/commons/collections/map/AbstractHashedMap;

    if-eqz v1, :cond_0

    .line 1075
    iget-object v1, p0, Lorg/apache/commons/collections/map/Flat3Map;->delegateMap:Lorg/apache/commons/collections/map/AbstractHashedMap;

    invoke-virtual {v1}, Lorg/apache/commons/collections/map/AbstractHashedMap;->hashCode()I

    move-result v0

    .line 1086
    :goto_0
    return v0

    .line 1077
    :cond_0
    const/4 v0, 0x0

    .line 1078
    .local v0, total:I
    iget v1, p0, Lorg/apache/commons/collections/map/Flat3Map;->size:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 1084
    :goto_1
    :pswitch_0
    iget v1, p0, Lorg/apache/commons/collections/map/Flat3Map;->hash1:I

    iget-object v3, p0, Lorg/apache/commons/collections/map/Flat3Map;->value1:Ljava/lang/Object;

    if-nez v3, :cond_3

    :goto_2
    xor-int/2addr v1, v2

    add-int/2addr v0, v1

    goto :goto_0

    .line 1080
    :pswitch_1
    iget v3, p0, Lorg/apache/commons/collections/map/Flat3Map;->hash3:I

    iget-object v1, p0, Lorg/apache/commons/collections/map/Flat3Map;->value3:Ljava/lang/Object;

    if-nez v1, :cond_1

    move v1, v2

    :goto_3
    xor-int/2addr v1, v3

    add-int/2addr v0, v1

    .line 1082
    :pswitch_2
    iget v3, p0, Lorg/apache/commons/collections/map/Flat3Map;->hash2:I

    iget-object v1, p0, Lorg/apache/commons/collections/map/Flat3Map;->value2:Ljava/lang/Object;

    if-nez v1, :cond_2

    move v1, v2

    :goto_4
    xor-int/2addr v1, v3

    add-int/2addr v0, v1

    goto :goto_1

    .line 1080
    :cond_1
    iget-object v1, p0, Lorg/apache/commons/collections/map/Flat3Map;->value3:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_3

    .line 1082
    :cond_2
    iget-object v1, p0, Lorg/apache/commons/collections/map/Flat3Map;->value2:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_4

    .line 1084
    :cond_3
    iget-object v2, p0, Lorg/apache/commons/collections/map/Flat3Map;->value1:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    .line 1078
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 170
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/Flat3Map;->size()I

    move-result v0

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
    .line 849
    iget-object v0, p0, Lorg/apache/commons/collections/map/Flat3Map;->delegateMap:Lorg/apache/commons/collections/map/AbstractHashedMap;

    if-eqz v0, :cond_0

    .line 850
    iget-object v0, p0, Lorg/apache/commons/collections/map/Flat3Map;->delegateMap:Lorg/apache/commons/collections/map/AbstractHashedMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections/map/AbstractHashedMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 852
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/apache/commons/collections/map/Flat3Map$KeySet;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/map/Flat3Map$KeySet;-><init>(Lorg/apache/commons/collections/map/Flat3Map;)V

    goto :goto_0
.end method

.method public mapIterator()Lorg/apache/commons/collections/MapIterator;
    .locals 1

    .prologue
    .line 566
    iget-object v0, p0, Lorg/apache/commons/collections/map/Flat3Map;->delegateMap:Lorg/apache/commons/collections/map/AbstractHashedMap;

    if-eqz v0, :cond_0

    .line 567
    iget-object v0, p0, Lorg/apache/commons/collections/map/Flat3Map;->delegateMap:Lorg/apache/commons/collections/map/AbstractHashedMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections/map/AbstractHashedMap;->mapIterator()Lorg/apache/commons/collections/MapIterator;

    move-result-object v0

    .line 572
    :goto_0
    return-object v0

    .line 569
    :cond_0
    iget v0, p0, Lorg/apache/commons/collections/map/Flat3Map;->size:I

    if-nez v0, :cond_1

    .line 570
    sget-object v0, Lorg/apache/commons/collections/iterators/EmptyMapIterator;->INSTANCE:Lorg/apache/commons/collections/MapIterator;

    goto :goto_0

    .line 572
    :cond_1
    new-instance v0, Lorg/apache/commons/collections/map/Flat3Map$FlatMapIterator;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/map/Flat3Map$FlatMapIterator;-><init>(Lorg/apache/commons/collections/map/Flat3Map;)V

    goto :goto_0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .parameter "key"
    .parameter "value"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 250
    iget-object v3, p0, Lorg/apache/commons/collections/map/Flat3Map;->delegateMap:Lorg/apache/commons/collections/map/AbstractHashedMap;

    if-eqz v3, :cond_0

    .line 251
    iget-object v2, p0, Lorg/apache/commons/collections/map/Flat3Map;->delegateMap:Lorg/apache/commons/collections/map/AbstractHashedMap;

    invoke-virtual {v2, p1, p2}, Lorg/apache/commons/collections/map/AbstractHashedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 324
    :goto_0
    return-object v1

    .line 254
    :cond_0
    if-nez p1, :cond_4

    .line 255
    iget v3, p0, Lorg/apache/commons/collections/map/Flat3Map;->size:I

    packed-switch v3, :pswitch_data_0

    .line 302
    :cond_1
    :goto_1
    iget v3, p0, Lorg/apache/commons/collections/map/Flat3Map;->size:I

    packed-switch v3, :pswitch_data_1

    .line 304
    invoke-direct {p0}, Lorg/apache/commons/collections/map/Flat3Map;->convertToMap()V

    .line 305
    iget-object v2, p0, Lorg/apache/commons/collections/map/Flat3Map;->delegateMap:Lorg/apache/commons/collections/map/AbstractHashedMap;

    invoke-virtual {v2, p1, p2}, Lorg/apache/commons/collections/map/AbstractHashedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 257
    :pswitch_0
    iget-object v3, p0, Lorg/apache/commons/collections/map/Flat3Map;->key3:Ljava/lang/Object;

    if-nez v3, :cond_2

    .line 258
    iget-object v1, p0, Lorg/apache/commons/collections/map/Flat3Map;->value3:Ljava/lang/Object;

    .line 259
    .local v1, old:Ljava/lang/Object;
    iput-object p2, p0, Lorg/apache/commons/collections/map/Flat3Map;->value3:Ljava/lang/Object;

    goto :goto_0

    .line 263
    .end local v1           #old:Ljava/lang/Object;
    :cond_2
    :pswitch_1
    iget-object v3, p0, Lorg/apache/commons/collections/map/Flat3Map;->key2:Ljava/lang/Object;

    if-nez v3, :cond_3

    .line 264
    iget-object v1, p0, Lorg/apache/commons/collections/map/Flat3Map;->value2:Ljava/lang/Object;

    .line 265
    .restart local v1       #old:Ljava/lang/Object;
    iput-object p2, p0, Lorg/apache/commons/collections/map/Flat3Map;->value2:Ljava/lang/Object;

    goto :goto_0

    .line 269
    .end local v1           #old:Ljava/lang/Object;
    :cond_3
    :pswitch_2
    iget-object v3, p0, Lorg/apache/commons/collections/map/Flat3Map;->key1:Ljava/lang/Object;

    if-nez v3, :cond_1

    .line 270
    iget-object v1, p0, Lorg/apache/commons/collections/map/Flat3Map;->value1:Ljava/lang/Object;

    .line 271
    .restart local v1       #old:Ljava/lang/Object;
    iput-object p2, p0, Lorg/apache/commons/collections/map/Flat3Map;->value1:Ljava/lang/Object;

    goto :goto_0

    .line 276
    .end local v1           #old:Ljava/lang/Object;
    :cond_4
    iget v3, p0, Lorg/apache/commons/collections/map/Flat3Map;->size:I

    if-lez v3, :cond_1

    .line 277
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 278
    .local v0, hashCode:I
    iget v3, p0, Lorg/apache/commons/collections/map/Flat3Map;->size:I

    packed-switch v3, :pswitch_data_2

    goto :goto_1

    .line 292
    :cond_5
    :pswitch_3
    iget v3, p0, Lorg/apache/commons/collections/map/Flat3Map;->hash1:I

    if-ne v3, v0, :cond_1

    iget-object v3, p0, Lorg/apache/commons/collections/map/Flat3Map;->key1:Ljava/lang/Object;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 293
    iget-object v1, p0, Lorg/apache/commons/collections/map/Flat3Map;->value1:Ljava/lang/Object;

    .line 294
    .restart local v1       #old:Ljava/lang/Object;
    iput-object p2, p0, Lorg/apache/commons/collections/map/Flat3Map;->value1:Ljava/lang/Object;

    goto :goto_0

    .line 280
    .end local v1           #old:Ljava/lang/Object;
    :pswitch_4
    iget v3, p0, Lorg/apache/commons/collections/map/Flat3Map;->hash3:I

    if-ne v3, v0, :cond_6

    iget-object v3, p0, Lorg/apache/commons/collections/map/Flat3Map;->key3:Ljava/lang/Object;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 281
    iget-object v1, p0, Lorg/apache/commons/collections/map/Flat3Map;->value3:Ljava/lang/Object;

    .line 282
    .restart local v1       #old:Ljava/lang/Object;
    iput-object p2, p0, Lorg/apache/commons/collections/map/Flat3Map;->value3:Ljava/lang/Object;

    goto :goto_0

    .line 286
    .end local v1           #old:Ljava/lang/Object;
    :cond_6
    :pswitch_5
    iget v3, p0, Lorg/apache/commons/collections/map/Flat3Map;->hash2:I

    if-ne v3, v0, :cond_5

    iget-object v3, p0, Lorg/apache/commons/collections/map/Flat3Map;->key2:Ljava/lang/Object;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 287
    iget-object v1, p0, Lorg/apache/commons/collections/map/Flat3Map;->value2:Ljava/lang/Object;

    .line 288
    .restart local v1       #old:Ljava/lang/Object;
    iput-object p2, p0, Lorg/apache/commons/collections/map/Flat3Map;->value2:Ljava/lang/Object;

    goto :goto_0

    .line 308
    .end local v0           #hashCode:I
    .end local v1           #old:Ljava/lang/Object;
    :pswitch_6
    if-nez p1, :cond_7

    :goto_2
    iput v2, p0, Lorg/apache/commons/collections/map/Flat3Map;->hash3:I

    .line 309
    iput-object p1, p0, Lorg/apache/commons/collections/map/Flat3Map;->key3:Ljava/lang/Object;

    .line 310
    iput-object p2, p0, Lorg/apache/commons/collections/map/Flat3Map;->value3:Ljava/lang/Object;

    .line 323
    :goto_3
    iget v2, p0, Lorg/apache/commons/collections/map/Flat3Map;->size:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/apache/commons/collections/map/Flat3Map;->size:I

    goto :goto_0

    .line 308
    :cond_7
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    .line 313
    :pswitch_7
    if-nez p1, :cond_8

    :goto_4
    iput v2, p0, Lorg/apache/commons/collections/map/Flat3Map;->hash2:I

    .line 314
    iput-object p1, p0, Lorg/apache/commons/collections/map/Flat3Map;->key2:Ljava/lang/Object;

    .line 315
    iput-object p2, p0, Lorg/apache/commons/collections/map/Flat3Map;->value2:Ljava/lang/Object;

    goto :goto_3

    .line 313
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_4

    .line 318
    :pswitch_8
    if-nez p1, :cond_9

    :goto_5
    iput v2, p0, Lorg/apache/commons/collections/map/Flat3Map;->hash1:I

    .line 319
    iput-object p1, p0, Lorg/apache/commons/collections/map/Flat3Map;->key1:Ljava/lang/Object;

    .line 320
    iput-object p2, p0, Lorg/apache/commons/collections/map/Flat3Map;->value1:Ljava/lang/Object;

    goto :goto_3

    .line 318
    :cond_9
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_5

    .line 255
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 302
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    .line 278
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_3
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 5
    .parameter "map"

    .prologue
    .line 334
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v2

    .line 335
    .local v2, size:I
    if-nez v2, :cond_1

    .line 351
    :cond_0
    :goto_0
    return-void

    .line 338
    :cond_1
    iget-object v3, p0, Lorg/apache/commons/collections/map/Flat3Map;->delegateMap:Lorg/apache/commons/collections/map/AbstractHashedMap;

    if-eqz v3, :cond_2

    .line 339
    iget-object v3, p0, Lorg/apache/commons/collections/map/Flat3Map;->delegateMap:Lorg/apache/commons/collections/map/AbstractHashedMap;

    invoke-virtual {v3, p1}, Lorg/apache/commons/collections/map/AbstractHashedMap;->putAll(Ljava/util/Map;)V

    goto :goto_0

    .line 342
    :cond_2
    const/4 v3, 0x4

    if-ge v2, v3, :cond_3

    .line 343
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, it:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 344
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 345
    .local v0, entry:Ljava/util/Map$Entry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lorg/apache/commons/collections/map/Flat3Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 348
    .end local v0           #entry:Ljava/util/Map$Entry;
    .end local v1           #it:Ljava/util/Iterator;
    :cond_3
    invoke-direct {p0}, Lorg/apache/commons/collections/map/Flat3Map;->convertToMap()V

    .line 349
    iget-object v3, p0, Lorg/apache/commons/collections/map/Flat3Map;->delegateMap:Lorg/apache/commons/collections/map/AbstractHashedMap;

    invoke-virtual {v3, p1}, Lorg/apache/commons/collections/map/AbstractHashedMap;->putAll(Ljava/util/Map;)V

    goto :goto_0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .parameter "key"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 394
    iget-object v3, p0, Lorg/apache/commons/collections/map/Flat3Map;->delegateMap:Lorg/apache/commons/collections/map/AbstractHashedMap;

    if-eqz v3, :cond_0

    .line 395
    iget-object v2, p0, Lorg/apache/commons/collections/map/Flat3Map;->delegateMap:Lorg/apache/commons/collections/map/AbstractHashedMap;

    invoke-virtual {v2, p1}, Lorg/apache/commons/collections/map/AbstractHashedMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 534
    :goto_0
    return-object v1

    .line 397
    :cond_0
    iget v3, p0, Lorg/apache/commons/collections/map/Flat3Map;->size:I

    if-nez v3, :cond_1

    move-object v1, v2

    .line 398
    goto :goto_0

    .line 400
    :cond_1
    if-nez p1, :cond_8

    .line 401
    iget v3, p0, Lorg/apache/commons/collections/map/Flat3Map;->size:I

    packed-switch v3, :pswitch_data_0

    :cond_2
    :goto_1
    move-object v1, v2

    .line 534
    goto :goto_0

    .line 403
    :pswitch_0
    iget-object v3, p0, Lorg/apache/commons/collections/map/Flat3Map;->key3:Ljava/lang/Object;

    if-nez v3, :cond_3

    .line 404
    iget-object v1, p0, Lorg/apache/commons/collections/map/Flat3Map;->value3:Ljava/lang/Object;

    .line 405
    .local v1, old:Ljava/lang/Object;
    iput v4, p0, Lorg/apache/commons/collections/map/Flat3Map;->hash3:I

    .line 406
    iput-object v2, p0, Lorg/apache/commons/collections/map/Flat3Map;->key3:Ljava/lang/Object;

    .line 407
    iput-object v2, p0, Lorg/apache/commons/collections/map/Flat3Map;->value3:Ljava/lang/Object;

    .line 408
    iput v5, p0, Lorg/apache/commons/collections/map/Flat3Map;->size:I

    goto :goto_0

    .line 411
    .end local v1           #old:Ljava/lang/Object;
    :cond_3
    iget-object v3, p0, Lorg/apache/commons/collections/map/Flat3Map;->key2:Ljava/lang/Object;

    if-nez v3, :cond_4

    .line 412
    iget-object v1, p0, Lorg/apache/commons/collections/map/Flat3Map;->value3:Ljava/lang/Object;

    .line 413
    .restart local v1       #old:Ljava/lang/Object;
    iget v3, p0, Lorg/apache/commons/collections/map/Flat3Map;->hash3:I

    iput v3, p0, Lorg/apache/commons/collections/map/Flat3Map;->hash2:I

    .line 414
    iget-object v3, p0, Lorg/apache/commons/collections/map/Flat3Map;->key3:Ljava/lang/Object;

    iput-object v3, p0, Lorg/apache/commons/collections/map/Flat3Map;->key2:Ljava/lang/Object;

    .line 415
    iget-object v3, p0, Lorg/apache/commons/collections/map/Flat3Map;->value3:Ljava/lang/Object;

    iput-object v3, p0, Lorg/apache/commons/collections/map/Flat3Map;->value2:Ljava/lang/Object;

    .line 416
    iput v4, p0, Lorg/apache/commons/collections/map/Flat3Map;->hash3:I

    .line 417
    iput-object v2, p0, Lorg/apache/commons/collections/map/Flat3Map;->key3:Ljava/lang/Object;

    .line 418
    iput-object v2, p0, Lorg/apache/commons/collections/map/Flat3Map;->value3:Ljava/lang/Object;

    .line 419
    iput v5, p0, Lorg/apache/commons/collections/map/Flat3Map;->size:I

    goto :goto_0

    .line 422
    .end local v1           #old:Ljava/lang/Object;
    :cond_4
    iget-object v3, p0, Lorg/apache/commons/collections/map/Flat3Map;->key1:Ljava/lang/Object;

    if-nez v3, :cond_5

    .line 423
    iget-object v1, p0, Lorg/apache/commons/collections/map/Flat3Map;->value3:Ljava/lang/Object;

    .line 424
    .restart local v1       #old:Ljava/lang/Object;
    iget v3, p0, Lorg/apache/commons/collections/map/Flat3Map;->hash3:I

    iput v3, p0, Lorg/apache/commons/collections/map/Flat3Map;->hash1:I

    .line 425
    iget-object v3, p0, Lorg/apache/commons/collections/map/Flat3Map;->key3:Ljava/lang/Object;

    iput-object v3, p0, Lorg/apache/commons/collections/map/Flat3Map;->key1:Ljava/lang/Object;

    .line 426
    iget-object v3, p0, Lorg/apache/commons/collections/map/Flat3Map;->value3:Ljava/lang/Object;

    iput-object v3, p0, Lorg/apache/commons/collections/map/Flat3Map;->value1:Ljava/lang/Object;

    .line 427
    iput v4, p0, Lorg/apache/commons/collections/map/Flat3Map;->hash3:I

    .line 428
    iput-object v2, p0, Lorg/apache/commons/collections/map/Flat3Map;->key3:Ljava/lang/Object;

    .line 429
    iput-object v2, p0, Lorg/apache/commons/collections/map/Flat3Map;->value3:Ljava/lang/Object;

    .line 430
    iput v5, p0, Lorg/apache/commons/collections/map/Flat3Map;->size:I

    goto :goto_0

    .end local v1           #old:Ljava/lang/Object;
    :cond_5
    move-object v1, v2

    .line 433
    goto :goto_0

    .line 435
    :pswitch_1
    iget-object v3, p0, Lorg/apache/commons/collections/map/Flat3Map;->key2:Ljava/lang/Object;

    if-nez v3, :cond_6

    .line 436
    iget-object v1, p0, Lorg/apache/commons/collections/map/Flat3Map;->value2:Ljava/lang/Object;

    .line 437
    .restart local v1       #old:Ljava/lang/Object;
    iput v4, p0, Lorg/apache/commons/collections/map/Flat3Map;->hash2:I

    .line 438
    iput-object v2, p0, Lorg/apache/commons/collections/map/Flat3Map;->key2:Ljava/lang/Object;

    .line 439
    iput-object v2, p0, Lorg/apache/commons/collections/map/Flat3Map;->value2:Ljava/lang/Object;

    .line 440
    iput v6, p0, Lorg/apache/commons/collections/map/Flat3Map;->size:I

    goto :goto_0

    .line 443
    .end local v1           #old:Ljava/lang/Object;
    :cond_6
    iget-object v3, p0, Lorg/apache/commons/collections/map/Flat3Map;->key1:Ljava/lang/Object;

    if-nez v3, :cond_7

    .line 444
    iget-object v1, p0, Lorg/apache/commons/collections/map/Flat3Map;->value2:Ljava/lang/Object;

    .line 445
    .restart local v1       #old:Ljava/lang/Object;
    iget v3, p0, Lorg/apache/commons/collections/map/Flat3Map;->hash2:I

    iput v3, p0, Lorg/apache/commons/collections/map/Flat3Map;->hash1:I

    .line 446
    iget-object v3, p0, Lorg/apache/commons/collections/map/Flat3Map;->key2:Ljava/lang/Object;

    iput-object v3, p0, Lorg/apache/commons/collections/map/Flat3Map;->key1:Ljava/lang/Object;

    .line 447
    iget-object v3, p0, Lorg/apache/commons/collections/map/Flat3Map;->value2:Ljava/lang/Object;

    iput-object v3, p0, Lorg/apache/commons/collections/map/Flat3Map;->value1:Ljava/lang/Object;

    .line 448
    iput v4, p0, Lorg/apache/commons/collections/map/Flat3Map;->hash2:I

    .line 449
    iput-object v2, p0, Lorg/apache/commons/collections/map/Flat3Map;->key2:Ljava/lang/Object;

    .line 450
    iput-object v2, p0, Lorg/apache/commons/collections/map/Flat3Map;->value2:Ljava/lang/Object;

    .line 451
    iput v6, p0, Lorg/apache/commons/collections/map/Flat3Map;->size:I

    goto :goto_0

    .end local v1           #old:Ljava/lang/Object;
    :cond_7
    move-object v1, v2

    .line 454
    goto/16 :goto_0

    .line 456
    :pswitch_2
    iget-object v3, p0, Lorg/apache/commons/collections/map/Flat3Map;->key1:Ljava/lang/Object;

    if-nez v3, :cond_2

    .line 457
    iget-object v1, p0, Lorg/apache/commons/collections/map/Flat3Map;->value1:Ljava/lang/Object;

    .line 458
    .restart local v1       #old:Ljava/lang/Object;
    iput v4, p0, Lorg/apache/commons/collections/map/Flat3Map;->hash1:I

    .line 459
    iput-object v2, p0, Lorg/apache/commons/collections/map/Flat3Map;->key1:Ljava/lang/Object;

    .line 460
    iput-object v2, p0, Lorg/apache/commons/collections/map/Flat3Map;->value1:Ljava/lang/Object;

    .line 461
    iput v4, p0, Lorg/apache/commons/collections/map/Flat3Map;->size:I

    goto/16 :goto_0

    .line 466
    .end local v1           #old:Ljava/lang/Object;
    :cond_8
    iget v3, p0, Lorg/apache/commons/collections/map/Flat3Map;->size:I

    if-lez v3, :cond_2

    .line 467
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 468
    .local v0, hashCode:I
    iget v3, p0, Lorg/apache/commons/collections/map/Flat3Map;->size:I

    packed-switch v3, :pswitch_data_1

    goto/16 :goto_1

    .line 523
    :pswitch_3
    iget v3, p0, Lorg/apache/commons/collections/map/Flat3Map;->hash1:I

    if-ne v3, v0, :cond_2

    iget-object v3, p0, Lorg/apache/commons/collections/map/Flat3Map;->key1:Ljava/lang/Object;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 524
    iget-object v1, p0, Lorg/apache/commons/collections/map/Flat3Map;->value1:Ljava/lang/Object;

    .line 525
    .restart local v1       #old:Ljava/lang/Object;
    iput v4, p0, Lorg/apache/commons/collections/map/Flat3Map;->hash1:I

    .line 526
    iput-object v2, p0, Lorg/apache/commons/collections/map/Flat3Map;->key1:Ljava/lang/Object;

    .line 527
    iput-object v2, p0, Lorg/apache/commons/collections/map/Flat3Map;->value1:Ljava/lang/Object;

    .line 528
    iput v4, p0, Lorg/apache/commons/collections/map/Flat3Map;->size:I

    goto/16 :goto_0

    .line 470
    .end local v1           #old:Ljava/lang/Object;
    :pswitch_4
    iget v3, p0, Lorg/apache/commons/collections/map/Flat3Map;->hash3:I

    if-ne v3, v0, :cond_9

    iget-object v3, p0, Lorg/apache/commons/collections/map/Flat3Map;->key3:Ljava/lang/Object;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 471
    iget-object v1, p0, Lorg/apache/commons/collections/map/Flat3Map;->value3:Ljava/lang/Object;

    .line 472
    .restart local v1       #old:Ljava/lang/Object;
    iput v4, p0, Lorg/apache/commons/collections/map/Flat3Map;->hash3:I

    .line 473
    iput-object v2, p0, Lorg/apache/commons/collections/map/Flat3Map;->key3:Ljava/lang/Object;

    .line 474
    iput-object v2, p0, Lorg/apache/commons/collections/map/Flat3Map;->value3:Ljava/lang/Object;

    .line 475
    iput v5, p0, Lorg/apache/commons/collections/map/Flat3Map;->size:I

    goto/16 :goto_0

    .line 478
    .end local v1           #old:Ljava/lang/Object;
    :cond_9
    iget v3, p0, Lorg/apache/commons/collections/map/Flat3Map;->hash2:I

    if-ne v3, v0, :cond_a

    iget-object v3, p0, Lorg/apache/commons/collections/map/Flat3Map;->key2:Ljava/lang/Object;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 479
    iget-object v1, p0, Lorg/apache/commons/collections/map/Flat3Map;->value3:Ljava/lang/Object;

    .line 480
    .restart local v1       #old:Ljava/lang/Object;
    iget v3, p0, Lorg/apache/commons/collections/map/Flat3Map;->hash3:I

    iput v3, p0, Lorg/apache/commons/collections/map/Flat3Map;->hash2:I

    .line 481
    iget-object v3, p0, Lorg/apache/commons/collections/map/Flat3Map;->key3:Ljava/lang/Object;

    iput-object v3, p0, Lorg/apache/commons/collections/map/Flat3Map;->key2:Ljava/lang/Object;

    .line 482
    iget-object v3, p0, Lorg/apache/commons/collections/map/Flat3Map;->value3:Ljava/lang/Object;

    iput-object v3, p0, Lorg/apache/commons/collections/map/Flat3Map;->value2:Ljava/lang/Object;

    .line 483
    iput v4, p0, Lorg/apache/commons/collections/map/Flat3Map;->hash3:I

    .line 484
    iput-object v2, p0, Lorg/apache/commons/collections/map/Flat3Map;->key3:Ljava/lang/Object;

    .line 485
    iput-object v2, p0, Lorg/apache/commons/collections/map/Flat3Map;->value3:Ljava/lang/Object;

    .line 486
    iput v5, p0, Lorg/apache/commons/collections/map/Flat3Map;->size:I

    goto/16 :goto_0

    .line 489
    .end local v1           #old:Ljava/lang/Object;
    :cond_a
    iget v3, p0, Lorg/apache/commons/collections/map/Flat3Map;->hash1:I

    if-ne v3, v0, :cond_b

    iget-object v3, p0, Lorg/apache/commons/collections/map/Flat3Map;->key1:Ljava/lang/Object;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 490
    iget-object v1, p0, Lorg/apache/commons/collections/map/Flat3Map;->value3:Ljava/lang/Object;

    .line 491
    .restart local v1       #old:Ljava/lang/Object;
    iget v3, p0, Lorg/apache/commons/collections/map/Flat3Map;->hash3:I

    iput v3, p0, Lorg/apache/commons/collections/map/Flat3Map;->hash1:I

    .line 492
    iget-object v3, p0, Lorg/apache/commons/collections/map/Flat3Map;->key3:Ljava/lang/Object;

    iput-object v3, p0, Lorg/apache/commons/collections/map/Flat3Map;->key1:Ljava/lang/Object;

    .line 493
    iget-object v3, p0, Lorg/apache/commons/collections/map/Flat3Map;->value3:Ljava/lang/Object;

    iput-object v3, p0, Lorg/apache/commons/collections/map/Flat3Map;->value1:Ljava/lang/Object;

    .line 494
    iput v4, p0, Lorg/apache/commons/collections/map/Flat3Map;->hash3:I

    .line 495
    iput-object v2, p0, Lorg/apache/commons/collections/map/Flat3Map;->key3:Ljava/lang/Object;

    .line 496
    iput-object v2, p0, Lorg/apache/commons/collections/map/Flat3Map;->value3:Ljava/lang/Object;

    .line 497
    iput v5, p0, Lorg/apache/commons/collections/map/Flat3Map;->size:I

    goto/16 :goto_0

    .end local v1           #old:Ljava/lang/Object;
    :cond_b
    move-object v1, v2

    .line 500
    goto/16 :goto_0

    .line 502
    :pswitch_5
    iget v3, p0, Lorg/apache/commons/collections/map/Flat3Map;->hash2:I

    if-ne v3, v0, :cond_c

    iget-object v3, p0, Lorg/apache/commons/collections/map/Flat3Map;->key2:Ljava/lang/Object;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 503
    iget-object v1, p0, Lorg/apache/commons/collections/map/Flat3Map;->value2:Ljava/lang/Object;

    .line 504
    .restart local v1       #old:Ljava/lang/Object;
    iput v4, p0, Lorg/apache/commons/collections/map/Flat3Map;->hash2:I

    .line 505
    iput-object v2, p0, Lorg/apache/commons/collections/map/Flat3Map;->key2:Ljava/lang/Object;

    .line 506
    iput-object v2, p0, Lorg/apache/commons/collections/map/Flat3Map;->value2:Ljava/lang/Object;

    .line 507
    iput v6, p0, Lorg/apache/commons/collections/map/Flat3Map;->size:I

    goto/16 :goto_0

    .line 510
    .end local v1           #old:Ljava/lang/Object;
    :cond_c
    iget v3, p0, Lorg/apache/commons/collections/map/Flat3Map;->hash1:I

    if-ne v3, v0, :cond_d

    iget-object v3, p0, Lorg/apache/commons/collections/map/Flat3Map;->key1:Ljava/lang/Object;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 511
    iget-object v1, p0, Lorg/apache/commons/collections/map/Flat3Map;->value2:Ljava/lang/Object;

    .line 512
    .restart local v1       #old:Ljava/lang/Object;
    iget v3, p0, Lorg/apache/commons/collections/map/Flat3Map;->hash2:I

    iput v3, p0, Lorg/apache/commons/collections/map/Flat3Map;->hash1:I

    .line 513
    iget-object v3, p0, Lorg/apache/commons/collections/map/Flat3Map;->key2:Ljava/lang/Object;

    iput-object v3, p0, Lorg/apache/commons/collections/map/Flat3Map;->key1:Ljava/lang/Object;

    .line 514
    iget-object v3, p0, Lorg/apache/commons/collections/map/Flat3Map;->value2:Ljava/lang/Object;

    iput-object v3, p0, Lorg/apache/commons/collections/map/Flat3Map;->value1:Ljava/lang/Object;

    .line 515
    iput v4, p0, Lorg/apache/commons/collections/map/Flat3Map;->hash2:I

    .line 516
    iput-object v2, p0, Lorg/apache/commons/collections/map/Flat3Map;->key2:Ljava/lang/Object;

    .line 517
    iput-object v2, p0, Lorg/apache/commons/collections/map/Flat3Map;->value2:Ljava/lang/Object;

    .line 518
    iput v6, p0, Lorg/apache/commons/collections/map/Flat3Map;->size:I

    goto/16 :goto_0

    .end local v1           #old:Ljava/lang/Object;
    :cond_d
    move-object v1, v2

    .line 521
    goto/16 :goto_0

    .line 401
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 468
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method public size()I
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lorg/apache/commons/collections/map/Flat3Map;->delegateMap:Lorg/apache/commons/collections/map/AbstractHashedMap;

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lorg/apache/commons/collections/map/Flat3Map;->delegateMap:Lorg/apache/commons/collections/map/AbstractHashedMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections/map/AbstractHashedMap;->size()I

    move-result v0

    .line 161
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lorg/apache/commons/collections/map/Flat3Map;->size:I

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0x2c

    const/16 v2, 0x3d

    .line 1095
    iget-object v1, p0, Lorg/apache/commons/collections/map/Flat3Map;->delegateMap:Lorg/apache/commons/collections/map/AbstractHashedMap;

    if-eqz v1, :cond_0

    .line 1096
    iget-object v1, p0, Lorg/apache/commons/collections/map/Flat3Map;->delegateMap:Lorg/apache/commons/collections/map/AbstractHashedMap;

    invoke-virtual {v1}, Lorg/apache/commons/collections/map/AbstractHashedMap;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1120
    :goto_0
    return-object v1

    .line 1098
    :cond_0
    iget v1, p0, Lorg/apache/commons/collections/map/Flat3Map;->size:I

    if-nez v1, :cond_1

    .line 1099
    const-string v1, "{}"

    goto :goto_0

    .line 1101
    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 1102
    .local v0, buf:Ljava/lang/StringBuffer;
    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1103
    iget v1, p0, Lorg/apache/commons/collections/map/Flat3Map;->size:I

    packed-switch v1, :pswitch_data_0

    .line 1119
    :goto_1
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1120
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1105
    :pswitch_0
    iget-object v1, p0, Lorg/apache/commons/collections/map/Flat3Map;->key3:Ljava/lang/Object;

    if-ne v1, p0, :cond_2

    const-string v1, "(this Map)"

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 1106
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1107
    iget-object v1, p0, Lorg/apache/commons/collections/map/Flat3Map;->value3:Ljava/lang/Object;

    if-ne v1, p0, :cond_3

    const-string v1, "(this Map)"

    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 1108
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1110
    :pswitch_1
    iget-object v1, p0, Lorg/apache/commons/collections/map/Flat3Map;->key2:Ljava/lang/Object;

    if-ne v1, p0, :cond_4

    const-string v1, "(this Map)"

    :goto_4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 1111
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1112
    iget-object v1, p0, Lorg/apache/commons/collections/map/Flat3Map;->value2:Ljava/lang/Object;

    if-ne v1, p0, :cond_5

    const-string v1, "(this Map)"

    :goto_5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 1113
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1115
    :pswitch_2
    iget-object v1, p0, Lorg/apache/commons/collections/map/Flat3Map;->key1:Ljava/lang/Object;

    if-ne v1, p0, :cond_6

    const-string v1, "(this Map)"

    :goto_6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 1116
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1117
    iget-object v1, p0, Lorg/apache/commons/collections/map/Flat3Map;->value1:Ljava/lang/Object;

    if-ne v1, p0, :cond_7

    const-string v1, "(this Map)"

    :goto_7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 1105
    :cond_2
    iget-object v1, p0, Lorg/apache/commons/collections/map/Flat3Map;->key3:Ljava/lang/Object;

    goto :goto_2

    .line 1107
    :cond_3
    iget-object v1, p0, Lorg/apache/commons/collections/map/Flat3Map;->value3:Ljava/lang/Object;

    goto :goto_3

    .line 1110
    :cond_4
    iget-object v1, p0, Lorg/apache/commons/collections/map/Flat3Map;->key2:Ljava/lang/Object;

    goto :goto_4

    .line 1112
    :cond_5
    iget-object v1, p0, Lorg/apache/commons/collections/map/Flat3Map;->value2:Ljava/lang/Object;

    goto :goto_5

    .line 1115
    :cond_6
    iget-object v1, p0, Lorg/apache/commons/collections/map/Flat3Map;->key1:Ljava/lang/Object;

    goto :goto_6

    .line 1117
    :cond_7
    iget-object v1, p0, Lorg/apache/commons/collections/map/Flat3Map;->value1:Ljava/lang/Object;

    goto :goto_7

    .line 1103
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public values()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 918
    iget-object v0, p0, Lorg/apache/commons/collections/map/Flat3Map;->delegateMap:Lorg/apache/commons/collections/map/AbstractHashedMap;

    if-eqz v0, :cond_0

    .line 919
    iget-object v0, p0, Lorg/apache/commons/collections/map/Flat3Map;->delegateMap:Lorg/apache/commons/collections/map/AbstractHashedMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections/map/AbstractHashedMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 921
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/apache/commons/collections/map/Flat3Map$Values;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/map/Flat3Map$Values;-><init>(Lorg/apache/commons/collections/map/Flat3Map;)V

    goto :goto_0
.end method
