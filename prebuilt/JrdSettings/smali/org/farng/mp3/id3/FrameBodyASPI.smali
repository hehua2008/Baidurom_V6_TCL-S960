.class public Lorg/farng/mp3/id3/FrameBodyASPI;
.super Lorg/farng/mp3/id3/AbstractID3v2FrameBody;
.source "FrameBodyASPI.java"


# instance fields
.field private bitsPerPoint:I

.field private dataLength:I

.field private dataStart:I

.field private fraction:[S

.field private indexPoints:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 72
    invoke-direct {p0}, Lorg/farng/mp3/id3/AbstractID3v2FrameBody;-><init>()V

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/farng/mp3/id3/FrameBodyASPI;->fraction:[S

    .line 63
    iput v1, p0, Lorg/farng/mp3/id3/FrameBodyASPI;->bitsPerPoint:I

    .line 64
    iput v1, p0, Lorg/farng/mp3/id3/FrameBodyASPI;->dataLength:I

    .line 65
    iput v1, p0, Lorg/farng/mp3/id3/FrameBodyASPI;->dataStart:I

    .line 66
    iput v1, p0, Lorg/farng/mp3/id3/FrameBodyASPI;->indexPoints:I

    .line 73
    return-void
.end method

.method public constructor <init>(IIII[S)V
    .locals 3
    .parameter "dataStart"
    .parameter "dataLength"
    .parameter "indexPoints"
    .parameter "bitsPerPoint"
    .parameter "fraction"

    .prologue
    const/4 v2, 0x0

    .line 95
    invoke-direct {p0}, Lorg/farng/mp3/id3/AbstractID3v2FrameBody;-><init>()V

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/farng/mp3/id3/FrameBodyASPI;->fraction:[S

    .line 63
    iput v2, p0, Lorg/farng/mp3/id3/FrameBodyASPI;->bitsPerPoint:I

    .line 64
    iput v2, p0, Lorg/farng/mp3/id3/FrameBodyASPI;->dataLength:I

    .line 65
    iput v2, p0, Lorg/farng/mp3/id3/FrameBodyASPI;->dataStart:I

    .line 66
    iput v2, p0, Lorg/farng/mp3/id3/FrameBodyASPI;->indexPoints:I

    .line 96
    iput p1, p0, Lorg/farng/mp3/id3/FrameBodyASPI;->dataStart:I

    .line 97
    iput p2, p0, Lorg/farng/mp3/id3/FrameBodyASPI;->dataLength:I

    .line 98
    iput p3, p0, Lorg/farng/mp3/id3/FrameBodyASPI;->indexPoints:I

    .line 99
    iput p4, p0, Lorg/farng/mp3/id3/FrameBodyASPI;->bitsPerPoint:I

    .line 100
    array-length v0, p5

    new-array v0, v0, [S

    iput-object v0, p0, Lorg/farng/mp3/id3/FrameBodyASPI;->fraction:[S

    .line 101
    iget-object v0, p0, Lorg/farng/mp3/id3/FrameBodyASPI;->fraction:[S

    array-length v1, p5

    invoke-static {p5, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 102
    return-void
.end method

.method public constructor <init>(Ljava/io/RandomAccessFile;)V
    .locals 2
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/farng/mp3/InvalidTagException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 108
    invoke-direct {p0}, Lorg/farng/mp3/id3/AbstractID3v2FrameBody;-><init>()V

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/farng/mp3/id3/FrameBodyASPI;->fraction:[S

    .line 63
    iput v1, p0, Lorg/farng/mp3/id3/FrameBodyASPI;->bitsPerPoint:I

    .line 64
    iput v1, p0, Lorg/farng/mp3/id3/FrameBodyASPI;->dataLength:I

    .line 65
    iput v1, p0, Lorg/farng/mp3/id3/FrameBodyASPI;->dataStart:I

    .line 66
    iput v1, p0, Lorg/farng/mp3/id3/FrameBodyASPI;->indexPoints:I

    .line 109
    invoke-virtual {p0, p1}, Lorg/farng/mp3/id3/FrameBodyASPI;->read(Ljava/io/RandomAccessFile;)V

    .line 110
    return-void
.end method

.method public constructor <init>(Lorg/farng/mp3/id3/FrameBodyASPI;)V
    .locals 2
    .parameter "copyObject"

    .prologue
    const/4 v1, 0x0

    .line 79
    invoke-direct {p0, p1}, Lorg/farng/mp3/id3/AbstractID3v2FrameBody;-><init>(Lorg/farng/mp3/id3/AbstractID3v2FrameBody;)V

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/farng/mp3/id3/FrameBodyASPI;->fraction:[S

    .line 63
    iput v1, p0, Lorg/farng/mp3/id3/FrameBodyASPI;->bitsPerPoint:I

    .line 64
    iput v1, p0, Lorg/farng/mp3/id3/FrameBodyASPI;->dataLength:I

    .line 65
    iput v1, p0, Lorg/farng/mp3/id3/FrameBodyASPI;->dataStart:I

    .line 66
    iput v1, p0, Lorg/farng/mp3/id3/FrameBodyASPI;->indexPoints:I

    .line 80
    iget-object v0, p1, Lorg/farng/mp3/id3/FrameBodyASPI;->fraction:[S

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [S

    check-cast v0, [S

    iput-object v0, p0, Lorg/farng/mp3/id3/FrameBodyASPI;->fraction:[S

    .line 81
    iget v0, p1, Lorg/farng/mp3/id3/FrameBodyASPI;->bitsPerPoint:I

    iput v0, p0, Lorg/farng/mp3/id3/FrameBodyASPI;->bitsPerPoint:I

    .line 82
    iget v0, p1, Lorg/farng/mp3/id3/FrameBodyASPI;->dataLength:I

    iput v0, p0, Lorg/farng/mp3/id3/FrameBodyASPI;->dataLength:I

    .line 83
    iget v0, p1, Lorg/farng/mp3/id3/FrameBodyASPI;->dataStart:I

    iput v0, p0, Lorg/farng/mp3/id3/FrameBodyASPI;->dataStart:I

    .line 84
    iget v0, p1, Lorg/farng/mp3/id3/FrameBodyASPI;->indexPoints:I

    iput v0, p0, Lorg/farng/mp3/id3/FrameBodyASPI;->indexPoints:I

    .line 85
    return-void
.end method


# virtual methods
.method public equals()V
    .locals 2

    .prologue
    .line 127
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Method equals() not yet implemented."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    const-string v0, "ASPI"

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lorg/farng/mp3/id3/FrameBodyASPI;->fraction:[S

    array-length v0, v0

    add-int/lit8 v0, v0, 0xb

    shl-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public read(Ljava/io/RandomAccessFile;)V
    .locals 4
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/farng/mp3/InvalidTagException;
        }
    .end annotation

    .prologue
    .line 135
    invoke-virtual {p0, p1}, Lorg/farng/mp3/id3/AbstractID3v2FrameBody;->readHeader(Ljava/io/RandomAccessFile;)I

    move-result v1

    .line 136
    .local v1, size:I
    if-nez v1, :cond_0

    .line 137
    new-instance v2, Lorg/farng/mp3/InvalidTagException;

    const-string v3, "Empty Frame"

    invoke-direct {v2, v3}, Lorg/farng/mp3/InvalidTagException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 139
    :cond_0
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v2

    iput v2, p0, Lorg/farng/mp3/id3/FrameBodyASPI;->dataStart:I

    .line 140
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v2

    iput v2, p0, Lorg/farng/mp3/id3/FrameBodyASPI;->dataLength:I

    .line 141
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->readShort()S

    move-result v2

    iput v2, p0, Lorg/farng/mp3/id3/FrameBodyASPI;->indexPoints:I

    .line 142
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->readByte()B

    move-result v2

    iput v2, p0, Lorg/farng/mp3/id3/FrameBodyASPI;->bitsPerPoint:I

    .line 143
    iget v2, p0, Lorg/farng/mp3/id3/FrameBodyASPI;->indexPoints:I

    new-array v2, v2, [S

    iput-object v2, p0, Lorg/farng/mp3/id3/FrameBodyASPI;->fraction:[S

    .line 144
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v2, p0, Lorg/farng/mp3/id3/FrameBodyASPI;->indexPoints:I

    if-ge v0, v2, :cond_3

    .line 145
    iget v2, p0, Lorg/farng/mp3/id3/FrameBodyASPI;->bitsPerPoint:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_1

    .line 146
    iget-object v2, p0, Lorg/farng/mp3/id3/FrameBodyASPI;->fraction:[S

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->readByte()B

    move-result v3

    int-to-short v3, v3

    aput-short v3, v2, v0

    .line 144
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 147
    :cond_1
    iget v2, p0, Lorg/farng/mp3/id3/FrameBodyASPI;->bitsPerPoint:I

    const/16 v3, 0x10

    if-ne v2, v3, :cond_2

    .line 148
    iget-object v2, p0, Lorg/farng/mp3/id3/FrameBodyASPI;->fraction:[S

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->readShort()S

    move-result v3

    aput-short v3, v2, v0

    goto :goto_1

    .line 150
    :cond_2
    new-instance v2, Lorg/farng/mp3/InvalidTagException;

    const-string v3, "ASPI bits per point wasn\'t 8 or 16"

    invoke-direct {v2, v3}, Lorg/farng/mp3/InvalidTagException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 153
    :cond_3
    return-void
.end method

.method protected setupObjectList()V
    .locals 0

    .prologue
    .line 132
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x20

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/farng/mp3/id3/FrameBodyASPI;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/farng/mp3/id3/FrameBodyASPI;->dataStart:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/farng/mp3/id3/FrameBodyASPI;->dataLength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/farng/mp3/id3/FrameBodyASPI;->indexPoints:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/farng/mp3/id3/FrameBodyASPI;->bitsPerPoint:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/farng/mp3/id3/FrameBodyASPI;->fraction:[S

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Ljava/io/RandomAccessFile;)V
    .locals 2
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 165
    invoke-virtual {p0}, Lorg/farng/mp3/id3/FrameBodyASPI;->getSize()I

    move-result v1

    invoke-virtual {p0, p1, v1}, Lorg/farng/mp3/id3/AbstractID3v2FrameBody;->writeHeader(Ljava/io/RandomAccessFile;I)V

    .line 166
    iget v1, p0, Lorg/farng/mp3/id3/FrameBodyASPI;->dataStart:I

    invoke-virtual {p1, v1}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 167
    iget v1, p0, Lorg/farng/mp3/id3/FrameBodyASPI;->dataLength:I

    invoke-virtual {p1, v1}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 168
    iget v1, p0, Lorg/farng/mp3/id3/FrameBodyASPI;->indexPoints:I

    invoke-virtual {p1, v1}, Ljava/io/RandomAccessFile;->writeShort(I)V

    .line 169
    const/16 v1, 0x10

    invoke-virtual {p1, v1}, Ljava/io/RandomAccessFile;->writeByte(I)V

    .line 170
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lorg/farng/mp3/id3/FrameBodyASPI;->indexPoints:I

    if-ge v0, v1, :cond_0

    .line 171
    iget-object v1, p0, Lorg/farng/mp3/id3/FrameBodyASPI;->fraction:[S

    aget-short v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/io/RandomAccessFile;->writeShort(I)V

    .line 170
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 173
    :cond_0
    return-void
.end method
