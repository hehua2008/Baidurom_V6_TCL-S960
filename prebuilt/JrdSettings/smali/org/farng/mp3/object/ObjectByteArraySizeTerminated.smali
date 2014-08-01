.class public Lorg/farng/mp3/object/ObjectByteArraySizeTerminated;
.super Lorg/farng/mp3/object/AbstractMP3Object;
.source "ObjectByteArraySizeTerminated.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "identifier"

    .prologue
    .line 15
    invoke-direct {p0}, Lorg/farng/mp3/object/AbstractMP3Object;-><init>()V

    .line 16
    iput-object p1, p0, Lorg/farng/mp3/object/AbstractMP3Object;->identifier:Ljava/lang/String;

    .line 17
    return-void
.end method

.method public constructor <init>(Lorg/farng/mp3/object/ObjectByteArraySizeTerminated;)V
    .locals 0
    .parameter "object"

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lorg/farng/mp3/object/AbstractMP3Object;-><init>(Lorg/farng/mp3/object/AbstractMP3Object;)V

    .line 24
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .parameter "obj"

    .prologue
    .line 35
    instance-of v0, p1, Lorg/farng/mp3/object/ObjectByteArraySizeTerminated;

    if-nez v0, :cond_0

    .line 36
    const/4 v0, 0x0

    .line 38
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lorg/farng/mp3/object/AbstractMP3Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public getSize()I
    .locals 2

    .prologue
    .line 27
    const/4 v0, 0x0

    .line 28
    .local v0, len:I
    iget-object v1, p0, Lorg/farng/mp3/object/AbstractMP3Object;->value:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 29
    iget-object v1, p0, Lorg/farng/mp3/object/AbstractMP3Object;->value:Ljava/lang/Object;

    check-cast v1, [B

    check-cast v1, [B

    array-length v0, v1

    .line 31
    :cond_0
    return v0
.end method

.method public readByteArray([BI)V
    .locals 4
    .parameter "arr"
    .parameter "offset"

    .prologue
    .line 42
    if-nez p1, :cond_0

    .line 43
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Byte array is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 45
    :cond_0
    if-ltz p2, :cond_1

    array-length v1, p1

    if-lt p2, v1, :cond_2

    .line 46
    :cond_1
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Offset to byte array is out of bounds: offset = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", array.length = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 52
    :cond_2
    array-length v1, p1

    sub-int v0, v1, p2

    .line 53
    .local v0, len:I
    new-array v1, v0, [B

    iput-object v1, p0, Lorg/farng/mp3/object/AbstractMP3Object;->value:Ljava/lang/Object;

    .line 54
    iget-object v1, p0, Lorg/farng/mp3/object/AbstractMP3Object;->value:Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 55
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/farng/mp3/object/ObjectByteArraySizeTerminated;->getSize()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " bytes"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeByteArray()[B
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lorg/farng/mp3/object/AbstractMP3Object;->value:Ljava/lang/Object;

    check-cast v0, [B

    check-cast v0, [B

    return-object v0
.end method
