.class public Lorg/farng/mp3/id3/ID3v2_3;
.super Lorg/farng/mp3/id3/ID3v2_2;
.source "ID3v2_3.java"


# instance fields
.field protected crcData:I

.field protected crcDataFlag:Z

.field protected experimental:Z

.field protected extended:Z

.field protected paddingSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 99
    invoke-direct {p0}, Lorg/farng/mp3/id3/ID3v2_2;-><init>()V

    .line 90
    iput-boolean v0, p0, Lorg/farng/mp3/id3/ID3v2_3;->crcDataFlag:Z

    .line 91
    iput-boolean v0, p0, Lorg/farng/mp3/id3/ID3v2_3;->experimental:Z

    .line 92
    iput-boolean v0, p0, Lorg/farng/mp3/id3/ID3v2_3;->extended:Z

    .line 93
    iput v0, p0, Lorg/farng/mp3/id3/ID3v2_3;->crcData:I

    .line 94
    iput v0, p0, Lorg/farng/mp3/id3/ID3v2_3;->paddingSize:I

    .line 100
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/farng/mp3/id3/AbstractID3v2;->setMajorVersion(B)V

    .line 101
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lorg/farng/mp3/id3/AbstractID3v2;->setRevision(B)V

    .line 102
    return-void
.end method

.method public constructor <init>(Ljava/io/RandomAccessFile;)V
    .locals 1
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/farng/mp3/TagException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 152
    invoke-direct {p0}, Lorg/farng/mp3/id3/ID3v2_2;-><init>()V

    .line 90
    iput-boolean v0, p0, Lorg/farng/mp3/id3/ID3v2_3;->crcDataFlag:Z

    .line 91
    iput-boolean v0, p0, Lorg/farng/mp3/id3/ID3v2_3;->experimental:Z

    .line 92
    iput-boolean v0, p0, Lorg/farng/mp3/id3/ID3v2_3;->extended:Z

    .line 93
    iput v0, p0, Lorg/farng/mp3/id3/ID3v2_3;->crcData:I

    .line 94
    iput v0, p0, Lorg/farng/mp3/id3/ID3v2_3;->paddingSize:I

    .line 153
    invoke-virtual {p0, p1}, Lorg/farng/mp3/id3/ID3v2_3;->read(Ljava/io/RandomAccessFile;)V

    .line 154
    return-void
.end method

.method public constructor <init>(Lorg/farng/mp3/AbstractMP3Tag;)V
    .locals 7
    .parameter "mp3tag"

    .prologue
    const/4 v5, 0x0

    .line 119
    invoke-direct {p0}, Lorg/farng/mp3/id3/ID3v2_2;-><init>()V

    .line 90
    iput-boolean v5, p0, Lorg/farng/mp3/id3/ID3v2_3;->crcDataFlag:Z

    .line 91
    iput-boolean v5, p0, Lorg/farng/mp3/id3/ID3v2_3;->experimental:Z

    .line 92
    iput-boolean v5, p0, Lorg/farng/mp3/id3/ID3v2_3;->extended:Z

    .line 93
    iput v5, p0, Lorg/farng/mp3/id3/ID3v2_3;->crcData:I

    .line 94
    iput v5, p0, Lorg/farng/mp3/id3/ID3v2_3;->paddingSize:I

    .line 120
    if-eqz p1, :cond_2

    .line 122
    instance-of v5, p1, Lorg/farng/mp3/id3/ID3v2_4;

    if-nez v5, :cond_0

    instance-of v5, p1, Lorg/farng/mp3/id3/ID3v2_3;

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 123
    new-instance v5, Ljava/lang/UnsupportedOperationException;

    const-string v6, "Copy Constructor not called. Please type cast the argument"

    invoke-direct {v5, v6}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 125
    :cond_0
    instance-of v5, p1, Lorg/farng/mp3/id3/ID3v2_4;

    if-eqz v5, :cond_1

    move-object v0, p1

    .line 126
    check-cast v0, Lorg/farng/mp3/id3/ID3v2_4;

    .line 130
    .local v0, convertedTag:Lorg/farng/mp3/id3/ID3v2_4;
    :goto_0
    iget-boolean v5, v0, Lorg/farng/mp3/id3/ID3v2_3;->extended:Z

    iput-boolean v5, p0, Lorg/farng/mp3/id3/ID3v2_3;->extended:Z

    .line 131
    iget-boolean v5, v0, Lorg/farng/mp3/id3/ID3v2_3;->experimental:Z

    iput-boolean v5, p0, Lorg/farng/mp3/id3/ID3v2_3;->experimental:Z

    .line 132
    iget-boolean v5, v0, Lorg/farng/mp3/id3/ID3v2_3;->crcDataFlag:Z

    iput-boolean v5, p0, Lorg/farng/mp3/id3/ID3v2_3;->crcDataFlag:Z

    .line 133
    iget v5, v0, Lorg/farng/mp3/id3/ID3v2_3;->crcData:I

    iput v5, p0, Lorg/farng/mp3/id3/ID3v2_3;->crcData:I

    .line 134
    iget v5, v0, Lorg/farng/mp3/id3/ID3v2_3;->paddingSize:I

    iput v5, p0, Lorg/farng/mp3/id3/ID3v2_3;->paddingSize:I

    .line 135
    iget-boolean v5, v0, Lorg/farng/mp3/id3/ID3v2_2;->compression:Z

    iput-boolean v5, p0, Lorg/farng/mp3/id3/ID3v2_2;->compression:Z

    .line 136
    iget-boolean v5, v0, Lorg/farng/mp3/id3/ID3v2_2;->unsynchronization:Z

    iput-boolean v5, p0, Lorg/farng/mp3/id3/ID3v2_2;->unsynchronization:Z

    .line 137
    move-object v2, v0

    .line 138
    .local v2, id3tag:Lorg/farng/mp3/id3/AbstractID3v2;
    invoke-virtual {v2}, Lorg/farng/mp3/id3/AbstractID3v2;->getFrameIterator()Ljava/util/Iterator;

    move-result-object v3

    .line 141
    .local v3, iterator:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 142
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/farng/mp3/id3/AbstractID3v2Frame;

    .line 143
    .local v1, frame:Lorg/farng/mp3/id3/AbstractID3v2Frame;
    new-instance v4, Lorg/farng/mp3/id3/ID3v2_3Frame;

    invoke-direct {v4, v1}, Lorg/farng/mp3/id3/ID3v2_3Frame;-><init>(Lorg/farng/mp3/id3/AbstractID3v2Frame;)V

    .line 144
    .local v4, newFrame:Lorg/farng/mp3/id3/ID3v2_3Frame;
    invoke-virtual {p0, v4}, Lorg/farng/mp3/id3/AbstractID3v2;->setFrame(Lorg/farng/mp3/id3/AbstractID3v2Frame;)V

    goto :goto_1

    .line 128
    .end local v0           #convertedTag:Lorg/farng/mp3/id3/ID3v2_4;
    .end local v1           #frame:Lorg/farng/mp3/id3/AbstractID3v2Frame;
    .end local v2           #id3tag:Lorg/farng/mp3/id3/AbstractID3v2;
    .end local v3           #iterator:Ljava/util/Iterator;
    .end local v4           #newFrame:Lorg/farng/mp3/id3/ID3v2_3Frame;
    :cond_1
    new-instance v0, Lorg/farng/mp3/id3/ID3v2_4;

    invoke-direct {v0, p1}, Lorg/farng/mp3/id3/ID3v2_4;-><init>(Lorg/farng/mp3/AbstractMP3Tag;)V

    .restart local v0       #convertedTag:Lorg/farng/mp3/id3/ID3v2_4;
    goto :goto_0

    .line 147
    .end local v0           #convertedTag:Lorg/farng/mp3/id3/ID3v2_4;
    :cond_2
    return-void
.end method

