.class Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceMapIterator;
.super Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntrySetIterator;
.source "AbstractReferenceMap.java"

# interfaces
.implements Lorg/apache/commons/collections/MapIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections/map/AbstractReferenceMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ReferenceMapIterator"
.end annotation


# direct methods
.method protected constructor <init>(Lorg/apache/commons/collections/map/AbstractReferenceMap;)V
    .locals 0
    .parameter "parent"

    .prologue
    .line 839
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntrySetIterator;-><init>(Lorg/apache/commons/collections/map/AbstractReferenceMap;)V

    .line 840
    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 847
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntrySetIterator;->currentEntry()Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntry;

    move-result-object v0

    .line 848
    .local v0, current:Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;
    if-nez v0, :cond_0

    .line 849
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "getKey() can only be called after next() and before remove()"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 851
    :cond_0
    invoke-virtual {v0}, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public getValue()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 855
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntrySetIterator;->currentEntry()Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntry;

    move-result-object v0

    .line 856
    .local v0, current:Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;
    if-nez v0, :cond_0

    .line 857
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "getValue() can only be called after next() and before remove()"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 859
    :cond_0
    invoke-virtual {v0}, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntry;->getValue()Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 843
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntrySetIterator;->nextEntry()Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntry;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter "value"

    .prologue
    .line 863
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntrySetIterator;->currentEntry()Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntry;

    move-result-object v0

    .line 864
    .local v0, current:Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;
    if-nez v0, :cond_0

    .line 865
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "setValue() can only be called after next() and before remove()"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 867
    :cond_0
    invoke-virtual {v0, p1}, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method
