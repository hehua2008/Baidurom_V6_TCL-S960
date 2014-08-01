.class public Lorg/farng/mp3/object/ObjectBooleanByte;
.super Lorg/farng/mp3/object/AbstractMP3Object;
.source "ObjectBooleanByte.java"


# instance fields
.field bitPosition:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 3
    .parameter "identifier"
    .parameter "bitPosition"

    .prologue
    .line 17
    invoke-direct {p0}, Lorg/farng/mp3/object/AbstractMP3Object;-><init>()V

    .line 12
    const/4 v0, -0x1

    iput v0, p0, Lorg/farng/mp3/object/ObjectBooleanByte;->bitPosition:I

    .line 18
    if-ltz p2, :cond_0

    const/4 v0, 0x7

    if-le p2, v0, :cond_1

    .line 19
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bit position needs to be from 0 - 7 : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 21
    :cond_1
    iput p2, p0, Lorg/farng/mp3/object/ObjectBooleanByte;->bitPosition:I

    .line 22
    iput-object p1, p0, Lorg/farng/mp3/object/AbstractMP3Object;->identifier:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public constructor <init>(Lorg/farng/mp3/object/ObjectBooleanByte;)V
    .locals 1
    .parameter "copyObject"

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lorg/farng/mp3/object/AbstractMP3Object;-><init>(Lorg/farng/mp3/object/AbstractMP3Object;)V

    .line 12
    const/4 v0, -0x1

    iput v0, p0, Lorg/farng/mp3/object/ObjectBooleanByte;->bitPosition:I

    .line 30
    iget v0, p1, Lorg/farng/mp3/object/ObjectBooleanByte;->bitPosition:I

    iput v0, p0, Lorg/farng/mp3/object/ObjectBooleanByte;->bitPosition:I

    .line 31
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "obj"

    .prologue
    const/4 v1, 0x0

    .line 42
    instance-of v2, p1, Lorg/farng/mp3/object/ObjectBooleanByte;

    if-nez v2, :cond_1

    .line 49
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 45
    check-cast v0, Lorg/farng/mp3/object/ObjectBooleanByte;

    .line 46
    .local v0, objectBooleanByte:Lorg/farng/mp3/object/ObjectBooleanByte;
    iget v2, p0, Lorg/farng/mp3/object/ObjectBooleanByte;->bitPosition:I

    iget v3, v0, Lorg/farng/mp3/object/ObjectBooleanByte;->bitPosition:I

    if-ne v2, v3, :cond_0

    .line 49
    invoke-super {p0, p1}, Lorg/farng/mp3/object/AbstractMP3Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getBitPosition()I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lorg/farng/mp3/object/ObjectBooleanByte;->bitPosition:I

    return v0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x1

    return v0
.end method

.method public readByteArray([BI)V
    .locals 4
    .parameter "arr"
    .parameter "offset"

    .prologue
    const/4 v1, 0x1

    .line 53
    if-nez p1, :cond_0

    .line 54
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Byte array is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 56
    :cond_0
    if-ltz p2, :cond_1

    array-length v2, p1

    if-lt p2, v2, :cond_2

    .line 57
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

    .line 63
    :cond_2
    aget-byte v0, p1, p2

    .line 64
    .local v0, newValue:B
    iget v2, p0, Lorg/farng/mp3/object/ObjectBooleanByte;->bitPosition:I

    shr-int v2, v0, v2

    int-to-byte v0, v2

    .line 65
    and-int/lit8 v2, v0, 0x1

    int-to-byte v0, v2

    .line 66
    new-instance v2, Ljava/lang/Boolean;

    if-ne v0, v1, :cond_3

    :goto_0
    invoke-direct {v2, v1}, Ljava/lang/Boolean;-><init>(Z)V

    iput-object v2, p0, Lorg/farng/mp3/object/AbstractMP3Object;->value:Ljava/lang/Object;

    .line 67
    return-void

    .line 66
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/farng/mp3/object/AbstractMP3Object;->value:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeByteArray()[B
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 75
    new-array v0, v2, [B

    .line 76
    .local v0, retValue:[B
    iget-object v1, p0, Lorg/farng/mp3/object/AbstractMP3Object;->value:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 77
    iget-object v1, p0, Lorg/farng/mp3/object/AbstractMP3Object;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    :goto_0
    int-to-byte v1, v1

    aput-byte v1, v0, v3

    .line 78
    aget-byte v1, v0, v3

    iget v2, p0, Lorg/farng/mp3/object/ObjectBooleanByte;->bitPosition:I

    shl-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, v0, v3

    .line 80
    :cond_0
    return-object v0

    :cond_1
    move v1, v3

    .line 77
    goto :goto_0
.end method
