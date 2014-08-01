.class public Lorg/apache/commons/collections/set/ListOrderedSet;
.super Lorg/apache/commons/collections/set/AbstractSerializableSetDecorator;
.source "ListOrderedSet.java"

# interfaces
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/collections/set/ListOrderedSet$1;,
        Lorg/apache/commons/collections/set/ListOrderedSet$OrderedSetIterator;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x32c610905e312adL


# instance fields
.field protected final setOrder:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 120
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-direct {p0, v0}, Lorg/apache/commons/collections/set/AbstractSerializableSetDecorator;-><init>(Ljava/util/Set;)V

    .line 121
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/collections/set/ListOrderedSet;->setOrder:Ljava/util/List;

    .line 122
    return-void
.end method

.method protected constructor <init>(Ljava/util/Set;)V
    .locals 1
    .parameter "set"

    .prologue
    .line 131
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/set/AbstractSerializableSetDecorator;-><init>(Ljava/util/Set;)V

    .line 132
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/apache/commons/collections/set/ListOrderedSet;->setOrder:Ljava/util/List;

    .line 133
    return-void
.end method

.method protected constructor <init>(Ljava/util/Set;Ljava/util/List;)V
    .locals 2
    .parameter "set"
    .parameter "list"

    .prologue
    .line 145
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/set/AbstractSerializableSetDecorator;-><init>(Ljava/util/Set;)V

    .line 146
    if-nez p2, :cond_0

    .line 147
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "List must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 149
    :cond_0
    iput-object p2, p0, Lorg/apache/commons/collections/set/ListOrderedSet;->setOrder:Ljava/util/List;

    .line 150
    return-void
.end method

.method public static decorate(Ljava/util/List;)Lorg/apache/commons/collections/set/ListOrderedSet;
    .locals 3
    .parameter "list"

    .prologue
    .line 103
    if-nez p0, :cond_0

    .line 104
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "List must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 106
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 107
    .local v0, set:Ljava/util/Set;
    invoke-interface {p0, v0}, Ljava/util/List;->retainAll(Ljava/util/Collection;)Z

    .line 109
    new-instance v1, Lorg/apache/commons/collections/set/ListOrderedSet;

    invoke-direct {v1, v0, p0}, Lorg/apache/commons/collections/set/ListOrderedSet;-><init>(Ljava/util/Set;Ljava/util/List;)V

    return-object v1
.end method

.method public static decorate(Ljava/util/Set;)Lorg/apache/commons/collections/set/ListOrderedSet;
    .locals 1
    .parameter "set"

    .prologue
    .line 91
    new-instance v0, Lorg/apache/commons/collections/set/ListOrderedSet;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/set/ListOrderedSet;-><init>(Ljava/util/Set;)V

    return-object v0
.end method

