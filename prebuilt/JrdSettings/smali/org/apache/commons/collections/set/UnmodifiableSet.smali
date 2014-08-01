.class public final Lorg/apache/commons/collections/set/UnmodifiableSet;
.super Lorg/apache/commons/collections/set/AbstractSerializableSetDecorator;
.source "UnmodifiableSet.java"

# interfaces
.implements Lorg/apache/commons/collections/Unmodifiable;


# static fields
.field private static final serialVersionUID:J = 0x5a31831706488a61L


# direct methods
.method private constructor <init>(Ljava/util/Set;)V
    .locals 0
    .parameter "set"

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/set/AbstractSerializableSetDecorator;-><init>(Ljava/util/Set;)V

    .line 64
    return-void
.end method

.method public static decorate(Ljava/util/Set;)Ljava/util/Set;
    .locals 1
    .parameter "set"

    .prologue
    .line 49
    instance-of v0, p0, Lorg/apache/commons/collections/Unmodifiable;

    if-eqz v0, :cond_0

    .line 52
    .end local p0
    :goto_0
    return-object p0

    .restart local p0
    :cond_0
    new-instance v0, Lorg/apache/commons/collections/set/UnmodifiableSet;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/set/UnmodifiableSet;-><init>(Ljava/util/Set;)V

    move-object p0, v0

    goto :goto_0
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 1
    .parameter "object"

    .prologue
    .line 72
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 1
    .parameter "coll"

    .prologue
    .line 76
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 80
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 68
    invoke-virtual {p0}, Lorg/apache/commons/collections/collection/AbstractCollectionDecorator;->getCollection()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/collections/iterators/UnmodifiableIterator;->decorate(Ljava/util/Iterator;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .parameter "object"

    .prologue
    .line 84
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 1
    .parameter "coll"

    .prologue
    .line 88
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 1
    .parameter "coll"

    .prologue
    .line 92
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
