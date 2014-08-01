.class public Lorg/farng/mp3/object/ObjectLyrics3TimeStamp;
.super Lorg/farng/mp3/object/AbstractMP3Object;
.source "ObjectLyrics3TimeStamp.java"


# instance fields
.field private minute:J

.field private second:J

.field private timeStampFormat:B


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "identifier"

    .prologue
    const-wide/16 v0, 0x0

    .line 19
    invoke-direct {p0}, Lorg/farng/mp3/object/AbstractMP3Object;-><init>()V

    .line 12
    iput-wide v0, p0, Lorg/farng/mp3/object/ObjectLyrics3TimeStamp;->minute:J

    .line 13
    iput-wide v0, p0, Lorg/farng/mp3/object/ObjectLyrics3TimeStamp;->second:J

    .line 14
    const/4 v0, 0x0

    iput-byte v0, p0, Lorg/farng/mp3/object/ObjectLyrics3TimeStamp;->timeStampFormat:B

    .line 20
    iput-object p1, p0, Lorg/farng/mp3/object/AbstractMP3Object;->identifier:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public constructor <init>(Lorg/farng/mp3/object/ObjectLyrics3TimeStamp;)V
    .locals 2
    .parameter "copyObject"

    .prologue
    const-wide/16 v0, 0x0

    .line 27
    invoke-direct {p0, p1}, Lorg/farng/mp3/object/AbstractMP3Object;-><init>(Lorg/farng/mp3/object/AbstractMP3Object;)V

    .line 12
    iput-wide v0, p0, Lorg/farng/mp3/object/ObjectLyrics3TimeStamp;->minute:J

    .line 13
    iput-wide v0, p0, Lorg/farng/mp3/object/ObjectLyrics3TimeStamp;->second:J

    .line 14
    const/4 v0, 0x0

    iput-byte v0, p0, Lorg/farng/mp3/object/ObjectLyrics3TimeStamp;->timeStampFormat:B

    .line 28
    iget-wide v0, p1, Lorg/farng/mp3/object/ObjectLyrics3TimeStamp;->minute:J

    iput-wide v0, p0, Lorg/farng/mp3/object/ObjectLyrics3TimeStamp;->minute:J

    .line 29
    iget-wide v0, p1, Lorg/farng/mp3/object/ObjectLyrics3TimeStamp;->second:J

    iput-wide v0, p0, Lorg/farng/mp3/object/ObjectLyrics3TimeStamp;->second:J

    .line 30
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter "obj"

    .prologue
    const/4 v1, 0x0

    .line 72
    instance-of v2, p1, Lorg/farng/mp3/object/ObjectLyrics3TimeStamp;

    if-nez v2, :cond_1

    .line 82
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 75
    check-cast v0, Lorg/farng/mp3/object/ObjectLyrics3TimeStamp;

    .line 76
    .local v0, objectLyrics3TimeStamp:Lorg/farng/mp3/object/ObjectLyrics3TimeStamp;
    iget-wide v2, p0, Lorg/farng/mp3/object/ObjectLyrics3TimeStamp;->minute:J

    iget-wide v4, v0, Lorg/farng/mp3/object/ObjectLyrics3TimeStamp;->minute:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 79
    iget-wide v2, p0, Lorg/farng/mp3/object/ObjectLyrics3TimeStamp;->second:J

    iget-wide v4, v0, Lorg/farng/mp3/object/ObjectLyrics3TimeStamp;->second:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 82
    invoke-super {p0, p1}, Lorg/farng/mp3/object/AbstractMP3Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getMinute()J
    .locals 2

    .prologue
    .line 37
    iget-wide v0, p0, Lorg/farng/mp3/object/ObjectLyrics3TimeStamp;->minute:J

    return-wide v0
.end method

.method public getSecond()J
    .locals 2

    .prologue
    .line 53
    iget-wide v0, p0, Lorg/farng/mp3/object/ObjectLyrics3TimeStamp;->second:J

    return-wide v0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x7

    return v0
.end method

.method public getTimeStampFormat()B
    .locals 1

    .prologue
    .line 41
    iget-byte v0, p0, Lorg/farng/mp3/object/ObjectLyrics3TimeStamp;->timeStampFormat:B

    return v0
.end method

