.class public Lorg/apache/commons/collections/map/ReferenceMap;
.super Lorg/apache/commons/collections/map/AbstractReferenceMap;
.source "ReferenceMap.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1594ca03984908d7L


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 79
    const/4 v2, 0x1

    const/16 v3, 0x10

    const/high16 v4, 0x3f40

    move-object v0, p0

    move v5, v1

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/collections/map/AbstractReferenceMap;-><init>(IIIFZ)V

    .line 80
    return-void
.end method

.method public constructor <init>(II)V
    .locals 6
    .parameter "keyType"
    .parameter "valueType"

    .prologue
    .line 92
    const/16 v3, 0x10

    const/high16 v4, 0x3f40

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/collections/map/AbstractReferenceMap;-><init>(IIIFZ)V

    .line 93
    return-void
.end method

.method public constructor <init>(IIIF)V
    .locals 6
    .parameter "keyType"
    .parameter "valueType"
    .parameter "capacity"
    .parameter "loadFactor"

    .prologue
    .line 123
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/collections/map/AbstractReferenceMap;-><init>(IIIFZ)V

    .line 124
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
    .line 142
    invoke-direct/range {p0 .. p5}, Lorg/apache/commons/collections/map/AbstractReferenceMap;-><init>(IIIFZ)V

    .line 143
    return-void
.end method

.method public constructor <init>(IIZ)V
    .locals 6
    .parameter "keyType"
    .parameter "valueType"
    .parameter "purgeValues"

    .prologue
    .line 107
    const/16 v3, 0x10

    const/high16 v4, 0x3f40

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/collections/map/AbstractReferenceMap;-><init>(IIIFZ)V

    .line 108
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
    .line 158
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 159
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/map/AbstractReferenceMap;->doReadObject(Ljava/io/ObjectInputStream;)V

    .line 160
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
    .line 150
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 151
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/map/AbstractReferenceMap;->doWriteObject(Ljava/io/ObjectOutputStream;)V

    .line 152
    return-void
.end method
