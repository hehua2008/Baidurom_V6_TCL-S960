.class public Lorg/farng/mp3/id3/ID3v2_2Frame;
.super Lorg/farng/mp3/id3/AbstractID3v2Frame;
.source "ID3v2_2Frame.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Lorg/farng/mp3/id3/AbstractID3v2Frame;-><init>()V

    .line 64
    return-void
.end method

.method public constructor <init>(Ljava/io/RandomAccessFile;)V
    .locals 0
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/farng/mp3/InvalidTagException;
        }
    .end annotation

    .prologue
    .line 100
    invoke-direct {p0}, Lorg/farng/mp3/id3/AbstractID3v2Frame;-><init>()V

    .line 101
    invoke-virtual {p0, p1}, Lorg/farng/mp3/id3/ID3v2_2Frame;->read(Ljava/io/RandomAccessFile;)V

    .line 102
    return-void
.end method

.method public constructor <init>(Lorg/farng/mp3/id3/AbstractID3v2Frame;)V
    .locals 1
    .parameter "frame"

    .prologue
    .line 83
    invoke-direct {p0}, Lorg/farng/mp3/id3/AbstractID3v2Frame;-><init>()V

    .line 84
    invoke-virtual {p1}, Lorg/farng/mp3/AbstractMP3Fragment;->getBody()Lorg/farng/mp3/AbstractMP3FragmentBody;

    move-result-object v0

    if-nez v0, :cond_1

    .line 95
    :cond_0
    :goto_0
    return-void

    .line 86
    :cond_1
    invoke-virtual {p1}, Lorg/farng/mp3/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/farng/mp3/TagUtility;->isID3v2_2FrameIdentifier(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    invoke-virtual {p1}, Lorg/farng/mp3/AbstractMP3Fragment;->getBody()Lorg/farng/mp3/AbstractMP3FragmentBody;

    move-result-object v0

    invoke-static {v0}, Lorg/farng/mp3/TagUtility;->copyObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/farng/mp3/id3/AbstractID3v2FrameBody;

    invoke-virtual {p0, v0}, Lorg/farng/mp3/AbstractMP3Fragment;->setBody(Lorg/farng/mp3/AbstractMP3FragmentBody;)V

    goto :goto_0
.end method

.method public constructor <init>(Lorg/farng/mp3/id3/AbstractID3v2FrameBody;)V
    .locals 0
    .parameter "body"

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lorg/farng/mp3/id3/AbstractID3v2Frame;-><init>(Lorg/farng/mp3/id3/AbstractID3v2FrameBody;)V

    .line 71
    return-void
.end method

.method public constructor <init>(Lorg/farng/mp3/id3/ID3v2_2Frame;)V
    .locals 0
    .parameter "frame"

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lorg/farng/mp3/id3/AbstractID3v2Frame;-><init>(Lorg/farng/mp3/id3/AbstractID3v2Frame;)V

    .line 78
    return-void
.end method


# virtual methods
.method public getSize()I
    .locals 1

    .prologue
    .line 105
    invoke-virtual {p0}, Lorg/farng/mp3/AbstractMP3Fragment;->getBody()Lorg/farng/mp3/AbstractMP3FragmentBody;

    move-result-object v0

    invoke-virtual {v0}, Lorg/farng/mp3/AbstractMP3FragmentBody;->getSize()I

    move-result v0

    add-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public read(Ljava/io/RandomAccessFile;)V
    .locals 9
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/farng/mp3/InvalidTagException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x3

    .line 109
    new-array v1, v5, [B

    .line 115
    .local v1, buffer:[B
    :cond_0
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v2

    .line 116
    .local v2, filePointer:J
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->readByte()B

    move-result v0

    .line 117
    .local v0, b:B
    invoke-static {}, Lorg/farng/mp3/id3/AbstractID3v2;->incrementPaddingCounter()V

    .line 118
    if-eqz v0, :cond_0

    .line 119
    invoke-virtual {p1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 120
    invoke-static {}, Lorg/farng/mp3/id3/AbstractID3v2;->decrementPaddingCounter()V

    .line 123
    invoke-virtual {p1, v1, v6, v5}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 124
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v1, v6, v5}, Ljava/lang/String;-><init>([BII)V

    .line 127
    .local v4, identifier:Ljava/lang/String;
    invoke-static {v4}, Lorg/farng/mp3/id3/ID3v2_2Frame;->isValidID3v2FrameIdentifier(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 128
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v5

    const-wide/16 v7, 0x2

    sub-long/2addr v5, v7

    invoke-virtual {p1, v5, v6}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 129
    new-instance v5, Lorg/farng/mp3/InvalidTagException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is not a valid ID3v2.20 frame"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/farng/mp3/InvalidTagException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 131
    :cond_1
    invoke-static {v4, p1}, Lorg/farng/mp3/id3/ID3v2_2Frame;->readBody(Ljava/lang/String;Ljava/io/RandomAccessFile;)Lorg/farng/mp3/id3/AbstractID3v2FrameBody;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/farng/mp3/AbstractMP3Fragment;->setBody(Lorg/farng/mp3/AbstractMP3FragmentBody;)V

    .line 132
    return-void
.end method

.method public write(Ljava/io/RandomAccessFile;)V
    .locals 5
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 135
    const/4 v3, 0x4

    new-array v0, v3, [B

    .line 136
    .local v0, buffer:[B
    invoke-virtual {p0}, Lorg/farng/mp3/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    invoke-static {v3, v4}, Lorg/farng/mp3/TagUtility;->truncate(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 137
    .local v2, str:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 138
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    .line 137
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 140
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p1, v0, v3, v4}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 141
    invoke-virtual {p0}, Lorg/farng/mp3/AbstractMP3Fragment;->getBody()Lorg/farng/mp3/AbstractMP3FragmentBody;

    move-result-object v3

    invoke-virtual {v3, p1}, Lorg/farng/mp3/AbstractMP3FragmentBody;->write(Ljava/io/RandomAccessFile;)V

    .line 142
    return-void
.end method
