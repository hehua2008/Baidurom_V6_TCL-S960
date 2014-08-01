.class public Lorg/apache/commons/collections/map/HashedMap;
.super Lorg/apache/commons/collections/map/AbstractHashedMap;
.source "HashedMap.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# static fields
.field private static final serialVersionUID:J = -0x18d0f5b9f1b08c10L


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 47
    const/16 v0, 0x10

    const/high16 v1, 0x3f40

    const/16 v2, 0xc

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/commons/collections/map/AbstractHashedMap;-><init>(IFI)V

    .line 48
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "initialCapacity"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/map/AbstractHashedMap;-><init>(I)V

    .line 58
    return-void
.end method

.method public constructor <init>(IF)V
    .locals 0
    .parameter "initialCapacity"
    .parameter "loadFactor"

    .prologue
    .line 70
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections/map/AbstractHashedMap;-><init>(IF)V

    .line 71
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 0
    .parameter "map"

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/map/AbstractHashedMap;-><init>(Ljava/util/Map;)V

    .line 81
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 0
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 105
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 106
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/map/AbstractHashedMap;->doReadObject(Ljava/io/ObjectInputStream;)V

    .line 107
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
    .line 97
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 98
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/map/AbstractHashedMap;->doWriteObject(Ljava/io/ObjectOutputStream;)V

    .line 99
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 90
    invoke-super {p0}, Lorg/apache/commons/collections/map/AbstractHashedMap;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