.method public constructor <init>(Lorg/farng/mp3/id3/ID3v2_3;)V
    .locals 1
    .parameter "copyObject"

    .prologue
    const/4 v0, 0x0

    .line 108
    invoke-direct {p0, p1}, Lorg/farng/mp3/id3/ID3v2_2;-><init>(Lorg/farng/mp3/id3/ID3v2_2;)V

    .line 90
    iput-boolean v0, p0, Lorg/farng/mp3/id3/ID3v2_3;->crcDataFlag:Z

    .line 91
    iput-boolean v0, p0, Lorg/farng/mp3/id3/ID3v2_3;->experimental:Z

    .line 92
    iput-boolean v0, p0, Lorg/farng/mp3/id3/ID3v2_3;->extended:Z

    .line 93
    iput v0, p0, Lorg/farng/mp3/id3/ID3v2_3;->crcData:I

    .line 94
    iput v0, p0, Lorg/farng/mp3/id3/ID3v2_3;->paddingSize:I

    .line 109
    iget-boolean v0, p1, Lorg/farng/mp3/id3/ID3v2_3;->crcDataFlag:Z

    iput-boolean v0, p0, Lorg/farng/mp3/id3/ID3v2_3;->crcDataFlag:Z

    .line 110
    iget-boolean v0, p1, Lorg/farng/mp3/id3/ID3v2_3;->experimental:Z

    iput-boolean v0, p0, Lorg/farng/mp3/id3/ID3v2_3;->experimental:Z

    .line 111
    iget-boolean v0, p1, Lorg/farng/mp3/id3/ID3v2_3;->extended:Z

    iput-boolean v0, p0, Lorg/farng/mp3/id3/ID3v2_3;->extended:Z

    .line 112
    iget v0, p1, Lorg/farng/mp3/id3/ID3v2_3;->crcData:I

    iput v0, p0, Lorg/farng/mp3/id3/ID3v2_3;->crcData:I

    .line 113
    iget v0, p1, Lorg/farng/mp3/id3/ID3v2_3;->paddingSize:I

    iput v0, p0, Lorg/farng/mp3/id3/ID3v2_3;->paddingSize:I

    .line 114
    return-void
.end method


# virtual methods
.method public append(Lorg/farng/mp3/AbstractMP3Tag;)V
    .locals 1
    .parameter "tag"

    .prologue
    .line 179
    instance-of v0, p1, Lorg/farng/mp3/id3/ID3v2_3;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 180
    check-cast v0, Lorg/farng/mp3/id3/ID3v2_3;

    iget-boolean v0, v0, Lorg/farng/mp3/id3/ID3v2_3;->experimental:Z

    iput-boolean v0, p0, Lorg/farng/mp3/id3/ID3v2_3;->experimental:Z

    move-object v0, p1

    .line 181
    check-cast v0, Lorg/farng/mp3/id3/ID3v2_3;

    iget-boolean v0, v0, Lorg/farng/mp3/id3/ID3v2_3;->extended:Z

    iput-boolean v0, p0, Lorg/farng/mp3/id3/ID3v2_3;->extended:Z

    move-object v0, p1

    .line 182
    check-cast v0, Lorg/farng/mp3/id3/ID3v2_3;

    iget-boolean v0, v0, Lorg/farng/mp3/id3/ID3v2_3;->crcDataFlag:Z

    iput-boolean v0, p0, Lorg/farng/mp3/id3/ID3v2_3;->crcDataFlag:Z

    move-object v0, p1

    .line 183
    check-cast v0, Lorg/farng/mp3/id3/ID3v2_3;

    iget v0, v0, Lorg/farng/mp3/id3/ID3v2_3;->paddingSize:I

    iput v0, p0, Lorg/farng/mp3/id3/ID3v2_3;->paddingSize:I

    move-object v0, p1

    .line 184
    check-cast v0, Lorg/farng/mp3/id3/ID3v2_3;

    iget v0, v0, Lorg/farng/mp3/id3/ID3v2_3;->crcData:I

    iput v0, p0, Lorg/farng/mp3/id3/ID3v2_3;->crcData:I

    .line 186
    :cond_0
    invoke-super {p0, p1}, Lorg/farng/mp3/id3/ID3v2_2;->append(Lorg/farng/mp3/AbstractMP3Tag;)V

    .line 187
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "obj"

    .prologue
    const/4 v1, 0x0

    .line 190
    instance-of v2, p1, Lorg/farng/mp3/id3/ID3v2_3;

    if-nez v2, :cond_1

    .line 209
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 193
    check-cast v0, Lorg/farng/mp3/id3/ID3v2_3;

    .line 194
    .local v0, id3v2_3:Lorg/farng/mp3/id3/ID3v2_3;
    iget v2, p0, Lorg/farng/mp3/id3/ID3v2_3;->crcData:I

    iget v3, v0, Lorg/farng/mp3/id3/ID3v2_3;->crcData:I

    if-ne v2, v3, :cond_0

    .line 197
    iget-boolean v2, p0, Lorg/farng/mp3/id3/ID3v2_3;->crcDataFlag:Z

    iget-boolean v3, v0, Lorg/farng/mp3/id3/ID3v2_3;->crcDataFlag:Z

    if-ne v2, v3, :cond_0

    .line 200
    iget-boolean v2, p0, Lorg/farng/mp3/id3/ID3v2_3;->experimental:Z

    iget-boolean v3, v0, Lorg/farng/mp3/id3/ID3v2_3;->experimental:Z

    if-ne v2, v3, :cond_0

    .line 203
    iget-boolean v2, p0, Lorg/farng/mp3/id3/ID3v2_3;->extended:Z

    iget-boolean v3, v0, Lorg/farng/mp3/id3/ID3v2_3;->extended:Z

    if-ne v2, v3, :cond_0

    .line 206
    iget v2, p0, Lorg/farng/mp3/id3/ID3v2_3;->paddingSize:I

    iget v3, v0, Lorg/farng/mp3/id3/ID3v2_3;->paddingSize:I

    if-ne v2, v3, :cond_0

    .line 209
    invoke-super {p0, p1}, Lorg/farng/mp3/id3/ID3v2_2;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getAlbumTitle()Ljava/lang/String;
    .locals 4

    .prologue
    .line 413
    const-string v2, ""

    .line 414
    .local v2, text:Ljava/lang/String;
    const-string v3, "TALB"

    invoke-virtual {p0, v3}, Lorg/farng/mp3/id3/AbstractID3v2;->getFrame(Ljava/lang/String;)Lorg/farng/mp3/id3/AbstractID3v2Frame;

    move-result-object v1

    .line 415
    .local v1, frame:Lorg/farng/mp3/id3/AbstractID3v2Frame;
    if-eqz v1, :cond_0

    .line 416
    invoke-virtual {v1}, Lorg/farng/mp3/AbstractMP3Fragment;->getBody()Lorg/farng/mp3/AbstractMP3FragmentBody;

    move-result-object v0

    check-cast v0, Lorg/farng/mp3/id3/FrameBodyTALB;

    .line 417
    .local v0, body:Lorg/farng/mp3/id3/FrameBodyTALB;
    invoke-virtual {v0}, Lorg/farng/mp3/id3/AbstractFrameBodyTextInformation;->getText()Ljava/lang/String;

    move-result-object v2

    .line 419
    .end local v0           #body:Lorg/farng/mp3/id3/FrameBodyTALB;
    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public getAuthorComposer()Ljava/lang/String;
    .locals 4

    .prologue
    .line 480
    const-string v2, ""

    .line 481
    .local v2, text:Ljava/lang/String;
    const-string v3, "TCOM"

    invoke-virtual {p0, v3}, Lorg/farng/mp3/id3/AbstractID3v2;->getFrame(Ljava/lang/String;)Lorg/farng/mp3/id3/AbstractID3v2Frame;

    move-result-object v1

    .line 482
    .local v1, frame:Lorg/farng/mp3/id3/AbstractID3v2Frame;
    if-eqz v1, :cond_0

    .line 483
    invoke-virtual {v1}, Lorg/farng/mp3/AbstractMP3Fragment;->getBody()Lorg/farng/mp3/AbstractMP3FragmentBody;

    move-result-object v0

    check-cast v0, Lorg/farng/mp3/id3/FrameBodyTCOM;

    .line 484
    .local v0, body:Lorg/farng/mp3/id3/FrameBodyTCOM;
    invoke-virtual {v0}, Lorg/farng/mp3/id3/AbstractFrameBodyTextInformation;->getText()Ljava/lang/String;

    move-result-object v2

    .line 486
    .end local v0           #body:Lorg/farng/mp3/id3/FrameBodyTCOM;
    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 157
    const-string v0, "ID3v2.30"

    return-object v0
