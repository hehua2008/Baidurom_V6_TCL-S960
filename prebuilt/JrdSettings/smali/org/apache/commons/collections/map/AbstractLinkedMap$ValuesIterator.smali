.class public Lorg/apache/commons/collections/map/AbstractLinkedMap$ValuesIterator;
.super Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkIterator;
.source "AbstractLinkedMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections/map/AbstractLinkedMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ValuesIterator"
.end annotation


# direct methods
.method protected constructor <init>(Lorg/apache/commons/collections/map/AbstractLinkedMap;)V
    .locals 0
    .parameter "parent"

    .prologue
    .line 483
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkIterator;-><init>(Lorg/apache/commons/collections/map/AbstractLinkedMap;)V

    .line 484
    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 487
    invoke-super {p0}, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkIterator;->nextEntry()Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public previous()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 491
    invoke-super {p0}, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkIterator;->previousEntry()Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
