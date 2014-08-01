.class public Lorg/apache/commons/collections/map/LazyMap;
.super Lorg/apache/commons/collections/map/AbstractMapDecorator;
.source "LazyMap.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/util/Map;


# static fields
.field private static final serialVersionUID:J = 0x6ee594829e791094L


# instance fields
.field protected final factory:Lorg/apache/commons/collections/Transformer;


# direct methods
.method protected constructor <init>(Ljava/util/Map;Lorg/apache/commons/collections/Factory;)V
    .locals 2
    .parameter "map"
    .parameter "factory"

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/map/AbstractMapDecorator;-><init>(Ljava/util/Map;)V

    .line 100
    if-nez p2, :cond_0

    .line 101
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Factory must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 103
    :cond_0
    invoke-static {p2}, Lorg/apache/commons/collections/functors/FactoryTransformer;->getInstance(Lorg/apache/commons/collections/Factory;)Lorg/apache/commons/collections/Transformer;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections/map/LazyMap;->factory:Lorg/apache/commons/collections/Transformer;

    .line 104
    return-void
.end method

.method protected constructor <init>(Ljava/util/Map;Lorg/apache/commons/collections/Transformer;)V
    .locals 2
    .parameter "map"
    .parameter "factory"

    .prologue
    .line 114
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/map/AbstractMapDecorator;-><init>(Ljava/util/Map;)V

    .line 115
    if-nez p2, :cond_0

    .line 116
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Factory must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 118
    :cond_0
    iput-object p2, p0, Lorg/apache/commons/collections/map/LazyMap;->factory:Lorg/apache/commons/collections/Transformer;

    .line 119
    return-void
.end method

.method public static decorate(Ljava/util/Map;Lorg/apache/commons/collections/Factory;)Ljava/util/Map;
    .locals 1
    .parameter "map"
    .parameter "factory"

    .prologue
    .line 76
    new-instance v0, Lorg/apache/commons/collections/map/LazyMap;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections/map/LazyMap;-><init>(Ljava/util/Map;Lorg/apache/commons/collections/Factory;)V

    return-object v0
.end method

.method public static decorate(Ljava/util/Map;Lorg/apache/commons/collections/Transformer;)Ljava/util/Map;
    .locals 1
    .parameter "map"
    .parameter "factory"

    .prologue
    .line 87
    new-instance v0, Lorg/apache/commons/collections/map/LazyMap;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections/map/LazyMap;-><init>(Ljava/util/Map;Lorg/apache/commons/collections/Transformer;)V

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
    .line 143
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 144
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lorg/apache/commons/collections/map/AbstractMapDecorator;->map:Ljava/util/Map;

    .line 145
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
    .line 130
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 131
    iget-object v0, p0, Lorg/apache/commons/collections/map/AbstractMapDecorator;->map:Ljava/util/Map;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 132
    return-void
.end method


# virtual methods
.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "key"

    .prologue
    .line 150
    iget-object v1, p0, Lorg/apache/commons/collections/map/AbstractMapDecorator;->map:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 151
    iget-object v1, p0, Lorg/apache/commons/collections/map/LazyMap;->factory:Lorg/apache/commons/collections/Transformer;

    invoke-interface {v1, p1}, Lorg/apache/commons/collections/Transformer;->transform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 152
    .local v0, value:Ljava/lang/Object;
    iget-object v1, p0, Lorg/apache/commons/collections/map/AbstractMapDecorator;->map:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    .end local v0           #value:Ljava/lang/Object;
    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lorg/apache/commons/collections/map/AbstractMapDecorator;->map:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method
