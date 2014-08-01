.class public Lorg/apache/commons/collections/map/IdentityMap;
.super Lorg/apache/commons/collections/map/AbstractHashedMap;
.source "IdentityMap.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/collections/map/IdentityMap$IdentityEntry;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1c26a8162408faf9L


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
    .line 184
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 185
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/map/AbstractHashedMap;->doReadObject(Ljava/io/ObjectInputStream;)V

    .line 186
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
    .line 176
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 177
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/map/AbstractHashedMap;->doWriteObject(Ljava/io/ObjectOutputStream;)V

    .line 178
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 169
    invoke-super {p0}, Lorg/apache/commons/collections/map/AbstractHashedMap;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected createEntry(Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;ILjava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;
    .locals 1
    .parameter "next"
    .parameter "hashCode"
    .parameter "key"
    .parameter "value"

    .prologue
    .line 130
    new-instance v0, Lorg/apache/commons/collections/map/IdentityMap$IdentityEntry;

    invoke-direct {v0, p1, p2, p3, p4}, Lorg/apache/commons/collections/map/IdentityMap$IdentityEntry;-><init>(Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;ILjava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method protected hash(Ljava/lang/Object;)I
    .locals 1
    .parameter "key"

    .prologue
    .line 92
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method protected isEqualKey(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .parameter "key1"
    .parameter "key2"

    .prologue
    .line 104
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isEqualValue(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .parameter "value1"
    .parameter "value2"

    .prologue
    .line 116
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