.end method

.method public getLeadArtist()Ljava/lang/String;
    .locals 4

    .prologue
    .line 403
    const-string v2, ""

    .line 404
    .local v2, text:Ljava/lang/String;
    const-string v3, "TPE1"

    invoke-virtual {p0, v3}, Lorg/farng/mp3/id3/AbstractID3v2;->getFrame(Ljava/lang/String;)Lorg/farng/mp3/id3/AbstractID3v2Frame;

    move-result-object v1

    .line 405
    .local v1, frame:Lorg/farng/mp3/id3/AbstractID3v2Frame;
    if-eqz v1, :cond_0

    .line 406
    invoke-virtual {v1}, Lorg/farng/mp3/AbstractMP3Fragment;->getBody()Lorg/farng/mp3/AbstractMP3FragmentBody;

    move-result-object v0

    check-cast v0, Lorg/farng/mp3/id3/FrameBodyTPE1;

    .line 407
    .local v0, body:Lorg/farng/mp3/id3/FrameBodyTPE1;
    invoke-virtual {v0}, Lorg/farng/mp3/id3/AbstractFrameBodyTextInformation;->getText()Ljava/lang/String;

    move-result-object v2

    .line 409
    .end local v0           #body:Lorg/farng/mp3/id3/FrameBodyTPE1;
    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public getSize()I
    .locals 4

    .prologue
    .line 161
    const/16 v2, 0xa

    .line 162
    .local v2, size:I
    iget-boolean v3, p0, Lorg/farng/mp3/id3/ID3v2_3;->extended:Z

    if-eqz v3, :cond_0

    .line 163
    iget-boolean v3, p0, Lorg/farng/mp3/id3/ID3v2_3;->crcDataFlag:Z

    if-eqz v3, :cond_1

    .line 164
    add-int/lit8 v2, v2, 0xe

    .line 169
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lorg/farng/mp3/id3/AbstractID3v2;->getFrameIterator()Ljava/util/Iterator;

    move-result-object v1

    .line 171
    .local v1, iterator:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 172
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/farng/mp3/id3/AbstractID3v2Frame;

    .line 173
    .local v0, frame:Lorg/farng/mp3/id3/AbstractID3v2Frame;
    invoke-virtual {v0}, Lorg/farng/mp3/AbstractMP3FileItem;->getSize()I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_1

    .line 166
    .end local v0           #frame:Lorg/farng/mp3/id3/AbstractID3v2Frame;
    .end local v1           #iterator:Ljava/util/Iterator;
    :cond_1
    add-int/lit8 v2, v2, 0xa

    goto :goto_0

    .line 175
    .restart local v1       #iterator:Ljava/util/Iterator;
    :cond_2
    return v2
.end method