.method public static decorate(Ljava/util/Set;Ljava/util/List;)Lorg/apache/commons/collections/set/ListOrderedSet;
    .locals 2
    .parameter "set"
    .parameter "list"

    .prologue
    .line 70
    if-nez p0, :cond_0

    .line 71
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Set must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_0
    if-nez p1, :cond_1

    .line 74
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "List must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_1
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v0

    if-gtz v0, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 77
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Set and List must be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_3
    new-instance v0, Lorg/apache/commons/collections/set/ListOrderedSet;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections/set/ListOrderedSet;-><init>(Ljava/util/Set;Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 1
    .parameter "index"
    .parameter "object"

    .prologue
    .line 243
    invoke-virtual {p0, p2}, Lorg/apache/commons/collections/collection/AbstractCollectionDecorator;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 244
    iget-object v0, p0, Lorg/apache/commons/collections/collection/AbstractCollectionDecorator;->collection:Ljava/util/Collection;

    invoke-interface {v0, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 245
    iget-object v0, p0, Lorg/apache/commons/collections/set/ListOrderedSet;->setOrder:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 247
    :cond_0
    return-void
.end method

.method public add(Ljava/lang/Object;)Z
    .locals 2
    .parameter "object"

    .prologue
    .line 173
    iget-object v1, p0, Lorg/apache/commons/collections/collection/AbstractCollectionDecorator;->collection:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 175
    iget-object v1, p0, Lorg/apache/commons/collections/collection/AbstractCollectionDecorator;->collection:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 180
    :goto_0
    return v0

    .line 178
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/collections/collection/AbstractCollectionDecorator;->collection:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 179
    .local v0, result:Z
    iget-object v1, p0, Lorg/apache/commons/collections/set/ListOrderedSet;->setOrder:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 4
    .parameter "index"
    .parameter "coll"

    .prologue
    .line 250
    const/4 v0, 0x0

    .line 251
    .local v0, changed:Z
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, it:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 260
    return v0

    .line 252
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 253
    .local v2, object:Ljava/lang/Object;
    invoke-virtual {p0, v2}, Lorg/apache/commons/collections/collection/AbstractCollectionDecorator;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 254
    iget-object v3, p0, Lorg/apache/commons/collections/collection/AbstractCollectionDecorator;->collection:Ljava/util/Collection;

    invoke-interface {v3, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 255
    iget-object v3, p0, Lorg/apache/commons/collections/set/ListOrderedSet;->setOrder:Ljava/util/List;

    invoke-interface {v3, p1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 256
    add-int/lit8 p1, p1, 0x1

    .line 257
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 4
    .parameter "coll"

    .prologue
    .line 185
    const/4 v2, 0x0

    .line 186
    .local v2, result:Z
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, it:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 190
    return v2

    .line 187
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 188
    .local v1, object:Ljava/lang/Object;
    invoke-virtual {p0, v1}, Lorg/apache/commons/collections/set/ListOrderedSet;->add(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v2, v3

    goto :goto_0
.end method

.method public asList()Ljava/util/List;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lorg/apache/commons/collections/set/ListOrderedSet;->setOrder:Ljava/util/List;

    invoke-static {v0}, Lorg/apache/commons/collections/list/UnmodifiableList;->decorate(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lorg/apache/commons/collections/collection/AbstractCollectionDecorator;->collection:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 165
    iget-object v0, p0, Lorg/apache/commons/collections/set/ListOrderedSet;->setOrder:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 166
    return-void
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1
    .parameter "index"

    .prologue
    .line 235
    iget-object v0, p0, Lorg/apache/commons/collections/set/ListOrderedSet;->setOrder:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 1
    .parameter "object"

    .prologue
    .line 239
    iget-object v0, p0, Lorg/apache/commons/collections/set/ListOrderedSet;->setOrder:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 4

    .prologue
    .line 169
    new-instance v0, Lorg/apache/commons/collections/set/ListOrderedSet$OrderedSetIterator;

    iget-object v1, p0, Lorg/apache/commons/collections/set/ListOrderedSet;->setOrder:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/collections/collection/AbstractCollectionDecorator;->collection:Ljava/util/Collection;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/collections/set/ListOrderedSet$OrderedSetIterator;-><init>(Ljava/util/Iterator;Ljava/util/Collection;Lorg/apache/commons/collections/set/ListOrderedSet$1;)V

    return-object v0
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 2
    .parameter "index"

    .prologue
    .line 264
    iget-object v1, p0, Lorg/apache/commons/collections/set/ListOrderedSet;->setOrder:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    .line 265
    .local v0, obj:Ljava/lang/Object;
    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/set/ListOrderedSet;->remove(Ljava/lang/Object;)Z

    .line 266
    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2
    .parameter "object"

    .prologue
    .line 194
    iget-object v1, p0, Lorg/apache/commons/collections/collection/AbstractCollectionDecorator;->collection:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 195
    .local v0, result:Z
    iget-object v1, p0, Lorg/apache/commons/collections/set/ListOrderedSet;->setOrder:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 196
    return v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 4
    .parameter "coll"

    .prologue
    .line 200
    const/4 v2, 0x0

    .line 201
    .local v2, result:Z
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, it:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 205
    return v2

    .line 202
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 203
    .local v1, object:Ljava/lang/Object;
    invoke-virtual {p0, v1}, Lorg/apache/commons/collections/set/ListOrderedSet;->remove(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v2, v3

    goto :goto_0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 4
    .parameter "coll"

    .prologue
    .line 209
    iget-object v3, p0, Lorg/apache/commons/collections/collection/AbstractCollectionDecorator;->collection:Ljava/util/Collection;

    invoke-interface {v3, p1}, Ljava/util/Collection;->retainAll(Ljava/util/Collection;)Z

    move-result v2

    .line 210
    .local v2, result:Z
    if-nez v2, :cond_1

    .line 211
    const/4 v2, 0x0

    .line 222
    .end local v2           #result:Z
    :cond_0
    :goto_0
    return v2

    .line 212
    .restart local v2       #result:Z
    :cond_1
    iget-object v3, p0, Lorg/apache/commons/collections/collection/AbstractCollectionDecorator;->collection:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v3

    if-nez v3, :cond_2

    .line 213
    iget-object v3, p0, Lorg/apache/commons/collections/set/ListOrderedSet;->setOrder:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    goto :goto_0

    .line 215
    :cond_2
    iget-object v3, p0, Lorg/apache/commons/collections/set/ListOrderedSet;->setOrder:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, it:Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 216
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 217
    .local v1, object:Ljava/lang/Object;
    iget-object v3, p0, Lorg/apache/commons/collections/collection/AbstractCollectionDecorator;->collection:Ljava/util/Collection;

    invoke-interface {v3, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 218
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_1
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lorg/apache/commons/collections/set/ListOrderedSet;->setOrder:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .parameter "a"

    .prologue
    .line 230
    iget-object v0, p0, Lorg/apache/commons/collections/set/ListOrderedSet;->setOrder:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lorg/apache/commons/collections/set/ListOrderedSet;->setOrder:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
