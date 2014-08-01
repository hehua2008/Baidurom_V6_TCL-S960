.class public Lorg/apache/commons/collections/iterators/ProxyListIterator;
.super Ljava/lang/Object;
.source "ProxyListIterator.java"

# interfaces
.implements Ljava/util/ListIterator;


# instance fields
.field private iterator:Ljava/util/ListIterator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/util/ListIterator;)V
    .locals 0
    .parameter "iterator"

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lorg/apache/commons/collections/iterators/ProxyListIterator;->iterator:Ljava/util/ListIterator;

    .line 56
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 1
    .parameter "o"

    .prologue
    .line 67
    invoke-virtual {p0}, Lorg/apache/commons/collections/iterators/ProxyListIterator;->getListIterator()Ljava/util/ListIterator;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    .line 68
    return-void
.end method

.method public getListIterator()Ljava/util/ListIterator;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/ProxyListIterator;->iterator:Ljava/util/ListIterator;

    return-object v0
.end method

.method public hasNext()Z
    .locals 1

    .prologue
    .line 76
    invoke-virtual {p0}, Lorg/apache/commons/collections/iterators/ProxyListIterator;->getListIterator()Ljava/util/ListIterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public hasPrevious()Z
    .locals 1

    .prologue
    .line 85
    invoke-virtual {p0}, Lorg/apache/commons/collections/iterators/ProxyListIterator;->getListIterator()Ljava/util/ListIterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 94
    invoke-virtual {p0}, Lorg/apache/commons/collections/iterators/ProxyListIterator;->getListIterator()Ljava/util/ListIterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public nextIndex()I
    .locals 1

    .prologue
    .line 103
    invoke-virtual {p0}, Lorg/apache/commons/collections/iterators/ProxyListIterator;->getListIterator()Ljava/util/ListIterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/ListIterator;->nextIndex()I

    move-result v0

    return v0
.end method

.method public previous()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 112
    invoke-virtual {p0}, Lorg/apache/commons/collections/iterators/ProxyListIterator;->getListIterator()Ljava/util/ListIterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public previousIndex()I
    .locals 1

    .prologue
    .line 121
    invoke-virtual {p0}, Lorg/apache/commons/collections/iterators/ProxyListIterator;->getListIterator()Ljava/util/ListIterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/ListIterator;->previousIndex()I

    move-result v0

    return v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 130
    invoke-virtual {p0}, Lorg/apache/commons/collections/iterators/ProxyListIterator;->getListIterator()Ljava/util/ListIterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/ListIterator;->remove()V

    .line 131
    return-void
.end method

.method public set(Ljava/lang/Object;)V
    .locals 1
    .parameter "o"

    .prologue
    .line 139
    invoke-virtual {p0}, Lorg/apache/commons/collections/iterators/ProxyListIterator;->getListIterator()Ljava/util/ListIterator;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    .line 140
    return-void
.end method

.method public setListIterator(Ljava/util/ListIterator;)V
    .locals 0
    .parameter "iterator"

    .prologue
    .line 158
    iput-object p1, p0, Lorg/apache/commons/collections/iterators/ProxyListIterator;->iterator:Ljava/util/ListIterator;

    .line 159
    return-void
.end method
