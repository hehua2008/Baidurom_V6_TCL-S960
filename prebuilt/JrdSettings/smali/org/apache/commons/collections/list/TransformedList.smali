.class public Lorg/apache/commons/collections/list/TransformedList;
.super Lorg/apache/commons/collections/collection/TransformedCollection;
.source "TransformedList.java"

# interfaces
.implements Ljava/util/List;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/collections/list/TransformedList$TransformedListIterator;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0xef2f55badb36155L


# direct methods
.method protected constructor <init>(Ljava/util/List;Lorg/apache/commons/collections/Transformer;)V
    .locals 0
    .parameter "list"
    .parameter "transformer"

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections/collection/TransformedCollection;-><init>(Ljava/util/Collection;Lorg/apache/commons/collections/Transformer;)V

    .line 73
    return-void
.end method

.method static access$001(Lorg/apache/commons/collections/list/TransformedList;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    invoke-super {p0, p1}, Lorg/apache/commons/collections/collection/TransformedCollection;->transform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static access$101(Lorg/apache/commons/collections/list/TransformedList;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    invoke-super {p0, p1}, Lorg/apache/commons/collections/collection/TransformedCollection;->transform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static decorate(Ljava/util/List;Lorg/apache/commons/collections/Transformer;)Ljava/util/List;
    .locals 1
    .parameter "list"
    .parameter "transformer"

    .prologue
    .line 57
    new-instance v0, Lorg/apache/commons/collections/list/TransformedList;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections/list/TransformedList;-><init>(Ljava/util/List;Lorg/apache/commons/collections/Transformer;)V

    return-object v0
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 1
    .parameter "index"
    .parameter "object"

    .prologue
    .line 103
    invoke-virtual {p0, p2}, Lorg/apache/commons/collections/collection/TransformedCollection;->transform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 104
    invoke-virtual {p0}, Lorg/apache/commons/collections/list/TransformedList;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 105
    return-void
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 1
    .parameter "index"
    .parameter "coll"

    .prologue
    .line 108
    invoke-virtual {p0, p2}, Lorg/apache/commons/collections/collection/TransformedCollection;->transform(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p2

    .line 109
    invoke-virtual {p0}, Lorg/apache/commons/collections/list/TransformedList;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1
    .parameter "index"

    .prologue
    .line 86
    invoke-virtual {p0}, Lorg/apache/commons/collections/list/TransformedList;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected getList()Ljava/util/List;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lorg/apache/commons/collections/collection/AbstractCollectionDecorator;->collection:Ljava/util/Collection;

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 1
    .parameter "object"

    .prologue
    .line 90
    invoke-virtual {p0}, Lorg/apache/commons/collections/list/TransformedList;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 1
    .parameter "object"

    .prologue
    .line 94
    invoke-virtual {p0}, Lorg/apache/commons/collections/list/TransformedList;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public listIterator()Ljava/util/ListIterator;
    .locals 1

    .prologue
    .line 113
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/list/TransformedList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 2
    .parameter "i"

    .prologue
    .line 117
    new-instance v0, Lorg/apache/commons/collections/list/TransformedList$TransformedListIterator;

    invoke-virtual {p0}, Lorg/apache/commons/collections/list/TransformedList;->getList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/collections/list/TransformedList$TransformedListIterator;-><init>(Lorg/apache/commons/collections/list/TransformedList;Ljava/util/ListIterator;)V

    return-object v0
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 1
    .parameter "index"

    .prologue
    .line 98
    invoke-virtual {p0}, Lorg/apache/commons/collections/list/TransformedList;->getList()Ljava/util/List;

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
    .line 121
    invoke-virtual {p0, p2}, Lorg/apache/commons/collections/collection/TransformedCollection;->transform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 122
    invoke-virtual {p0}, Lorg/apache/commons/collections/list/TransformedList;->getList()Ljava/util/List;

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
    .line 126
    invoke-virtual {p0}, Lorg/apache/commons/collections/list/TransformedList;->getList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    .line 127
    .local v0, sub:Ljava/util/List;
    new-instance v1, Lorg/apache/commons/collections/list/TransformedList;

    iget-object v2, p0, Lorg/apache/commons/collections/collection/TransformedCollection;->transformer:Lorg/apache/commons/collections/Transformer;

    invoke-direct {v1, v0, v2}, Lorg/apache/commons/collections/list/TransformedList;-><init>(Ljava/util/List;Lorg/apache/commons/collections/Transformer;)V

    return-object v1
.end method
