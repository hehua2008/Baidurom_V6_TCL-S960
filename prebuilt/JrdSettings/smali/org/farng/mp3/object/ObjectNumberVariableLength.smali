.class public Lorg/farng/mp3/object/ObjectNumberVariableLength;
.super Lorg/farng/mp3/object/AbstractMP3Object;
.source "ObjectNumberVariableLength.java"


# instance fields
.field minLength:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .parameter "identifier"
    .parameter "minimumSize"

    .prologue
    .line 19
    invoke-direct {p0}, Lorg/farng/mp3/object/AbstractMP3Object;-><init>()V

    .line 14
    const/4 v0, 0x1

    iput v0, p0, Lorg/farng/mp3/object/ObjectNumberVariableLength;->minLength:I

    .line 20
    iput-object p1, p0, Lorg/farng/mp3/object/AbstractMP3Object;->identifier:Ljava/lang/String;

    .line 21
    if-lez p2, :cond_0

    .line 22
    iput p2, p0, Lorg/farng/mp3/object/ObjectNumberVariableLength;->minLength:I

    .line 24
    :cond_0
    return-void
.end method

.method public constructor <init>(Lorg/farng/mp3/object/ObjectNumberVariableLength;)V
    .locals 1
    .parameter "copyObject"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lorg/farng/mp3/object/AbstractMP3Object;-><init>(Lorg/farng/mp3/object/AbstractMP3Object;)V

    .line 14
    const/4 v0, 0x1

    iput v0, p0, Lorg/farng/mp3/object/ObjectNumberVariableLength;->minLength:I

    .line 31
    iget v0, p1, Lorg/farng/mp3/object/ObjectNumberVariableLength;->minLength:I

    iput v0, p0, Lorg/farng/mp3/object/ObjectNumberVariableLength;->minLength:I

    .line 32
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "obj"

    .prologue
    const/4 v1, 0x0

    .line 66
    instance-of v2, p1, Lorg/farng/mp3/object/ObjectNumberVariableLength;

    if-nez v2, :cond_1

    .line 73
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 69
    check-cast v0, Lorg/farng/mp3/object/ObjectNumberVariableLength;

    .line 70
    .local v0, objectNumberVariableLength:Lorg/farng/mp3/object/ObjectNumberVariableLength;
    iget v2, p0, Lorg/farng/mp3/object/ObjectNumberVariableLength;->minLength:I

    iget v3, v0, Lorg/farng/mp3/object/ObjectNumberVariableLength;->minLength:I

    if-ne v2, v3, :cond_0

    .line 73
    invoke-super {p0, p1}, Lorg/farng/mp3/object/AbstractMP3Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getMaximumLenth()I
    .locals 1

    .prologue
    .line 35
    const/16 v0, 0x8

    return v0
.end method

.method public getMinimumLength()I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lorg/farng/mp3/object/ObjectNumberVariableLength;->minLength:I

    return v0
.end method

.method public getSize()I
    .locals 7

    .prologue
    const/16 v6, 0x8

    .line 49
    iget-object v5, p0, Lorg/farng/mp3/object/AbstractMP3Object;->value:Ljava/lang/Object;

    if-nez v5, :cond_1

    .line 50
    const/4 v2, 0x0

    .line 62
    :cond_0
    :goto_0
    return v2

    .line 53
    :cond_1
    iget-object v5, p0, Lorg/farng/mp3/object/AbstractMP3Object;->value:Ljava/lang/Object;

    invoke-static {v5}, Lorg/farng/mp3/TagUtility;->getWholeNumber(Ljava/lang/Object;)J

    move-result-wide v3

    .line 54
    .local v3, temp:J
    const/4 v2, 0x0

    .line 55
    .local v2, size:I
    const/4 v1, 0x1

    .local v1, i:I
    :goto_1
    if-gt v1, v6, :cond_3

    .line 56
    long-to-int v5, v3

    int-to-byte v5, v5

    and-int/lit16 v0, v5, 0xff

    .line 57
    .local v0, current:I
    if-eqz v0, :cond_2

    .line 58
    move v2, v1

    .line 60
    :cond_2
    shr-long/2addr v3, v6

    .line 55
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 62
    .end local v0           #current:I
    :cond_3
    iget v5, p0, Lorg/farng/mp3/object/ObjectNumberVariableLength;->minLength:I

    if-le v5, v2, :cond_0

    iget v2, p0, Lorg/farng/mp3/object/ObjectNumberVariableLength;->minLength:I

    goto :goto_0
