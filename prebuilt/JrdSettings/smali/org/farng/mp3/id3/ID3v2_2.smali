.class public Lorg/farng/mp3/id3/ID3v2_2;
.super Lorg/farng/mp3/id3/AbstractID3v2;
.source "ID3v2_2.java"


# instance fields
.field protected compression:Z

.field protected unsynchronization:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    const/4 v0, 0x0

    .line 102
    invoke-direct {p0}, Lorg/farng/mp3/id3/AbstractID3v2;-><init>()V

    .line 95
    iput-boolean v0, p0, Lorg/farng/mp3/id3/ID3v2_2;->compression:Z

    .line 96
    iput-boolean v0, p0, Lorg/farng/mp3/id3/ID3v2_2;->unsynchronization:Z

    .line 103
    invoke-virtual {p0, v1}, Lorg/farng/mp3/id3/AbstractID3v2;->setMajorVersion(B)V

    .line 104
    invoke-virtual {p0, v1}, Lorg/farng/mp3/id3/AbstractID3v2;->setRevision(B)V

    .line 105
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

    .line 146
    invoke-direct {p0}, Lorg/farng/mp3/id3/AbstractID3v2;-><init>()V

    .line 95
    iput-boolean v0, p0, Lorg/farng/mp3/id3/ID3v2_2;->compression:Z

    .line 96
    iput-boolean v0, p0, Lorg/farng/mp3/id3/ID3v2_2;->unsynchronization:Z

    .line 147
    invoke-virtual {p0, p1}, Lorg/farng/mp3/id3/ID3v2_2;->read(Ljava/io/RandomAccessFile;)V

    .line 148
    return-void
.end method

.method public constructor <init>(Lorg/farng/mp3/AbstractMP3Tag;)V
    .locals 7
    .parameter "mp3tag"

    .prologue
    const/4 v5, 0x0

    .line 119
    invoke-direct {p0}, Lorg/farng/mp3/id3/AbstractID3v2;-><init>()V

    .line 95
    iput-boolean v5, p0, Lorg/farng/mp3/id3/ID3v2_2;->compression:Z

    .line 96
    iput-boolean v5, p0, Lorg/farng/mp3/id3/ID3v2_2;->unsynchronization:Z

    .line 120
    if-eqz p1, :cond_2

    .line 122
    instance-of v5, p1, Lorg/farng/mp3/id3/ID3v2_3;

    if-nez v5, :cond_0

    instance-of v5, p1, Lorg/farng/mp3/id3/ID3v2_2;

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 123
    new-instance v5, Ljava/lang/UnsupportedOperationException;

    const-string v6, "Copy Constructor not called. Please type cast the argument"

    invoke-direct {v5, v6}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 124
    :cond_0
    instance-of v5, p1, Lorg/farng/mp3/id3/ID3v2_4;

    if-eqz v5, :cond_1

    move-object v0, p1

    .line 125
    check-cast v0, Lorg/farng/mp3/id3/ID3v2_4;

    .line 129
    .local v0, convertedTag:Lorg/farng/mp3/id3/ID3v2_4;
    :goto_0
    iget-boolean v5, v0, Lorg/farng/mp3/id3/ID3v2_2;->compression:Z

    iput-boolean v5, p0, Lorg/farng/mp3/id3/ID3v2_2;->compression:Z

    .line 130
    iget-boolean v5, v0, Lorg/farng/mp3/id3/ID3v2_2;->unsynchronization:Z

    iput-boolean v5, p0, Lorg/farng/mp3/id3/ID3v2_2;->unsynchronization:Z

    .line 131
    move-object v2, v0

    .line 132
    .local v2, id3tag:Lorg/farng/mp3/id3/AbstractID3v2;
    invoke-virtual {v2}, Lorg/farng/mp3/id3/AbstractID3v2;->getFrameIterator()Ljava/util/Iterator;

    move-result-object v3

    .line 135
    .local v3, iterator:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 136
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/farng/mp3/id3/AbstractID3v2Frame;

    .line 137
    .local v1, frame:Lorg/farng/mp3/id3/AbstractID3v2Frame;
    new-instance v4, Lorg/farng/mp3/id3/ID3v2_2Frame;

    invoke-direct {v4, v1}, Lorg/farng/mp3/id3/ID3v2_2Frame;-><init>(Lorg/farng/mp3/id3/AbstractID3v2Frame;)V

    .line 138
    .local v4, newFrame:Lorg/farng/mp3/id3/ID3v2_2Frame;
    invoke-virtual {p0, v4}, Lorg/farng/mp3/id3/AbstractID3v2;->setFrame(Lorg/farng/mp3/id3/AbstractID3v2Frame;)V

    goto :goto_1

    .line 127
    .end local v0           #convertedTag:Lorg/farng/mp3/id3/ID3v2_4;
    .end local v1           #frame:Lorg/farng/mp3/id3/AbstractID3v2Frame;
    .end local v2           #id3tag:Lorg/farng/mp3/id3/AbstractID3v2;
    .end local v3           #iterator:Ljava/util/Iterator;
    .end local v4           #newFrame:Lorg/farng/mp3/id3/ID3v2_2Frame;
    :cond_1
    new-instance v0, Lorg/farng/mp3/id3/ID3v2_4;

    invoke-direct {v0, p1}, Lorg/farng/mp3/id3/ID3v2_4;-><init>(Lorg/farng/mp3/AbstractMP3Tag;)V

    .restart local v0       #convertedTag:Lorg/farng/mp3/id3/ID3v2_4;
    goto :goto_0

    .line 141
    .end local v0           #convertedTag:Lorg/farng/mp3/id3/ID3v2_4;
    :cond_2
    return-void
.end method

