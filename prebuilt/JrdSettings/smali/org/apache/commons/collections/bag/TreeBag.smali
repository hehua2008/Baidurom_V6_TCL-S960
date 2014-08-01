.class public Lorg/apache/commons/collections/bag/TreeBag;
.super Lorg/apache/commons/collections/bag/AbstractMapBag;
.source "TreeBag.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lorg/apache/commons/collections/SortedBag;


# static fields
.field static final serialVersionUID:J = -0x6b6a863e27182494L


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 58
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    invoke-direct {p0, v0}, Lorg/apache/commons/collections/bag/AbstractMapBag;-><init>(Ljava/util/Map;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 0
    .parameter "coll"

    .prologue
    .line 78
    invoke-direct {p0}, Lorg/apache/commons/collections/bag/TreeBag;-><init>()V

    .line 79
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/bag/AbstractMapBag;->addAll(Ljava/util/Collection;)Z

    .line 80
    return-void
.end method

.method public constructor <init>(Ljava/util/Comparator;)V
    .locals 1
    .parameter "comparator"

    .prologue
    .line 68
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0, p1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    invoke-direct {p0, v0}, Lorg/apache/commons/collections/bag/AbstractMapBag;-><init>(Ljava/util/Map;)V

    .line 69
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 109
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 110
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Comparator;

    .line 111
    .local v0, comp:Ljava/util/Comparator;
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1, v0}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    invoke-super {p0, v1, p1}, Lorg/apache/commons/collections/bag/AbstractMapBag;->doReadObject(Ljava/util/Map;Ljava/io/ObjectInputStream;)V

    .line 112
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 100
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 101
    invoke-virtual {p0}, Lorg/apache/commons/collections/bag/TreeBag;->comparator()Ljava/util/Comparator;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 102
    invoke-super {p0, p1}, Lorg/apache/commons/collections/bag/AbstractMapBag;->doWriteObject(Ljava/io/ObjectOutputStream;)V

    .line 103
    return-void
.end method


# virtual methods
.method public comparator()Ljava/util/Comparator;
    .locals 1

    .prologue
    .line 92
    invoke-virtual {p0}, Lorg/apache/commons/collections/bag/AbstractMapBag;->getMap()Ljava/util/Map;

    move-result-object v0

    check-cast v0, Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public first()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 84
    invoke-virtual {p0}, Lorg/apache/commons/collections/bag/AbstractMapBag;->getMap()Ljava/util/Map;

    move-result-object v0

    check-cast v0, Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->firstKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public last()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 88
    invoke-virtual {p0}, Lorg/apache/commons/collections/bag/AbstractMapBag;->getMap()Ljava/util/Map;

    move-result-object v0

    check-cast v0, Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->lastKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