.end method

.method public readByteArray([BI)V
    .locals 6
    .parameter "arr"
    .parameter "offset"

    .prologue
    .line 77
    if-nez p1, :cond_0

    .line 78
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "Byte array is null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 80
    :cond_0
    if-ltz p2, :cond_1

    array-length v3, p1

    if-lt p2, v3, :cond_2

    .line 81
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

    .line 87
    :cond_2
    const-wide/16 v1, 0x0

    .line 88
    .local v1, lvalue:J
    move v0, p2

    .local v0, i:I
    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_3

    .line 89
    const/16 v3, 0x8

    shl-long/2addr v1, v3

    .line 90
    aget-byte v3, p1, v0

    int-to-long v3, v3

    add-long/2addr v1, v3

    .line 88
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 92
    :cond_3
    new-instance v3, Ljava/lang/Long;

    invoke-direct {v3, v1, v2}, Ljava/lang/Long;-><init>(J)V

    iput-object v3, p0, Lorg/farng/mp3/object/AbstractMP3Object;->value:Ljava/lang/Object;

    .line 93
    return-void
.end method

.method public readString(Ljava/lang/String;I)V
    .locals 3
    .parameter "str"
    .parameter "offset"

    .prologue
    .line 96
    if-nez p1, :cond_0

    .line 97
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Number string is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 99
    :cond_0
    if-ltz p2, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lt p2, v0, :cond_2

    .line 100
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

    .line 105
    :cond_2
    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lorg/farng/mp3/object/AbstractMP3Object;->value:Ljava/lang/Object;

    .line 106
    return-void
.end method

.method public setMinimumSize(I)V
    .locals 0
    .parameter "minimumSize"

    .prologue
    .line 43
    if-lez p1, :cond_0

    .line 44
    iput p1, p0, Lorg/farng/mp3/object/ObjectNumberVariableLength;->minLength:I

    .line 46
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lorg/farng/mp3/object/AbstractMP3Object;->value:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 110
    const-string v0, ""

    .line 112
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/farng/mp3/object/AbstractMP3Object;->value:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public writeByteArray()[B
    .locals 7

    .prologue
    .line 116
    invoke-virtual {p0}, Lorg/farng/mp3/object/ObjectNumberVariableLength;->getSize()I

    move-result v2

    .line 118
    .local v2, size:I
    if-nez v2, :cond_1

    .line 119
    const/4 v5, 0x0

    new-array v0, v5, [B

    .line 128
    .local v0, arr:[B
    :cond_0
    return-object v0

    .line 121
    .end local v0           #arr:[B
    :cond_1
    iget-object v5, p0, Lorg/farng/mp3/object/AbstractMP3Object;->value:Ljava/lang/Object;

    invoke-static {v5}, Lorg/farng/mp3/TagUtility;->getWholeNumber(Ljava/lang/Object;)J

    move-result-wide v3

    .line 122
    .local v3, temp:J
    new-array v0, v2, [B

    .line 123
    .restart local v0       #arr:[B
    add-int/lit8 v1, v2, -0x1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_0

    .line 124
    const-wide/16 v5, 0xff

    and-long/2addr v5, v3

    long-to-int v5, v5

    int-to-byte v5, v5

    aput-byte v5, v0, v1

    .line 125
    const/16 v5, 0x8

    shr-long/2addr v3, v5

    .line 123
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method public writeString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lorg/farng/mp3/object/AbstractMP3Object;->value:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 133
    const-string v0, ""

    .line 135
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/farng/mp3/object/AbstractMP3Object;->value:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
