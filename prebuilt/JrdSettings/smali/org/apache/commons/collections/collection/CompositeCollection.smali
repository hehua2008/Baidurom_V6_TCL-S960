.class public Lorg/apache/commons/collections/collection/CompositeCollection;
.super Ljava/lang/Object;
.source "CompositeCollection.java"

# interfaces
.implements Ljava/util/Collection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/collections/collection/CompositeCollection$CollectionMutator;
    }
.end annotation


# instance fields
.field protected all:[Ljava/util/Collection;

.field protected mutator:Lorg/apache/commons/collections/collection/CompositeCollection$CollectionMutator;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/util/Collection;

    iput-object v0, p0, Lorg/apache/commons/collections/collection/CompositeCollection;->all:[Ljava/util/Collection;

    .line 56
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 0
    .parameter "coll"

    .prologue
    .line 64
    invoke-direct {p0}, Lorg/apache/commons/collections/collection/CompositeCollection;-><init>()V

    .line 65
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/collection/CompositeCollection;->addComposited(Ljava/util/Collection;)V

    .line 66
    return-void
.end method

.method public constructor <init>([Ljava/util/Collection;)V
    .locals 0
    .parameter "colls"

    .prologue
    .line 75
    invoke-direct {p0}, Lorg/apache/commons/collections/collection/CompositeCollection;-><init>()V

    .line 76
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/collection/CompositeCollection;->addComposited([Ljava/util/Collection;)V

    .line 77
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 2
    .parameter "obj"

    .prologue
    .line 205
    iget-object v0, p0, Lorg/apache/commons/collections/collection/CompositeCollection;->mutator:Lorg/apache/commons/collections/collection/CompositeCollection$CollectionMutator;

    if-nez v0, :cond_0

    .line 206
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "add() is not supported on CompositeCollection without a CollectionMutator strategy"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 209
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/collection/CompositeCollection;->mutator:Lorg/apache/commons/collections/collection/CompositeCollection$CollectionMutator;

    iget-object v1, p0, Lorg/apache/commons/collections/collection/CompositeCollection;->all:[Ljava/util/Collection;

    invoke-interface {v0, p0, v1, p1}, Lorg/apache/commons/collections/collection/CompositeCollection$CollectionMutator;->add(Lorg/apache/commons/collections/collection/CompositeCollection;[Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 2
    .parameter "coll"

    .prologue
    .line 262
    iget-object v0, p0, Lorg/apache/commons/collections/collection/CompositeCollection;->mutator:Lorg/apache/commons/collections/collection/CompositeCollection$CollectionMutator;

    if-nez v0, :cond_0

    .line 263
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "addAll() is not supported on CompositeCollection without a CollectionMutator strategy"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 266
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/collection/CompositeCollection;->mutator:Lorg/apache/commons/collections/collection/CompositeCollection$CollectionMutator;

    iget-object v1, p0, Lorg/apache/commons/collections/collection/CompositeCollection;->all:[Ljava/util/Collection;

    invoke-interface {v0, p0, v1, p1}, Lorg/apache/commons/collections/collection/CompositeCollection$CollectionMutator;->addAll(Lorg/apache/commons/collections/collection/CompositeCollection;[Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public addComposited(Ljava/util/Collection;)V
    .locals 2
    .parameter "c"

    .prologue
    .line 347
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/util/Collection;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/collection/CompositeCollection;->addComposited([Ljava/util/Collection;)V

    .line 348
    return-void
.end method

.method public addComposited(Ljava/util/Collection;Ljava/util/Collection;)V
    .locals 2
    .parameter "c"
    .parameter "d"

    .prologue
    .line 357
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/util/Collection;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/collection/CompositeCollection;->addComposited([Ljava/util/Collection;)V

    .line 358
    return-void
.end method

.method public addComposited([Ljava/util/Collection;)V
    .locals 2
    .parameter "comps"

    .prologue
    .line 336
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/apache/commons/collections/collection/CompositeCollection;->all:[Ljava/util/Collection;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 337
    .local v0, list:Ljava/util/ArrayList;
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 338
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/util/Collection;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/util/Collection;

    iput-object v1, p0, Lorg/apache/commons/collections/collection/CompositeCollection;->all:[Ljava/util/Collection;

    .line 339
    return-void
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 315
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lorg/apache/commons/collections/collection/CompositeCollection;->all:[Ljava/util/Collection;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 318
    return-void

    .line 316
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/collections/collection/CompositeCollection;->all:[Ljava/util/Collection;

    aget-object v1, v1, v0

    invoke-interface {v1}, Ljava/util/Collection;->clear()V

    .line 315
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 2
    .parameter "obj"

    .prologue
    .line 120
    iget-object v1, p0, Lorg/apache/commons/collections/collection/CompositeCollection;->all:[Ljava/util/Collection;

    array-length v1, v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-gez v0, :cond_0

    .line 125
    const/4 v1, 0x0

    :goto_1
    return v1

    .line 121
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/collections/collection/CompositeCollection;->all:[Ljava/util/Collection;

    aget-object v1, v1, v0

    invoke-interface {v1, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 122
    const/4 v1, 0x1

    goto :goto_1

    .line 120
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 2
    .parameter "coll"

    .prologue
    .line 241
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, it:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 246
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 242
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/collections/collection/CompositeCollection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 243
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCollections()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 388
    iget-object v0, p0, Lorg/apache/commons/collections/collection/CompositeCollection;->all:[Ljava/util/Collection;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/collections/list/UnmodifiableList;->decorate(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .line 103
    iget-object v1, p0, Lorg/apache/commons/collections/collection/CompositeCollection;->all:[Ljava/util/Collection;

    array-length v1, v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-gez v0, :cond_0

    .line 108
    const/4 v1, 0x1

    :goto_1
    return v1

    .line 104
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/collections/collection/CompositeCollection;->all:[Ljava/util/Collection;

    aget-object v1, v1, v0

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 105
    const/4 v1, 0x0

    goto :goto_1

    .line 103
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 3

    .prologue
    .line 139
    iget-object v2, p0, Lorg/apache/commons/collections/collection/CompositeCollection;->all:[Ljava/util/Collection;

    array-length v2, v2

    if-nez v2, :cond_1

    .line 140
    sget-object v0, Lorg/apache/commons/collections/iterators/EmptyIterator;->INSTANCE:Ljava/util/Iterator;

    .line 146
    :cond_0
    return-object v0

    .line 142
    :cond_1
    new-instance v0, Lorg/apache/commons/collections/iterators/IteratorChain;

    invoke-direct {v0}, Lorg/apache/commons/collections/iterators/IteratorChain;-><init>()V

    .line 143
    .local v0, chain:Lorg/apache/commons/collections/iterators/IteratorChain;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lorg/apache/commons/collections/collection/CompositeCollection;->all:[Ljava/util/Collection;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 144
    iget-object v2, p0, Lorg/apache/commons/collections/collection/CompositeCollection;->all:[Ljava/util/Collection;

    aget-object v2, v2, v1

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/commons/collections/iterators/IteratorChain;->addIterator(Ljava/util/Iterator;)V

    .line 143
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2
    .parameter "obj"

    .prologue
    .line 224
    iget-object v0, p0, Lorg/apache/commons/collections/collection/CompositeCollection;->mutator:Lorg/apache/commons/collections/collection/CompositeCollection$CollectionMutator;

    if-nez v0, :cond_0

    .line 225
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "remove() is not supported on CompositeCollection without a CollectionMutator strategy"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 228
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/collection/CompositeCollection;->mutator:Lorg/apache/commons/collections/collection/CompositeCollection$CollectionMutator;

    iget-object v1, p0, Lorg/apache/commons/collections/collection/CompositeCollection;->all:[Ljava/util/Collection;

    invoke-interface {v0, p0, v1, p1}, Lorg/apache/commons/collections/collection/CompositeCollection$CollectionMutator;->remove(Lorg/apache/commons/collections/collection/CompositeCollection;[Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 4
    .parameter "coll"

    .prologue
    const/4 v2, 0x0

    .line 279
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v3

    if-nez v3, :cond_0

    .line 286
    :goto_0
    return v2

    .line 282
    :cond_0
    const/4 v0, 0x0

    .line 283
    .local v0, changed:Z
    iget-object v3, p0, Lorg/apache/commons/collections/collection/CompositeCollection;->all:[Ljava/util/Collection;

    array-length v3, v3

    add-int/lit8 v1, v3, -0x1

    .local v1, i:I
    :goto_1
    if-gez v1, :cond_1

    move v2, v0

    .line 286
    goto :goto_0

    .line 284
    :cond_1
    iget-object v3, p0, Lorg/apache/commons/collections/collection/CompositeCollection;->all:[Ljava/util/Collection;

    aget-object v3, v3, v1

    invoke-interface {v3, p1}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    move-result v3

    if-nez v3, :cond_2

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    .line 283
    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_3
    move v0, v2

    .line 284
    goto :goto_2
.end method

.method public removeComposited(Ljava/util/Collection;)V
    .locals 2
    .parameter "coll"

    .prologue
    .line 366
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/apache/commons/collections/collection/CompositeCollection;->all:[Ljava/util/Collection;

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 367
    .local v0, list:Ljava/util/ArrayList;
    iget-object v1, p0, Lorg/apache/commons/collections/collection/CompositeCollection;->all:[Ljava/util/Collection;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 368
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 369
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/util/Collection;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/util/Collection;

    iput-object v1, p0, Lorg/apache/commons/collections/collection/CompositeCollection;->all:[Ljava/util/Collection;

    .line 370
    return-void
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 3
    .parameter "coll"

    .prologue
    .line 300
    const/4 v0, 0x0

    .line 301
    .local v0, changed:Z
    iget-object v2, p0, Lorg/apache/commons/collections/collection/CompositeCollection;->all:[Ljava/util/Collection;

    array-length v2, v2

    add-int/lit8 v1, v2, -0x1

    .local v1, i:I
    :goto_0
    if-gez v1, :cond_0

    .line 304
    return v0

    .line 302
    :cond_0
    iget-object v2, p0, Lorg/apache/commons/collections/collection/CompositeCollection;->all:[Ljava/util/Collection;

    aget-object v2, v2, v1

    invoke-interface {v2, p1}, Ljava/util/Collection;->retainAll(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 301
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 302
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setMutator(Lorg/apache/commons/collections/collection/CompositeCollection$CollectionMutator;)V
    .locals 0
    .parameter "mutator"

    .prologue
    .line 327
    iput-object p1, p0, Lorg/apache/commons/collections/collection/CompositeCollection;->mutator:Lorg/apache/commons/collections/collection/CompositeCollection$CollectionMutator;

    .line 328
    return-void
.end method

.method public size()I
    .locals 3

    .prologue
    .line 88
    const/4 v1, 0x0

    .line 89
    .local v1, size:I
    iget-object v2, p0, Lorg/apache/commons/collections/collection/CompositeCollection;->all:[Ljava/util/Collection;

    array-length v2, v2

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_0
    if-gez v0, :cond_0

    .line 92
    return v1

    .line 90
    :cond_0
    iget-object v2, p0, Lorg/apache/commons/collections/collection/CompositeCollection;->all:[Ljava/util/Collection;

    aget-object v2, v2, v0

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    add-int/2addr v1, v2

    .line 89
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 4

    .prologue
    .line 155
    invoke-virtual {p0}, Lorg/apache/commons/collections/collection/CompositeCollection;->size()I

    move-result v3

    new-array v2, v3, [Ljava/lang/Object;

    .line 156
    .local v2, result:[Ljava/lang/Object;
    const/4 v0, 0x0

    .line 157
    .local v0, i:I
    invoke-virtual {p0}, Lorg/apache/commons/collections/collection/CompositeCollection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, it:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 160
    return-object v2

    .line 158
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v0

    .line 157
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 7
    .parameter "array"

    .prologue
    .line 171
    invoke-virtual {p0}, Lorg/apache/commons/collections/collection/CompositeCollection;->size()I

    move-result v5

    .line 172
    .local v5, size:I
    const/4 v4, 0x0

    .line 173
    .local v4, result:[Ljava/lang/Object;
    array-length v6, p1

    if-lt v6, v5, :cond_1

    .line 174
    move-object v4, p1

    .line 180
    :goto_0
    const/4 v2, 0x0

    .line 181
    .local v2, offset:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v6, p0, Lorg/apache/commons/collections/collection/CompositeCollection;->all:[Ljava/util/Collection;

    array-length v6, v6

    if-lt v0, v6, :cond_2

    .line 186
    array-length v6, v4

    if-le v6, v5, :cond_0

    .line 187
    const/4 v6, 0x0

    aput-object v6, v4, v5

    .line 189
    :cond_0
    return-object v4

    .line 177
    .end local v0           #i:I
    .end local v2           #offset:I
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v6

    invoke-static {v6, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #result:[Ljava/lang/Object;
    check-cast v4, [Ljava/lang/Object;

    .restart local v4       #result:[Ljava/lang/Object;
    goto :goto_0

    .line 182
    .restart local v0       #i:I
    .restart local v2       #offset:I
    :cond_2
    iget-object v6, p0, Lorg/apache/commons/collections/collection/CompositeCollection;->all:[Ljava/util/Collection;

    aget-object v6, v6, v0

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, it:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_3

    .line 181
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 183
    :cond_3
    add-int/lit8 v3, v2, 0x1

    .end local v2           #offset:I
    .local v3, offset:I
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v4, v2

    move v2, v3

    .end local v3           #offset:I
    .restart local v2       #offset:I
    goto :goto_2
.end method

.method public toCollection()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 379
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method
