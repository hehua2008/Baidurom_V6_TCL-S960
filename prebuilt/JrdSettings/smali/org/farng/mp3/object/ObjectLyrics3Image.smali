.class public Lorg/farng/mp3/object/ObjectLyrics3Image;
.super Lorg/farng/mp3/object/AbstractMP3Object;
.source "ObjectLyrics3Image.java"


# instance fields
.field private description:Ljava/lang/String;

.field private filename:Ljava/lang/String;

.field private time:Lorg/farng/mp3/object/ObjectLyrics3TimeStamp;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "identifier"

    .prologue
    .line 19
    invoke-direct {p0}, Lorg/farng/mp3/object/AbstractMP3Object;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/farng/mp3/object/ObjectLyrics3Image;->time:Lorg/farng/mp3/object/ObjectLyrics3TimeStamp;

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lorg/farng/mp3/object/ObjectLyrics3Image;->description:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lorg/farng/mp3/object/ObjectLyrics3Image;->filename:Ljava/lang/String;

    .line 20
    iput-object p1, p0, Lorg/farng/mp3/object/AbstractMP3Object;->identifier:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public constructor <init>(Lorg/farng/mp3/object/ObjectLyrics3Image;)V
    .locals 2
    .parameter "copyObject"

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lorg/farng/mp3/object/AbstractMP3Object;-><init>(Lorg/farng/mp3/object/AbstractMP3Object;)V

    .line 12
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/farng/mp3/object/ObjectLyrics3Image;->time:Lorg/farng/mp3/object/ObjectLyrics3TimeStamp;

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lorg/farng/mp3/object/ObjectLyrics3Image;->description:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lorg/farng/mp3/object/ObjectLyrics3Image;->filename:Ljava/lang/String;

    .line 28
    new-instance v0, Lorg/farng/mp3/object/ObjectLyrics3TimeStamp;

    iget-object v1, p1, Lorg/farng/mp3/object/ObjectLyrics3Image;->time:Lorg/farng/mp3/object/ObjectLyrics3TimeStamp;

    invoke-direct {v0, v1}, Lorg/farng/mp3/object/ObjectLyrics3TimeStamp;-><init>(Lorg/farng/mp3/object/ObjectLyrics3TimeStamp;)V

    iput-object v0, p0, Lorg/farng/mp3/object/ObjectLyrics3Image;->time:Lorg/farng/mp3/object/ObjectLyrics3TimeStamp;

    .line 29
    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Lorg/farng/mp3/object/ObjectLyrics3Image;->description:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/farng/mp3/object/ObjectLyrics3Image;->description:Ljava/lang/String;

    .line 30
    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Lorg/farng/mp3/object/ObjectLyrics3Image;->filename:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/farng/mp3/object/ObjectLyrics3Image;->filename:Ljava/lang/String;

    .line 31
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "obj"

    .prologue
    const/4 v1, 0x0

    .line 67
    instance-of v2, p1, Lorg/farng/mp3/object/ObjectLyrics3Image;

    if-nez v2, :cond_1

    .line 86
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 70
    check-cast v0, Lorg/farng/mp3/object/ObjectLyrics3Image;

    .line 71
    .local v0, objectLyrics3Image:Lorg/farng/mp3/object/ObjectLyrics3Image;
    iget-object v2, p0, Lorg/farng/mp3/object/ObjectLyrics3Image;->description:Ljava/lang/String;

    iget-object v3, v0, Lorg/farng/mp3/object/ObjectLyrics3Image;->description:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 74
    iget-object v2, p0, Lorg/farng/mp3/object/ObjectLyrics3Image;->filename:Ljava/lang/String;

    iget-object v3, v0, Lorg/farng/mp3/object/ObjectLyrics3Image;->filename:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 77
    iget-object v2, p0, Lorg/farng/mp3/object/ObjectLyrics3Image;->time:Lorg/farng/mp3/object/ObjectLyrics3TimeStamp;

    if-nez v2, :cond_3

    .line 78
    iget-object v2, v0, Lorg/farng/mp3/object/ObjectLyrics3Image;->time:Lorg/farng/mp3/object/ObjectLyrics3TimeStamp;

    if-nez v2, :cond_0

    .line 86
    :cond_2
    invoke-super {p0, p1}, Lorg/farng/mp3/object/AbstractMP3Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    .line 82
    :cond_3
    iget-object v2, p0, Lorg/farng/mp3/object/ObjectLyrics3Image;->time:Lorg/farng/mp3/object/ObjectLyrics3TimeStamp;

    iget-object v3, v0, Lorg/farng/mp3/object/ObjectLyrics3Image;->time:Lorg/farng/mp3/object/ObjectLyrics3TimeStamp;

    invoke-virtual {v2, v3}, Lorg/farng/mp3/object/ObjectLyrics3TimeStamp;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lorg/farng/mp3/object/ObjectLyrics3Image;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getFilename()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lorg/farng/mp3/object/ObjectLyrics3Image;->filename:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()I
    .locals 3

    .prologue
    .line 51
    iget-object v1, p0, Lorg/farng/mp3/object/ObjectLyrics3Image;->filename:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lorg/farng/mp3/object/ObjectLyrics3Image;->description:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v1, 0x2

    .line 52
    .local v0, size:I
    iget-object v1, p0, Lorg/farng/mp3/object/ObjectLyrics3Image;->time:Lorg/farng/mp3/object/ObjectLyrics3TimeStamp;

    if-eqz v1, :cond_0

    .line 53
    iget-object v1, p0, Lorg/farng/mp3/object/ObjectLyrics3Image;->time:Lorg/farng/mp3/object/ObjectLyrics3TimeStamp;

    invoke-virtual {v1}, Lorg/farng/mp3/object/ObjectLyrics3TimeStamp;->getSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 55
    :cond_0
    return v0