.method public constructor <init>(Lorg/farng/mp3/id3/ID3v2_2;)V
    .locals 1
    .parameter "copyObject"

    .prologue
    const/4 v0, 0x0

    .line 111
    invoke-direct {p0, p1}, Lorg/farng/mp3/id3/AbstractID3v2;-><init>(Lorg/farng/mp3/id3/AbstractID3v2;)V

    .line 95
    iput-boolean v0, p0, Lorg/farng/mp3/id3/ID3v2_2;->compression:Z

    .line 96
    iput-boolean v0, p0, Lorg/farng/mp3/id3/ID3v2_2;->unsynchronization:Z

    .line 112
    iget-boolean v0, p1, Lorg/farng/mp3/id3/ID3v2_2;->compression:Z

    iput-boolean v0, p0, Lorg/farng/mp3/id3/ID3v2_2;->compression:Z

    .line 113
    iget-boolean v0, p1, Lorg/farng/mp3/id3/ID3v2_2;->unsynchronization:Z

    iput-boolean v0, p0, Lorg/farng/mp3/id3/ID3v2_2;->unsynchronization:Z

    .line 114
    return-void
.end method


# virtual methods
.method public append(Lorg/farng/mp3/AbstractMP3Tag;)V
    .locals 1
    .parameter "tag"

    .prologue
    .line 166
    instance-of v0, p1, Lorg/farng/mp3/id3/ID3v2_2;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 167
    check-cast v0, Lorg/farng/mp3/id3/ID3v2_2;

    iget-boolean v0, v0, Lorg/farng/mp3/id3/ID3v2_2;->unsynchronization:Z

    iput-boolean v0, p0, Lorg/farng/mp3/id3/ID3v2_2;->unsynchronization:Z

    move-object v0, p1

    .line 168
    check-cast v0, Lorg/farng/mp3/id3/ID3v2_2;

    iget-boolean v0, v0, Lorg/farng/mp3/id3/ID3v2_2;->compression:Z

    iput-boolean v0, p0, Lorg/farng/mp3/id3/ID3v2_2;->compression:Z

    .line 170
    :cond_0
    invoke-super {p0, p1}, Lorg/farng/mp3/id3/AbstractID3v2;->append(Lorg/farng/mp3/AbstractMP3Tag;)V

    .line 171
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "obj"

    .prologue
    const/4 v1, 0x0

    .line 174
    instance-of v2, p1, Lorg/farng/mp3/id3/ID3v2_2;

    if-nez v2, :cond_1

    .line 184
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 177
    check-cast v0, Lorg/farng/mp3/id3/ID3v2_2;

    .line 178
    .local v0, id3v2_2:Lorg/farng/mp3/id3/ID3v2_2;
    iget-boolean v2, p0, Lorg/farng/mp3/id3/ID3v2_2;->compression:Z

    iget-boolean v3, v0, Lorg/farng/mp3/id3/ID3v2_2;->compression:Z

    if-ne v2, v3, :cond_0

    .line 181
    iget-boolean v2, p0, Lorg/farng/mp3/id3/ID3v2_2;->unsynchronization:Z

    iget-boolean v3, v0, Lorg/farng/mp3/id3/ID3v2_2;->unsynchronization:Z

    if-ne v2, v3, :cond_0

    .line 184
    invoke-super {p0, p1}, Lorg/farng/mp3/id3/AbstractID3v2;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getAlbumTitle()Ljava/lang/String;
    .locals 4

    .prologue
    .line 348
    const-string v2, ""

    .line 349
    .local v2, text:Ljava/lang/String;
    const-string v3, "TALB"

    invoke-virtual {p0, v3}, Lorg/farng/mp3/id3/AbstractID3v2;->getFrame(Ljava/lang/String;)Lorg/farng/mp3/id3/AbstractID3v2Frame;

    move-result-object v1

    .line 350
    .local v1, frame:Lorg/farng/mp3/id3/AbstractID3v2Frame;
    if-eqz v1, :cond_0

    .line 351
    invoke-virtual {v1}, Lorg/farng/mp3/AbstractMP3Fragment;->getBody()Lorg/farng/mp3/AbstractMP3FragmentBody;

    move-result-object v0

    check-cast v0, Lorg/farng/mp3/id3/FrameBodyTALB;

    .line 352
    .local v0, body:Lorg/farng/mp3/id3/FrameBodyTALB;
    invoke-virtual {v0}, Lorg/farng/mp3/id3/AbstractFrameBodyTextInformation;->getText()Ljava/lang/String;

    move-result-object v2

    .line 354
    .end local v0           #body:Lorg/farng/mp3/id3/FrameBodyTALB;
    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public getAuthorComposer()Ljava/lang/String;
    .locals 4

    .prologue
    .line 415
    const-string v2, ""

    .line 416
    .local v2, text:Ljava/lang/String;
    const-string v3, "TCOM"

    invoke-virtual {p0, v3}, Lorg/farng/mp3/id3/AbstractID3v2;->getFrame(Ljava/lang/String;)Lorg/farng/mp3/id3/AbstractID3v2Frame;

    move-result-object v1

    .line 417
    .local v1, frame:Lorg/farng/mp3/id3/AbstractID3v2Frame;
    if-eqz v1, :cond_0

    .line 418
    invoke-virtual {v1}, Lorg/farng/mp3/AbstractMP3Fragment;->getBody()Lorg/farng/mp3/AbstractMP3FragmentBody;

    move-result-object v0

    check-cast v0, Lorg/farng/mp3/id3/FrameBodyTCOM;

    .line 419
    .local v0, body:Lorg/farng/mp3/id3/FrameBodyTCOM;
    invoke-virtual {v0}, Lorg/farng/mp3/id3/AbstractFrameBodyTextInformation;->getText()Ljava/lang/String;

    move-result-object v2

    .line 421
    .end local v0           #body:Lorg/farng/mp3/id3/FrameBodyTCOM;
    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    const-string v0, "ID3v2_2.20"

    return-object v0
.end method

