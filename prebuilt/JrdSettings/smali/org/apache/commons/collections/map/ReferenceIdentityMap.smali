.class public Lorg/apache/commons/collections/map/ReferenceIdentityMap;
.super Lorg/apache/commons/collections/map/AbstractReferenceMap;
.source "ReferenceIdentityMap.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x11926938050d2f1cL


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 76
    const/4 v2, 0x1

    const/16 v3, 0x10

    const/high16 v4, 0x3f40

    move-object v0, p0

    move v5, v1

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/collections/map/AbstractReferenceMap;-><init>(IIIFZ)V

    .line 77
    return-void
.end method

.method public constructor <init>(II)V
    .locals 6
    .parameter "keyType"
    .parameter "valueType"

    .prologue
    .line 89
    const/16 v3, 0x10

    const/high16 v4, 0x3f40

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/collections/map/AbstractReferenceMap;-><init>(IIIFZ)V

    .line 90
    return-void
.end method

.method public constructor <init>(IIIF)V
    .locals 6
    .parameter "keyType"
    .parameter "valueType"
    .parameter "capacity"
    .parameter "loadFactor"

    .prologue
    .line 119
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/collections/map/AbstractReferenceMap;-><init>(IIIFZ)V

    .line 120
    return-void
.end method

.method public constructor <init>(IIIFZ)V
    .locals 0
    .parameter "keyType"
    .parameter "valueType"
    .parameter "capacity"
    .parameter "loadFactor"
    .parameter "purgeValues"

    .prologue
    .line 137
    invoke-direct/range {p0 .. p5}, Lorg/apache/commons/collections/map/AbstractReferenceMap;-><init>(IIIFZ)V

    .line 138
    return-void
.end method

.method public constructor <init>(IIZ)V
    .locals 6
    .parameter "keyType"
    .parameter "valueType"
    .parameter "purgeValues"

    .prologue
    .line 104
    const/16 v3, 0x10

    const/high16 v4, 0x3f40

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/collections/map/AbstractReferenceMap;-><init>(IIIFZ)V

    .line 105
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
    .line 208
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 209
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/map/AbstractReferenceMap;->doReadObject(Ljava/io/ObjectInputStream;)V

    .line 210
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
    .line 200
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 201
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/map/AbstractReferenceMap;->doWriteObject(Ljava/io/ObjectOutputStream;)V

    .line 202
    return-void
.end method


# virtual methods
.method protected hash(Ljava/lang/Object;)I
    .locals 1
    .parameter "key"

    .prologue
    .line 150
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method protected hashEntry(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2
    .parameter "key"
    .parameter "value"

    .prologue
    .line 163
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {p2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method protected isEqualKey(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .parameter "key1"
    .parameter "key2"

    .prologue
    .line 178
    iget v0, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap;->keyType:I

    if-lez v0, :cond_0

    check-cast p2, Ljava/lang/ref/Reference;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p2

    .line 179
    .restart local p2
    :cond_0
    if-ne p1, p2, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isEqualValue(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .parameter "value1"
    .parameter "value2"

    .prologue
    .line 192
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
