.class public Lorg/farng/mp3/id3/ID3v2_3Frame;
.super Lorg/farng/mp3/id3/ID3v2_2Frame;
.source "ID3v2_3Frame.java"


# instance fields
.field protected compression:Z

.field protected encryption:Z

.field protected fileAlterPreservation:Z

.field protected groupingIdentity:Z

.field protected readOnly:Z

.field protected tagAlterPreservation:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 52
    invoke-direct {p0}, Lorg/farng/mp3/id3/ID3v2_2Frame;-><init>()V

    .line 41
    iput-boolean v0, p0, Lorg/farng/mp3/id3/ID3v2_3Frame;->compression:Z

    .line 42
    iput-boolean v0, p0, Lorg/farng/mp3/id3/ID3v2_3Frame;->encryption:Z

    .line 43
    iput-boolean v0, p0, Lorg/farng/mp3/id3/ID3v2_3Frame;->fileAlterPreservation:Z

    .line 44
    iput-boolean v0, p0, Lorg/farng/mp3/id3/ID3v2_3Frame;->groupingIdentity:Z

    .line 45
    iput-boolean v0, p0, Lorg/farng/mp3/id3/ID3v2_3Frame;->readOnly:Z

    .line 47
    iput-boolean v0, p0, Lorg/farng/mp3/id3/ID3v2_3Frame;->tagAlterPreservation:Z

    .line 53
    invoke-virtual {p0}, Lorg/farng/mp3/id3/ID3v2_3Frame;->setAlterPreservation()V

    .line 54
    return-void
.end method

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
    const/4 v0, 0x0

    .line 125
    invoke-direct {p0}, Lorg/farng/mp3/id3/ID3v2_2Frame;-><init>()V

    .line 41
    iput-boolean v0, p0, Lorg/farng/mp3/id3/ID3v2_3Frame;->compression:Z

    .line 42
    iput-boolean v0, p0, Lorg/farng/mp3/id3/ID3v2_3Frame;->encryption:Z

    .line 43
    iput-boolean v0, p0, Lorg/farng/mp3/id3/ID3v2_3Frame;->fileAlterPreservation:Z

    .line 44
    iput-boolean v0, p0, Lorg/farng/mp3/id3/ID3v2_3Frame;->groupingIdentity:Z

    .line 45
    iput-boolean v0, p0, Lorg/farng/mp3/id3/ID3v2_3Frame;->readOnly:Z

    .line 47
    iput-boolean v0, p0, Lorg/farng/mp3/id3/ID3v2_3Frame;->tagAlterPreservation:Z

    .line 126
    invoke-virtual {p0, p1}, Lorg/farng/mp3/id3/ID3v2_3Frame;->read(Ljava/io/RandomAccessFile;)V

    .line 127
    return-void
.end method

