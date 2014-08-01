.class public Lorg/apache/commons/collections/map/CaseInsensitiveMap;
.super Lorg/apache/commons/collections/map/AbstractHashedMap;
.source "CaseInsensitiveMap.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# static fields
.field private static final serialVersionUID:J = -0x622e3a12dee99200L


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 62
    const/16 v0, 0x10

    const/high16 v1, 0x3f40

    const/16 v2, 0xc

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/commons/collections/map/AbstractHashedMap;-><init>(IFI)V

    .line 63
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "initialCapacity"

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/map/AbstractHashedMap;-><init>(I)V

    .line 73
    return-void
.end method

.method public constructor <init>(IF)V
    .locals 0
    .parameter "initialCapacity"
    .parameter "loadFactor"

    .prologue
    .line 85
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections/map/AbstractHashedMap;-><init>(IF)V

    .line 86
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 0
    .parameter "map"

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/map/AbstractHashedMap;-><init>(Ljava/util/Map;)V

    .line 100
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
    .line 142
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 143
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/map/AbstractHashedMap;->doReadObject(Ljava/io/ObjectInputStream;)V

    .line 144
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
    .line 134
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 135
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/map/AbstractHashedMap;->doWriteObject(Ljava/io/ObjectOutputStream;)V

    .line 136
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 127
    invoke-super {p0}, Lorg/apache/commons/collections/map/AbstractHashedMap;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected convertKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "key"

    .prologue
    .line 113
    if-eqz p1, :cond_0

    .line 114
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 116
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lorg/apache/commons/collections/map/AbstractHashedMap;->NULL:Ljava/lang/Object;

    goto :goto_0
.end method
