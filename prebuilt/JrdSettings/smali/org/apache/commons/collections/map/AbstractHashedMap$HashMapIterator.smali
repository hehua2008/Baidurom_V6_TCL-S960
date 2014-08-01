.class public Lorg/apache/commons/collections/map/AbstractHashedMap$HashMapIterator;
.super Lorg/apache/commons/collections/map/AbstractHashedMap$HashIterator;
.source "AbstractHashedMap.java"

# interfaces
.implements Lorg/apache/commons/collections/MapIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections/map/AbstractHashedMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "HashMapIterator"
.end annotation


# direct methods
.method protected constructor <init>(Lorg/apache/commons/collections/map/AbstractHashedMap;)V
    .locals 0
    .parameter "parent"

    .prologue
    .line 742
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/map/AbstractHashedMap$HashIterator;-><init>(Lorg/apache/commons/collections/map/AbstractHashedMap;)V

    .line 743
    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 750
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/AbstractHashedMap$HashIterator;->currentEntry()Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    move-result-object v0

    .line 751
    .local v0, current:Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;
    if-nez v0, :cond_0

    .line 752
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "getKey() can only be called after next() and before remove()"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 754
    :cond_0
    invoke-virtual {v0}, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->getKey()Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public getValue()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 758
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/AbstractHashedMap$HashIterator;->currentEntry()Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    move-result-object v0

    .line 759
    .local v0, current:Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;
    if-nez v0, :cond_0

    .line 760
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "getValue() can only be called after next() and before remove()"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 762
    :cond_0
    invoke-virtual {v0}, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->getValue()Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 746
    invoke-super {p0}, Lorg/apache/commons/collections/map/AbstractHashedMap$HashIterator;->nextEntry()Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter "value"

    .prologue
    .line 766
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/AbstractHashedMap$HashIterator;->currentEntry()Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    move-result-object v0

    .line 767
    .local v0, current:Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;
    if-nez v0, :cond_0

    .line 768
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "setValue() can only be called after next() and before remove()"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 770
    :cond_0
    invoke-virtual {v0, p1}, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method
