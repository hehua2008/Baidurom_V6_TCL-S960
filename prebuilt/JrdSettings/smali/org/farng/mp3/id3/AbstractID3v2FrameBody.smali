.class public abstract Lorg/farng/mp3/id3/AbstractID3v2FrameBody;
.super Lorg/farng/mp3/AbstractMP3FragmentBody;
.source "AbstractID3v2FrameBody.java"


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lorg/farng/mp3/AbstractMP3FragmentBody;-><init>()V

    .line 22
    return-void
.end method

.method protected constructor <init>(Lorg/farng/mp3/id3/AbstractID3v2FrameBody;)V
    .locals 0
    .parameter "copyObject"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lorg/farng/mp3/AbstractMP3FragmentBody;-><init>(Lorg/farng/mp3/AbstractMP3FragmentBody;)V

    .line 29
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .parameter "obj"

    .prologue
    .line 32
    instance-of v0, p1, Lorg/farng/mp3/id3/AbstractID3v2FrameBody;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lorg/farng/mp3/AbstractMP3FragmentBody;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected readHeader(Ljava/io/RandomAccessFile;)I
    .locals 11
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/farng/mp3/InvalidTagException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x3

    const/4 v10, 0x2

    const/4 v3, 0x0

    const-wide/high16 v8, 0x4000

    .line 37
    new-array v0, v4, [B

    .line 38
    .local v0, buffer:[B
    invoke-static {}, Lorg/farng/mp3/id3/AbstractID3v2FrameBody;->has6ByteHeader()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 40
    invoke-virtual {p1, v0, v3, v4}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 41
    aget-byte v2, v0, v3

    int-to-double v2, v2

    const-wide/high16 v4, 0x4030

    invoke-static {v8, v9, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    mul-double/2addr v2, v4

    const/4 v4, 0x1

    aget-byte v4, v0, v4

    int-to-double v4, v4

    const-wide/high16 v6, 0x4020

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    aget-byte v4, v0, v10

    int-to-double v4, v4

    add-double/2addr v2, v4

    double-to-int v1, v2

    .line 49
    .local v1, size:I
    :goto_0
    if-nez v1, :cond_1

    .line 50
    new-instance v2, Lorg/farng/mp3/InvalidTagException;

    const-string v3, "Found empty frame"

    invoke-direct {v2, v3}, Lorg/farng/mp3/InvalidTagException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 44
    .end local v1           #size:I
    :cond_0
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v1

    .line 47
    .restart local v1       #size:I
    invoke-virtual {p1, v10}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    goto :goto_0

    .line 52
    :cond_1
    if-lez v1, :cond_2

    int-to-long v2, v1

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_3

    .line 53
    :cond_2
    new-instance v2, Lorg/farng/mp3/InvalidTagException;

    const-string v3, "Invalid size for Frame Body"

    invoke-direct {v2, v3}, Lorg/farng/mp3/InvalidTagException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 55
    :cond_3
    return v1
.end method

.method protected writeHeader(Ljava/io/RandomAccessFile;I)V
    .locals 4
    .parameter "file"
    .parameter "size"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x2

    .line 59
    const/4 v1, 0x3

    new-array v0, v1, [B

    .line 60
    .local v0, buffer:[B
    invoke-static {}, Lorg/farng/mp3/id3/AbstractID3v2FrameBody;->has6ByteHeader()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 62
    const/4 v1, 0x0

    const/high16 v2, 0xff

    and-int/2addr v2, p2

    shr-int/lit8 v2, v2, 0x10

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 63
    const/4 v1, 0x1

    const v2, 0xff00

    and-int/2addr v2, p2

    shr-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 64
    and-int/lit16 v1, p2, 0xff

    int-to-byte v1, v1

    aput-byte v1, v0, v3

    .line 65
    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->write([B)V

    .line 73
    :goto_0
    return-void

    .line 68
    :cond_0
    invoke-virtual {p1, p2}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 71
    invoke-virtual {p1, v3}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    goto :goto_0
.end method
