.class public Lorg/apache/commons/collections/list/PredicatedList;
.super Lorg/apache/commons/collections/collection/PredicatedCollection;
.source "PredicatedList.java"

# interfaces
.implements Ljava/util/List;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/collections/list/PredicatedList$PredicatedListIterator;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x4f68c45b8354d91eL


# direct methods
.method protected constructor <init>(Ljava/util/List;Lorg/apache/commons/collections/Predicate;)V
    .locals 0
    .parameter "list"
    .parameter "predicate"

    .prologue
    .line 79
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections/collection/PredicatedCollection;-><init>(Ljava/util/Collection;Lorg/apache/commons/collections/Predicate;)V

    .line 80
    return-void
.end method

.method static access$001(Lorg/apache/commons/collections/list/PredicatedList;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    invoke-super {p0, p1}, Lorg/apache/commons/collections/collection/PredicatedCollection;->validate(Ljava/lang/Object;)V

    return-void
.end method

.method static access$101(Lorg/apache/commons/collections/list/PredicatedList;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    invoke-super {p0, p1}, Lorg/apache/commons/collections/collection/PredicatedCollection;->validate(Ljava/lang/Object;)V

    return-void
.end method

.method public static decorate(Ljava/util/List;Lorg/apache/commons/collections/Predicate;)Ljava/util/List;
    .locals 1
    .parameter "list"
    .parameter "predicate"

    .prologue
    .line 63
    new-instance v0, Lorg/apache/commons/collections/list/PredicatedList;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections/list/PredicatedList;-><init>(Ljava/util/List;Lorg/apache/commons/collections/Predicate;)V

    return-object v0
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 1
    .parameter "index"
    .parameter "object"

    .prologue
    .line 110
    invoke-virtual {p0, p2}, Lorg/apache/commons/collections/collection/PredicatedCollection;->validate(Ljava/lang/Object;)V

    .line 111
    invoke-virtual {p0}, Lorg/apache/commons/collections/list/PredicatedList;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 112
    return-void
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 2
    .parameter "index"
    .parameter "coll"

    .prologue
    .line 115
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, it:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 118
    invoke-virtual {p0}, Lorg/apache/commons/collections/list/PredicatedList;->getList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    move-result v1

    return v1

    .line 116
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/collections/collection/PredicatedCollection;->validate(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1
    .parameter "index"

    .prologue
    .line 93
    invoke-virtual {p0}, Lorg/apache/commons/collections/list/PredicatedList;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected getList()Ljava/util/List;
    .locals 1

    .prologue
    .line 88
    invoke-virtual {p0}, Lorg/apache/commons/collections/collection/AbstractCollectionDecorator;->getCollection()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 1
    .parameter "object"

    .prologue
    .line 97
    invoke-virtual {p0}, Lorg/apache/commons/collections/list/PredicatedList;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 1
    .parameter "object"

    .prologue
    .line 101
    invoke-virtual {p0}, Lorg/apache/commons/collections/list/PredicatedList;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public listIterator()Ljava/util/ListIterator;
    .locals 1

    .prologue
    .line 122
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/list/PredicatedList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 2
    .parameter "i"

    .prologue
    .line 126
    new-instance v0, Lorg/apache/commons/collections/list/PredicatedList$PredicatedListIterator;

    invoke-virtual {p0}, Lorg/apache/commons/collections/list/PredicatedList;->getList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/collections/list/PredicatedList$PredicatedListIterator;-><init>(Lorg/apache/commons/collections/list/PredicatedList;Ljava/util/ListIterator;)V

    return-object v0
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 1
    .parameter "index"

    .prologue
    .line 105
    invoke-virtual {p0}, Lorg/apache/commons/collections/list/PredicatedList;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "index"
    .parameter "object"

    .prologue
    .line 130
    invoke-virtual {p0, p2}, Lorg/apache/commons/collections/collection/PredicatedCollection;->validate(Ljava/lang/Object;)V

    .line 131
    invoke-virtual {p0}, Lorg/apache/commons/collections/list/PredicatedList;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public subList(II)Ljava/util/List;
    .locals 3
    .parameter "fromIndex"
    .parameter "toIndex"

    .prologue
    .line 135
    invoke-virtual {p0}, Lorg/apache/commons/collections/list/PredicatedList;->getList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    .line 136
    .local v0, sub:Ljava/util/List;
    new-instance v1, Lorg/apache/commons/collections/list/PredicatedList;

    iget-object v2, p0, Lorg/apache/commons/collections/collection/PredicatedCollection;->predicate:Lorg/apache/commons/collections/Predicate;

    invoke-direct {v1, v0, v2}, Lorg/apache/commons/collections/list/PredicatedList;-><init>(Ljava/util/List;Lorg/apache/commons/collections/Predicate;)V

    return-object v1
.end method