.method public constructor <init>(Lorg/farng/mp3/id3/AbstractID3v2Frame;)V
    .locals 2
    .parameter "frame"

    .prologue
    const/4 v1, 0x0

    .line 96
    invoke-direct {p0}, Lorg/farng/mp3/id3/ID3v2_2Frame;-><init>()V

    .line 41
    iput-boolean v1, p0, Lorg/farng/mp3/id3/ID3v2_3Frame;->compression:Z

    .line 42
    iput-boolean v1, p0, Lorg/farng/mp3/id3/ID3v2_3Frame;->encryption:Z

    .line 43
    iput-boolean v1, p0, Lorg/farng/mp3/id3/ID3v2_3Frame;->fileAlterPreservation:Z

    .line 44
    iput-boolean v1, p0, Lorg/farng/mp3/id3/ID3v2_3Frame;->groupingIdentity:Z

    .line 45
    iput-boolean v1, p0, Lorg/farng/mp3/id3/ID3v2_3Frame;->readOnly:Z

    .line 47
    iput-boolean v1, p0, Lorg/farng/mp3/id3/ID3v2_3Frame;->tagAlterPreservation:Z

    .line 97
    instance-of v1, p1, Lorg/farng/mp3/id3/ID3v2_3Frame;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 98
    check-cast v0, Lorg/farng/mp3/id3/ID3v2_3Frame;

    .line 99
    .local v0, f:Lorg/farng/mp3/id3/ID3v2_3Frame;
    iget-boolean v1, v0, Lorg/farng/mp3/id3/ID3v2_3Frame;->tagAlterPreservation:Z

    iput-boolean v1, p0, Lorg/farng/mp3/id3/ID3v2_3Frame;->tagAlterPreservation:Z

    .line 100
    iget-boolean v1, v0, Lorg/farng/mp3/id3/ID3v2_3Frame;->fileAlterPreservation:Z

    iput-boolean v1, p0, Lorg/farng/mp3/id3/ID3v2_3Frame;->fileAlterPreservation:Z

    .line 101
    iget-boolean v1, v0, Lorg/farng/mp3/id3/ID3v2_3Frame;->readOnly:Z

    iput-boolean v1, p0, Lorg/farng/mp3/id3/ID3v2_3Frame;->readOnly:Z

    .line 102
    iget-boolean v1, v0, Lorg/farng/mp3/id3/ID3v2_3Frame;->groupingIdentity:Z

    iput-boolean v1, p0, Lorg/farng/mp3/id3/ID3v2_3Frame;->groupingIdentity:Z

    .line 103
    iget-boolean v1, v0, Lorg/farng/mp3/id3/ID3v2_3Frame;->compression:Z

    iput-boolean v1, p0, Lorg/farng/mp3/id3/ID3v2_3Frame;->compression:Z

    .line 104
    iget-boolean v1, v0, Lorg/farng/mp3/id3/ID3v2_3Frame;->encryption:Z

    iput-boolean v1, p0, Lorg/farng/mp3/id3/ID3v2_3Frame;->encryption:Z

    .line 106
    .end local v0           #f:Lorg/farng/mp3/id3/ID3v2_3Frame;
    :cond_0
    instance-of v1, p1, Lorg/farng/mp3/id3/ID3v2_2Frame;

    if-eqz v1, :cond_1

    .line 109
    :cond_1
    invoke-virtual {p1}, Lorg/farng/mp3/AbstractMP3Fragment;->getBody()Lorg/farng/mp3/AbstractMP3FragmentBody;

    move-result-object v1

    if-nez v1, :cond_3

    .line 120
    :cond_2
    :goto_0
    return-void

    .line 111
    :cond_3
    invoke-virtual {p1}, Lorg/farng/mp3/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/farng/mp3/TagUtility;->isID3v2_3FrameIdentifier(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 112
    invoke-virtual {p1}, Lorg/farng/mp3/AbstractMP3Fragment;->getBody()Lorg/farng/mp3/AbstractMP3FragmentBody;

    move-result-object v1

    invoke-static {v1}, Lorg/farng/mp3/TagUtility;->copyObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/farng/mp3/id3/AbstractID3v2FrameBody;

    invoke-virtual {p0, v1}, Lorg/farng/mp3/AbstractMP3Fragment;->setBody(Lorg/farng/mp3/AbstractMP3FragmentBody;)V

    goto :goto_0
.end method

.method public constructor <init>(Lorg/farng/mp3/id3/AbstractID3v2FrameBody;)V
    .locals 1
    .parameter "body"

    .prologue
    const/4 v0, 0x0

    .line 60
    invoke-direct {p0, p1}, Lorg/farng/mp3/id3/ID3v2_2Frame;-><init>(Lorg/farng/mp3/id3/AbstractID3v2FrameBody;)V

    .line 41
    iput-boolean v0, p0, Lorg/farng/mp3/id3/ID3v2_3Frame;->compression:Z

    .line 42
    iput-boolean v0, p0, Lorg/farng/mp3/id3/ID3v2_3Frame;->encryption:Z

    .line 43
    iput-boolean v0, p0, Lorg/farng/mp3/id3/ID3v2_3Frame;->fileAlterPreservation:Z

    .line 44
    iput-boolean v0, p0, Lorg/farng/mp3/id3/ID3v2_3Frame;->groupingIdentity:Z

    .line 45
    iput-boolean v0, p0, Lorg/farng/mp3/id3/ID3v2_3Frame;->readOnly:Z

    .line 47
    iput-boolean v0, p0, Lorg/farng/mp3/id3/ID3v2_3Frame;->tagAlterPreservation:Z

    .line 61
    invoke-virtual {p0}, Lorg/farng/mp3/id3/ID3v2_3Frame;->setAlterPreservation()V

    .line 62
    return-void
.end method

.method public constructor <init>(Lorg/farng/mp3/id3/ID3v2_3Frame;)V
    .locals 1
    .parameter "copyObject"

    .prologue
    const/4 v0, 0x0

    .line 68
    invoke-direct {p0, p1}, Lorg/farng/mp3/id3/ID3v2_2Frame;-><init>(Lorg/farng/mp3/id3/ID3v2_2Frame;)V

    .line 41
    iput-boolean v0, p0, Lorg/farng/mp3/id3/ID3v2_3Frame;->compression:Z

    .line 42
    iput-boolean v0, p0, Lorg/farng/mp3/id3/ID3v2_3Frame;->encryption:Z

    .line 43
    iput-boolean v0, p0, Lorg/farng/mp3/id3/ID3v2_3Frame;->fileAlterPreservation:Z

    .line 44
    iput-boolean v0, p0, Lorg/farng/mp3/id3/ID3v2_3Frame;->groupingIdentity:Z

    .line 45
    iput-boolean v0, p0, Lorg/farng/mp3/id3/ID3v2_3Frame;->readOnly:Z

    .line 47
    iput-boolean v0, p0, Lorg/farng/mp3/id3/ID3v2_3Frame;->tagAlterPreservation:Z

    .line 69
    iget-boolean v0, p1, Lorg/farng/mp3/id3/ID3v2_3Frame;->compression:Z

    iput-boolean v0, p0, Lorg/farng/mp3/id3/ID3v2_3Frame;->compression:Z

    .line 70
    iget-boolean v0, p1, Lorg/farng/mp3/id3/ID3v2_3Frame;->encryption:Z

    iput-boolean v0, p0, Lorg/farng/mp3/id3/ID3v2_3Frame;->encryption:Z

    .line 71
    iget-boolean v0, p1, Lorg/farng/mp3/id3/ID3v2_3Frame;->fileAlterPreservation:Z

    iput-boolean v0, p0, Lorg/farng/mp3/id3/ID3v2_3Frame;->fileAlterPreservation:Z

    .line 72
    iget-boolean v0, p1, Lorg/farng/mp3/id3/ID3v2_3Frame;->groupingIdentity:Z

    iput-boolean v0, p0, Lorg/farng/mp3/id3/ID3v2_3Frame;->groupingIdentity:Z

    .line 73
    iget-boolean v0, p1, Lorg/farng/mp3/id3/ID3v2_3Frame;->readOnly:Z

    iput-boolean v0, p0, Lorg/farng/mp3/id3/ID3v2_3Frame;->readOnly:Z

    .line 74
    iget-boolean v0, p1, Lorg/farng/mp3/id3/ID3v2_3Frame;->tagAlterPreservation:Z

    iput-boolean v0, p0, Lorg/farng/mp3/id3/ID3v2_3Frame;->tagAlterPreservation:Z

    .line 75
    return-void
.end method

.method public constructor <init>(ZZZZLorg/farng/mp3/id3/AbstractID3v2FrameBody;)V
    .locals 1
    .parameter "readOnly"
    .parameter "groupingIdentity"
    .parameter "compression"
    .parameter "encryption"
    .parameter "body"

    .prologue
    const/4 v0, 0x0

    .line 85
    invoke-direct {p0, p5}, Lorg/farng/mp3/id3/ID3v2_2Frame;-><init>(Lorg/farng/mp3/id3/AbstractID3v2FrameBody;)V

    .line 41
    iput-boolean v0, p0, Lorg/farng/mp3/id3/ID3v2_3Frame;->compression:Z

    .line 42
    iput-boolean v0, p0, Lorg/farng/mp3/id3/ID3v2_3Frame;->encryption:Z

    .line 43
    iput-boolean v0, p0, Lorg/farng/mp3/id3/ID3v2_3Frame;->fileAlterPreservation:Z

    .line 44
    iput-boolean v0, p0, Lorg/farng/mp3/id3/ID3v2_3Frame;->groupingIdentity:Z

    .line 45
    iput-boolean v0, p0, Lorg/farng/mp3/id3/ID3v2_3Frame;->readOnly:Z

    .line 47
    iput-boolean v0, p0, Lorg/farng/mp3/id3/ID3v2_3Frame;->tagAlterPreservation:Z

    .line 86
    iput-boolean p1, p0, Lorg/farng/mp3/id3/ID3v2_3Frame;->readOnly:Z

    .line 87
    iput-boolean p2, p0, Lorg/farng/mp3/id3/ID3v2_3Frame;->groupingIdentity:Z

    .line 88
    iput-boolean p3, p0, Lorg/farng/mp3/id3/ID3v2_3Frame;->compression:Z

    .line 89
    iput-boolean p4, p0, Lorg/farng/mp3/id3/ID3v2_3Frame;->encryption:Z

    .line 90
    invoke-virtual {p0}, Lorg/farng/mp3/id3/ID3v2_3Frame;->setAlterPreservation()V

    .line 91
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "obj"

    .prologue
    const/4 v1, 0x0

    .line 134
    instance-of v2, p1, Lorg/farng/mp3/id3/ID3v2_3Frame;

    if-nez v2, :cond_1

    .line 156
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 137
    check-cast v0, Lorg/farng/mp3/id3/ID3v2_3Frame;

    .line 138
    .local v0, id3v2_3Frame:Lorg/farng/mp3/id3/ID3v2_3Frame;
    iget-boolean v2, p0, Lorg/farng/mp3/id3/ID3v2_3Frame;->compression:Z

    iget-boolean v3, v0, Lorg/farng/mp3/id3/ID3v2_3Frame;->compression:Z

    if-ne v2, v3, :cond_0

    .line 141
    iget-boolean v2, p0, Lorg/farng/mp3/id3/ID3v2_3Frame;->encryption:Z

    iget-boolean v3, v0, Lorg/farng/mp3/id3/ID3v2_3Frame;->encryption:Z

    if-ne v2, v3, :cond_0

    .line 144
    iget-boolean v2, p0, Lorg/farng/mp3/id3/ID3v2_3Frame;->fileAlterPreservation:Z

    iget-boolean v3, v0, Lorg/farng/mp3/id3/ID3v2_3Frame;->fileAlterPreservation:Z

    if-ne v2, v3, :cond_0

    .line 147
    iget-boolean v2, p0, Lorg/farng/mp3/id3/ID3v2_3Frame;->groupingIdentity:Z

    iget-boolean v3, v0, Lorg/farng/mp3/id3/ID3v2_3Frame;->groupingIdentity:Z

    if-ne v2, v3, :cond_0

    .line 150
    iget-boolean v2, p0, Lorg/farng/mp3/id3/ID3v2_3Frame;->readOnly:Z

    iget-boolean v3, v0, Lorg/farng/mp3/id3/ID3v2_3Frame;->readOnly:Z

    if-ne v2, v3, :cond_0

    .line 153
    iget-boolean v2, p0, Lorg/farng/mp3/id3/ID3v2_3Frame;->tagAlterPreservation:Z

    iget-boolean v3, v0, Lorg/farng/mp3/id3/ID3v2_3Frame;->tagAlterPreservation:Z

    if-ne v2, v3, :cond_0

    .line 156
    invoke-super {p0, p1}, Lorg/farng/mp3/AbstractMP3Fragment;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 130
    invoke-virtual {p0}, Lorg/farng/mp3/AbstractMP3Fragment;->getBody()Lorg/farng/mp3/AbstractMP3FragmentBody;

    move-result-object v0

    invoke-virtual {v0}, Lorg/farng/mp3/AbstractMP3FragmentBody;->getSize()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x4

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
    const/4 v8, 0x4

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 162
    new-array v1, v8, [B

    .line 166
    .local v1, buffer:[B
    :cond_0
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v2

    .line 167
    .local v2, filePointer:J
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->readByte()B

    move-result v0

    .line 168
    .local v0, b:B
    invoke-static {}, Lorg/farng/mp3/id3/AbstractID3v2;->incrementPaddingCounter()V

    .line 169
    if-eqz v0, :cond_0

    .line 170
    invoke-virtual {p1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 171
    invoke-static {}, Lorg/farng/mp3/id3/AbstractID3v2;->decrementPaddingCounter()V

    .line 174
    invoke-virtual {p1, v1, v7, v8}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 175
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v1, v7, v8}, Ljava/lang/String;-><init>([BII)V

    .line 178
    .local v4, identifier:Ljava/lang/String;
    invoke-static {v4}, Lorg/farng/mp3/id3/ID3v2_3Frame;->isValidID3v2FrameIdentifier(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 179
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v5

    const-wide/16 v7, 0x3

    sub-long/2addr v5, v7

    invoke-virtual {p1, v5, v6}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 180
    new-instance v5, Lorg/farng/mp3/InvalidTagException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is not a valid ID3v2.30 frame"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/farng/mp3/InvalidTagException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 182
    :cond_1
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v2

    .line 185
    invoke-virtual {p1, v8}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    .line 188
    const/4 v5, 0x2

    invoke-virtual {p1, v1, v7, v5}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 189
    aget-byte v5, v1, v7

    and-int/lit16 v5, v5, 0x80

    if-eqz v5, :cond_2

    move v5, v6

    :goto_0
    iput-boolean v5, p0, Lorg/farng/mp3/id3/ID3v2_3Frame;->tagAlterPreservation:Z

    .line 190
    aget-byte v5, v1, v7

    and-int/lit8 v5, v5, 0x40

    if-eqz v5, :cond_3

    move v5, v6

    :goto_1
    iput-boolean v5, p0, Lorg/farng/mp3/id3/ID3v2_3Frame;->fileAlterPreservation:Z

    .line 191
    aget-byte v5, v1, v7

    and-int/lit8 v5, v5, 0x20

    if-eqz v5, :cond_4

    move v5, v6

    :goto_2
    iput-boolean v5, p0, Lorg/farng/mp3/id3/ID3v2_3Frame;->readOnly:Z

    .line 192
    aget-byte v5, v1, v6

    and-int/lit16 v5, v5, 0x80

    if-eqz v5, :cond_5

    move v5, v6

    :goto_3
    iput-boolean v5, p0, Lorg/farng/mp3/id3/ID3v2_3Frame;->compression:Z

    .line 193
    aget-byte v5, v1, v6

    and-int/lit8 v5, v5, 0x40

    if-eqz v5, :cond_6

    move v5, v6

    :goto_4
    iput-boolean v5, p0, Lorg/farng/mp3/id3/ID3v2_3Frame;->encryption:Z

    .line 194
    aget-byte v5, v1, v6

    and-int/lit8 v5, v5, 0x20

    if-eqz v5, :cond_7

    :goto_5
    iput-boolean v6, p0, Lorg/farng/mp3/id3/ID3v2_3Frame;->groupingIdentity:Z

    .line 195
    invoke-virtual {p1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 196
    invoke-static {v4, p1}, Lorg/farng/mp3/id3/ID3v2_3Frame;->readBody(Ljava/lang/String;Ljava/io/RandomAccessFile;)Lorg/farng/mp3/id3/AbstractID3v2FrameBody;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/farng/mp3/AbstractMP3Fragment;->setBody(Lorg/farng/mp3/AbstractMP3FragmentBody;)V

    .line 197
    return-void

    :cond_2
    move v5, v7

    .line 189
    goto :goto_0

    :cond_3
    move v5, v7

    .line 190
    goto :goto_1

    :cond_4
    move v5, v7

    .line 191
    goto :goto_2

    :cond_5
    move v5, v7

    .line 192
    goto :goto_3

    :cond_6
    move v5, v7

    .line 193
    goto :goto_4

    :cond_7
    move v6, v7

    .line 194
    goto :goto_5
.end method

.method protected setAlterPreservation()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 238
    invoke-virtual {p0}, Lorg/farng/mp3/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    .line 239
    .local v0, str:Ljava/lang/String;
    const-string v1, "ETCO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "EQUA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "MLLT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "POSS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "SYLT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "SYTC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "RVAD"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "TENC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "TLEN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "TSIZ"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 249
    :cond_0
    iput-boolean v2, p0, Lorg/farng/mp3/id3/ID3v2_3Frame;->tagAlterPreservation:Z

    .line 250
    iput-boolean v3, p0, Lorg/farng/mp3/id3/ID3v2_3Frame;->fileAlterPreservation:Z

    .line 255
    :goto_0
    return-void

    .line 252
    :cond_1
    iput-boolean v2, p0, Lorg/farng/mp3/id3/ID3v2_3Frame;->tagAlterPreservation:Z

    .line 253
    iput-boolean v3, p0, Lorg/farng/mp3/id3/ID3v2_3Frame;->fileAlterPreservation:Z

    goto :goto_0
.end method

.method public write(Ljava/io/RandomAccessFile;)V
    .locals 9
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 201
    new-array v0, v8, [B

    .line 202
    .local v0, buffer:[B
    invoke-virtual {p0}, Lorg/farng/mp3/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v8}, Lorg/farng/mp3/TagUtility;->truncate(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 203
    .local v4, str:Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v3, v5, :cond_0

    .line 204
    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, v0, v3

    .line 203
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 206
    :cond_0
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p1, v0, v6, v5}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 207
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v1

    .line 210
    .local v1, filePointer:J
    invoke-virtual {p1, v8}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    .line 211
    invoke-virtual {p0}, Lorg/farng/mp3/id3/ID3v2_3Frame;->setAlterPreservation()V

    .line 212
    aput-byte v6, v0, v6

    .line 213
    aput-byte v6, v0, v7

    .line 214
    iget-boolean v5, p0, Lorg/farng/mp3/id3/ID3v2_3Frame;->tagAlterPreservation:Z

    if-eqz v5, :cond_1

    .line 215
    aget-byte v5, v0, v6

    or-int/lit16 v5, v5, 0x80

    int-to-byte v5, v5

    aput-byte v5, v0, v6

    .line 217
    :cond_1
    iget-boolean v5, p0, Lorg/farng/mp3/id3/ID3v2_3Frame;->fileAlterPreservation:Z

    if-eqz v5, :cond_2

    .line 218
    aget-byte v5, v0, v6

    or-int/lit8 v5, v5, 0x40

    int-to-byte v5, v5

    aput-byte v5, v0, v6

    .line 220
    :cond_2
    iget-boolean v5, p0, Lorg/farng/mp3/id3/ID3v2_3Frame;->readOnly:Z

    if-eqz v5, :cond_3

    .line 221
    aget-byte v5, v0, v6

    or-int/lit8 v5, v5, 0x20

    int-to-byte v5, v5

    aput-byte v5, v0, v6

    .line 223
    :cond_3
    iget-boolean v5, p0, Lorg/farng/mp3/id3/ID3v2_3Frame;->compression:Z

    if-eqz v5, :cond_4

    .line 224
    aget-byte v5, v0, v7

    or-int/lit16 v5, v5, 0x80

    int-to-byte v5, v5

    aput-byte v5, v0, v7

    .line 226
    :cond_4
    iget-boolean v5, p0, Lorg/farng/mp3/id3/ID3v2_3Frame;->encryption:Z

    if-eqz v5, :cond_5

    .line 227
    aget-byte v5, v0, v7

    or-int/lit8 v5, v5, 0x40

    int-to-byte v5, v5

    aput-byte v5, v0, v7

    .line 229
    :cond_5
    iget-boolean v5, p0, Lorg/farng/mp3/id3/ID3v2_3Frame;->groupingIdentity:Z

    if-eqz v5, :cond_6

    .line 230
    aget-byte v5, v0, v7

    or-int/lit8 v5, v5, 0x20

    int-to-byte v5, v5

    aput-byte v5, v0, v7

    .line 232
    :cond_6
    const/4 v5, 0x2

    invoke-virtual {p1, v0, v6, v5}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 233
    invoke-virtual {p1, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 234
    invoke-virtual {p0}, Lorg/farng/mp3/AbstractMP3Fragment;->getBody()Lorg/farng/mp3/AbstractMP3FragmentBody;

    move-result-object v5

    invoke-virtual {v5, p1}, Lorg/farng/mp3/AbstractMP3FragmentBody;->write(Ljava/io/RandomAccessFile;)V

    .line 235
    return-void
.end method
