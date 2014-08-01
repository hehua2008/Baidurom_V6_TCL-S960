.class public Lorg/apache/commons/collections/map/LinkedMap;
.super Lorg/apache/commons/collections/map/AbstractLinkedMap;
.source "LinkedMap.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/collections/map/LinkedMap$LinkedMapList;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x7df8d0862476476aL


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 68
    const/16 v0, 0x10

    const/high16 v1, 0x3f40

    const/16 v2, 0xc

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/commons/collections/map/AbstractLinkedMap;-><init>(IFI)V

    .line 69
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "initialCapacity"

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/map/AbstractLinkedMap;-><init>(I)V

    .line 79
    return-void
.end method

.method public constructor <init>(IF)V
    .locals 0
    .parameter "initialCapacity"
    .parameter "loadFactor"

    .prologue
    .line 91
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections/map/AbstractLinkedMap;-><init>(IF)V

    .line 92
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 0
    .parameter "map"

    .prologue
    .line 101
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/map/AbstractLinkedMap;-><init>(Ljava/util/Map;)V

    .line 102
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
    .line 126
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 127
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/map/AbstractHashedMap;->doReadObject(Ljava/io/ObjectInputStream;)V

    .line 128
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
    .line 118
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 119
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/map/AbstractHashedMap;->doWriteObject(Ljava/io/ObjectOutputStream;)V

    .line 120
    return-void
.end method


# virtual methods
.method public asList()Ljava/util/List;
    .locals 1

    .prologue
    .line 198
    new-instance v0, Lorg/apache/commons/collections/map/LinkedMap$LinkedMapList;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/map/LinkedMap$LinkedMapList;-><init>(Lorg/apache/commons/collections/map/LinkedMap;)V

    return-object v0
.end method

.method public clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 111
    invoke-super {p0}, Lorg/apache/commons/collections/map/AbstractHashedMap;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1
    .parameter "index"

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/map/AbstractLinkedMap;->getEntry(I)Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getValue(I)Ljava/lang/Object;
    .locals 1
    .parameter "index"

    .prologue
    .line 150
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/map/AbstractLinkedMap;->getEntry(I)Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 3
    .parameter "key"

    .prologue
    .line 160
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/map/AbstractHashedMap;->convertKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 161
    const/4 v1, 0x0

    .line 162
    .local v1, i:I
    iget-object v2, p0, Lorg/apache/commons/collections/map/AbstractLinkedMap;->header:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    iget-object v0, v2, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;->after:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    .local v0, entry:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;
    :goto_0
    iget-object v2, p0, Lorg/apache/commons/collections/map/AbstractLinkedMap;->header:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    if-ne v0, v2, :cond_1

    .line 167
    const/4 v1, -0x1

    .end local v1           #i:I
    :cond_0
    return v1

    .line 163
    .restart local v1       #i:I
    :cond_1
    iget-object v2, v0, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->key:Ljava/lang/Object;

    invoke-virtual {p0, p1, v2}, Lorg/apache/commons/collections/map/AbstractHashedMap;->isEqualKey(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 162
    iget-object v0, v0, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;->after:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 1
    .parameter "index"

    .prologue
    .line 179
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/map/LinkedMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/map/AbstractHashedMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
