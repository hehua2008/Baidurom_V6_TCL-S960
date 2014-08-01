.class public final Lorg/apache/commons/collections/map/UnmodifiableMap;
.super Lorg/apache/commons/collections/map/AbstractMapDecorator;
.source "UnmodifiableMap.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lorg/apache/commons/collections/IterableMap;
.implements Lorg/apache/commons/collections/Unmodifiable;


# static fields
.field private static final serialVersionUID:J = 0x25fbdc4e444af805L


# direct methods
.method private constructor <init>(Ljava/util/Map;)V
    .locals 0
    .parameter "map"

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/map/AbstractMapDecorator;-><init>(Ljava/util/Map;)V

    .line 73
    return-void
.end method

.method public static decorate(Ljava/util/Map;)Ljava/util/Map;
    .locals 1
    .parameter "map"

    .prologue
    .line 58
    instance-of v0, p0, Lorg/apache/commons/collections/Unmodifiable;

    if-eqz v0, :cond_0

    .line 61
    .end local p0
    :goto_0
    return-object p0

    .restart local p0
    :cond_0
    new-instance v0, Lorg/apache/commons/collections/map/UnmodifiableMap;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/map/UnmodifiableMap;-><init>(Ljava/util/Map;)V

    move-object p0, v0

    goto :goto_0
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
    .line 97
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 98
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lorg/apache/commons/collections/map/AbstractMapDecorator;->map:Ljava/util/Map;

    .line 99
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
    .line 84
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 85
    iget-object v0, p0, Lorg/apache/commons/collections/map/AbstractMapDecorator;->map:Ljava/util/Map;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 86
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 103
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 2

    .prologue
    .line 129
    invoke-super {p0}, Lorg/apache/commons/collections/map/AbstractMapDecorator;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 130
    .local v0, set:Ljava/util/Set;
    invoke-static {v0}, Lorg/apache/commons/collections/map/UnmodifiableEntrySet;->decorate(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    return-object v1
.end method

.method public keySet()Ljava/util/Set;
    .locals 2

    .prologue
    .line 134
    invoke-super {p0}, Lorg/apache/commons/collections/map/AbstractMapDecorator;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 135
    .local v0, set:Ljava/util/Set;
    invoke-static {v0}, Lorg/apache/commons/collections/set/UnmodifiableSet;->decorate(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    return-object v1
.end method

.method public mapIterator()Lorg/apache/commons/collections/MapIterator;
    .locals 2

    .prologue
    .line 119
    iget-object v1, p0, Lorg/apache/commons/collections/map/AbstractMapDecorator;->map:Ljava/util/Map;

    instance-of v1, v1, Lorg/apache/commons/collections/IterableMap;

    if-eqz v1, :cond_0

    .line 120
    iget-object v1, p0, Lorg/apache/commons/collections/map/AbstractMapDecorator;->map:Ljava/util/Map;

    check-cast v1, Lorg/apache/commons/collections/IterableMap;

    invoke-interface {v1}, Lorg/apache/commons/collections/IterableMap;->mapIterator()Lorg/apache/commons/collections/MapIterator;

    move-result-object v0

    .line 121
    .local v0, it:Lorg/apache/commons/collections/MapIterator;
    invoke-static {v0}, Lorg/apache/commons/collections/iterators/UnmodifiableMapIterator;->decorate(Lorg/apache/commons/collections/MapIterator;)Lorg/apache/commons/collections/MapIterator;

    move-result-object v1

    .line 124
    :goto_0
    return-object v1

    .line 123
    .end local v0           #it:Lorg/apache/commons/collections/MapIterator;
    :cond_0
    new-instance v0, Lorg/apache/commons/collections/iterators/EntrySetMapIterator;

    iget-object v1, p0, Lorg/apache/commons/collections/map/AbstractMapDecorator;->map:Ljava/util/Map;

    invoke-direct {v0, v1}, Lorg/apache/commons/collections/iterators/EntrySetMapIterator;-><init>(Ljava/util/Map;)V

    .line 124
    .restart local v0       #it:Lorg/apache/commons/collections/MapIterator;
    invoke-static {v0}, Lorg/apache/commons/collections/iterators/UnmodifiableMapIterator;->decorate(Lorg/apache/commons/collections/MapIterator;)Lorg/apache/commons/collections/MapIterator;

    move-result-object v1

    goto :goto_0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 107
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 1
    .parameter "mapToCopy"

    .prologue
    .line 111
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "key"

    .prologue
    .line 115
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public values()Ljava/util/Collection;
    .locals 2

    .prologue
    .line 139
    invoke-super {p0}, Lorg/apache/commons/collections/map/AbstractMapDecorator;->values()Ljava/util/Collection;

    move-result-object v0

    .line 140
    .local v0, coll:Ljava/util/Collection;
    invoke-static {v0}, Lorg/apache/commons/collections/collection/UnmodifiableCollection;->decorate(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v1

    return-object v1
.end method
