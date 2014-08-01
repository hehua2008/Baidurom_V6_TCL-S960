.class public Lorg/apache/commons/collections/map/TransformedMap;
.super Lorg/apache/commons/collections/map/AbstractInputCheckedMapDecorator;
.source "TransformedMap.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x61773fe05df15a70L


# instance fields
.field protected final keyTransformer:Lorg/apache/commons/collections/Transformer;

.field protected final valueTransformer:Lorg/apache/commons/collections/Transformer;


# direct methods
.method protected constructor <init>(Ljava/util/Map;Lorg/apache/commons/collections/Transformer;Lorg/apache/commons/collections/Transformer;)V
    .locals 0
    .parameter "map"
    .parameter "keyTransformer"
    .parameter "valueTransformer"

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/map/AbstractInputCheckedMapDecorator;-><init>(Ljava/util/Map;)V

    .line 83
    iput-object p2, p0, Lorg/apache/commons/collections/map/TransformedMap;->keyTransformer:Lorg/apache/commons/collections/Transformer;

    .line 84
    iput-object p3, p0, Lorg/apache/commons/collections/map/TransformedMap;->valueTransformer:Lorg/apache/commons/collections/Transformer;

    .line 85
    return-void
.end method

.method public static decorate(Ljava/util/Map;Lorg/apache/commons/collections/Transformer;Lorg/apache/commons/collections/Transformer;)Ljava/util/Map;
    .locals 1
    .parameter "map"
    .parameter "keyTransformer"
    .parameter "valueTransformer"

    .prologue
    .line 66
    new-instance v0, Lorg/apache/commons/collections/map/TransformedMap;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/commons/collections/map/TransformedMap;-><init>(Ljava/util/Map;Lorg/apache/commons/collections/Transformer;Lorg/apache/commons/collections/Transformer;)V

    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 109
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 110
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lorg/apache/commons/collections/map/AbstractMapDecorator;->map:Ljava/util/Map;

    .line 111
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 96
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 97
    iget-object v0, p0, Lorg/apache/commons/collections/map/AbstractMapDecorator;->map:Ljava/util/Map;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 98
    return-void
.end method


# virtual methods
.method protected checkSetValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "value"

    .prologue
    .line 169
    iget-object v0, p0, Lorg/apache/commons/collections/map/TransformedMap;->valueTransformer:Lorg/apache/commons/collections/Transformer;

    invoke-interface {v0, p1}, Lorg/apache/commons/collections/Transformer;->transform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected isSetValueChecking()Z
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lorg/apache/commons/collections/map/TransformedMap;->valueTransformer:Lorg/apache/commons/collections/Transformer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 184
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/map/TransformedMap;->transformKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 185
    invoke-virtual {p0, p2}, Lorg/apache/commons/collections/map/TransformedMap;->transformValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 186
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/AbstractMapDecorator;->getMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 1
    .parameter "mapToCopy"

    .prologue
    .line 190
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/map/TransformedMap;->transformMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    .line 191
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/AbstractMapDecorator;->getMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 192
    return-void
.end method

.method protected transformKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "object"

    .prologue
    .line 123
    iget-object v0, p0, Lorg/apache/commons/collections/map/TransformedMap;->keyTransformer:Lorg/apache/commons/collections/Transformer;

    if-nez v0, :cond_0

    .line 126
    .end local p1
    :goto_0
    return-object p1

    .restart local p1
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/map/TransformedMap;->keyTransformer:Lorg/apache/commons/collections/Transformer;

    invoke-interface {v0, p1}, Lorg/apache/commons/collections/Transformer;->transform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0
.end method

.method protected transformMap(Ljava/util/Map;)Ljava/util/Map;
    .locals 5
    .parameter "map"

    .prologue
    .line 153
    new-instance v2, Lorg/apache/commons/collections/map/LinkedMap;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v3

    invoke-direct {v2, v3}, Lorg/apache/commons/collections/map/LinkedMap;-><init>(I)V

    .line 154
    .local v2, result:Ljava/util/Map;
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, it:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 158
    return-object v2

    .line 155
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 156
    .local v0, entry:Ljava/util/Map$Entry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/apache/commons/collections/map/TransformedMap;->transformKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/apache/commons/collections/map/TransformedMap;->transformValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method protected transformValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "object"

    .prologue
    .line 138
    iget-object v0, p0, Lorg/apache/commons/collections/map/TransformedMap;->valueTransformer:Lorg/apache/commons/collections/Transformer;

    if-nez v0, :cond_0

    .line 141
    .end local p1
    :goto_0
    return-object p1

    .restart local p1
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/map/TransformedMap;->valueTransformer:Lorg/apache/commons/collections/Transformer;

    invoke-interface {v0, p1}, Lorg/apache/commons/collections/Transformer;->transform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0
.end method
