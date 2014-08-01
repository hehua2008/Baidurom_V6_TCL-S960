.class public Lorg/apache/commons/collections/bidimap/DualHashBidiMap;
.super Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;
.source "DualHashBidiMap.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x290a0955b1150L


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;-><init>(Ljava/util/Map;Ljava/util/Map;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 2
    .parameter "map"

    .prologue
    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;-><init>(Ljava/util/Map;Ljava/util/Map;)V

    .line 65
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->putAll(Ljava/util/Map;)V

    .line 66
    return-void
.end method

.method protected constructor <init>(Ljava/util/Map;Ljava/util/Map;Lorg/apache/commons/collections/BidiMap;)V
    .locals 0
    .parameter "normalMap"
    .parameter "reverseMap"
    .parameter "inverseBidiMap"

    .prologue
    .line 76
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;-><init>(Ljava/util/Map;Ljava/util/Map;Lorg/apache/commons/collections/BidiMap;)V

    .line 77
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 4
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 99
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 100
    iget-object v1, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->maps:[Ljava/util/Map;

    const/4 v2, 0x0

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    aput-object v3, v1, v2

    .line 101
    iget-object v1, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->maps:[Ljava/util/Map;

    const/4 v2, 0x1

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    aput-object v3, v1, v2

    .line 102
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 103
    .local v0, map:Ljava/util/Map;
    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->putAll(Ljava/util/Map;)V

    .line 104
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 2
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 94
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 95
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->maps:[Ljava/util/Map;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 96
    return-void
.end method


# virtual methods
.method protected createBidiMap(Ljava/util/Map;Ljava/util/Map;Lorg/apache/commons/collections/BidiMap;)Lorg/apache/commons/collections/BidiMap;
    .locals 1
    .parameter "normalMap"
    .parameter "reverseMap"
    .parameter "inverseBidiMap"

    .prologue
    .line 88
    new-instance v0, Lorg/apache/commons/collections/bidimap/DualHashBidiMap;

    invoke-direct {v0, p1, p2, p3}, Lorg/apache/commons/collections/bidimap/DualHashBidiMap;-><init>(Ljava/util/Map;Ljava/util/Map;Lorg/apache/commons/collections/BidiMap;)V

    return-object v0
.end method
