.class public final Lorg/apache/commons/collections/collection/UnmodifiableBoundedCollection;
.super Lorg/apache/commons/collections/collection/AbstractSerializableCollectionDecorator;
.source "UnmodifiableBoundedCollection.java"

# interfaces
.implements Lorg/apache/commons/collections/BoundedCollection;


# static fields
.field private static final serialVersionUID:J = -0x62b549d99a7f6feaL


# direct methods
.method private constructor <init>(Lorg/apache/commons/collections/BoundedCollection;)V
    .locals 0
    .parameter "coll"

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/collection/AbstractSerializableCollectionDecorator;-><init>(Ljava/util/Collection;)V

    .line 101
    return-void
.end method

.method public static decorate(Lorg/apache/commons/collections/BoundedCollection;)Lorg/apache/commons/collections/BoundedCollection;
    .locals 1
    .parameter "coll"

    .prologue
    .line 56
    new-instance v0, Lorg/apache/commons/collections/collection/UnmodifiableBoundedCollection;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/collection/UnmodifiableBoundedCollection;-><init>(Lorg/apache/commons/collections/BoundedCollection;)V

    return-object v0
.end method

.method public static decorateUsing(Ljava/util/Collection;)Lorg/apache/commons/collections/BoundedCollection;
    .locals 3
    .parameter "coll"

    .prologue
    .line 70
    if-nez p0, :cond_0

    .line 71
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The collection must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 75
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v1, 0x3e8

    if-lt v0, v1, :cond_2

    .line 87
    :cond_1
    instance-of v1, p0, Lorg/apache/commons/collections/BoundedCollection;

    if-nez v1, :cond_4

    .line 88
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The collection is not a bounded collection"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 76
    :cond_2
    instance-of v1, p0, Lorg/apache/commons/collections/BoundedCollection;

    if-nez v1, :cond_1

    .line 78
    instance-of v1, p0, Lorg/apache/commons/collections/collection/AbstractCollectionDecorator;

    if-eqz v1, :cond_3

    .line 79
    check-cast p0, Lorg/apache/commons/collections/collection/AbstractCollectionDecorator;

    .end local p0
    iget-object p0, p0, Lorg/apache/commons/collections/collection/AbstractCollectionDecorator;->collection:Ljava/util/Collection;

    .line 75
    .restart local p0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 80
    :cond_3
    instance-of v1, p0, Lorg/apache/commons/collections/collection/SynchronizedCollection;

    if-eqz v1, :cond_1

    .line 81
    check-cast p0, Lorg/apache/commons/collections/collection/SynchronizedCollection;

    .end local p0
    iget-object p0, p0, Lorg/apache/commons/collections/collection/SynchronizedCollection;->collection:Ljava/util/Collection;

    .restart local p0
    goto :goto_1

    .line 90
    :cond_4
    new-instance v1, Lorg/apache/commons/collections/collection/UnmodifiableBoundedCollection;

    check-cast p0, Lorg/apache/commons/collections/BoundedCollection;

    .end local p0
    invoke-direct {v1, p0}, Lorg/apache/commons/collections/collection/UnmodifiableBoundedCollection;-><init>(Lorg/apache/commons/collections/BoundedCollection;)V

    return-object v1
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 1
    .parameter "object"

    .prologue
    .line 109
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 1
    .parameter "coll"

    .prologue
    .line 113
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 117
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public isFull()Z
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lorg/apache/commons/collections/collection/AbstractCollectionDecorator;->collection:Ljava/util/Collection;

    check-cast v0, Lorg/apache/commons/collections/BoundedCollection;

    invoke-interface {v0}, Lorg/apache/commons/collections/BoundedCollection;->isFull()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 105
    invoke-virtual {p0}, Lorg/apache/commons/collections/collection/AbstractCollectionDecorator;->getCollection()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/collections/iterators/UnmodifiableIterator;->decorate(Ljava/util/Iterator;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public maxSize()I
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lorg/apache/commons/collections/collection/AbstractCollectionDecorator;->collection:Ljava/util/Collection;

    check-cast v0, Lorg/apache/commons/collections/BoundedCollection;

    invoke-interface {v0}, Lorg/apache/commons/collections/BoundedCollection;->maxSize()I

    move-result v0

    return v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .parameter "object"

    .prologue
    .line 121
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 1
    .parameter "coll"

    .prologue
    .line 125
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 1
    .parameter "coll"

    .prologue
    .line 129
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