.method public getSongComment()Ljava/lang/String;
    .locals 4

    .prologue
    .line 433
    const-string v2, ""

    .line 434
    .local v2, text:Ljava/lang/String;
    const-string v3, "COMM\u0000eng\u0000"

    invoke-virtual {p0, v3}, Lorg/farng/mp3/id3/AbstractID3v2;->getFrame(Ljava/lang/String;)Lorg/farng/mp3/id3/AbstractID3v2Frame;

    move-result-object v1

    .line 435
    .local v1, frame:Lorg/farng/mp3/id3/AbstractID3v2Frame;
    if-eqz v1, :cond_0

    .line 436
    invoke-virtual {v1}, Lorg/farng/mp3/AbstractMP3Fragment;->getBody()Lorg/farng/mp3/AbstractMP3FragmentBody;

    move-result-object v0

    check-cast v0, Lorg/farng/mp3/id3/FrameBodyCOMM;

    .line 437
    .local v0, body:Lorg/farng/mp3/id3/FrameBodyCOMM;
    invoke-virtual {v0}, Lorg/farng/mp3/id3/FrameBodyCOMM;->getText()Ljava/lang/String;

    move-result-object v2

    .line 439
    .end local v0           #body:Lorg/farng/mp3/id3/FrameBodyCOMM;
    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public getSongGenre()Ljava/lang/String;
    .locals 4

    .prologue
    .line 443
    const-string v2, ""

    .line 444
    .local v2, text:Ljava/lang/String;
    const-string v3, "TCON"

    invoke-virtual {p0, v3}, Lorg/farng/mp3/id3/AbstractID3v2;->getFrame(Ljava/lang/String;)Lorg/farng/mp3/id3/AbstractID3v2Frame;

    move-result-object v1

    .line 445
    .local v1, frame:Lorg/farng/mp3/id3/AbstractID3v2Frame;
    if-eqz v1, :cond_0

    .line 446
    invoke-virtual {v1}, Lorg/farng/mp3/AbstractMP3Fragment;->getBody()Lorg/farng/mp3/AbstractMP3FragmentBody;

    move-result-object v0

    check-cast v0, Lorg/farng/mp3/id3/FrameBodyTCON;

    .line 447
    .local v0, body:Lorg/farng/mp3/id3/FrameBodyTCON;
    invoke-virtual {v0}, Lorg/farng/mp3/id3/AbstractFrameBodyTextInformation;->getText()Ljava/lang/String;

    move-result-object v2

    .line 449
    .end local v0           #body:Lorg/farng/mp3/id3/FrameBodyTCON;
    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public getSongLyric()Ljava/lang/String;
    .locals 4

    .prologue
    .line 463
    const-string v2, ""

    .line 464
    .local v2, text:Ljava/lang/String;
    const-string v3, "SYLT"

    invoke-virtual {p0, v3}, Lorg/farng/mp3/id3/AbstractID3v2;->getFrame(Ljava/lang/String;)Lorg/farng/mp3/id3/AbstractID3v2Frame;

    move-result-object v1

    .line 465
    .local v1, frame:Lorg/farng/mp3/id3/AbstractID3v2Frame;
    if-eqz v1, :cond_0

    .line 466
    invoke-virtual {v1}, Lorg/farng/mp3/AbstractMP3Fragment;->getBody()Lorg/farng/mp3/AbstractMP3FragmentBody;

    move-result-object v0

    check-cast v0, Lorg/farng/mp3/id3/FrameBodySYLT;

    .line 467
    .local v0, body:Lorg/farng/mp3/id3/FrameBodySYLT;
    invoke-virtual {v0}, Lorg/farng/mp3/id3/FrameBodySYLT;->getLyric()Ljava/lang/String;

    move-result-object v2

    .line 469
    .end local v0           #body:Lorg/farng/mp3/id3/FrameBodySYLT;
    :cond_0
    const-string v3, ""

    if-ne v2, v3, :cond_1

    .line 470
    const-string v3, "USLT\u0000eng\u0000"

    invoke-virtual {p0, v3}, Lorg/farng/mp3/id3/AbstractID3v2;->getFrame(Ljava/lang/String;)Lorg/farng/mp3/id3/AbstractID3v2Frame;

    move-result-object v1

    .line 471
    if-eqz v1, :cond_1

    .line 472
    invoke-virtual {v1}, Lorg/farng/mp3/AbstractMP3Fragment;->getBody()Lorg/farng/mp3/AbstractMP3FragmentBody;

    move-result-object v0

    check-cast v0, Lorg/farng/mp3/id3/FrameBodyUSLT;

    .line 473
    .local v0, body:Lorg/farng/mp3/id3/FrameBodyUSLT;
    invoke-virtual {v0}, Lorg/farng/mp3/id3/FrameBodyUSLT;->getLyric()Ljava/lang/String;

    move-result-object v2

    .line 476
    .end local v0           #body:Lorg/farng/mp3/id3/FrameBodyUSLT;
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public getSongTitle()Ljava/lang/String;
    .locals 4

    .prologue
    .line 393
    const-string v2, ""

    .line 394
    .local v2, text:Ljava/lang/String;
    const-string v3, "TIT2"

    invoke-virtual {p0, v3}, Lorg/farng/mp3/id3/AbstractID3v2;->getFrame(Ljava/lang/String;)Lorg/farng/mp3/id3/AbstractID3v2Frame;

    move-result-object v1

    .line 395
    .local v1, frame:Lorg/farng/mp3/id3/AbstractID3v2Frame;
    if-eqz v1, :cond_0

    .line 396
    invoke-virtual {v1}, Lorg/farng/mp3/AbstractMP3Fragment;->getBody()Lorg/farng/mp3/AbstractMP3FragmentBody;

    move-result-object v0

    check-cast v0, Lorg/farng/mp3/id3/FrameBodyTIT2;

    .line 397
    .local v0, body:Lorg/farng/mp3/id3/FrameBodyTIT2;
    invoke-virtual {v0}, Lorg/farng/mp3/id3/AbstractFrameBodyTextInformation;->getText()Ljava/lang/String;

    move-result-object v2

    .line 399
    .end local v0           #body:Lorg/farng/mp3/id3/FrameBodyTIT2;
    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public getTrackNumberOnAlbum()Ljava/lang/String;
    .locals 4

    .prologue
    .line 453
    const-string v2, ""

    .line 454
    .local v2, text:Ljava/lang/String;
    const-string v3, "TRCK"

    invoke-virtual {p0, v3}, Lorg/farng/mp3/id3/AbstractID3v2;->getFrame(Ljava/lang/String;)Lorg/farng/mp3/id3/AbstractID3v2Frame;

    move-result-object v1

    .line 455
    .local v1, frame:Lorg/farng/mp3/id3/AbstractID3v2Frame;
    if-eqz v1, :cond_0

    .line 456
    invoke-virtual {v1}, Lorg/farng/mp3/AbstractMP3Fragment;->getBody()Lorg/farng/mp3/AbstractMP3FragmentBody;

    move-result-object v0

    check-cast v0, Lorg/farng/mp3/id3/FrameBodyTRCK;

    .line 457
    .local v0, body:Lorg/farng/mp3/id3/FrameBodyTRCK;
    invoke-virtual {v0}, Lorg/farng/mp3/id3/AbstractFrameBodyTextInformation;->getText()Ljava/lang/String;

    move-result-object v2

    .line 459
    .end local v0           #body:Lorg/farng/mp3/id3/FrameBodyTRCK;
    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public getYearReleased()Ljava/lang/String;
    .locals 4

    .prologue
    .line 423
    const-string v2, ""

    .line 424
    .local v2, text:Ljava/lang/String;
    const-string v3, "TYER"

    invoke-virtual {p0, v3}, Lorg/farng/mp3/id3/AbstractID3v2;->getFrame(Ljava/lang/String;)Lorg/farng/mp3/id3/AbstractID3v2Frame;

    move-result-object v1

    .line 425
    .local v1, frame:Lorg/farng/mp3/id3/AbstractID3v2Frame;
    if-eqz v1, :cond_0

    .line 426
    invoke-virtual {v1}, Lorg/farng/mp3/AbstractMP3Fragment;->getBody()Lorg/farng/mp3/AbstractMP3FragmentBody;

    move-result-object v0

    check-cast v0, Lorg/farng/mp3/id3/FrameBodyTYER;

    .line 427
    .local v0, body:Lorg/farng/mp3/id3/FrameBodyTYER;
    invoke-virtual {v0}, Lorg/farng/mp3/id3/AbstractFrameBodyTextInformation;->getText()Ljava/lang/String;

    move-result-object v2

    .line 429
    .end local v0           #body:Lorg/farng/mp3/id3/FrameBodyTYER;
    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public overwrite(Lorg/farng/mp3/AbstractMP3Tag;)V
    .locals 1
    .parameter "tag"

    .prologue
    .line 213
    instance-of v0, p1, Lorg/farng/mp3/id3/ID3v2_3;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 214
    check-cast v0, Lorg/farng/mp3/id3/ID3v2_3;

    iget-boolean v0, v0, Lorg/farng/mp3/id3/ID3v2_3;->experimental:Z

    iput-boolean v0, p0, Lorg/farng/mp3/id3/ID3v2_3;->experimental:Z

    move-object v0, p1

    .line 215
    check-cast v0, Lorg/farng/mp3/id3/ID3v2_3;

    iget-boolean v0, v0, Lorg/farng/mp3/id3/ID3v2_3;->extended:Z

    iput-boolean v0, p0, Lorg/farng/mp3/id3/ID3v2_3;->extended:Z

    move-object v0, p1

    .line 216
    check-cast v0, Lorg/farng/mp3/id3/ID3v2_3;

    iget-boolean v0, v0, Lorg/farng/mp3/id3/ID3v2_3;->crcDataFlag:Z

    iput-boolean v0, p0, Lorg/farng/mp3/id3/ID3v2_3;->crcDataFlag:Z

    move-object v0, p1

    .line 217
    check-cast v0, Lorg/farng/mp3/id3/ID3v2_3;

    iget v0, v0, Lorg/farng/mp3/id3/ID3v2_3;->paddingSize:I

    iput v0, p0, Lorg/farng/mp3/id3/ID3v2_3;->paddingSize:I

    move-object v0, p1

    .line 218
    check-cast v0, Lorg/farng/mp3/id3/ID3v2_3;

    iget v0, v0, Lorg/farng/mp3/id3/ID3v2_3;->crcData:I

    iput v0, p0, Lorg/farng/mp3/id3/ID3v2_3;->crcData:I

    .line 220
    :cond_0
    invoke-super {p0, p1}, Lorg/farng/mp3/id3/ID3v2_2;->overwrite(Lorg/farng/mp3/AbstractMP3Tag;)V

    .line 221
    return-void
.end method

