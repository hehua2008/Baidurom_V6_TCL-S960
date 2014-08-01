.class public Lorg/farng/mp3/object/ObjectNumberFixedLength;
.super Lorg/farng/mp3/object/AbstractMP3Object;
.source "ObjectNumberFixedLength.java"


# instance fields
.field length:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 3
    .parameter "identifier"
    .parameter "size"

    .prologue
    .line 19
    invoke-direct {p0}, Lorg/farng/mp3/object/AbstractMP3Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput v0, p0, Lorg/farng/mp3/object/ObjectNumberFixedLength;->length:I

    .line 20
    if-gez p2, :cond_0

    .line 21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Length is less than zero: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/farng/mp3/object/ObjectNumberFixedLength;->length:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 23
    :cond_0
    iput p2, p0, Lorg/farng/mp3/object/ObjectNumberFixedLength;->length:I

    .line 24
    iput-object p1, p0, Lorg/farng/mp3/object/AbstractMP3Object;->identifier:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public constructor <init>(Lorg/farng/mp3/object/ObjectNumberFixedLength;)V
    .locals 1
    .parameter "copyObject"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lorg/farng/mp3/object/AbstractMP3Object;-><init>(Lorg/farng/mp3/object/AbstractMP3Object;)V

    .line 14
    const/4 v0, 0x0

    iput v0, p0, Lorg/farng/mp3/object/ObjectNumberFixedLength;->length:I

    .line 32
    iget v0, p1, Lorg/farng/mp3/object/ObjectNumberFixedLength;->length:I

    iput v0, p0, Lorg/farng/mp3/object/ObjectNumberFixedLength;->length:I

    .line 33
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "obj"

    .prologue
    const/4 v1, 0x0

    .line 50
    instance-of v2, p1, Lorg/farng/mp3/object/ObjectNumberFixedLength;

    if-nez v2, :cond_1

    .line 57
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 53
    check-cast v0, Lorg/farng/mp3/object/ObjectNumberFixedLength;

    .line 54
    .local v0, objectNumberFixedLength:Lorg/farng/mp3/object/ObjectNumberFixedLength;
    iget v2, p0, Lorg/farng/mp3/object/ObjectNumberFixedLength;->length:I

    iget v3, v0, Lorg/farng/mp3/object/ObjectNumberFixedLength;->length:I

    if-ne v2, v3, :cond_0

    .line 57
    invoke-super {p0, p1}, Lorg/farng/mp3/object/AbstractMP3Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getLength()I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lorg/farng/mp3/object/ObjectNumberFixedLength;->length:I

    return v0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lorg/farng/mp3/object/ObjectNumberFixedLength;->length:I

    return v0
.end method

.method public readByteArray([BI)V
    .locals 6
    .parameter "arr"
    .parameter "offset"

    .prologue
    .line 61
    if-nez p1, :cond_0

    .line 62
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "Byte array is null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 64
    :cond_0
    if-ltz p2, :cond_1

    array-length v3, p1

    if-lt p2, v3, :cond_2

    .line 65
    :cond_1
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Offset to byte array is out of bounds: offset = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", array.length = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, p1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 71
    :cond_2
    const-wide/16 v1, 0x0

    .line 72
    .local v1, lvalue:J
    move v0, p2

    .local v0, i:I
    :goto_0
    iget v3, p0, Lorg/farng/mp3/object/ObjectNumberFixedLength;->length:I

    add-int/2addr v3, p2

    if-ge v0, v3, :cond_3

    .line 73
    const/16 v3, 0x8

    shl-long/2addr v1, v3

    .line 74
    aget-byte v3, p1, v0

    int-to-long v3, v3

    add-long/2addr v1, v3

    .line 72
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 76
    :cond_3
    new-instance v3, Ljava/lang/Long;

    invoke-direct {v3, v1, v2}, Ljava/lang/Long;-><init>(J)V

    iput-object v3, p0, Lorg/farng/mp3/object/AbstractMP3Object;->value:Ljava/lang/Object;

    .line 77
    return-void
.end method

.method public readString(Ljava/lang/String;I)V
    .locals 3
    .parameter "str"
    .parameter "offset"

    .prologue
    .line 80
    if-nez p1, :cond_0

    .line 81
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Number string is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    :cond_0
    if-ltz p2, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lt p2, v0, :cond_2

    .line 84
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Offset to number string is out of bounds: offset = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", string.length()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 89
    :cond_2
    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lorg/farng/mp3/object/AbstractMP3Object;->value:Ljava/lang/Object;

    .line 90
    return-void
.end method

.method public setSize(I)V
    .locals 0
    .parameter "length"

    .prologue
    .line 40
    if-lez p1, :cond_0

    .line 41
    iput p1, p0, Lorg/farng/mp3/object/ObjectNumberFixedLength;->length:I

    .line 43
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lorg/farng/mp3/object/AbstractMP3Object;->value:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 94
    const-string v0, ""

    .line 96
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/farng/mp3/object/AbstractMP3Object;->value:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public writeByteArray()[B
    .locals 6

    .prologue
    .line 101
    iget v4, p0, Lorg/farng/mp3/object/ObjectNumberFixedLength;->length:I

    new-array v0, v4, [B

    .line 102
    .local v0, arr:[B
    iget-object v4, p0, Lorg/farng/mp3/object/AbstractMP3Object;->value:Ljava/lang/Object;

    if-eqz v4, :cond_0

    .line 103
    iget-object v4, p0, Lorg/farng/mp3/object/AbstractMP3Object;->value:Ljava/lang/Object;

    invoke-static {v4}, Lorg/farng/mp3/TagUtility;->getWholeNumber(Ljava/lang/Object;)J

    move-result-wide v2

    .line 104
    .local v2, temp:J
    iget v4, p0, Lorg/farng/mp3/object/ObjectNumberFixedLength;->length:I

    add-int/lit8 v1, v4, -0x1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_0

    .line 105
    const-wide/16 v4, 0xff

    and-long/2addr v4, v2

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v0, v1

    .line 106
    const/16 v4, 0x8

    shr-long/2addr v2, v4

    .line 104
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 109
    .end local v1           #i:I
    .end local v2           #temp:J
    :cond_0
    return-object v0
.end method

.method public writeString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lorg/farng/mp3/object/AbstractMP3Object;->value:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 114
    iget v0, p0, Lorg/farng/mp3/object/ObjectNumberFixedLength;->length:I

    new-array v0, v0, [C

    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v0

    .line 116
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/farng/mp3/object/AbstractMP3Object;->value:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
