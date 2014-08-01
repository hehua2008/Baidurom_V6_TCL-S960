.class public Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkMapIterator;
.super Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkIterator;
.source "AbstractLinkedMap.java"

# interfaces
.implements Lorg/apache/commons/collections/OrderedMapIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections/map/AbstractLinkedMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "LinkMapIterator"
.end annotation


# direct methods
.method protected constructor <init>(Lorg/apache/commons/collections/map/AbstractLinkedMap;)V
    .locals 0
    .parameter "parent"

    .prologue
    .line 363
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkIterator;-><init>(Lorg/apache/commons/collections/map/AbstractLinkedMap;)V

    .line 364
    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 375
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkIterator;->currentEntry()Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    move-result-object v0

    .line 376
    .local v0, current:Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;
    if-nez v0, :cond_0

    .line 377
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "getKey() can only be called after next() and before remove()"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 379
    :cond_0
    invoke-virtual {v0}, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->getKey()Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public getValue()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 383
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkIterator;->currentEntry()Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    move-result-object v0

    .line 384
    .local v0, current:Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;
    if-nez v0, :cond_0

    .line 385
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "getValue() can only be called after next() and before remove()"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 387
    :cond_0
    invoke-virtual {v0}, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->getValue()Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 367
    invoke-super {p0}, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkIterator;->nextEntry()Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public previous()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 371
    invoke-super {p0}, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkIterator;->previousEntry()Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter "value"

    .prologue
    .line 391
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkIterator;->currentEntry()Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    move-result-object v0

    .line 392
    .local v0, current:Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;
    if-nez v0, :cond_0

    .line 393
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "setValue() can only be called after next() and before remove()"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 395
    :cond_0
    invoke-virtual {v0, p1}, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method
