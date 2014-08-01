.class public Lorg/apache/commons/collections/map/AbstractHashedMap$Values;
.super Ljava/util/AbstractCollection;
.source "AbstractHashedMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections/map/AbstractHashedMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "Values"
.end annotation


# instance fields
.field protected final parent:Lorg/apache/commons/collections/map/AbstractHashedMap;


# direct methods
.method protected constructor <init>(Lorg/apache/commons/collections/map/AbstractHashedMap;)V
    .locals 0
    .parameter "parent"

    .prologue
    .line 976
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    .line 977
    iput-object p1, p0, Lorg/apache/commons/collections/map/AbstractHashedMap$Values;->parent:Lorg/apache/commons/collections/map/AbstractHashedMap;

    .line 978
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 985
    iget-object v0, p0, Lorg/apache/commons/collections/map/AbstractHashedMap$Values;->parent:Lorg/apache/commons/collections/map/AbstractHashedMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections/map/AbstractHashedMap;->clear()V

    .line 986
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .parameter "value"

    .prologue
    .line 989
    iget-object v0, p0, Lorg/apache/commons/collections/map/AbstractHashedMap$Values;->parent:Lorg/apache/commons/collections/map/AbstractHashedMap;

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections/map/AbstractHashedMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 993
    iget-object v0, p0, Lorg/apache/commons/collections/map/AbstractHashedMap$Values;->parent:Lorg/apache/commons/collections/map/AbstractHashedMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections/map/AbstractHashedMap;->createValuesIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 981
    iget-object v0, p0, Lorg/apache/commons/collections/map/AbstractHashedMap$Values;->parent:Lorg/apache/commons/collections/map/AbstractHashedMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections/map/AbstractHashedMap;->size()I

    move-result v0

    return v0
.end method
