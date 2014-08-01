.class public Lorg/apache/commons/collections/map/AbstractLinkedMap$KeySetIterator;
.super Lorg/apache/commons/collections/map/AbstractLinkedMap$EntrySetIterator;
.source "AbstractLinkedMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections/map/AbstractLinkedMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "KeySetIterator"
.end annotation


# direct methods
.method protected constructor <init>(Lorg/apache/commons/collections/map/AbstractLinkedMap;)V
    .locals 0
    .parameter "parent"

    .prologue
    .line 451
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/map/AbstractLinkedMap$EntrySetIterator;-><init>(Lorg/apache/commons/collections/map/AbstractLinkedMap;)V

    .line 452
    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 455
    invoke-super {p0}, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkIterator;->nextEntry()Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public previous()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 459
    invoke-super {p0}, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkIterator;->previousEntry()Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
