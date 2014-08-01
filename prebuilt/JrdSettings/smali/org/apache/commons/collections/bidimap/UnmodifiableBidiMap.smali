.class public final Lorg/apache/commons/collections/bidimap/UnmodifiableBidiMap;
.super Lorg/apache/commons/collections/bidimap/AbstractBidiMapDecorator;
.source "UnmodifiableBidiMap.java"

# interfaces
.implements Lorg/apache/commons/collections/Unmodifiable;


# instance fields
.field private inverse:Lorg/apache/commons/collections/bidimap/UnmodifiableBidiMap;


# direct methods
.method private constructor <init>(Lorg/apache/commons/collections/BidiMap;)V
    .locals 0
    .parameter "map"

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/bidimap/AbstractBidiMapDecorator;-><init>(Lorg/apache/commons/collections/BidiMap;)V

    .line 69
    return-void
.end method

.method public static decorate(Lorg/apache/commons/collections/BidiMap;)Lorg/apache/commons/collections/BidiMap;
    .locals 1
    .parameter "map"

    .prologue
    .line 54
    instance-of v0, p0, Lorg/apache/commons/collections/Unmodifiable;

    if-eqz v0, :cond_0

    .line 57
    .end local p0
    :goto_0
    return-object p0

    .restart local p0
    :cond_0
    new-instance v0, Lorg/apache/commons/collections/bidimap/UnmodifiableBidiMap;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/bidimap/UnmodifiableBidiMap;-><init>(Lorg/apache/commons/collections/BidiMap;)V

    move-object p0, v0

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 73
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 2

    .prologue
    .line 89
    invoke-super {p0}, Lorg/apache/commons/collections/map/AbstractMapDecorator;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 90
    .local v0, set:Ljava/util/Set;
    invoke-static {v0}, Lorg/apache/commons/collections/map/UnmodifiableEntrySet;->decorate(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    return-object v1
.end method

.method public inverseBidiMap()Lorg/apache/commons/collections/BidiMap;
    .locals 2

    .prologue
    .line 114
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/UnmodifiableBidiMap;->inverse:Lorg/apache/commons/collections/bidimap/UnmodifiableBidiMap;

    if-nez v0, :cond_0

    .line 115
    new-instance v0, Lorg/apache/commons/collections/bidimap/UnmodifiableBidiMap;

    invoke-virtual {p0}, Lorg/apache/commons/collections/bidimap/AbstractBidiMapDecorator;->getBidiMap()Lorg/apache/commons/collections/BidiMap;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/collections/BidiMap;->inverseBidiMap()Lorg/apache/commons/collections/BidiMap;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/collections/bidimap/UnmodifiableBidiMap;-><init>(Lorg/apache/commons/collections/BidiMap;)V

    iput-object v0, p0, Lorg/apache/commons/collections/bidimap/UnmodifiableBidiMap;->inverse:Lorg/apache/commons/collections/bidimap/UnmodifiableBidiMap;

    .line 116
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/UnmodifiableBidiMap;->inverse:Lorg/apache/commons/collections/bidimap/UnmodifiableBidiMap;

    iput-object p0, v0, Lorg/apache/commons/collections/bidimap/UnmodifiableBidiMap;->inverse:Lorg/apache/commons/collections/bidimap/UnmodifiableBidiMap;

    .line 118
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/UnmodifiableBidiMap;->inverse:Lorg/apache/commons/collections/bidimap/UnmodifiableBidiMap;

    return-object v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 2

    .prologue
    .line 94
    invoke-super {p0}, Lorg/apache/commons/collections/map/AbstractMapDecorator;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 95
    .local v0, set:Ljava/util/Set;
    invoke-static {v0}, Lorg/apache/commons/collections/set/UnmodifiableSet;->decorate(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    return-object v1
.end method

.method public mapIterator()Lorg/apache/commons/collections/MapIterator;
    .locals 2

    .prologue
    .line 109
    invoke-virtual {p0}, Lorg/apache/commons/collections/bidimap/AbstractBidiMapDecorator;->getBidiMap()Lorg/apache/commons/collections/BidiMap;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/collections/BidiMap;->mapIterator()Lorg/apache/commons/collections/MapIterator;

    move-result-object v0

    .line 110
    .local v0, it:Lorg/apache/commons/collections/MapIterator;
    invoke-static {v0}, Lorg/apache/commons/collections/iterators/UnmodifiableMapIterator;->decorate(Lorg/apache/commons/collections/MapIterator;)Lorg/apache/commons/collections/MapIterator;

    move-result-object v1

    return-object v1
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 77
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 1
    .parameter "mapToCopy"

    .prologue
    .line 81
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "key"

    .prologue
    .line 85
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public removeValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "value"

    .prologue
    .line 105
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public values()Ljava/util/Collection;
    .locals 2

    .prologue
    .line 99
    invoke-super {p0}, Lorg/apache/commons/collections/map/AbstractMapDecorator;->values()Ljava/util/Collection;

    move-result-object v0

    .line 100
    .local v0, coll:Ljava/util/Collection;
    invoke-static {v0}, Lorg/apache/commons/collections/collection/UnmodifiableCollection;->decorate(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v1

    return-object v1
.end method
