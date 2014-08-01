.class public Lorg/farng/mp3/object/ObjectID3v2LyricLine;
.super Lorg/farng/mp3/object/AbstractMP3Object;
.source "ObjectID3v2LyricLine.java"


# instance fields
.field text:Ljava/lang/String;

.field timeStamp:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "identifier"

    .prologue
    .line 18
    invoke-direct {p0}, Lorg/farng/mp3/object/AbstractMP3Object;-><init>()V

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lorg/farng/mp3/object/ObjectID3v2LyricLine;->text:Ljava/lang/String;

    .line 13
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/farng/mp3/object/ObjectID3v2LyricLine;->timeStamp:J

    .line 19
    iput-object p1, p0, Lorg/farng/mp3/object/AbstractMP3Object;->identifier:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public constructor <init>(Lorg/farng/mp3/object/ObjectID3v2LyricLine;)V
    .locals 2
    .parameter "copyObject"

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lorg/farng/mp3/object/AbstractMP3Object;-><init>(Lorg/farng/mp3/object/AbstractMP3Object;)V

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lorg/farng/mp3/object/ObjectID3v2LyricLine;->text:Ljava/lang/String;

    .line 13
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/farng/mp3/object/ObjectID3v2LyricLine;->timeStamp:J

    .line 27
    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Lorg/farng/mp3/object/ObjectID3v2LyricLine;->text:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/farng/mp3/object/ObjectID3v2LyricLine;->text:Ljava/lang/String;

    .line 28
    iget-wide v0, p1, Lorg/farng/mp3/object/ObjectID3v2LyricLine;->timeStamp:J

    iput-wide v0, p0, Lorg/farng/mp3/object/ObjectID3v2LyricLine;->timeStamp:J

    .line 29
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter "obj"

    .prologue
    const/4 v1, 0x0

    .line 52
    instance-of v2, p1, Lorg/farng/mp3/object/ObjectID3v2LyricLine;

    if-nez v2, :cond_1

    .line 62
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 55
    check-cast v0, Lorg/farng/mp3/object/ObjectID3v2LyricLine;

    .line 56
    .local v0, objectID3v2LyricLine:Lorg/farng/mp3/object/ObjectID3v2LyricLine;
    iget-object v2, p0, Lorg/farng/mp3/object/ObjectID3v2LyricLine;->text:Ljava/lang/String;

    iget-object v3, v0, Lorg/farng/mp3/object/ObjectID3v2LyricLine;->text:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 59
    iget-wide v2, p0, Lorg/farng/mp3/object/ObjectID3v2LyricLine;->timeStamp:J

    iget-wide v4, v0, Lorg/farng/mp3/object/ObjectID3v2LyricLine;->timeStamp:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 62
    invoke-super {p0, p1}, Lorg/farng/mp3/object/AbstractMP3Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lorg/farng/mp3/object/ObjectID3v2LyricLine;->text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, 0x4

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lorg/farng/mp3/object/ObjectID3v2LyricLine;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeStamp()J
    .locals 2

    .prologue
    .line 48
    iget-wide v0, p0, Lorg/farng/mp3/object/ObjectID3v2LyricLine;->timeStamp:J

    return-wide v0
.end method

.method public readByteArray([BI)V
    .locals 5
    .parameter "arr"
    .parameter "offset"

    .prologue
    .line 66
    if-nez p1, :cond_0

    .line 67
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Byte array is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 69
    :cond_0
    if-ltz p2, :cond_1

    array-length v1, p1

    if-lt p2, v1, :cond_2

    .line 70
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

    .line 76
    :cond_2
    new-instance v1, Ljava/lang/String;

    array-length v2, p1

    sub-int/2addr v2, p2

    add-int/lit8 v2, v2, -0x4

    invoke-direct {v1, p1, p2, v2}, Ljava/lang/String;-><init>([BII)V

    iput-object v1, p0, Lorg/farng/mp3/object/ObjectID3v2LyricLine;->text:Ljava/lang/String;

    .line 77
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lorg/farng/mp3/object/ObjectID3v2LyricLine;->timeStamp:J

    .line 78
    array-length v1, p1

    add-int/lit8 v0, v1, -0x4

    .local v0, i:I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_3

    .line 79
    iget-wide v1, p0, Lorg/farng/mp3/object/ObjectID3v2LyricLine;->timeStamp:J

    const/16 v3, 0x8

    shl-long/2addr v1, v3

    iput-wide v1, p0, Lorg/farng/mp3/object/ObjectID3v2LyricLine;->timeStamp:J

    .line 80
    iget-wide v1, p0, Lorg/farng/mp3/object/ObjectID3v2LyricLine;->timeStamp:J

    aget-byte v3, p1, v0

    int-to-long v3, v3

    add-long/2addr v1, v3

    iput-wide v1, p0, Lorg/farng/mp3/object/ObjectID3v2LyricLine;->timeStamp:J

    .line 78
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 82
    :cond_3
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 36
    iput-object p1, p0, Lorg/farng/mp3/object/ObjectID3v2LyricLine;->text:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public setTimeStamp(J)V
    .locals 0
    .parameter "timeStamp"

    .prologue
    .line 44
    iput-wide p1, p0, Lorg/farng/mp3/object/ObjectID3v2LyricLine;->timeStamp:J

    .line 45
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v1, p0, Lorg/farng/mp3/object/ObjectID3v2LyricLine;->timeStamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/farng/mp3/object/ObjectID3v2LyricLine;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeByteArray()[B
    .locals 7

    .prologue
    .line 90
    invoke-virtual {p0}, Lorg/farng/mp3/object/ObjectID3v2LyricLine;->getSize()I

    move-result v3

    new-array v0, v3, [B

    .line 91
    .local v0, arr:[B
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v3, p0, Lorg/farng/mp3/object/ObjectID3v2LyricLine;->text:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 92
    iget-object v3, p0, Lorg/farng/mp3/object/ObjectID3v2LyricLine;->text:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    .line 91
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 94
    :cond_0
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .local v2, i:I
    const/4 v3, 0x0

    aput-byte v3, v0, v1

    .line 95
    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    iget-wide v3, p0, Lorg/farng/mp3/object/ObjectID3v2LyricLine;->timeStamp:J

    const-wide/32 v5, -0x1000000

    and-long/2addr v3, v5

    const/16 v5, 0x18

    shr-long/2addr v3, v5

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 96
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .restart local v2       #i:I
    iget-wide v3, p0, Lorg/farng/mp3/object/ObjectID3v2LyricLine;->timeStamp:J

    const-wide/32 v5, 0xff0000

    and-long/2addr v3, v5

    const/16 v5, 0x10

    shr-long/2addr v3, v5

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    .line 97
    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    iget-wide v3, p0, Lorg/farng/mp3/object/ObjectID3v2LyricLine;->timeStamp:J

    const-wide/32 v5, 0xff00

    and-long/2addr v3, v5

    const/16 v5, 0x8

    shr-long/2addr v3, v5

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 98
    iget-wide v3, p0, Lorg/farng/mp3/object/ObjectID3v2LyricLine;->timeStamp:J

    const-wide/16 v5, 0xff

    and-long/2addr v3, v5

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    .line 99
    return-object v0
.end method
