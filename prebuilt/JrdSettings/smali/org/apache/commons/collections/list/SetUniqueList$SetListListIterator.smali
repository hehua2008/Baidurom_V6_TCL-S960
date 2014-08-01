.class Lorg/apache/commons/collections/list/SetUniqueList$SetListListIterator;
.super Lorg/apache/commons/collections/iterators/AbstractListIteratorDecorator;
.source "SetUniqueList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections/list/SetUniqueList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SetListListIterator"
.end annotation


# instance fields
.field protected last:Ljava/lang/Object;

.field protected final set:Ljava/util/Set;


# direct methods
.method protected constructor <init>(Ljava/util/ListIterator;Ljava/util/Set;)V
    .locals 1
    .parameter "it"
    .parameter "set"

    .prologue
    .line 304
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/iterators/AbstractListIteratorDecorator;-><init>(Ljava/util/ListIterator;)V

    .line 301
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/collections/list/SetUniqueList$SetListListIterator;->last:Ljava/lang/Object;

    .line 305
    iput-object p2, p0, Lorg/apache/commons/collections/list/SetUniqueList$SetListListIterator;->set:Ljava/util/Set;

    .line 306
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 1
    .parameter "object"

    .prologue
    .line 325
    iget-object v0, p0, Lorg/apache/commons/collections/list/SetUniqueList$SetListListIterator;->set:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 326
    invoke-super {p0, p1}, Lorg/apache/commons/collections/iterators/AbstractListIteratorDecorator;->add(Ljava/lang/Object;)V

    .line 327
    iget-object v0, p0, Lorg/apache/commons/collections/list/SetUniqueList$SetListListIterator;->set:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 329
    :cond_0
    return-void
.end method

.method public next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 309
    invoke-super {p0}, Lorg/apache/commons/collections/iterators/AbstractListIteratorDecorator;->next()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections/list/SetUniqueList$SetListListIterator;->last:Ljava/lang/Object;

    .line 310
    iget-object v0, p0, Lorg/apache/commons/collections/list/SetUniqueList$SetListListIterator;->last:Ljava/lang/Object;

    return-object v0
.end method

.method public previous()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 314
    invoke-super {p0}, Lorg/apache/commons/collections/iterators/AbstractListIteratorDecorator;->previous()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections/list/SetUniqueList$SetListListIterator;->last:Ljava/lang/Object;

    .line 315
    iget-object v0, p0, Lorg/apache/commons/collections/list/SetUniqueList$SetListListIterator;->last:Ljava/lang/Object;

    return-object v0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 319
    invoke-super {p0}, Lorg/apache/commons/collections/iterators/AbstractListIteratorDecorator;->remove()V

    .line 320
    iget-object v0, p0, Lorg/apache/commons/collections/list/SetUniqueList$SetListListIterator;->set:Ljava/util/Set;

    iget-object v1, p0, Lorg/apache/commons/collections/list/SetUniqueList$SetListListIterator;->last:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 321
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/collections/list/SetUniqueList$SetListListIterator;->last:Ljava/lang/Object;

    .line 322
    return-void
.end method

.method public set(Ljava/lang/Object;)V
    .locals 2
    .parameter "object"

    .prologue
    .line 332
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "ListIterator does not support set"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