.method public readString(Ljava/lang/String;I)V
    .locals 4
    .parameter "timeStamp"
    .parameter "offset"

    .prologue
    const-wide/16 v2, 0x0

    .line 86
    if-nez p1, :cond_0

    .line 87
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Image is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 89
    :cond_0
    if-ltz p2, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lt p2, v0, :cond_2

    .line 90
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Offset to timeStamp is out of bounds: offset = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", timeStamp.length()"

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

    .line 95
    :cond_2
    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 96
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_3

    .line 97
    const/4 v0, 0x1

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lorg/farng/mp3/object/ObjectLyrics3TimeStamp;->minute:J

    .line 98
    const/4 v0, 0x4

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lorg/farng/mp3/object/ObjectLyrics3TimeStamp;->second:J

    .line 103
    :goto_0
    return-void

    .line 100
    :cond_3
    iput-wide v2, p0, Lorg/farng/mp3/object/ObjectLyrics3TimeStamp;->minute:J

    .line 101
    iput-wide v2, p0, Lorg/farng/mp3/object/ObjectLyrics3TimeStamp;->second:J

    goto :goto_0
.end method

.method public setMinute(J)V
    .locals 0
    .parameter "minute"

    .prologue
    .line 33
    iput-wide p1, p0, Lorg/farng/mp3/object/ObjectLyrics3TimeStamp;->minute:J

    .line 34
    return-void
.end method

.method public setSecond(J)V
    .locals 0
    .parameter "second"

    .prologue
    .line 49
    iput-wide p1, p0, Lorg/farng/mp3/object/ObjectLyrics3TimeStamp;->second:J

    .line 50
    return-void
.end method

.method public setTimeStamp(JB)V
    .locals 4
    .parameter "timeStamp"
    .parameter "timeStampFormat"

    .prologue
    const-wide/16 v2, 0x3c

    .line 65
    const-wide/16 v0, 0x3e8

    div-long/2addr p1, v0

    .line 66
    div-long v0, p1, v2

    iput-wide v0, p0, Lorg/farng/mp3/object/ObjectLyrics3TimeStamp;->minute:J

    .line 67
    rem-long v0, p1, v2

    iput-wide v0, p0, Lorg/farng/mp3/object/ObjectLyrics3TimeStamp;->second:J

    .line 68
    iput-byte p3, p0, Lorg/farng/mp3/object/ObjectLyrics3TimeStamp;->timeStampFormat:B

    .line 69
    return-void
.end method

.method public setTimeStampFormat(B)V
    .locals 0
    .parameter "timeStampFormat"

    .prologue
    .line 45
    iput-byte p1, p0, Lorg/farng/mp3/object/ObjectLyrics3TimeStamp;->timeStampFormat:B

    .line 46
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    invoke-virtual {p0}, Lorg/farng/mp3/object/ObjectLyrics3TimeStamp;->writeString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeString()Ljava/lang/String;
    .locals 9

    .prologue
    const-wide/16 v7, 0xa

    const-wide/16 v5, 0x0

    const/16 v4, 0x30

    .line 111
    const-string v0, "["

    .line 112
    .local v0, str:Ljava/lang/String;
    iget-wide v1, p0, Lorg/farng/mp3/object/ObjectLyrics3TimeStamp;->minute:J

    cmp-long v1, v1, v5

    if-gez v1, :cond_0

    .line 113
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "00"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 120
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 121
    iget-wide v1, p0, Lorg/farng/mp3/object/ObjectLyrics3TimeStamp;->second:J

    cmp-long v1, v1, v5

    if-gez v1, :cond_2

    .line 122
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "00"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 129
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 130
    return-object v0

    .line 115
    :cond_0
    iget-wide v1, p0, Lorg/farng/mp3/object/ObjectLyrics3TimeStamp;->minute:J

    cmp-long v1, v1, v7

    if-gez v1, :cond_1

    .line 116
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 118
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lorg/farng/mp3/object/ObjectLyrics3TimeStamp;->minute:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 124
    :cond_2
    iget-wide v1, p0, Lorg/farng/mp3/object/ObjectLyrics3TimeStamp;->second:J

    cmp-long v1, v1, v7

    if-gez v1, :cond_3

    .line 125
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 127
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lorg/farng/mp3/object/ObjectLyrics3TimeStamp;->second:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method