.method public getLeadArtist()Ljava/lang/String;
    .locals 4

    .prologue
    .line 338
    const-string v2, ""

    .line 339
    .local v2, text:Ljava/lang/String;
    const-string v3, "TPE1"

    invoke-virtual {p0, v3}, Lorg/farng/mp3/id3/AbstractID3v2;->getFrame(Ljava/lang/String;)Lorg/farng/mp3/id3/AbstractID3v2Frame;

    move-result-object v1

    .line 340
    .local v1, frame:Lorg/farng/mp3/id3/AbstractID3v2Frame;
    if-eqz v1, :cond_0

    .line 341
    invoke-virtual {v1}, Lorg/farng/mp3/AbstractMP3Fragment;->getBody()Lorg/farng/mp3/AbstractMP3FragmentBody;

    move-result-object v0

    check-cast v0, Lorg/farng/mp3/id3/FrameBodyTPE1;

    .line 342
    .local v0, body:Lorg/farng/mp3/id3/FrameBodyTPE1;
    invoke-virtual {v0}, Lorg/farng/mp3/id3/AbstractFrameBodyTextInformation;->getText()Ljava/lang/String;

    move-result-object v2

    .line 344
    .end local v0           #body:Lorg/farng/mp3/id3/FrameBodyTPE1;
    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public getSize()I
    .locals 4

    .prologue
    .line 155
    const/16 v2, 0xa

    .line 156
    .local v2, size:I
    invoke-virtual {p0}, Lorg/farng/mp3/id3/AbstractID3v2;->getFrameIterator()Ljava/util/Iterator;

    move-result-object v1

    .line 158
    .local v1, iterator:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 159
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/farng/mp3/id3/ID3v2_2Frame;

    .line 160
    .local v0, frame:Lorg/farng/mp3/id3/ID3v2_2Frame;
    invoke-virtual {v0}, Lorg/farng/mp3/id3/ID3v2_2Frame;->getSize()I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 162
    .end local v0           #frame:Lorg/farng/mp3/id3/ID3v2_2Frame;
    :cond_0
    return v2
.end method

