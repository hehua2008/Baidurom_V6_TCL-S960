.class public Lorg/apache/commons/collections/list/SetUniqueList;
.super Lorg/apache/commons/collections/list/AbstractSerializableListDecorator;
.source "SetUniqueList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/collections/list/SetUniqueList$SetListListIterator;,
        Lorg/apache/commons/collections/list/SetUniqueList$SetListIterator;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x63e0d12ac47e0a26L


# instance fields
.field protected final set:Ljava/util/Set;


# direct methods
.method protected constructor <init>(Ljava/util/List;Ljava/util/Set;)V
    .locals 2
    .parameter "list"
    .parameter "set"

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/list/AbstractSerializableListDecorator;-><init>(Ljava/util/List;)V

    .line 97
    if-nez p2, :cond_0

    .line 98
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Set must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 100
    :cond_0
    iput-object p2, p0, Lorg/apache/commons/collections/list/SetUniqueList;->set:Ljava/util/Set;

    .line 101
    return-void
.end method

.method public static decorate(Ljava/util/List;)Lorg/apache/commons/collections/list/SetUniqueList;
    .locals 4
    .parameter "list"

    .prologue
    .line 71
    if-nez p0, :cond_0

    .line 72
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "List must not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 74
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 75
    new-instance v0, Lorg/apache/commons/collections/list/SetUniqueList;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-direct {v0, p0, v2}, Lorg/apache/commons/collections/list/SetUniqueList;-><init>(Ljava/util/List;Ljava/util/Set;)V

    .line 81
    :goto_0
    return-object v0

    .line 77
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 78
    .local v1, temp:Ljava/util/List;
    invoke-interface {p0}, Ljava/util/List;->clear()V

    .line 79
    new-instance v0, Lorg/apache/commons/collections/list/SetUniqueList;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-direct {v0, p0, v2}, Lorg/apache/commons/collections/list/SetUniqueList;-><init>(Ljava/util/List;Ljava/util/Set;)V

    .line 80
    .local v0, sl:Lorg/apache/commons/collections/list/SetUniqueList;
    invoke-virtual {v0, v1}, Lorg/apache/commons/collections/list/SetUniqueList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 1
    .parameter "index"
    .parameter "object"

    .prologue
    .line 148
    iget-object v0, p0, Lorg/apache/commons/collections/list/SetUniqueList;->set:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 149
    invoke-super {p0, p1, p2}, Lorg/apache/commons/collections/list/AbstractListDecorator;->add(ILjava/lang/Object;)V

    .line 150
    iget-object v0, p0, Lorg/apache/commons/collections/list/SetUniqueList;->set:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 152
    :cond_0
    return-void
.end method

