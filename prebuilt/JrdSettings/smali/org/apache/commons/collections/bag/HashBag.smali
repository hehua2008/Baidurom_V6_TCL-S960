.class public Lorg/apache/commons/collections/bag/HashBag;
.super Lorg/apache/commons/collections/bag/AbstractMapBag;
.source "HashBag.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lorg/apache/commons/collections/Bag;


# static fields
.field static final serialVersionUID:J = -0x5b0dc3ba0157ee9dL


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, v0}, Lorg/apache/commons/collections/bag/AbstractMapBag;-><init>(Ljava/util/Map;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 0
    .parameter "coll"

    .prologue
    .line 62
    invoke-direct {p0}, Lorg/apache/commons/collections/bag/HashBag;-><init>()V

    .line 63
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/bag/AbstractMapBag;->addAll(Ljava/util/Collection;)Z

    .line 64
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 79
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 80
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-super {p0, v0, p1}, Lorg/apache/commons/collections/bag/AbstractMapBag;->doReadObject(Ljava/util/Map;Ljava/io/ObjectInputStream;)V

    .line 81
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 0
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 71
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 72
    invoke-super {p0, p1}, Lorg/apache/commons/collections/bag/AbstractMapBag;->doWriteObject(Ljava/io/ObjectOutputStream;)V

    .line 73
    return-void
.end method