.method public getSongComment()Ljava/lang/String;
    .locals 4

    .prologue
    .line 368
    const-string v2, ""

    .line 369
    .local v2, text:Ljava/lang/String;
    const-string v3, "COMM\u0000eng\u0000"

    invoke-virtual {p0, v3}, Lorg/farng/mp3/id3/AbstractID3v2;->getFrame(Ljava/lang/String;)Lorg/farng/mp3/id3/AbstractID3v2Frame;

    move-result-object v1

    .line 370
    .local v1, frame:Lorg/farng/mp3/id3/AbstractID3v2Frame;
    if-eqz v1, :cond_0

    .line 371
    invoke-virtual {v1}, Lorg/farng/mp3/AbstractMP3Fragment;->getBody()Lorg/farng/mp3/AbstractMP3FragmentBody;

    move-result-object v0

    check-cast v0, Lorg/farng/mp3/id3/FrameBodyCOMM;

    .line 372
    .local v0, body:Lorg/farng/mp3/id3/FrameBodyCOMM;
    invoke-virtual {v0}, Lorg/farng/mp3/id3/FrameBodyCOMM;->getText()Ljava/lang/String;

    move-result-object v2

    .line 374
    .end local v0           #body:Lorg/farng/mp3/id3/FrameBodyCOMM;
    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public getSongGenre()Ljava/lang/String;
    .locals 4

    .prologue
    .line 378
    const-string v2, ""

    .line 379
    .local v2, text:Ljava/lang/String;
    const-string v3, "TCON"

    invoke-virtual {p0, v3}, Lorg/farng/mp3/id3/AbstractID3v2;->getFrame(Ljava/lang/String;)Lorg/farng/mp3/id3/AbstractID3v2Frame;

    move-result-object v1

    .line 380
    .local v1, frame:Lorg/farng/mp3/id3/AbstractID3v2Frame;
    if-eqz v1, :cond_0

    .line 381
    invoke-virtual {v1}, Lorg/farng/mp3/AbstractMP3Fragment;->getBody()Lorg/farng/mp3/AbstractMP3FragmentBody;

    move-result-object v0

    check-cast v0, Lorg/farng/mp3/id3/FrameBodyTCON;

    .line 382
    .local v0, body:Lorg/farng/mp3/id3/FrameBodyTCON;
    invoke-virtual {v0}, Lorg/farng/mp3/id3/AbstractFrameBodyTextInformation;->getText()Ljava/lang/String;

    move-result-object v2

    .line 384
    .end local v0           #body:Lorg/farng/mp3/id3/FrameBodyTCON;
    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public getSongLyric()Ljava/lang/String;
    .locals 4

    .prologue
    .line 398
    const-string v2, ""

    .line 399
    .local v2, text:Ljava/lang/String;
    const-string v3, "SYLT"

    invoke-virtual {p0, v3}, Lorg/farng/mp3/id3/AbstractID3v2;->getFrame(Ljava/lang/String;)Lorg/farng/mp3/id3/AbstractID3v2Frame;

    move-result-object v1

    .line 400
    .local v1, frame:Lorg/farng/mp3/id3/AbstractID3v2Frame;
    if-eqz v1, :cond_0

    .line 401
    invoke-virtual {v1}, Lorg/farng/mp3/AbstractMP3Fragment;->getBody()Lorg/farng/mp3/AbstractMP3FragmentBody;

    move-result-object v0

    check-cast v0, Lorg/farng/mp3/id3/FrameBodySYLT;

    .line 402
    .local v0, body:Lorg/farng/mp3/id3/FrameBodySYLT;
    invoke-virtual {v0}, Lorg/farng/mp3/id3/FrameBodySYLT;->getLyric()Ljava/lang/String;

    move-result-object v2

    .line 404
    .end local v0           #body:Lorg/farng/mp3/id3/FrameBodySYLT;
    :cond_0
    const-string v3, ""

    if-ne v2, v3, :cond_1

    .line 405
    const-string v3, "USLT\u0000eng\u0000"

    invoke-virtual {p0, v3}, Lorg/farng/mp3/id3/AbstractID3v2;->getFrame(Ljava/lang/String;)Lorg/farng/mp3/id3/AbstractID3v2Frame;

    move-result-object v1

    .line 406
    if-eqz v1, :cond_1

    .line 407
    invoke-virtual {v1}, Lorg/farng/mp3/AbstractMP3Fragment;->getBody()Lorg/farng/mp3/AbstractMP3FragmentBody;

    move-result-object v0

    check-cast v0, Lorg/farng/mp3/id3/FrameBodyUSLT;

    .line 408
    .local v0, body:Lorg/farng/mp3/id3/FrameBodyUSLT;
    invoke-virtual {v0}, Lorg/farng/mp3/id3/FrameBodyUSLT;->getLyric()Ljava/lang/String;

    move-result-object v2

    .line 411
    .end local v0           #body:Lorg/farng/mp3/id3/FrameBodyUSLT;
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public getSongTitle()Ljava/lang/String;
    .locals 4

    .prologue
    .line 328
    const-string v2, ""

    .line 329
    .local v2, text:Ljava/lang/String;
    const-string v3, "TIT2"

    invoke-virtual {p0, v3}, Lorg/farng/mp3/id3/AbstractID3v2;->getFrame(Ljava/lang/String;)Lorg/farng/mp3/id3/AbstractID3v2Frame;

    move-result-object v1

    .line 330
    .local v1, frame:Lorg/farng/mp3/id3/AbstractID3v2Frame;
    if-eqz v1, :cond_0

    .line 331
    invoke-virtual {v1}, Lorg/farng/mp3/AbstractMP3Fragment;->getBody()Lorg/farng/mp3/AbstractMP3FragmentBody;

    move-result-object v0

    check-cast v0, Lorg/farng/mp3/id3/FrameBodyTIT2;

    .line 332
    .local v0, body:Lorg/farng/mp3/id3/FrameBodyTIT2;
    invoke-virtual {v0}, Lorg/farng/mp3/id3/AbstractFrameBodyTextInformation;->getText()Ljava/lang/String;

    move-result-object v2

    .line 334
    .end local v0           #body:Lorg/farng/mp3/id3/FrameBodyTIT2;
    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public getTrackNumberOnAlbum()Ljava/lang/String;
    .locals 4

    .prologue
    .line 388
    const-string v2, ""

    .line 389
    .local v2, text:Ljava/lang/String;
    const-string v3, "TRCK"

    invoke-virtual {p0, v3}, Lorg/farng/mp3/id3/AbstractID3v2;->getFrame(Ljava/lang/String;)Lorg/farng/mp3/id3/AbstractID3v2Frame;

    move-result-object v1

    .line 390
    .local v1, frame:Lorg/farng/mp3/id3/AbstractID3v2Frame;
    if-eqz v1, :cond_0

    .line 391
    invoke-virtual {v1}, Lorg/farng/mp3/AbstractMP3Fragment;->getBody()Lorg/farng/mp3/AbstractMP3FragmentBody;

    move-result-object v0

    check-cast v0, Lorg/farng/mp3/id3/FrameBodyTRCK;

    .line 392
    .local v0, body:Lorg/farng/mp3/id3/FrameBodyTRCK;
    invoke-virtual {v0}, Lorg/farng/mp3/id3/AbstractFrameBodyTextInformation;->getText()Ljava/lang/String;

    move-result-object v2

    .line 394
    .end local v0           #body:Lorg/farng/mp3/id3/FrameBodyTRCK;
    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public getYearReleased()Ljava/lang/String;
    .locals 4

    .prologue
    .line 358
    const-string v2, ""

    .line 359
    .local v2, text:Ljava/lang/String;
    const-string v3, "TYER"

    invoke-virtual {p0, v3}, Lorg/farng/mp3/id3/AbstractID3v2;->getFrame(Ljava/lang/String;)Lorg/farng/mp3/id3/AbstractID3v2Frame;

    move-result-object v1

    .line 360
    .local v1, frame:Lorg/farng/mp3/id3/AbstractID3v2Frame;
    if-eqz v1, :cond_0

    .line 361
    invoke-virtual {v1}, Lorg/farng/mp3/AbstractMP3Fragment;->getBody()Lorg/farng/mp3/AbstractMP3FragmentBody;

    move-result-object v0

    check-cast v0, Lorg/farng/mp3/id3/FrameBodyTYER;

    .line 362
    .local v0, body:Lorg/farng/mp3/id3/FrameBodyTYER;
    invoke-virtual {v0}, Lorg/farng/mp3/id3/AbstractFrameBodyTextInformation;->getText()Ljava/lang/String;

    move-result-object v2

    .line 364
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
    .line 188
    instance-of v0, p1, Lorg/farng/mp3/id3/ID3v2_2;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 189
    check-cast v0, Lorg/farng/mp3/id3/ID3v2_2;

    iget-boolean v0, v0, Lorg/farng/mp3/id3/ID3v2_2;->unsynchronization:Z

    iput-boolean v0, p0, Lorg/farng/mp3/id3/ID3v2_2;->unsynchronization:Z

    move-object v0, p1

    .line 190
    check-cast v0, Lorg/farng/mp3/id3/ID3v2_2;

    iget-boolean v0, v0, Lorg/farng/mp3/id3/ID3v2_2;->compression:Z

    iput-boolean v0, p0, Lorg/farng/mp3/id3/ID3v2_2;->compression:Z

    .line 192
    :cond_0
    invoke-super {p0, p1}, Lorg/farng/mp3/id3/AbstractID3v2;->overwrite(Lorg/farng/mp3/AbstractMP3Tag;)V

    .line 193
    return-void
.end method