.end method

.method public getTimeStamp()Lorg/farng/mp3/object/ObjectLyrics3TimeStamp;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lorg/farng/mp3/object/ObjectLyrics3Image;->time:Lorg/farng/mp3/object/ObjectLyrics3TimeStamp;

    return-object v0
.end method

.method public readString(Ljava/lang/String;I)V
    .locals 5
    .parameter "imageString"
    .parameter "offset"

    .prologue
    .line 90
    if-nez p1, :cond_0

    .line 91
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Image string is null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 93
    :cond_0
    if-ltz p2, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lt p2, v2, :cond_2

    .line 94
    :cond_1
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Offset to image string is out of bounds: offset = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", string.length()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 101
    :cond_2
    const-string v2, "||"

    invoke-virtual {p1, v2, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 102
    .local v0, delim:I
    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/farng/mp3/object/ObjectLyrics3Image;->filename:Ljava/lang/String;

    .line 103
    add-int/lit8 p2, v0, 0x2

    .line 104
    const-string v2, "||"

    invoke-virtual {p1, v2, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 105
    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/farng/mp3/object/ObjectLyrics3Image;->description:Ljava/lang/String;

    .line 106
    add-int/lit8 p2, v0, 0x2

    .line 107
    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 108
    .local v1, timestamp:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x7

    if-ne v2, v3, :cond_3

    .line 109
    new-instance v2, Lorg/farng/mp3/object/ObjectLyrics3TimeStamp;

    const-string v3, "Time Stamp"

    invoke-direct {v2, v3}, Lorg/farng/mp3/object/ObjectLyrics3TimeStamp;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lorg/farng/mp3/object/ObjectLyrics3Image;->time:Lorg/farng/mp3/object/ObjectLyrics3TimeStamp;

    .line 110
    iget-object v2, p0, Lorg/farng/mp3/object/ObjectLyrics3Image;->time:Lorg/farng/mp3/object/ObjectLyrics3TimeStamp;

    invoke-virtual {v2, v1}, Lorg/farng/mp3/object/AbstractMP3Object;->readString(Ljava/lang/String;)V

    .line 112
    :cond_3
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .parameter "description"

    .prologue
    .line 34
    iput-object p1, p0, Lorg/farng/mp3/object/ObjectLyrics3Image;->description:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public setFilename(Ljava/lang/String;)V
    .locals 0
    .parameter "filename"

    .prologue
    .line 42
    iput-object p1, p0, Lorg/farng/mp3/object/ObjectLyrics3Image;->filename:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public setTimeStamp(Lorg/farng/mp3/object/ObjectLyrics3TimeStamp;)V
    .locals 0
    .parameter "time"

    .prologue
    .line 59
    iput-object p1, p0, Lorg/farng/mp3/object/ObjectLyrics3Image;->time:Lorg/farng/mp3/object/ObjectLyrics3TimeStamp;

    .line 60
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 116
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "filename = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/farng/mp3/object/ObjectLyrics3Image;->filename:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", description = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/farng/mp3/object/ObjectLyrics3Image;->description:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 117
    .local v0, str:Ljava/lang/String;
    iget-object v1, p0, Lorg/farng/mp3/object/ObjectLyrics3Image;->time:Lorg/farng/mp3/object/ObjectLyrics3TimeStamp;

    if-eqz v1, :cond_0

    .line 118
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", timestamp = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/farng/mp3/object/ObjectLyrics3Image;->time:Lorg/farng/mp3/object/ObjectLyrics3TimeStamp;

    invoke-virtual {v2}, Lorg/farng/mp3/object/ObjectLyrics3TimeStamp;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 120
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 125
    iget-object v1, p0, Lorg/farng/mp3/object/ObjectLyrics3Image;->filename:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 126
    const-string v0, "||"

    .line 130
    .local v0, str:Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lorg/farng/mp3/object/ObjectLyrics3Image;->description:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 131
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "||"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 135
    :goto_1
    iget-object v1, p0, Lorg/farng/mp3/object/ObjectLyrics3Image;->time:Lorg/farng/mp3/object/ObjectLyrics3TimeStamp;

    if-eqz v1, :cond_0

    .line 136
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/farng/mp3/object/ObjectLyrics3Image;->time:Lorg/farng/mp3/object/ObjectLyrics3TimeStamp;

    invoke-virtual {v2}, Lorg/farng/mp3/object/ObjectLyrics3TimeStamp;->writeString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 138
    :cond_0
    return-object v0

    .line 128
    .end local v0           #str:Ljava/lang/String;
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/farng/mp3/object/ObjectLyrics3Image;->filename:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "||"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #str:Ljava/lang/String;
    goto :goto_0

    .line 133
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/farng/mp3/object/ObjectLyrics3Image;->description:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "||"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method
