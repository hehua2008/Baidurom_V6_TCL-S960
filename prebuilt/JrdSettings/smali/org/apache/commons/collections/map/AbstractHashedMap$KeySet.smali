.class public Lorg/apache/commons/collections/map/AbstractHashedMap$KeySet;
.super Ljava/util/AbstractSet;
.source "AbstractHashedMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections/map/AbstractHashedMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "KeySet"
.end annotation


# instance fields
.field protected final parent:Lorg/apache/commons/collections/map/AbstractHashedMap;


# direct methods
.method protected constructor <init>(Lorg/apache/commons/collections/map/AbstractHashedMap;)V
    .locals 0
    .parameter "parent"

    .prologue
    .line 899
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 900
    iput-object p1, p0, Lorg/apache/commons/collections/map/AbstractHashedMap$KeySet;->parent:Lorg/apache/commons/collections/map/AbstractHashedMap;

    .line 901
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 908
    iget-object v0, p0, Lorg/apache/commons/collections/map/AbstractHashedMap$KeySet;->parent:Lorg/apache/commons/collections/map/AbstractHashedMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections/map/AbstractHashedMap;->clear()V

    .line 909
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .parameter "key"

    .prologue
    .line 912
    iget-object v0, p0, Lorg/apache/commons/collections/map/AbstractHashedMap$KeySet;->parent:Lorg/apache/commons/collections/map/AbstractHashedMap;

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections/map/AbstractHashedMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 922
    iget-object v0, p0, Lorg/apache/commons/collections/map/AbstractHashedMap$KeySet;->parent:Lorg/apache/commons/collections/map/AbstractHashedMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections/map/AbstractHashedMap;->createKeySetIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2
    .parameter "key"

    .prologue
    .line 916
    iget-object v1, p0, Lorg/apache/commons/collections/map/AbstractHashedMap$KeySet;->parent:Lorg/apache/commons/collections/map/AbstractHashedMap;

    invoke-virtual {v1, p1}, Lorg/apache/commons/collections/map/AbstractHashedMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    .line 917
    .local v0, result:Z
    iget-object v1, p0, Lorg/apache/commons/collections/map/AbstractHashedMap$KeySet;->parent:Lorg/apache/commons/collections/map/AbstractHashedMap;

    invoke-virtual {v1, p1}, Lorg/apache/commons/collections/map/AbstractHashedMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 918
    return v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 904
    iget-object v0, p0, Lorg/apache/commons/collections/map/AbstractHashedMap$KeySet;->parent:Lorg/apache/commons/collections/map/AbstractHashedMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections/map/AbstractHashedMap;->size()I

    move-result v0

    return v0
.end method
