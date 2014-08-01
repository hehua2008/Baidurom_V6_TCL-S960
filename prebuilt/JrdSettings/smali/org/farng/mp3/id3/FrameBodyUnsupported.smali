.class public Lorg/farng/mp3/id3/FrameBodyUnsupported;
.super Lorg/farng/mp3/id3/AbstractID3v2FrameBody;
.source "FrameBodyUnsupported.java"


# instance fields
.field private identifier:Ljava/lang/String;

.field private value:[B


# direct methods
.method public constructor <init>(Ljava/io/RandomAccessFile;)V
    .locals 1
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/farng/mp3/InvalidTagException;
        }
    .end annotation

    .prologue
    .line 40
    invoke-direct {p0}, Lorg/farng/mp3/id3/AbstractID3v2FrameBody;-><init>()V

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lorg/farng/mp3/id3/FrameBodyUnsupported;->identifier:Ljava/lang/String;

    .line 41
    invoke-virtual {p0, p1}, Lorg/farng/mp3/id3/FrameBodyUnsupported;->read(Ljava/io/RandomAccessFile;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Lorg/farng/mp3/id3/FrameBodyUnsupported;)V
    .locals 2
    .parameter "copyObject"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lorg/farng/mp3/id3/AbstractID3v2FrameBody;-><init>(Lorg/farng/mp3/id3/AbstractID3v2FrameBody;)V

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lorg/farng/mp3/id3/FrameBodyUnsupported;->identifier:Ljava/lang/String;

    .line 33
    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Lorg/farng/mp3/id3/FrameBodyUnsupported;->identifier:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/farng/mp3/id3/FrameBodyUnsupported;->identifier:Ljava/lang/String;

    .line 34
    iget-object v0, p1, Lorg/farng/mp3/id3/FrameBodyUnsupported;->value:[B

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    iput-object v0, p0, Lorg/farng/mp3/id3/FrameBodyUnsupported;->value:[B

    .line 35
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .parameter "value"

    .prologue
    .line 24
    invoke-direct {p0}, Lorg/farng/mp3/id3/AbstractID3v2FrameBody;-><init>()V

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lorg/farng/mp3/id3/FrameBodyUnsupported;->identifier:Ljava/lang/String;

    .line 25
    iput-object p1, p0, Lorg/farng/mp3/id3/FrameBodyUnsupported;->value:[B

    .line 26
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "obj"

    .prologue
    const/4 v1, 0x0

    .line 70
    instance-of v2, p1, Lorg/farng/mp3/id3/FrameBodyUnsupported;

    if-nez v2, :cond_1

    .line 80
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 73
    check-cast v0, Lorg/farng/mp3/id3/FrameBodyUnsupported;

    .line 74
    .local v0, frameBodyUnsupported:Lorg/farng/mp3/id3/FrameBodyUnsupported;
    iget-object v2, p0, Lorg/farng/mp3/id3/FrameBodyUnsupported;->identifier:Ljava/lang/String;

    iget-object v3, v0, Lorg/farng/mp3/id3/FrameBodyUnsupported;->identifier:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 77
    iget-object v2, p0, Lorg/farng/mp3/id3/FrameBodyUnsupported;->value:[B

    iget-object v3, v0, Lorg/farng/mp3/id3/FrameBodyUnsupported;->value:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 80
    invoke-super {p0, p1}, Lorg/farng/mp3/id3/AbstractID3v2FrameBody;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lorg/farng/mp3/id3/FrameBodyUnsupported;->identifier:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()I
    .locals 2

    .prologue
    .line 49
    const/4 v0, 0x0

    .line 50
    .local v0, size:I
    iget-object v1, p0, Lorg/farng/mp3/id3/FrameBodyUnsupported;->value:[B

    if-eqz v1, :cond_0

    .line 51
    iget-object v1, p0, Lorg/farng/mp3/id3/FrameBodyUnsupported;->value:[B

    array-length v1, v1

    add-int/2addr v0, v1

    .line 53
    :cond_0
    return v0
.end method

.method public isSubsetOf(Ljava/lang/Object;)Z
    .locals 5
    .parameter "object"

    .prologue
    const/4 v3, 0x0

    .line 57
    instance-of v4, p1, Lorg/farng/mp3/id3/FrameBodyUnsupported;

    if-nez v4, :cond_1

    .line 66
    :cond_0
    :goto_0
    return v3

    :cond_1
    move-object v0, p1

    .line 60
    check-cast v0, Lorg/farng/mp3/id3/FrameBodyUnsupported;

    .line 61
    .local v0, frameBodyUnsupported:Lorg/farng/mp3/id3/FrameBodyUnsupported;
    new-instance v1, Ljava/lang/String;

    iget-object v4, p0, Lorg/farng/mp3/id3/FrameBodyUnsupported;->value:[B

    invoke-direct {v1, v4}, Ljava/lang/String;-><init>([B)V

    .line 62
    .local v1, subset:Ljava/lang/String;
    new-instance v2, Ljava/lang/String;

    iget-object v4, v0, Lorg/farng/mp3/id3/FrameBodyUnsupported;->value:[B

    invoke-direct {v2, v4}, Ljava/lang/String;-><init>([B)V

    .line 63
    .local v2, superset:Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_0

    .line 66
    invoke-super {p0, p1}, Lorg/farng/mp3/AbstractMP3FragmentBody;->isSubsetOf(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_0
.end method

.method public read(Ljava/io/RandomAccessFile;)V
    .locals 7
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/farng/mp3/InvalidTagException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x3

    .line 90
    invoke-static {}, Lorg/farng/mp3/id3/FrameBodyUnsupported;->has6ByteHeader()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 92
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v2

    const-wide/16 v4, 0x3

    sub-long/2addr v2, v4

    invoke-virtual {p1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 93
    new-array v0, v6, [B

    .line 94
    .local v0, buffer:[B
    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->read([B)I

    .line 95
    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3, v6}, Ljava/lang/String;-><init>([BII)V

    iput-object v2, p0, Lorg/farng/mp3/id3/FrameBodyUnsupported;->identifier:Ljava/lang/String;

    .line 103
    :goto_0
    invoke-virtual {p0, p1}, Lorg/farng/mp3/id3/AbstractID3v2FrameBody;->readHeader(Ljava/io/RandomAccessFile;)I

    move-result v1

    .line 106
    .local v1, size:I
    new-array v2, v1, [B

    iput-object v2, p0, Lorg/farng/mp3/id3/FrameBodyUnsupported;->value:[B

    .line 107
    iget-object v2, p0, Lorg/farng/mp3/id3/FrameBodyUnsupported;->value:[B

    invoke-virtual {p1, v2}, Ljava/io/RandomAccessFile;->read([B)I

    .line 108
    return-void

    .line 98
    .end local v0           #buffer:[B
    .end local v1           #size:I
    :cond_0
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v2

    const-wide/16 v4, 0x4

    sub-long/2addr v2, v4

    invoke-virtual {p1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 99
    const/4 v2, 0x4

    new-array v0, v2, [B

    .line 100
    .restart local v0       #buffer:[B
    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->read([B)I

    .line 101
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    iput-object v2, p0, Lorg/farng/mp3/id3/FrameBodyUnsupported;->identifier:Ljava/lang/String;

    goto :goto_0
.end method

.method protected setupObjectList()V
    .locals 0

    .prologue
    .line 85
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "??"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/farng/mp3/id3/FrameBodyUnsupported;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/farng/mp3/id3/FrameBodyUnsupported;->value:[B

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Ljava/io/RandomAccessFile;)V
    .locals 1
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 115
    invoke-virtual {p0}, Lorg/farng/mp3/id3/FrameBodyUnsupported;->getSize()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lorg/farng/mp3/id3/AbstractID3v2FrameBody;->writeHeader(Ljava/io/RandomAccessFile;I)V

    .line 116
    iget-object v0, p0, Lorg/farng/mp3/id3/FrameBodyUnsupported;->value:[B

    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->write([B)V

    .line 117
    return-void
.end method
