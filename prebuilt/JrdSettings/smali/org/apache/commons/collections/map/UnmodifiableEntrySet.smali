.class public final Lorg/apache/commons/collections/map/UnmodifiableEntrySet;
.super Lorg/apache/commons/collections/set/AbstractSetDecorator;
.source "UnmodifiableEntrySet.java"

# interfaces
.implements Lorg/apache/commons/collections/Unmodifiable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/collections/map/UnmodifiableEntrySet$UnmodifiableEntry;,
        Lorg/apache/commons/collections/map/UnmodifiableEntrySet$UnmodifiableEntrySetIterator;
    }
.end annotation


# direct methods
.method private constructor <init>(Ljava/util/Set;)V
    .locals 0
    .parameter "set"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/set/AbstractSetDecorator;-><init>(Ljava/util/Set;)V

    .line 62
    return-void
.end method

.method public static decorate(Ljava/util/Set;)Ljava/util/Set;
    .locals 1
    .parameter "set"

    .prologue
    .line 47
    instance-of v0, p0, Lorg/apache/commons/collections/Unmodifiable;

    if-eqz v0, :cond_0

    .line 50
    .end local p0
    :goto_0
    return-object p0

    .restart local p0
    :cond_0
    new-instance v0, Lorg/apache/commons/collections/map/UnmodifiableEntrySet;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/map/UnmodifiableEntrySet;-><init>(Ljava/util/Set;)V

    move-object p0, v0

    goto :goto_0
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 1
    .parameter "object"

    .prologue
    .line 66
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 1
    .parameter "coll"

    .prologue
    .line 70
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 74
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2

    .prologue
    .line 91
    new-instance v0, Lorg/apache/commons/collections/map/UnmodifiableEntrySet$UnmodifiableEntrySetIterator;

    iget-object v1, p0, Lorg/apache/commons/collections/collection/AbstractCollectionDecorator;->collection:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/collections/map/UnmodifiableEntrySet$UnmodifiableEntrySetIterator;-><init>(Ljava/util/Iterator;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .parameter "object"

    .prologue
    .line 78
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 1
    .parameter "coll"

    .prologue
    .line 82
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 1
    .parameter "coll"

    .prologue
    .line 86
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 4

    .prologue
    .line 95
    iget-object v2, p0, Lorg/apache/commons/collections/collection/AbstractCollectionDecorator;->collection:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 96
    .local v0, array:[Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, v0

    if-lt v1, v2, :cond_0

    .line 99
    return-object v0

    .line 97
    :cond_0
    new-instance v3, Lorg/apache/commons/collections/map/UnmodifiableEntrySet$UnmodifiableEntry;

    aget-object v2, v0, v1

    check-cast v2, Ljava/util/Map$Entry;

    invoke-direct {v3, v2}, Lorg/apache/commons/collections/map/UnmodifiableEntrySet$UnmodifiableEntry;-><init>(Ljava/util/Map$Entry;)V

    aput-object v3, v0, v1

    .line 96
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 5
    .parameter "array"

    .prologue
    const/4 v4, 0x0

    .line 103
    move-object v1, p1

    .line 104
    .local v1, result:[Ljava/lang/Object;
    array-length v2, p1

    if-lez v2, :cond_0

    .line 107
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #result:[Ljava/lang/Object;
    check-cast v1, [Ljava/lang/Object;

    .line 109
    .restart local v1       #result:[Ljava/lang/Object;
    :cond_0
    iget-object v2, p0, Lorg/apache/commons/collections/collection/AbstractCollectionDecorator;->collection:Ljava/util/Collection;

    invoke-interface {v2, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    .line 110
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, v1

    if-lt v0, v2, :cond_1

    .line 115
    array-length v2, v1

    array-length v3, p1

    if-le v2, v3, :cond_2

    .line 124
    .end local v1           #result:[Ljava/lang/Object;
    :goto_1
    return-object v1

    .line 111
    .restart local v1       #result:[Ljava/lang/Object;
    :cond_1
    new-instance v3, Lorg/apache/commons/collections/map/UnmodifiableEntrySet$UnmodifiableEntry;

    aget-object v2, v1, v0

    check-cast v2, Ljava/util/Map$Entry;

    invoke-direct {v3, v2}, Lorg/apache/commons/collections/map/UnmodifiableEntrySet$UnmodifiableEntry;-><init>(Ljava/util/Map$Entry;)V

    aput-object v3, v1, v0

    .line 110
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 120
    :cond_2
    array-length v2, v1

    invoke-static {v1, v4, p1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 121
    array-length v2, p1

    array-length v3, v1

    if-le v2, v3, :cond_3

    .line 122
    array-length v2, v1

    const/4 v3, 0x0

    aput-object v3, p1, v2

    :cond_3
    move-object v1, p1

    .line 124
    goto :goto_1
.end method