.method public read(Ljava/io/RandomAccessFile;)V
    .locals 12
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/farng/mp3/TagException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 198
    new-array v0, v11, [B

    .line 199
    .local v0, buffer:[B
    invoke-virtual {p0, p1}, Lorg/farng/mp3/id3/ID3v2_2;->seek(Ljava/io/RandomAccessFile;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 200
    new-instance v7, Lorg/farng/mp3/TagNotFoundException;

    const-string v8, "ID3v2.20 tag not found"

    invoke-direct {v7, v8}, Lorg/farng/mp3/TagNotFoundException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 204
    :cond_0
    const/4 v7, 0x3

    invoke-virtual {p1, v0, v9, v7}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 205
    aget-byte v7, v0, v9

    if-ne v7, v10, :cond_1

    aget-byte v7, v0, v8

    if-eqz v7, :cond_2

    .line 206
    :cond_1
    new-instance v7, Lorg/farng/mp3/TagNotFoundException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/farng/mp3/id3/ID3v2_2;->getIdentifier()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " tag not found"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/farng/mp3/TagNotFoundException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 208
    :cond_2
    aget-byte v7, v0, v9

    invoke-virtual {p0, v7}, Lorg/farng/mp3/id3/AbstractID3v2;->setMajorVersion(B)V

    .line 209
    aget-byte v7, v0, v8

    invoke-virtual {p0, v7}, Lorg/farng/mp3/id3/AbstractID3v2;->setRevision(B)V

    .line 210
    aget-byte v7, v0, v10

    and-int/lit16 v7, v7, 0x80

    if-eqz v7, :cond_4

    move v7, v8

    :goto_0
    iput-boolean v7, p0, Lorg/farng/mp3/id3/ID3v2_2;->unsynchronization:Z

    .line 211
    aget-byte v7, v0, v10

    and-int/lit16 v7, v7, 0x80

    if-eqz v7, :cond_5

    :goto_1
    iput-boolean v8, p0, Lorg/farng/mp3/id3/ID3v2_2;->compression:Z

    .line 214
    invoke-virtual {p1, v0, v9, v11}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 215
    invoke-static {v0}, Lorg/farng/mp3/id3/ID3v2_2;->byteArrayToSize([B)I

    move-result v6

    .line 216
    .local v6, size:I
    invoke-virtual {p0}, Lorg/farng/mp3/id3/AbstractID3v2;->clearFrameMap()V

    .line 217
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v2

    .line 220
    .local v2, filePointer:J
    invoke-virtual {p0, v6}, Lorg/farng/mp3/id3/AbstractID3v2;->setFileReadBytes(I)V

    .line 221
    invoke-static {}, Lorg/farng/mp3/id3/ID3v2_2;->resetPaddingCounter()V

    .line 222
    :goto_2
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v7

    sub-long/2addr v7, v2

    int-to-long v9, v6

    cmp-long v7, v7, v9

    if-gtz v7, :cond_7

    .line 224
    :try_start_0
    new-instance v5, Lorg/farng/mp3/id3/ID3v2_2Frame;

    invoke-direct {v5, p1}, Lorg/farng/mp3/id3/ID3v2_2Frame;-><init>(Ljava/io/RandomAccessFile;)V

    .line 225
    .local v5, next:Lorg/farng/mp3/id3/ID3v2_2Frame;
    invoke-virtual {v5}, Lorg/farng/mp3/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v4

    .line 226
    .local v4, id:Ljava/lang/String;
    invoke-virtual {p0, v4}, Lorg/farng/mp3/id3/AbstractID3v2;->hasFrame(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 227
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "; "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lorg/farng/mp3/id3/AbstractID3v2;->appendDuplicateFrameId(Ljava/lang/String;)V

    .line 228
    invoke-virtual {p0, v4}, Lorg/farng/mp3/id3/AbstractID3v2;->getFrame(Ljava/lang/String;)Lorg/farng/mp3/id3/AbstractID3v2Frame;

    move-result-object v7

    invoke-virtual {v7}, Lorg/farng/mp3/AbstractMP3FileItem;->getSize()I

    move-result v7

    invoke-virtual {p0, v7}, Lorg/farng/mp3/id3/AbstractID3v2;->incrementDuplicateBytes(I)V

    .line 230
    :cond_3
    invoke-virtual {p0, v5}, Lorg/farng/mp3/id3/AbstractID3v2;->setFrame(Lorg/farng/mp3/id3/AbstractID3v2Frame;)V
    :try_end_0
    .catch Lorg/farng/mp3/InvalidTagException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 231
    .end local v4           #id:Ljava/lang/String;
    .end local v5           #next:Lorg/farng/mp3/id3/ID3v2_2Frame;
    :catch_0
    move-exception v1

    .line 232
    .local v1, ex:Lorg/farng/mp3/InvalidTagException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Found empty frame"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 233
    const/16 v7, 0xa

    invoke-virtual {p0, v7}, Lorg/farng/mp3/id3/AbstractID3v2;->incrementEmptyFrameBytes(I)V

    goto :goto_2

    .end local v1           #ex:Lorg/farng/mp3/InvalidTagException;
    .end local v2           #filePointer:J
    .end local v6           #size:I
    :cond_4
    move v7, v9

    .line 210
    goto :goto_0

    :cond_5
    move v8, v9

    .line 211
    goto :goto_1

    .line 235
    .restart local v1       #ex:Lorg/farng/mp3/InvalidTagException;
    .restart local v2       #filePointer:J
    .restart local v6       #size:I
    :cond_6
    invoke-virtual {p0}, Lorg/farng/mp3/id3/AbstractID3v2;->incrementInvalidFrameBytes()V

    goto :goto_2

    .line 239
    .end local v1           #ex:Lorg/farng/mp3/InvalidTagException;
    :cond_7
    invoke-static {}, Lorg/farng/mp3/id3/ID3v2_2;->getPaddingCounter()I

    move-result v7

    invoke-virtual {p0, v7}, Lorg/farng/mp3/id3/AbstractID3v2;->setPaddingSize(I)V

    .line 249
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
    const/4 v8, 0x2

    const/4 v2, 0x1

    const/4 v6, 0x3

    const/4 v3, 0x0

    .line 252
    new-array v0, v6, [B

    .line 253
    .local v0, buffer:[B
    const-wide/16 v4, 0x0

    invoke-virtual {p1, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 256
    invoke-virtual {p1, v0, v3, v6}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 257
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0, v3, v6}, Ljava/lang/String;-><init>([BII)V

    .line 258
    .local v1, tag:Ljava/lang/String;
    const-string v4, "ID3"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 267
    :goto_0
    return v3

    .line 263
    :cond_0
    invoke-virtual {p1, v0, v3, v8}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 266
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v4

    const-wide/16 v6, 0x2

    sub-long/2addr v4, v6

    invoke-virtual {p1, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 267
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
    .line 445
    const-string v1, "TALB"

    invoke-virtual {p0, v1}, Lorg/farng/mp3/id3/AbstractID3v2;->getFrame(Ljava/lang/String;)Lorg/farng/mp3/id3/AbstractID3v2Frame;

    move-result-object v0

    .line 446
    .local v0, field:Lorg/farng/mp3/id3/AbstractID3v2Frame;
    if-nez v0, :cond_0

    .line 447
    new-instance v0, Lorg/farng/mp3/id3/ID3v2_2Frame;

    .end local v0           #field:Lorg/farng/mp3/id3/AbstractID3v2Frame;
    new-instance v1, Lorg/farng/mp3/id3/FrameBodyTALB;

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/farng/mp3/id3/FrameBodyTALB;-><init>(BLjava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/farng/mp3/id3/ID3v2_2Frame;-><init>(Lorg/farng/mp3/id3/AbstractID3v2FrameBody;)V

    .line 448
    .restart local v0       #field:Lorg/farng/mp3/id3/AbstractID3v2Frame;
    invoke-virtual {p0, v0}, Lorg/farng/mp3/id3/AbstractID3v2;->setFrame(Lorg/farng/mp3/id3/AbstractID3v2Frame;)V

    .line 452
    :goto_0
    return-void

    .line 450
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
    .line 505
    const-string v1, "TCOM"

    invoke-virtual {p0, v1}, Lorg/farng/mp3/id3/AbstractID3v2;->getFrame(Ljava/lang/String;)Lorg/farng/mp3/id3/AbstractID3v2Frame;

    move-result-object v0

    .line 506
    .local v0, field:Lorg/farng/mp3/id3/AbstractID3v2Frame;
    if-nez v0, :cond_0

    .line 507
    new-instance v0, Lorg/farng/mp3/id3/ID3v2_2Frame;

    .end local v0           #field:Lorg/farng/mp3/id3/AbstractID3v2Frame;
    new-instance v1, Lorg/farng/mp3/id3/FrameBodyTCOM;

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/farng/mp3/id3/FrameBodyTCOM;-><init>(BLjava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/farng/mp3/id3/ID3v2_2Frame;-><init>(Lorg/farng/mp3/id3/AbstractID3v2FrameBody;)V

    .line 508
    .restart local v0       #field:Lorg/farng/mp3/id3/AbstractID3v2Frame;
    invoke-virtual {p0, v0}, Lorg/farng/mp3/id3/AbstractID3v2;->setFrame(Lorg/farng/mp3/id3/AbstractID3v2Frame;)V

    .line 512
    :goto_0
    return-void

    .line 510
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
    .line 435
    const-string v1, "TPE1"

    invoke-virtual {p0, v1}, Lorg/farng/mp3/id3/AbstractID3v2;->getFrame(Ljava/lang/String;)Lorg/farng/mp3/id3/AbstractID3v2Frame;

    move-result-object v0

    .line 436
    .local v0, field:Lorg/farng/mp3/id3/AbstractID3v2Frame;
    if-nez v0, :cond_0

    .line 437
    new-instance v0, Lorg/farng/mp3/id3/ID3v2_2Frame;

    .end local v0           #field:Lorg/farng/mp3/id3/AbstractID3v2Frame;
    new-instance v1, Lorg/farng/mp3/id3/FrameBodyTPE1;

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/farng/mp3/id3/FrameBodyTPE1;-><init>(BLjava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/farng/mp3/id3/ID3v2_2Frame;-><init>(Lorg/farng/mp3/id3/AbstractID3v2FrameBody;)V

    .line 438
    .restart local v0       #field:Lorg/farng/mp3/id3/AbstractID3v2Frame;
    invoke-virtual {p0, v0}, Lorg/farng/mp3/id3/AbstractID3v2;->setFrame(Lorg/farng/mp3/id3/AbstractID3v2Frame;)V

    .line 442
    :goto_0
    return-void

    .line 440
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
    .line 465
    const-string v1, "COMM"

    invoke-virtual {p0, v1}, Lorg/farng/mp3/id3/AbstractID3v2;->getFrame(Ljava/lang/String;)Lorg/farng/mp3/id3/AbstractID3v2Frame;

    move-result-object v0

    .line 466
    .local v0, field:Lorg/farng/mp3/id3/AbstractID3v2Frame;
    if-nez v0, :cond_0

    .line 467
    new-instance v0, Lorg/farng/mp3/id3/ID3v2_2Frame;

    .end local v0           #field:Lorg/farng/mp3/id3/AbstractID3v2Frame;
    new-instance v1, Lorg/farng/mp3/id3/FrameBodyCOMM;

    const/4 v2, 0x0

    const-string v3, "eng"

    const-string v4, ""

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/farng/mp3/id3/FrameBodyCOMM;-><init>(BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/farng/mp3/id3/ID3v2_2Frame;-><init>(Lorg/farng/mp3/id3/AbstractID3v2FrameBody;)V

    .line 468
    .restart local v0       #field:Lorg/farng/mp3/id3/AbstractID3v2Frame;
    invoke-virtual {p0, v0}, Lorg/farng/mp3/id3/AbstractID3v2;->setFrame(Lorg/farng/mp3/id3/AbstractID3v2Frame;)V

    .line 472
    :goto_0
    return-void

    .line 470
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
    .line 475
    const-string v1, "TCON"

    invoke-virtual {p0, v1}, Lorg/farng/mp3/id3/AbstractID3v2;->getFrame(Ljava/lang/String;)Lorg/farng/mp3/id3/AbstractID3v2Frame;

    move-result-object v0

    .line 476
    .local v0, field:Lorg/farng/mp3/id3/AbstractID3v2Frame;
    if-nez v0, :cond_0

    .line 477
    new-instance v0, Lorg/farng/mp3/id3/ID3v2_2Frame;

    .end local v0           #field:Lorg/farng/mp3/id3/AbstractID3v2Frame;
    new-instance v1, Lorg/farng/mp3/id3/FrameBodyTCON;

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/farng/mp3/id3/FrameBodyTCON;-><init>(BLjava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/farng/mp3/id3/ID3v2_2Frame;-><init>(Lorg/farng/mp3/id3/AbstractID3v2FrameBody;)V

    .line 478
    .restart local v0       #field:Lorg/farng/mp3/id3/AbstractID3v2Frame;
    invoke-virtual {p0, v0}, Lorg/farng/mp3/id3/AbstractID3v2;->setFrame(Lorg/farng/mp3/id3/AbstractID3v2Frame;)V

    .line 482
    :goto_0
    return-void

    .line 480
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
    .line 495
    const-string v1, "USLT"

    invoke-virtual {p0, v1}, Lorg/farng/mp3/id3/AbstractID3v2;->getFrame(Ljava/lang/String;)Lorg/farng/mp3/id3/AbstractID3v2Frame;

    move-result-object v0

    .line 496
    .local v0, field:Lorg/farng/mp3/id3/AbstractID3v2Frame;
    if-nez v0, :cond_0

    .line 497
    new-instance v0, Lorg/farng/mp3/id3/ID3v2_2Frame;

    .end local v0           #field:Lorg/farng/mp3/id3/AbstractID3v2Frame;
    new-instance v1, Lorg/farng/mp3/id3/FrameBodyUSLT;

    const/4 v2, 0x0

    const-string v3, "ENG"

    const-string v4, ""

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/farng/mp3/id3/FrameBodyUSLT;-><init>(BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/farng/mp3/id3/ID3v2_2Frame;-><init>(Lorg/farng/mp3/id3/AbstractID3v2FrameBody;)V

    .line 498
    .restart local v0       #field:Lorg/farng/mp3/id3/AbstractID3v2Frame;
    invoke-virtual {p0, v0}, Lorg/farng/mp3/id3/AbstractID3v2;->setFrame(Lorg/farng/mp3/id3/AbstractID3v2Frame;)V

    .line 502
    :goto_0
    return-void

    .line 500
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
    .line 425
    const-string v1, "TIT2"

    invoke-virtual {p0, v1}, Lorg/farng/mp3/id3/AbstractID3v2;->getFrame(Ljava/lang/String;)Lorg/farng/mp3/id3/AbstractID3v2Frame;

    move-result-object v0

    .line 426
    .local v0, field:Lorg/farng/mp3/id3/AbstractID3v2Frame;
    if-nez v0, :cond_0

    .line 427
    new-instance v0, Lorg/farng/mp3/id3/ID3v2_2Frame;

    .end local v0           #field:Lorg/farng/mp3/id3/AbstractID3v2Frame;
    new-instance v1, Lorg/farng/mp3/id3/FrameBodyTIT2;

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/farng/mp3/id3/FrameBodyTIT2;-><init>(BLjava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/farng/mp3/id3/ID3v2_2Frame;-><init>(Lorg/farng/mp3/id3/AbstractID3v2FrameBody;)V

    .line 428
    .restart local v0       #field:Lorg/farng/mp3/id3/AbstractID3v2Frame;
    invoke-virtual {p0, v0}, Lorg/farng/mp3/id3/AbstractID3v2;->setFrame(Lorg/farng/mp3/id3/AbstractID3v2Frame;)V

    .line 432
    :goto_0
    return-void

    .line 430
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
    .line 485
    const-string v1, "TRCK"

    invoke-virtual {p0, v1}, Lorg/farng/mp3/id3/AbstractID3v2;->getFrame(Ljava/lang/String;)Lorg/farng/mp3/id3/AbstractID3v2Frame;

    move-result-object v0

    .line 486
    .local v0, field:Lorg/farng/mp3/id3/AbstractID3v2Frame;
    if-nez v0, :cond_0

    .line 487
    new-instance v0, Lorg/farng/mp3/id3/ID3v2_2Frame;

    .end local v0           #field:Lorg/farng/mp3/id3/AbstractID3v2Frame;
    new-instance v1, Lorg/farng/mp3/id3/FrameBodyTRCK;

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/farng/mp3/id3/FrameBodyTRCK;-><init>(BLjava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/farng/mp3/id3/ID3v2_2Frame;-><init>(Lorg/farng/mp3/id3/AbstractID3v2FrameBody;)V

    .line 488
    .restart local v0       #field:Lorg/farng/mp3/id3/AbstractID3v2Frame;
    invoke-virtual {p0, v0}, Lorg/farng/mp3/id3/AbstractID3v2;->setFrame(Lorg/farng/mp3/id3/AbstractID3v2Frame;)V

    .line 492
    :goto_0
    return-void

    .line 490
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
    .line 455
    const-string v1, "TYER"

    invoke-virtual {p0, v1}, Lorg/farng/mp3/id3/AbstractID3v2;->getFrame(Ljava/lang/String;)Lorg/farng/mp3/id3/AbstractID3v2Frame;

    move-result-object v0

    .line 456
    .local v0, field:Lorg/farng/mp3/id3/AbstractID3v2Frame;
    if-nez v0, :cond_0

    .line 457
    new-instance v0, Lorg/farng/mp3/id3/ID3v2_2Frame;

    .end local v0           #field:Lorg/farng/mp3/id3/AbstractID3v2Frame;
    new-instance v1, Lorg/farng/mp3/id3/FrameBodyTYER;

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/farng/mp3/id3/FrameBodyTYER;-><init>(BLjava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/farng/mp3/id3/ID3v2_2Frame;-><init>(Lorg/farng/mp3/id3/AbstractID3v2FrameBody;)V

    .line 458
    .restart local v0       #field:Lorg/farng/mp3/id3/AbstractID3v2Frame;
    invoke-virtual {p0, v0}, Lorg/farng/mp3/id3/AbstractID3v2;->setFrame(Lorg/farng/mp3/id3/AbstractID3v2Frame;)V

    .line 462
    :goto_0
    return-void

    .line 460
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
    .line 271
    invoke-virtual {p0}, Lorg/farng/mp3/id3/AbstractID3v2;->getFrameIterator()Ljava/util/Iterator;

    move-result-object v1

    .line 273
    .local v1, iterator:Ljava/util/Iterator;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/farng/mp3/id3/ID3v2_2;->getIdentifier()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lorg/farng/mp3/id3/ID3v2_2;->getSize()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " bytes\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 274
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

    .line 275
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

    .line 276
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 277
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/farng/mp3/id3/ID3v2_2Frame;

    .line 278
    .local v0, frame:Lorg/farng/mp3/id3/ID3v2_2Frame;
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

    .line 280
    .end local v0           #frame:Lorg/farng/mp3/id3/ID3v2_2Frame;
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
    .locals 11
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x5

    .line 295
    const/4 v8, 0x6

    new-array v0, v8, [B

    .line 296
    .local v0, buffer:[B
    new-instance v4, Lorg/farng/mp3/MP3File;

    invoke-direct {v4}, Lorg/farng/mp3/MP3File;-><init>()V

    .line 297
    .local v4, mp3:Lorg/farng/mp3/MP3File;
    invoke-virtual {v4, p1}, Lorg/farng/mp3/MP3File;->seekMP3Frame(Ljava/io/RandomAccessFile;)Z

    .line 298
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v5

    .line 299
    .local v5, mp3start:J
    const-wide/16 v8, 0x0

    invoke-virtual {p1, v8, v9}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 302
    const-string v7, "ID3"

    .line 303
    .local v7, str:Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v2, v8, :cond_0

    .line 304
    invoke-virtual {v7, v2}, Ljava/lang/String;->charAt(I)C

    move-result v8

    int-to-byte v8, v8

    aput-byte v8, v0, v2

    .line 303
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 306
    :cond_0
    const/4 v8, 0x3

    const/4 v9, 0x2

    aput-byte v9, v0, v8

    .line 307
    const/4 v8, 0x4

    const/4 v9, 0x0

    aput-byte v9, v0, v8

    .line 308
    iget-boolean v8, p0, Lorg/farng/mp3/id3/ID3v2_2;->unsynchronization:Z

    if-eqz v8, :cond_1

    .line 309
    aget-byte v8, v0, v10

    or-int/lit16 v8, v8, 0x80

    int-to-byte v8, v8

    aput-byte v8, v0, v10

    .line 311
    :cond_1
    iget-boolean v8, p0, Lorg/farng/mp3/id3/ID3v2_2;->compression:Z

    if-eqz v8, :cond_2

    .line 312
    aget-byte v8, v0, v10

    or-int/lit16 v8, v8, 0x80

    int-to-byte v8, v8

    aput-byte v8, v0, v10

    .line 314
    :cond_2
    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->write([B)V

    .line 317
    long-to-int v8, v5

    add-int/lit8 v8, v8, -0xa

    invoke-static {v8}, Lorg/farng/mp3/id3/ID3v2_2;->sizeToByteArray(I)[B

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/RandomAccessFile;->write([B)V

    .line 320
    invoke-virtual {p0}, Lorg/farng/mp3/id3/AbstractID3v2;->getFrameIterator()Ljava/util/Iterator;

    move-result-object v3

    .line 321
    .local v3, iterator:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 322
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/farng/mp3/id3/ID3v2_2Frame;

    .line 323
    .local v1, frame:Lorg/farng/mp3/id3/ID3v2_2Frame;
    invoke-virtual {v1, p1}, Lorg/farng/mp3/id3/ID3v2_2Frame;->write(Ljava/io/RandomAccessFile;)V

    goto :goto_1

    .line 325
    .end local v1           #frame:Lorg/farng/mp3/id3/ID3v2_2Frame;
    :cond_3
    return-void
.end method

.method public write(Lorg/farng/mp3/AbstractMP3Tag;)V
    .locals 1
    .parameter "tag"

    .prologue
    .line 284
    instance-of v0, p1, Lorg/farng/mp3/id3/ID3v2_2;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 285
    check-cast v0, Lorg/farng/mp3/id3/ID3v2_2;

    iget-boolean v0, v0, Lorg/farng/mp3/id3/ID3v2_2;->unsynchronization:Z

    iput-boolean v0, p0, Lorg/farng/mp3/id3/ID3v2_2;->unsynchronization:Z

    move-object v0, p1

    .line 286
    check-cast v0, Lorg/farng/mp3/id3/ID3v2_2;

    iget-boolean v0, v0, Lorg/farng/mp3/id3/ID3v2_2;->compression:Z

    iput-boolean v0, p0, Lorg/farng/mp3/id3/ID3v2_2;->compression:Z

    .line 288
    :cond_0
    invoke-super {p0, p1}, Lorg/farng/mp3/id3/AbstractID3v2;->write(Lorg/farng/mp3/AbstractMP3Tag;)V

    .line 289
    return-void
.end method
