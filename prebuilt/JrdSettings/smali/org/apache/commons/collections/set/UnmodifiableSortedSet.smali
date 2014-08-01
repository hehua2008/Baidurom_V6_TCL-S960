.class public final Lorg/apache/commons/collections/set/UnmodifiableSortedSet;
.super Lorg/apache/commons/collections/set/AbstractSortedSetDecorator;
.source "UnmodifiableSortedSet.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lorg/apache/commons/collections/Unmodifiable;


# static fields
.field private static final serialVersionUID:J = -0xa10fc3e85b39c38L


# direct methods
.method private constructor <init>(Ljava/util/SortedSet;)V
    .locals 0
    .parameter "set"

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/set/AbstractSortedSetDecorator;-><init>(Ljava/util/Set;)V

    .line 92
    return-void
.end method

.method public static decorate(Ljava/util/SortedSet;)Ljava/util/SortedSet;
    .locals 1
    .parameter "set"

    .prologue
    .line 53
    instance-of v0, p0, Lorg/apache/commons/collections/Unmodifiable;

    if-eqz v0, :cond_0

    .line 56
    .end local p0
    :goto_0
    return-object p0

    .restart local p0
    :cond_0
    new-instance v0, Lorg/apache/commons/collections/set/UnmodifiableSortedSet;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/set/UnmodifiableSortedSet;-><init>(Ljava/util/SortedSet;)V

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
    .line 79
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 80
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    iput-object v0, p0, Lorg/apache/commons/collections/collection/AbstractCollectionDecorator;->collection:Ljava/util/Collection;

    .line 81
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
    .line 67
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 68
    iget-object v0, p0, Lorg/apache/commons/collections/collection/AbstractCollectionDecorator;->collection:Ljava/util/Collection;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 69
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 1
    .parameter "object"

    .prologue
    .line 100
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 1
    .parameter "coll"

    .prologue
    .line 104
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 108
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public headSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 2
    .parameter "toElement"

    .prologue
    .line 130
    invoke-virtual {p0}, Lorg/apache/commons/collections/set/AbstractSortedSetDecorator;->getSortedSet()Ljava/util/SortedSet;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/SortedSet;->headSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    .line 131
    .local v0, sub:Ljava/util/SortedSet;
    new-instance v1, Lorg/apache/commons/collections/set/UnmodifiableSortedSet;

    invoke-direct {v1, v0}, Lorg/apache/commons/collections/set/UnmodifiableSortedSet;-><init>(Ljava/util/SortedSet;)V

    return-object v1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 96
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
    .line 112
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 1
    .parameter "coll"

    .prologue
    .line 116
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 1
    .parameter "coll"

    .prologue
    .line 120
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 2
    .parameter "fromElement"
    .parameter "toElement"

    .prologue
    .line 125
    invoke-virtual {p0}, Lorg/apache/commons/collections/set/AbstractSortedSetDecorator;->getSortedSet()Ljava/util/SortedSet;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Ljava/util/SortedSet;->subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    .line 126
    .local v0, sub:Ljava/util/SortedSet;
    new-instance v1, Lorg/apache/commons/collections/set/UnmodifiableSortedSet;

    invoke-direct {v1, v0}, Lorg/apache/commons/collections/set/UnmodifiableSortedSet;-><init>(Ljava/util/SortedSet;)V

    return-object v1
.end method

.method public tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 2
    .parameter "fromElement"

    .prologue
    .line 135
    invoke-virtual {p0}, Lorg/apache/commons/collections/set/AbstractSortedSetDecorator;->getSortedSet()Ljava/util/SortedSet;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/SortedSet;->tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    .line 136
    .local v0, sub:Ljava/util/SortedSet;
    new-instance v1, Lorg/apache/commons/collections/set/UnmodifiableSortedSet;

    invoke-direct {v1, v0}, Lorg/apache/commons/collections/set/UnmodifiableSortedSet;-><init>(Ljava/util/SortedSet;)V

    return-object v1
.end method
