.class public final Lorg/apache/commons/collections/set/MapBackedSet;
.super Ljava/lang/Object;
.source "MapBackedSet.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/util/Set;


# static fields
.field private static final serialVersionUID:J = 0x5d5022889a6faa8bL


# instance fields
.field protected final dummyValue:Ljava/lang/Object;

.field protected final map:Ljava/util/Map;


# direct methods
.method private constructor <init>(Ljava/util/Map;Ljava/lang/Object;)V
    .locals 0
    .parameter "map"
    .parameter "dummyValue"

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p1, p0, Lorg/apache/commons/collections/set/MapBackedSet;->map:Ljava/util/Map;

    .line 84
    iput-object p2, p0, Lorg/apache/commons/collections/set/MapBackedSet;->dummyValue:Ljava/lang/Object;

    .line 85
    return-void
.end method

.method public static decorate(Ljava/util/Map;)Ljava/util/Set;
    .locals 1
    .parameter "map"

    .prologue
    .line 56
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/collections/set/MapBackedSet;->decorate(Ljava/util/Map;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static decorate(Ljava/util/Map;Ljava/lang/Object;)Ljava/util/Set;
    .locals 2
    .parameter "map"
    .parameter "dummyValue"

    .prologue
    .line 67
    if-nez p0, :cond_0

    .line 68
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The map must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_0
    new-instance v0, Lorg/apache/commons/collections/set/MapBackedSet;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections/set/MapBackedSet;-><init>(Ljava/util/Map;Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 3
    .parameter "obj"

    .prologue
    .line 109
    iget-object v1, p0, Lorg/apache/commons/collections/set/MapBackedSet;->map:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v0

    .line 110
    .local v0, size:I
    iget-object v1, p0, Lorg/apache/commons/collections/set/MapBackedSet;->map:Ljava/util/Map;

    iget-object v2, p0, Lorg/apache/commons/collections/set/MapBackedSet;->dummyValue:Ljava/lang/Object;

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    iget-object v1, p0, Lorg/apache/commons/collections/set/MapBackedSet;->map:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-eq v1, v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 5
    .parameter "coll"

    .prologue
    .line 115
    iget-object v3, p0, Lorg/apache/commons/collections/set/MapBackedSet;->map:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v2

    .line 116
    .local v2, size:I
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, it:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 120
    iget-object v3, p0, Lorg/apache/commons/collections/set/MapBackedSet;->map:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    if-eq v3, v2, :cond_1

    const/4 v3, 0x1

    :goto_1
    return v3

    .line 117
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 118
    .local v1, obj:Ljava/lang/Object;
    iget-object v3, p0, Lorg/apache/commons/collections/set/MapBackedSet;->map:Ljava/util/Map;

    iget-object v4, p0, Lorg/apache/commons/collections/set/MapBackedSet;->dummyValue:Ljava/lang/Object;

    invoke-interface {v3, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 120
    .end local v1           #obj:Ljava/lang/Object;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lorg/apache/commons/collections/set/MapBackedSet;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 139
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .parameter "obj"

    .prologue
    .line 101
    iget-object v0, p0, Lorg/apache/commons/collections/set/MapBackedSet;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1
    .parameter "coll"

    .prologue
    .line 105
    iget-object v0, p0, Lorg/apache/commons/collections/set/MapBackedSet;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .parameter "obj"

    .prologue
    .line 150
    iget-object v0, p0, Lorg/apache/commons/collections/set/MapBackedSet;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lorg/apache/commons/collections/set/MapBackedSet;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lorg/apache/commons/collections/set/MapBackedSet;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lorg/apache/commons/collections/set/MapBackedSet;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2
    .parameter "obj"

    .prologue
    .line 124
    iget-object v1, p0, Lorg/apache/commons/collections/set/MapBackedSet;->map:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v0

    .line 125
    .local v0, size:I
    iget-object v1, p0, Lorg/apache/commons/collections/set/MapBackedSet;->map:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    iget-object v1, p0, Lorg/apache/commons/collections/set/MapBackedSet;->map:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-eq v1, v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 1
    .parameter "coll"

    .prologue
    .line 130
    iget-object v0, p0, Lorg/apache/commons/collections/set/MapBackedSet;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 1
    .parameter "coll"

    .prologue
    .line 134
    iget-object v0, p0, Lorg/apache/commons/collections/set/MapBackedSet;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lorg/apache/commons/collections/set/MapBackedSet;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lorg/apache/commons/collections/set/MapBackedSet;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .parameter "array"

    .prologue
    .line 146
    iget-object v0, p0, Lorg/apache/commons/collections/set/MapBackedSet;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
