.class public Lorg/apache/commons/collections/map/AbstractHashedMap$KeySetIterator;
.super Lorg/apache/commons/collections/map/AbstractHashedMap$EntrySetIterator;
.source "AbstractHashedMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections/map/AbstractHashedMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "KeySetIterator"
.end annotation


# direct methods
.method protected constructor <init>(Lorg/apache/commons/collections/map/AbstractHashedMap;)V
    .locals 0
    .parameter "parent"

    .prologue
    .line 932
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/map/AbstractHashedMap$EntrySetIterator;-><init>(Lorg/apache/commons/collections/map/AbstractHashedMap;)V

    .line 933
    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 936
    invoke-super {p0}, Lorg/apache/commons/collections/map/AbstractHashedMap$HashIterator;->nextEntry()Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