.method public read(Ljava/io/RandomAccessFile;)V
    .locals 14
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/farng/mp3/TagException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v13, 0x3

    const/16 v12, 0xa

    const/4 v11, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 225
    const/4 v8, 0x4

    new-array v0, v8, [B

    .line 226
    .local v0, buffer:[B
    invoke-virtual {p0, p1}, Lorg/farng/mp3/id3/ID3v2_3;->seek(Ljava/io/RandomAccessFile;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 227
    new-instance v8, Lorg/farng/mp3/TagNotFoundException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/farng/mp3/id3/ID3v2_3;->getIdentifier()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " tag not found"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/farng/mp3/TagNotFoundException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 231
    :cond_0
    invoke-virtual {p1, v0, v10, v13}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 232
    aget-byte v8, v0, v10

    if-ne v8, v13, :cond_1

    aget-byte v8, v0, v9

    if-eqz v8, :cond_2

    .line 233
    :cond_1
    new-instance v8, Lorg/farng/mp3/TagNotFoundException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/farng/mp3/id3/ID3v2_3;->getIdentifier()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " tag not found"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/farng/mp3/TagNotFoundException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 235
    :cond_2
    aget-byte v8, v0, v10

    invoke-virtual {p0, v8}, Lorg/farng/mp3/id3/AbstractID3v2;->setMajorVersion(B)V

    .line 236
    aget-byte v8, v0, v9

    invoke-virtual {p0, v8}, Lorg/farng/mp3/id3/AbstractID3v2;->setRevision(B)V

    .line 237
    aget-byte v8, v0, v11

    and-int/lit16 v8, v8, 0x80

    if-eqz v8, :cond_3

    move v8, v9

    :goto_0
    iput-boolean v8, p0, Lorg/farng/mp3/id3/ID3v2_2;->unsynchronization:Z

    .line 238
    aget-byte v8, v0, v11

    and-int/lit8 v8, v8, 0x40

    if-eqz v8, :cond_4

    move v8, v9

    :goto_1
    iput-boolean v8, p0, Lorg/farng/mp3/id3/ID3v2_3;->extended:Z

    .line 239
    aget-byte v8, v0, v11

    and-int/lit8 v8, v8, 0x20

    if-eqz v8, :cond_5

    move v8, v9

    :goto_2
    iput-boolean v8, p0, Lorg/farng/mp3/id3/ID3v2_3;->experimental:Z

    .line 242
    const/4 v8, 0x4

    invoke-virtual {p1, v0, v10, v8}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 243
    invoke-static {v0}, Lorg/farng/mp3/id3/ID3v2_3;->byteArrayToSize([B)I

    move-result v7

    .line 244
    .local v7, size:I
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v3

    .line 245
    .local v3, filePointer:J
    iget-boolean v8, p0, Lorg/farng/mp3/id3/ID3v2_3;->extended:Z

    if-eqz v8, :cond_b

    .line 247
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v2

    .line 250
    .local v2, extendedHeaderSize:I
    const/4 v8, 0x6

    if-eq v2, v8, :cond_6

    if-eq v2, v12, :cond_6

    .line 251
    new-instance v8, Lorg/farng/mp3/InvalidTagException;

    const-string v9, "Invalid Extended Header Size."

    invoke-direct {v8, v9}, Lorg/farng/mp3/InvalidTagException;-><init>(Ljava/lang/String;)V

    throw v8

    .end local v2           #extendedHeaderSize:I
    .end local v3           #filePointer:J
    .end local v7           #size:I
    :cond_3
    move v8, v10

    .line 237
    goto :goto_0

    :cond_4
    move v8, v10

    .line 238
    goto :goto_1

    :cond_5
    move v8, v10

    .line 239
    goto :goto_2

    .line 253
    .restart local v2       #extendedHeaderSize:I
    .restart local v3       #filePointer:J
    .restart local v7       #size:I
    :cond_6
    invoke-virtual {p1, v0, v10, v11}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 254
    aget-byte v8, v0, v10

    and-int/lit16 v8, v8, 0x80

    if-eqz v8, :cond_7

    move v10, v9

    :cond_7
    iput-boolean v10, p0, Lorg/farng/mp3/id3/ID3v2_3;->crcDataFlag:Z

    .line 258
    if-ne v2, v12, :cond_8

    iget-boolean v8, p0, Lorg/farng/mp3/id3/ID3v2_3;->crcDataFlag:Z

    if-eqz v8, :cond_9

    :cond_8
    const/4 v8, 0x6

    if-ne v2, v8, :cond_a

    iget-boolean v8, p0, Lorg/farng/mp3/id3/ID3v2_3;->crcDataFlag:Z

    if-ne v8, v9, :cond_a

    .line 260
    :cond_9
    new-instance v8, Lorg/farng/mp3/InvalidTagException;

    const-string v9, "CRC Data flag not set correctly."

    invoke-direct {v8, v9}, Lorg/farng/mp3/InvalidTagException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 262
    :cond_a
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v8

    iput v8, p0, Lorg/farng/mp3/id3/ID3v2_3;->paddingSize:I

    .line 263
    if-ne v2, v12, :cond_b

    iget-boolean v8, p0, Lorg/farng/mp3/id3/ID3v2_3;->crcDataFlag:Z

    if-eqz v8, :cond_b

    .line 264
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v8

    iput v8, p0, Lorg/farng/mp3/id3/ID3v2_3;->crcData:I

    .line 268
    .end local v2           #extendedHeaderSize:I
    :cond_b
    invoke-virtual {p0}, Lorg/farng/mp3/id3/AbstractID3v2;->clearFrameMap()V

    .line 271
    invoke-virtual {p0, v7}, Lorg/farng/mp3/id3/AbstractID3v2;->setFileReadBytes(I)V

    .line 272
    invoke-static {}, Lorg/farng/mp3/id3/AbstractID3v2;->resetPaddingCounter()V

    .line 273
    :goto_3
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v8

    sub-long/2addr v8, v3

    int-to-long v10, v7

    cmp-long v8, v8, v10

    if-gtz v8, :cond_e

    .line 275
    :try_start_0
    new-instance v6, Lorg/farng/mp3/id3/ID3v2_3Frame;

    invoke-direct {v6, p1}, Lorg/farng/mp3/id3/ID3v2_3Frame;-><init>(Ljava/io/RandomAccessFile;)V

    .line 276
    .local v6, next:Lorg/farng/mp3/id3/ID3v2_3Frame;
    invoke-virtual {v6}, Lorg/farng/mp3/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v5

    .line 277
    .local v5, id:Ljava/lang/String;
    invoke-virtual {p0, v5}, Lorg/farng/mp3/id3/AbstractID3v2;->hasFrame(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 278
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "; "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lorg/farng/mp3/id3/AbstractID3v2;->appendDuplicateFrameId(Ljava/lang/String;)V

    .line 279
    invoke-virtual {p0, v5}, Lorg/farng/mp3/id3/AbstractID3v2;->getFrame(Ljava/lang/String;)Lorg/farng/mp3/id3/AbstractID3v2Frame;

    move-result-object v8

    invoke-virtual {v8}, Lorg/farng/mp3/AbstractMP3FileItem;->getSize()I

    move-result v8

    invoke-virtual {p0, v8}, Lorg/farng/mp3/id3/AbstractID3v2;->incrementDuplicateBytes(I)V

    .line 281
    :cond_c
    invoke-virtual {p0, v6}, Lorg/farng/mp3/id3/AbstractID3v2;->setFrame(Lorg/farng/mp3/id3/AbstractID3v2Frame;)V
    :try_end_0
    .catch Lorg/farng/mp3/InvalidTagException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 282
    .end local v5           #id:Ljava/lang/String;
    .end local v6           #next:Lorg/farng/mp3/id3/ID3v2_3Frame;
    :catch_0
    move-exception v1

    .line 283
    .local v1, ex:Lorg/farng/mp3/InvalidTagException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    const-string v9, "Found empty frame"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 284
    invoke-virtual {p0, v12}, Lorg/farng/mp3/id3/AbstractID3v2;->incrementEmptyFrameBytes(I)V

    goto :goto_3

    .line 286
    :cond_d
    invoke-virtual {p0}, Lorg/farng/mp3/id3/AbstractID3v2;->incrementInvalidFrameBytes()V

    goto :goto_3

    .line 290
    .end local v1           #ex:Lorg/farng/mp3/InvalidTagException;
    :cond_e
    invoke-static {}, Lorg/farng/mp3/id3/ID3v2_3;->getPaddingCounter()I

    move-result v8

    invoke-virtual {p0, v8}, Lorg/farng/mp3/id3/AbstractID3v2;->setPaddingSize(I)V

    .line 291
    return-void
.end method

.method public seek(Ljava/io/RandomAccessFile;)Z
    .locals 9
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v8, 0x3

    const/4 v3, 0x0

    .line 294
    new-array v0, v8, [B

    .line 295
    .local v0, buffer:[B
    const-wide/16 v4, 0x0

    invoke-virtual {p1, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 298
    invoke-virtual {p1, v0, v3, v8}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 299
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0, v3, v8}, Ljava/lang/String;-><init>([BII)V

    .line 300
    .local v1, tag:Ljava/lang/String;
    const-string v4, "ID3"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 309
    :goto_0
    return v3

    .line 305
    :cond_0
    const/4 v4, 0x2

    invoke-virtual {p1, v0, v3, v4}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 308
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v4

    const-wide/16 v6, 0x2

    sub-long/2addr v4, v6

    invoke-virtual {p1, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 309
    aget-byte v4, v0, v3

    if-ne v4, v8, :cond_1

    aget-byte v4, v0, v2

    if-nez v4, :cond_1

    :goto_1
    move v3, v2

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1
.end method

.method public setAlbumTitle(Ljava/lang/String;)V
    .locals 4
    .parameter "albumTitle"

    .prologue
    .line 510
    const-string v1, "TALB"

    invoke-virtual {p0, v1}, Lorg/farng/mp3/id3/AbstractID3v2;->getFrame(Ljava/lang/String;)Lorg/farng/mp3/id3/AbstractID3v2Frame;

    move-result-object v0

    .line 511
    .local v0, field:Lorg/farng/mp3/id3/AbstractID3v2Frame;
    if-nez v0, :cond_0

    .line 512
    new-instance v0, Lorg/farng/mp3/id3/ID3v2_3Frame;

    .end local v0           #field:Lorg/farng/mp3/id3/AbstractID3v2Frame;
    new-instance v1, Lorg/farng/mp3/id3/FrameBodyTALB;

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/farng/mp3/id3/FrameBodyTALB;-><init>(BLjava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/farng/mp3/id3/ID3v2_3Frame;-><init>(Lorg/farng/mp3/id3/AbstractID3v2FrameBody;)V

    .line 513
    .restart local v0       #field:Lorg/farng/mp3/id3/AbstractID3v2Frame;
    invoke-virtual {p0, v0}, Lorg/farng/mp3/id3/AbstractID3v2;->setFrame(Lorg/farng/mp3/id3/AbstractID3v2Frame;)V

    .line 517
    :goto_0
    return-void

    .line 515
    :cond_0
    invoke-virtual {v0}, Lorg/farng/mp3/AbstractMP3Fragment;->getBody()Lorg/farng/mp3/AbstractMP3FragmentBody;

    move-result-object v1

    check-cast v1, Lorg/farng/mp3/id3/FrameBodyTALB;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/farng/mp3/id3/AbstractFrameBodyTextInformation;->setText(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setAuthorComposer(Ljava/lang/String;)V
    .locals 4
    .parameter "authorComposer"

    .prologue
    .line 570
    const-string v1, "TCOM"

    invoke-virtual {p0, v1}, Lorg/farng/mp3/id3/AbstractID3v2;->getFrame(Ljava/lang/String;)Lorg/farng/mp3/id3/AbstractID3v2Frame;

    move-result-object v0

    .line 571
    .local v0, field:Lorg/farng/mp3/id3/AbstractID3v2Frame;
    if-nez v0, :cond_0

    .line 572
    new-instance v0, Lorg/farng/mp3/id3/ID3v2_3Frame;

    .end local v0           #field:Lorg/farng/mp3/id3/AbstractID3v2Frame;
    new-instance v1, Lorg/farng/mp3/id3/FrameBodyTCOM;

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/farng/mp3/id3/FrameBodyTCOM;-><init>(BLjava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/farng/mp3/id3/ID3v2_3Frame;-><init>(Lorg/farng/mp3/id3/AbstractID3v2FrameBody;)V

    .line 573
    .restart local v0       #field:Lorg/farng/mp3/id3/AbstractID3v2Frame;
    invoke-virtual {p0, v0}, Lorg/farng/mp3/id3/AbstractID3v2;->setFrame(Lorg/farng/mp3/id3/AbstractID3v2Frame;)V

    .line 577
    :goto_0
    return-void

    .line 575
    :cond_0
    invoke-virtual {v0}, Lorg/farng/mp3/AbstractMP3Fragment;->getBody()Lorg/farng/mp3/AbstractMP3FragmentBody;

    move-result-object v1

    check-cast v1, Lorg/farng/mp3/id3/FrameBodyTCOM;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/farng/mp3/id3/AbstractFrameBodyTextInformation;->setText(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setLeadArtist(Ljava/lang/String;)V
    .locals 4
    .parameter "leadArtist"

    .prologue
    .line 500
    const-string v1, "TPE1"

    invoke-virtual {p0, v1}, Lorg/farng/mp3/id3/AbstractID3v2;->getFrame(Ljava/lang/String;)Lorg/farng/mp3/id3/AbstractID3v2Frame;

    move-result-object v0

    .line 501
    .local v0, field:Lorg/farng/mp3/id3/AbstractID3v2Frame;
    if-nez v0, :cond_0

    .line 502
    new-instance v0, Lorg/farng/mp3/id3/ID3v2_3Frame;

    .end local v0           #field:Lorg/farng/mp3/id3/AbstractID3v2Frame;
    new-instance v1, Lorg/farng/mp3/id3/FrameBodyTPE1;

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/farng/mp3/id3/FrameBodyTPE1;-><init>(BLjava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/farng/mp3/id3/ID3v2_3Frame;-><init>(Lorg/farng/mp3/id3/AbstractID3v2FrameBody;)V

    .line 503
    .restart local v0       #field:Lorg/farng/mp3/id3/AbstractID3v2Frame;
    invoke-virtual {p0, v0}, Lorg/farng/mp3/id3/AbstractID3v2;->setFrame(Lorg/farng/mp3/id3/AbstractID3v2Frame;)V

    .line 507
    :goto_0
    return-void

    .line 505
    :cond_0
    invoke-virtual {v0}, Lorg/farng/mp3/AbstractMP3Fragment;->getBody()Lorg/farng/mp3/AbstractMP3FragmentBody;

    move-result-object v1

    check-cast v1, Lorg/farng/mp3/id3/FrameBodyTPE1;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/farng/mp3/id3/AbstractFrameBodyTextInformation;->setText(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setSongComment(Ljava/lang/String;)V
    .locals 6
    .parameter "songComment"

    .prologue
    .line 530
    const-string v1, "COMM"

    invoke-virtual {p0, v1}, Lorg/farng/mp3/id3/AbstractID3v2;->getFrame(Ljava/lang/String;)Lorg/farng/mp3/id3/AbstractID3v2Frame;

    move-result-object v0

    .line 531
    .local v0, field:Lorg/farng/mp3/id3/AbstractID3v2Frame;
    if-nez v0, :cond_0

    .line 532
    new-instance v0, Lorg/farng/mp3/id3/ID3v2_3Frame;

    .end local v0           #field:Lorg/farng/mp3/id3/AbstractID3v2Frame;
    new-instance v1, Lorg/farng/mp3/id3/FrameBodyCOMM;

    const/4 v2, 0x0

    const-string v3, "ENG"

    const-string v4, ""

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/farng/mp3/id3/FrameBodyCOMM;-><init>(BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/farng/mp3/id3/ID3v2_3Frame;-><init>(Lorg/farng/mp3/id3/AbstractID3v2FrameBody;)V

    .line 533
    .restart local v0       #field:Lorg/farng/mp3/id3/AbstractID3v2Frame;
    invoke-virtual {p0, v0}, Lorg/farng/mp3/id3/AbstractID3v2;->setFrame(Lorg/farng/mp3/id3/AbstractID3v2Frame;)V

    .line 537
    :goto_0
    return-void

    .line 535
    :cond_0
    invoke-virtual {v0}, Lorg/farng/mp3/AbstractMP3Fragment;->getBody()Lorg/farng/mp3/AbstractMP3FragmentBody;

    move-result-object v1

    check-cast v1, Lorg/farng/mp3/id3/FrameBodyCOMM;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/farng/mp3/id3/FrameBodyCOMM;->setText(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setSongGenre(Ljava/lang/String;)V
    .locals 4
    .parameter "songGenre"

    .prologue
    .line 540
    const-string v1, "TCON"

    invoke-virtual {p0, v1}, Lorg/farng/mp3/id3/AbstractID3v2;->getFrame(Ljava/lang/String;)Lorg/farng/mp3/id3/AbstractID3v2Frame;

    move-result-object v0

    .line 541
    .local v0, field:Lorg/farng/mp3/id3/AbstractID3v2Frame;
    if-nez v0, :cond_0

    .line 542
    new-instance v0, Lorg/farng/mp3/id3/ID3v2_3Frame;

    .end local v0           #field:Lorg/farng/mp3/id3/AbstractID3v2Frame;
    new-instance v1, Lorg/farng/mp3/id3/FrameBodyTCON;

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/farng/mp3/id3/FrameBodyTCON;-><init>(BLjava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/farng/mp3/id3/ID3v2_3Frame;-><init>(Lorg/farng/mp3/id3/AbstractID3v2FrameBody;)V

    .line 543
    .restart local v0       #field:Lorg/farng/mp3/id3/AbstractID3v2Frame;
    invoke-virtual {p0, v0}, Lorg/farng/mp3/id3/AbstractID3v2;->setFrame(Lorg/farng/mp3/id3/AbstractID3v2Frame;)V

    .line 547
    :goto_0
    return-void

    .line 545
    :cond_0
    invoke-virtual {v0}, Lorg/farng/mp3/AbstractMP3Fragment;->getBody()Lorg/farng/mp3/AbstractMP3FragmentBody;

    move-result-object v1

    check-cast v1, Lorg/farng/mp3/id3/FrameBodyTCON;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/farng/mp3/id3/AbstractFrameBodyTextInformation;->setText(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setSongLyric(Ljava/lang/String;)V
    .locals 6
    .parameter "songLyrics"

    .prologue
    .line 560
    const-string v1, "SYLT"

    invoke-virtual {p0, v1}, Lorg/farng/mp3/id3/AbstractID3v2;->getFrame(Ljava/lang/String;)Lorg/farng/mp3/id3/AbstractID3v2Frame;

    move-result-object v0

    .line 561
    .local v0, field:Lorg/farng/mp3/id3/AbstractID3v2Frame;
    if-nez v0, :cond_0

    .line 562
    new-instance v0, Lorg/farng/mp3/id3/ID3v2_3Frame;

    .end local v0           #field:Lorg/farng/mp3/id3/AbstractID3v2Frame;
    new-instance v1, Lorg/farng/mp3/id3/FrameBodyUSLT;

    const/4 v2, 0x0

    const-string v3, "ENG"

    const-string v4, ""

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/farng/mp3/id3/FrameBodyUSLT;-><init>(BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/farng/mp3/id3/ID3v2_3Frame;-><init>(Lorg/farng/mp3/id3/AbstractID3v2FrameBody;)V

    .line 563
    .restart local v0       #field:Lorg/farng/mp3/id3/AbstractID3v2Frame;
    invoke-virtual {p0, v0}, Lorg/farng/mp3/id3/AbstractID3v2;->setFrame(Lorg/farng/mp3/id3/AbstractID3v2Frame;)V

    .line 567
    :goto_0
    return-void

    .line 565
    :cond_0
    invoke-virtual {v0}, Lorg/farng/mp3/AbstractMP3Fragment;->getBody()Lorg/farng/mp3/AbstractMP3FragmentBody;

    move-result-object v1

    check-cast v1, Lorg/farng/mp3/id3/FrameBodyUSLT;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/farng/mp3/id3/FrameBodyUSLT;->setLyric(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setSongTitle(Ljava/lang/String;)V
    .locals 4
    .parameter "songTitle"

    .prologue
    .line 490
    const-string v1, "TIT2"

    invoke-virtual {p0, v1}, Lorg/farng/mp3/id3/AbstractID3v2;->getFrame(Ljava/lang/String;)Lorg/farng/mp3/id3/AbstractID3v2Frame;

    move-result-object v0

    .line 491
    .local v0, field:Lorg/farng/mp3/id3/AbstractID3v2Frame;
    if-nez v0, :cond_0

    .line 492
    new-instance v0, Lorg/farng/mp3/id3/ID3v2_3Frame;

    .end local v0           #field:Lorg/farng/mp3/id3/AbstractID3v2Frame;
    new-instance v1, Lorg/farng/mp3/id3/FrameBodyTIT2;

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/farng/mp3/id3/FrameBodyTIT2;-><init>(BLjava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/farng/mp3/id3/ID3v2_3Frame;-><init>(Lorg/farng/mp3/id3/AbstractID3v2FrameBody;)V

    .line 493
    .restart local v0       #field:Lorg/farng/mp3/id3/AbstractID3v2Frame;
    invoke-virtual {p0, v0}, Lorg/farng/mp3/id3/AbstractID3v2;->setFrame(Lorg/farng/mp3/id3/AbstractID3v2Frame;)V

    .line 497
    :goto_0
    return-void

    .line 495
    :cond_0
    invoke-virtual {v0}, Lorg/farng/mp3/AbstractMP3Fragment;->getBody()Lorg/farng/mp3/AbstractMP3FragmentBody;

    move-result-object v1

    check-cast v1, Lorg/farng/mp3/id3/FrameBodyTIT2;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/farng/mp3/id3/AbstractFrameBodyTextInformation;->setText(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setTrackNumberOnAlbum(Ljava/lang/String;)V
    .locals 4
    .parameter "trackNumberOnAlbum"

    .prologue
    .line 550
    const-string v1, "TRCK"

    invoke-virtual {p0, v1}, Lorg/farng/mp3/id3/AbstractID3v2;->getFrame(Ljava/lang/String;)Lorg/farng/mp3/id3/AbstractID3v2Frame;

    move-result-object v0

    .line 551
    .local v0, field:Lorg/farng/mp3/id3/AbstractID3v2Frame;
    if-nez v0, :cond_0

    .line 552
    new-instance v0, Lorg/farng/mp3/id3/ID3v2_3Frame;

    .end local v0           #field:Lorg/farng/mp3/id3/AbstractID3v2Frame;
    new-instance v1, Lorg/farng/mp3/id3/FrameBodyTRCK;

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/farng/mp3/id3/FrameBodyTRCK;-><init>(BLjava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/farng/mp3/id3/ID3v2_3Frame;-><init>(Lorg/farng/mp3/id3/AbstractID3v2FrameBody;)V

    .line 553
    .restart local v0       #field:Lorg/farng/mp3/id3/AbstractID3v2Frame;
    invoke-virtual {p0, v0}, Lorg/farng/mp3/id3/AbstractID3v2;->setFrame(Lorg/farng/mp3/id3/AbstractID3v2Frame;)V

    .line 557
    :goto_0
    return-void

    .line 555
    :cond_0
    invoke-virtual {v0}, Lorg/farng/mp3/AbstractMP3Fragment;->getBody()Lorg/farng/mp3/AbstractMP3FragmentBody;

    move-result-object v1

    check-cast v1, Lorg/farng/mp3/id3/FrameBodyTRCK;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/farng/mp3/id3/AbstractFrameBodyTextInformation;->setText(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setYearReleased(Ljava/lang/String;)V
    .locals 4
    .parameter "yearReleased"

    .prologue
    .line 520
    const-string v1, "TYER"

    invoke-virtual {p0, v1}, Lorg/farng/mp3/id3/AbstractID3v2;->getFrame(Ljava/lang/String;)Lorg/farng/mp3/id3/AbstractID3v2Frame;

    move-result-object v0

    .line 521
    .local v0, field:Lorg/farng/mp3/id3/AbstractID3v2Frame;
    if-nez v0, :cond_0

    .line 522
    new-instance v0, Lorg/farng/mp3/id3/ID3v2_3Frame;

    .end local v0           #field:Lorg/farng/mp3/id3/AbstractID3v2Frame;
    new-instance v1, Lorg/farng/mp3/id3/FrameBodyTYER;

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/farng/mp3/id3/FrameBodyTYER;-><init>(BLjava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/farng/mp3/id3/ID3v2_3Frame;-><init>(Lorg/farng/mp3/id3/AbstractID3v2FrameBody;)V

    .line 523
    .restart local v0       #field:Lorg/farng/mp3/id3/AbstractID3v2Frame;
    invoke-virtual {p0, v0}, Lorg/farng/mp3/id3/AbstractID3v2;->setFrame(Lorg/farng/mp3/id3/AbstractID3v2Frame;)V

    .line 527
    :goto_0
    return-void

    .line 525
    :cond_0
    invoke-virtual {v0}, Lorg/farng/mp3/AbstractMP3Fragment;->getBody()Lorg/farng/mp3/AbstractMP3FragmentBody;

    move-result-object v1

    check-cast v1, Lorg/farng/mp3/id3/FrameBodyTYER;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/farng/mp3/id3/AbstractFrameBodyTextInformation;->setText(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 313
    invoke-virtual {p0}, Lorg/farng/mp3/id3/AbstractID3v2;->getFrameIterator()Ljava/util/Iterator;

    move-result-object v1

    .line 315
    .local v1, iterator:Ljava/util/Iterator;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/farng/mp3/id3/ID3v2_3;->getIdentifier()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lorg/farng/mp3/id3/ID3v2_3;->getSize()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 316
    .local v2, str:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "compression        = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lorg/farng/mp3/id3/ID3v2_2;->compression:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 317
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "unsynchronization  = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lorg/farng/mp3/id3/ID3v2_2;->unsynchronization:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 318
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "crcData            = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lorg/farng/mp3/id3/ID3v2_3;->crcData:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 319
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "crcDataFlag        = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lorg/farng/mp3/id3/ID3v2_3;->crcDataFlag:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 320
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "experimental       = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lorg/farng/mp3/id3/ID3v2_3;->experimental:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 321
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "extended           = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lorg/farng/mp3/id3/ID3v2_3;->extended:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 322
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "paddingSize        = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lorg/farng/mp3/id3/ID3v2_3;->paddingSize:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 323
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 324
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/farng/mp3/id3/ID3v2_3Frame;

    .line 325
    .local v0, frame:Lorg/farng/mp3/id3/AbstractID3v2Frame;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lorg/farng/mp3/id3/AbstractID3v2Frame;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 327
    .end local v0           #frame:Lorg/farng/mp3/id3/AbstractID3v2Frame;
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public write(Ljava/io/RandomAccessFile;)V
    .locals 10
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 344
    const/4 v8, 0x6

    new-array v0, v8, [B

    .line 345
    .local v0, buffer:[B
    new-instance v4, Lorg/farng/mp3/MP3File;

    invoke-direct {v4}, Lorg/farng/mp3/MP3File;-><init>()V

    .line 346
    .local v4, mp3:Lorg/farng/mp3/MP3File;
    invoke-virtual {v4, p1}, Lorg/farng/mp3/MP3File;->seekMP3Frame(Ljava/io/RandomAccessFile;)Z

    .line 347
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v5

    .line 348
    .local v5, mp3start:J
    const-wide/16 v8, 0x0

    invoke-virtual {p1, v8, v9}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 350
    const-string v7, "ID3"

    .line 351
    .local v7, str:Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v2, v8, :cond_0

    .line 352
    invoke-virtual {v7, v2}, Ljava/lang/String;->charAt(I)C

    move-result v8

    int-to-byte v8, v8

    aput-byte v8, v0, v2

    .line 351
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 354
    :cond_0
    const/4 v8, 0x3

    const/4 v9, 0x3

    aput-byte v9, v0, v8

    .line 355
    const/4 v8, 0x4

    const/4 v9, 0x0

    aput-byte v9, v0, v8

    .line 356
    iget-boolean v8, p0, Lorg/farng/mp3/id3/ID3v2_2;->unsynchronization:Z

    if-eqz v8, :cond_1

    .line 357
    const/4 v8, 0x5

    aget-byte v9, v0, v8

    or-int/lit16 v9, v9, 0x80

    int-to-byte v9, v9

    aput-byte v9, v0, v8

    .line 359
    :cond_1
    iget-boolean v8, p0, Lorg/farng/mp3/id3/ID3v2_3;->extended:Z

    if-eqz v8, :cond_2

    .line 360
    const/4 v8, 0x5

    aget-byte v9, v0, v8

    or-int/lit8 v9, v9, 0x40

    int-to-byte v9, v9

    aput-byte v9, v0, v8

    .line 362
    :cond_2
    iget-boolean v8, p0, Lorg/farng/mp3/id3/ID3v2_3;->experimental:Z

    if-eqz v8, :cond_3

    .line 363
    const/4 v8, 0x5

    aget-byte v9, v0, v8

    or-int/lit8 v9, v9, 0x20

    int-to-byte v9, v9

    aput-byte v9, v0, v8

    .line 365
    :cond_3
    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->write([B)V

    .line 368
    long-to-int v8, v5

    add-int/lit8 v8, v8, -0xa

    invoke-static {v8}, Lorg/farng/mp3/id3/ID3v2_3;->sizeToByteArray(I)[B

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/RandomAccessFile;->write([B)V

    .line 369
    iget-boolean v8, p0, Lorg/farng/mp3/id3/ID3v2_3;->extended:Z

    if-eqz v8, :cond_4

    .line 370
    iget-boolean v8, p0, Lorg/farng/mp3/id3/ID3v2_3;->crcDataFlag:Z

    if-eqz v8, :cond_5

    .line 371
    const/16 v8, 0xa

    invoke-virtual {p1, v8}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 372
    const/4 v8, 0x0

    const/4 v9, 0x0

    aput-byte v9, v0, v8

    .line 373
    const/4 v8, 0x0

    aget-byte v9, v0, v8

    or-int/lit16 v9, v9, 0x80

    int-to-byte v9, v9

    aput-byte v9, v0, v8

    .line 374
    const/4 v8, 0x0

    const/4 v9, 0x2

    invoke-virtual {p1, v0, v8, v9}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 375
    iget v8, p0, Lorg/farng/mp3/id3/ID3v2_3;->paddingSize:I

    invoke-virtual {p1, v8}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 376
    iget v8, p0, Lorg/farng/mp3/id3/ID3v2_3;->crcData:I

    invoke-virtual {p1, v8}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 385
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lorg/farng/mp3/id3/AbstractID3v2;->getFrameIterator()Ljava/util/Iterator;

    move-result-object v3

    .line 386
    .local v3, iterator:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 387
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/farng/mp3/id3/ID3v2_3Frame;

    .line 388
    .local v1, frame:Lorg/farng/mp3/id3/ID3v2_3Frame;
    invoke-virtual {v1, p1}, Lorg/farng/mp3/id3/ID3v2_3Frame;->write(Ljava/io/RandomAccessFile;)V

    goto :goto_2

    .line 378
    .end local v1           #frame:Lorg/farng/mp3/id3/ID3v2_3Frame;
    .end local v3           #iterator:Ljava/util/Iterator;
    :cond_5
    const/4 v8, 0x6

    invoke-virtual {p1, v8}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 379
    const/4 v8, 0x0

    const/4 v9, 0x2

    invoke-virtual {p1, v0, v8, v9}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 380
    iget v8, p0, Lorg/farng/mp3/id3/ID3v2_3;->paddingSize:I

    invoke-virtual {p1, v8}, Ljava/io/RandomAccessFile;->writeInt(I)V

    goto :goto_1

    .line 390
    .restart local v3       #iterator:Ljava/util/Iterator;
    :cond_6
    return-void
.end method

.method public write(Lorg/farng/mp3/AbstractMP3Tag;)V
    .locals 1
    .parameter "tag"

    .prologue
    .line 331
    instance-of v0, p1, Lorg/farng/mp3/id3/ID3v2_3;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 332
    check-cast v0, Lorg/farng/mp3/id3/ID3v2_3;

    iget-boolean v0, v0, Lorg/farng/mp3/id3/ID3v2_3;->experimental:Z

    iput-boolean v0, p0, Lorg/farng/mp3/id3/ID3v2_3;->experimental:Z

    move-object v0, p1

    .line 333
    check-cast v0, Lorg/farng/mp3/id3/ID3v2_3;

    iget-boolean v0, v0, Lorg/farng/mp3/id3/ID3v2_3;->extended:Z

    iput-boolean v0, p0, Lorg/farng/mp3/id3/ID3v2_3;->extended:Z

    move-object v0, p1

    .line 334
    check-cast v0, Lorg/farng/mp3/id3/ID3v2_3;

    iget-boolean v0, v0, Lorg/farng/mp3/id3/ID3v2_3;->crcDataFlag:Z

    iput-boolean v0, p0, Lorg/farng/mp3/id3/ID3v2_3;->crcDataFlag:Z

    move-object v0, p1

    .line 335
    check-cast v0, Lorg/farng/mp3/id3/ID3v2_3;

    iget v0, v0, Lorg/farng/mp3/id3/ID3v2_3;->paddingSize:I

    iput v0, p0, Lorg/farng/mp3/id3/ID3v2_3;->paddingSize:I

    move-object v0, p1

    .line 336
    check-cast v0, Lorg/farng/mp3/id3/ID3v2_3;

    iget v0, v0, Lorg/farng/mp3/id3/ID3v2_3;->crcData:I

    iput v0, p0, Lorg/farng/mp3/id3/ID3v2_3;->crcData:I

    .line 338
    :cond_0
    invoke-super {p0, p1}, Lorg/farng/mp3/id3/ID3v2_2;->write(Lorg/farng/mp3/AbstractMP3Tag;)V

    .line 339
    return-void
.end method
