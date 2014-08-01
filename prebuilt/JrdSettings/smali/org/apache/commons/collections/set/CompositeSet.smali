.class public Lorg/apache/commons/collections/set/CompositeSet;
.super Lorg/apache/commons/collections/collection/CompositeCollection;
.source "CompositeSet.java"

# interfaces
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/collections/set/CompositeSet$SetMutator;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lorg/apache/commons/collections/collection/CompositeCollection;-><init>()V

    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/util/Set;)V
    .locals 0
    .parameter "set"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/collection/CompositeCollection;-><init>(Ljava/util/Collection;)V

    .line 51
    return-void
.end method

.method public constructor <init>([Ljava/util/Set;)V
    .locals 0
    .parameter "sets"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/collection/CompositeCollection;-><init>([Ljava/util/Collection;)V

    .line 58
    return-void
.end method


# virtual methods
.method public declared-synchronized addComposited(Ljava/util/Collection;)V
    .locals 6
    .parameter "c"

    .prologue
    .line 72
    monitor-enter p0

    :try_start_0
    instance-of v4, p1, Ljava/util/Set;

    if-nez v4, :cond_0

    .line 73
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Collections added must implement java.util.Set"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 76
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lorg/apache/commons/collections/collection/CompositeCollection;->getCollections()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2

    .line 95
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/util/Collection;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-super {p0, v4}, Lorg/apache/commons/collections/collection/CompositeCollection;->addComposited([Ljava/util/Collection;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 96
    monitor-exit p0

    return-void

    .line 77
    :cond_2
    :try_start_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    .line 78
    .local v3, set:Ljava/util/Set;
    invoke-static {v3, p1}, Lorg/apache/commons/collections/CollectionUtils;->intersection(Ljava/util/Collection;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v2

    .line 79
    .local v2, intersects:Ljava/util/Collection;
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 80
    iget-object v4, p0, Lorg/apache/commons/collections/collection/CompositeCollection;->mutator:Lorg/apache/commons/collections/collection/CompositeCollection$CollectionMutator;

    if-nez v4, :cond_3

    .line 81
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    const-string v5, "Collision adding composited collection with no SetMutator set"

    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 84
    :cond_3
    iget-object v4, p0, Lorg/apache/commons/collections/collection/CompositeCollection;->mutator:Lorg/apache/commons/collections/collection/CompositeCollection$CollectionMutator;

    instance-of v4, v4, Lorg/apache/commons/collections/set/CompositeSet$SetMutator;

    if-nez v4, :cond_4

    .line 85
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    const-string v5, "Collision adding composited collection to a CompositeSet with a CollectionMutator instead of a SetMutator"

    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 88
    :cond_4
    iget-object v4, p0, Lorg/apache/commons/collections/collection/CompositeCollection;->mutator:Lorg/apache/commons/collections/collection/CompositeCollection$CollectionMutator;

    check-cast v4, Lorg/apache/commons/collections/set/CompositeSet$SetMutator;

    move-object v0, p1

    check-cast v0, Ljava/util/Set;

    move-object v5, v0

    invoke-interface {v4, p0, v3, v5, v2}, Lorg/apache/commons/collections/set/CompositeSet$SetMutator;->resolveCollision(Lorg/apache/commons/collections/set/CompositeSet;Ljava/util/Set;Ljava/util/Set;Ljava/util/Collection;)V

    .line 89
    invoke-static {v3, p1}, Lorg/apache/commons/collections/CollectionUtils;->intersection(Ljava/util/Collection;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 90
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Attempt to add illegal entry unresolved by SetMutator.resolveCollision()"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public declared-synchronized addComposited(Ljava/util/Collection;Ljava/util/Collection;)V
    .locals 2
    .parameter "c"
    .parameter "d"

    .prologue
    .line 104
    monitor-enter p0

    :try_start_0
    instance-of v0, p1, Ljava/util/Set;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Argument must implement java.util.Set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local p1
    .end local p2
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 105
    .restart local p1
    .restart local p2
    :cond_0
    :try_start_1
    instance-of v0, p2, Ljava/util/Set;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Argument must implement java.util.Set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 106
    :cond_1
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/util/Set;

    const/4 v1, 0x0

    check-cast p1, Ljava/util/Set;

    .end local p1
    aput-object p1, v0, v1

    const/4 v1, 0x1

    check-cast p2, Ljava/util/Set;

    .end local p2
    aput-object p2, v0, v1

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/set/CompositeSet;->addComposited([Ljava/util/Collection;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 107
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized addComposited([Ljava/util/Collection;)V
    .locals 2
    .parameter "comps"

    .prologue
    .line 115
    monitor-enter p0

    :try_start_0
    array-length v1, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-gez v0, :cond_0

    .line 118
    monitor-exit p0

    return-void

    .line 116
    :cond_0
    :try_start_1
    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Lorg/apache/commons/collections/set/CompositeSet;->addComposited(Ljava/util/Collection;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 115
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .end local v0           #i:I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter "obj"

    .prologue
    .line 153
    instance-of v1, p1, Ljava/util/Set;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 154
    check-cast v0, Ljava/util/Set;

    .line 155
    .local v0, set:Ljava/util/Set;
    invoke-interface {v0, p0}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    invoke-virtual {p0}, Lorg/apache/commons/collections/collection/CompositeCollection;->size()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 156
    const/4 v1, 0x1

    .line 159
    .end local v0           #set:Ljava/util/Set;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 166
    const/4 v0, 0x0

    .line 167
    .local v0, code:I
    invoke-virtual {p0}, Lorg/apache/commons/collections/collection/CompositeCollection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 171
    return v0

    .line 168
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 169
    .local v2, next:Ljava/lang/Object;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 3
    .parameter "obj"

    .prologue
    .line 141
    invoke-virtual {p0}, Lorg/apache/commons/collections/collection/CompositeCollection;->getCollections()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 145
    const/4 v2, 0x0

    :goto_0
    return v2

    .line 142
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 143
    .local v1, set:Ljava/util/Set;
    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0
.end method

.method public setMutator(Lorg/apache/commons/collections/collection/CompositeCollection$CollectionMutator;)V
    .locals 0
    .parameter "mutator"

    .prologue
    .line 128
    invoke-super {p0, p1}, Lorg/apache/commons/collections/collection/CompositeCollection;->setMutator(Lorg/apache/commons/collections/collection/CompositeCollection$CollectionMutator;)V

    .line 129
    return-void
.end method