.method public add(Ljava/lang/Object;)Z
    .locals 2
    .parameter "object"

    .prologue
    .line 127
    invoke-virtual {p0}, Lorg/apache/commons/collections/collection/AbstractCollectionDecorator;->size()I

    move-result v0

    .line 130
    .local v0, sizeBefore:I
    invoke-virtual {p0}, Lorg/apache/commons/collections/collection/AbstractCollectionDecorator;->size()I

    move-result v1

    invoke-virtual {p0, v1, p1}, Lorg/apache/commons/collections/list/SetUniqueList;->add(ILjava/lang/Object;)V

    .line 133
    invoke-virtual {p0}, Lorg/apache/commons/collections/collection/AbstractCollectionDecorator;->size()I

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 3
    .parameter "index"
    .parameter "coll"

    .prologue
    .line 183
    invoke-virtual {p0}, Lorg/apache/commons/collections/collection/AbstractCollectionDecorator;->size()I

    move-result v1

    .line 186
    .local v1, sizeBefore:I
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, it:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 191
    invoke-virtual {p0}, Lorg/apache/commons/collections/collection/AbstractCollectionDecorator;->size()I

    move-result v2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x1

    :goto_1
    return v2

    .line 187
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/commons/collections/list/SetUniqueList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 191
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 1
    .parameter "coll"

    .prologue
    .line 164
    invoke-virtual {p0}, Lorg/apache/commons/collections/collection/AbstractCollectionDecorator;->size()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/collections/list/SetUniqueList;->addAll(ILjava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public asSet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lorg/apache/commons/collections/list/SetUniqueList;->set:Ljava/util/Set;

    invoke-static {v0}, Lorg/apache/commons/collections/set/UnmodifiableSet;->decorate(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 241
    invoke-super {p0}, Lorg/apache/commons/collections/collection/AbstractCollectionDecorator;->clear()V

    .line 242
    iget-object v0, p0, Lorg/apache/commons/collections/list/SetUniqueList;->set:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 243
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .parameter "object"

    .prologue
    .line 246
    iget-object v0, p0, Lorg/apache/commons/collections/list/SetUniqueList;->set:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1
    .parameter "coll"

    .prologue
    .line 250
    iget-object v0, p0, Lorg/apache/commons/collections/list/SetUniqueList;->set:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 3

    .prologue
    .line 254
    new-instance v0, Lorg/apache/commons/collections/list/SetUniqueList$SetListIterator;

    invoke-super {p0}, Lorg/apache/commons/collections/collection/AbstractCollectionDecorator;->iterator()Ljava/util/Iterator;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/collections/list/SetUniqueList;->set:Ljava/util/Set;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/collections/list/SetUniqueList$SetListIterator;-><init>(Ljava/util/Iterator;Ljava/util/Set;)V

    return-object v0
.end method

.method public listIterator()Ljava/util/ListIterator;
    .locals 3

    .prologue
    .line 258
    new-instance v0, Lorg/apache/commons/collections/list/SetUniqueList$SetListListIterator;

    invoke-super {p0}, Lorg/apache/commons/collections/list/AbstractListDecorator;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/collections/list/SetUniqueList;->set:Ljava/util/Set;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/collections/list/SetUniqueList$SetListListIterator;-><init>(Ljava/util/ListIterator;Ljava/util/Set;)V

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 3
    .parameter "index"

    .prologue
    .line 262
    new-instance v0, Lorg/apache/commons/collections/list/SetUniqueList$SetListListIterator;

    invoke-super {p0, p1}, Lorg/apache/commons/collections/list/AbstractListDecorator;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/collections/list/SetUniqueList;->set:Ljava/util/Set;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/collections/list/SetUniqueList$SetListListIterator;-><init>(Ljava/util/ListIterator;Ljava/util/Set;)V

    return-object v0
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 2
    .parameter "index"

    .prologue
    .line 223
    invoke-super {p0, p1}, Lorg/apache/commons/collections/list/AbstractListDecorator;->remove(I)Ljava/lang/Object;

    move-result-object v0

    .line 224
    .local v0, result:Ljava/lang/Object;
    iget-object v1, p0, Lorg/apache/commons/collections/list/SetUniqueList;->set:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 225
    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2
    .parameter "object"

    .prologue
    .line 217
    invoke-super {p0, p1}, Lorg/apache/commons/collections/collection/AbstractCollectionDecorator;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 218
    .local v0, result:Z
    iget-object v1, p0, Lorg/apache/commons/collections/list/SetUniqueList;->set:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 219
    return v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 2
    .parameter "coll"

    .prologue
    .line 229
    invoke-super {p0, p1}, Lorg/apache/commons/collections/collection/AbstractCollectionDecorator;->removeAll(Ljava/util/Collection;)Z

    move-result v0

    .line 230
    .local v0, result:Z
    iget-object v1, p0, Lorg/apache/commons/collections/list/SetUniqueList;->set:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 231
    return v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 2
    .parameter "coll"

    .prologue
    .line 235
    invoke-super {p0, p1}, Lorg/apache/commons/collections/collection/AbstractCollectionDecorator;->retainAll(Ljava/util/Collection;)Z

    move-result v0

    .line 236
    .local v0, result:Z
    iget-object v1, p0, Lorg/apache/commons/collections/list/SetUniqueList;->set:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 237
    return v0
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter "index"
    .parameter "object"

    .prologue
    .line 208
    invoke-virtual {p0, p2}, Lorg/apache/commons/collections/list/AbstractListDecorator;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 209
    .local v0, pos:I
    invoke-super {p0, p1, p2}, Lorg/apache/commons/collections/list/AbstractListDecorator;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 210
    .local v1, result:Ljava/lang/Object;
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    if-ne v0, p1, :cond_1

    .line 213
    .end local v1           #result:Ljava/lang/Object;
    :cond_0
    :goto_0
    return-object v1

    .restart local v1       #result:Ljava/lang/Object;
    :cond_1
    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/list/SetUniqueList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public subList(II)Ljava/util/List;
    .locals 3
    .parameter "fromIndex"
    .parameter "toIndex"

    .prologue
    .line 266
    new-instance v0, Lorg/apache/commons/collections/list/SetUniqueList;

    invoke-super {p0, p1, p2}, Lorg/apache/commons/collections/list/AbstractListDecorator;->subList(II)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/collections/list/SetUniqueList;->set:Ljava/util/Set;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/collections/list/SetUniqueList;-><init>(Ljava/util/List;Ljava/util/Set;)V

    return-object v0
.end method
