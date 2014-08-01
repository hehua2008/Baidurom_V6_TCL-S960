.class public Lorg/farng/mp3/object/ObjectStringFixedLength;
.super Lorg/farng/mp3/object/AbstractMP3Object;
.source "ObjectStringFixedLength.java"


# instance fields
.field length:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 3
    .parameter "identifier"
    .parameter "length"

    .prologue
    .line 19
    invoke-direct {p0}, Lorg/farng/mp3/object/AbstractMP3Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput v0, p0, Lorg/farng/mp3/object/ObjectStringFixedLength;->length:I

    .line 20
    if-gez p2, :cond_0

    .line 21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "length is less than zero: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 23
    :cond_0
    iput-object p1, p0, Lorg/farng/mp3/object/AbstractMP3Object;->identifier:Ljava/lang/String;

    .line 24
    iput p2, p0, Lorg/farng/mp3/object/ObjectStringFixedLength;->length:I

    .line 25
    return-void
.end method

.method public constructor <init>(Lorg/farng/mp3/object/ObjectStringFixedLength;)V
    .locals 1
    .parameter "copyObject"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lorg/farng/mp3/object/AbstractMP3Object;-><init>(Lorg/farng/mp3/object/AbstractMP3Object;)V

    .line 14
    const/4 v0, 0x0

    iput v0, p0, Lorg/farng/mp3/object/ObjectStringFixedLength;->length:I

    .line 32
    iget v0, p1, Lorg/farng/mp3/object/ObjectStringFixedLength;->length:I

    iput v0, p0, Lorg/farng/mp3/object/ObjectStringFixedLength;->length:I

    .line 33
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "obj"

    .prologue
    const/4 v1, 0x0

    .line 48
    instance-of v2, p1, Lorg/farng/mp3/object/ObjectStringFixedLength;

    if-nez v2, :cond_1

    .line 55
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 51
    check-cast v0, Lorg/farng/mp3/object/ObjectStringFixedLength;

    .line 52
    .local v0, objectStringFixedLength:Lorg/farng/mp3/object/ObjectStringFixedLength;
    iget v2, p0, Lorg/farng/mp3/object/ObjectStringFixedLength;->length:I

    iget v3, v0, Lorg/farng/mp3/object/ObjectStringFixedLength;->length:I

    if-ne v2, v3, :cond_0

    .line 55
    invoke-super {p0, p1}, Lorg/farng/mp3/object/AbstractMP3Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getLength()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lorg/farng/mp3/object/ObjectStringFixedLength;->length:I

    return v0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lorg/farng/mp3/object/ObjectStringFixedLength;->length:I

    return v0
.end method

.method public readString(Ljava/lang/String;I)V
    .locals 3
    .parameter "str"
    .parameter "offset"

    .prologue
    .line 59
    if-nez p1, :cond_0

    .line 60
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "String is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_0
    if-ltz p2, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lt p2, v0, :cond_2

    .line 63
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Offset to String is out of bounds: offset = "

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

    .line 68
    :cond_2
    iget v0, p0, Lorg/farng/mp3/object/ObjectStringFixedLength;->length:I

    add-int/2addr v0, p2

    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/farng/mp3/object/AbstractMP3Object;->value:Ljava/lang/Object;

    .line 69
    return-void
.end method

.method public setLength(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 36
    iput p1, p0, Lorg/farng/mp3/object/ObjectStringFixedLength;->length:I

    .line 37
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    invoke-virtual {p0}, Lorg/farng/mp3/object/ObjectStringFixedLength;->writeString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeString()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 77
    iget-object v2, p0, Lorg/farng/mp3/object/AbstractMP3Object;->value:Ljava/lang/Object;

    if-nez v2, :cond_0

    .line 78
    iget v2, p0, Lorg/farng/mp3/object/ObjectStringFixedLength;->length:I

    new-array v2, v2, [C

    invoke-static {v2}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, str:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 80
    .end local v0           #str:Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lorg/farng/mp3/object/AbstractMP3Object;->value:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    .line 81
    .local v1, vlength:I
    iget v2, p0, Lorg/farng/mp3/object/ObjectStringFixedLength;->length:I

    if-le v1, v2, :cond_1

    .line 82
    iget-object v2, p0, Lorg/farng/mp3/object/AbstractMP3Object;->value:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget v3, p0, Lorg/farng/mp3/object/ObjectStringFixedLength;->length:I

    invoke-virtual {v2, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #str:Ljava/lang/String;
    goto :goto_0

    .line 83
    .end local v0           #str:Ljava/lang/String;
    :cond_1
    iget v2, p0, Lorg/farng/mp3/object/ObjectStringFixedLength;->length:I

    if-ne v1, v2, :cond_2

    .line 84
    iget-object v0, p0, Lorg/farng/mp3/object/AbstractMP3Object;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .restart local v0       #str:Ljava/lang/String;
    goto :goto_0

    .line 86
    .end local v0           #str:Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lorg/farng/mp3/object/AbstractMP3Object;->value:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget v3, p0, Lorg/farng/mp3/object/ObjectStringFixedLength;->length:I

    const/16 v4, 0x20

    invoke-static {v2, v3, v4, v5}, Lorg/farng/mp3/TagUtility;->padString(Ljava/lang/String;ICZ)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #str:Ljava/lang/String;
    goto :goto_0
.end method
