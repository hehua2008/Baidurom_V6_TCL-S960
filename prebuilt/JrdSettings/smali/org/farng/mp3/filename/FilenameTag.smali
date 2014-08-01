.class public Lorg/farng/mp3/filename/FilenameTag;
.super Lorg/farng/mp3/AbstractMP3Tag;
.source "FilenameTag.java"


# instance fields
.field private composite:Lorg/farng/mp3/filename/AbstractFilenameComposite;

.field private extension:Ljava/lang/String;

.field private id3tag:Lorg/farng/mp3/id3/ID3v2_4;

.field private mp3file:Lorg/farng/mp3/MP3File;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 68
    invoke-direct {p0}, Lorg/farng/mp3/AbstractMP3Tag;-><init>()V

    .line 39
    iput-object v0, p0, Lorg/farng/mp3/filename/FilenameTag;->composite:Lorg/farng/mp3/filename/AbstractFilenameComposite;

    .line 43
    iput-object v0, p0, Lorg/farng/mp3/filename/FilenameTag;->id3tag:Lorg/farng/mp3/id3/ID3v2_4;

    .line 47
    iput-object v0, p0, Lorg/farng/mp3/filename/FilenameTag;->mp3file:Lorg/farng/mp3/MP3File;

    .line 51
    iput-object v0, p0, Lorg/farng/mp3/filename/FilenameTag;->extension:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public constructor <init>(Lorg/farng/mp3/filename/FilenameTag;)V
    .locals 2
    .parameter "copyObject"

    .prologue
    const/4 v0, 0x0

    .line 57
    invoke-direct {p0, p1}, Lorg/farng/mp3/AbstractMP3Tag;-><init>(Lorg/farng/mp3/AbstractMP3Tag;)V

    .line 39
    iput-object v0, p0, Lorg/farng/mp3/filename/FilenameTag;->composite:Lorg/farng/mp3/filename/AbstractFilenameComposite;

    .line 43
    iput-object v0, p0, Lorg/farng/mp3/filename/FilenameTag;->id3tag:Lorg/farng/mp3/id3/ID3v2_4;

    .line 47
    iput-object v0, p0, Lorg/farng/mp3/filename/FilenameTag;->mp3file:Lorg/farng/mp3/MP3File;

    .line 51
    iput-object v0, p0, Lorg/farng/mp3/filename/FilenameTag;->extension:Ljava/lang/String;

    .line 58
    iget-object v0, p1, Lorg/farng/mp3/filename/FilenameTag;->composite:Lorg/farng/mp3/filename/AbstractFilenameComposite;

    invoke-static {v0}, Lorg/farng/mp3/TagUtility;->copyObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/farng/mp3/filename/AbstractFilenameComposite;

    iput-object v0, p0, Lorg/farng/mp3/filename/FilenameTag;->composite:Lorg/farng/mp3/filename/AbstractFilenameComposite;

    .line 59
    new-instance v0, Lorg/farng/mp3/id3/ID3v2_4;

    iget-object v1, p1, Lorg/farng/mp3/filename/FilenameTag;->id3tag:Lorg/farng/mp3/id3/ID3v2_4;

    invoke-direct {v0, v1}, Lorg/farng/mp3/id3/ID3v2_4;-><init>(Lorg/farng/mp3/id3/ID3v2_4;)V

    iput-object v0, p0, Lorg/farng/mp3/filename/FilenameTag;->id3tag:Lorg/farng/mp3/id3/ID3v2_4;

    .line 60
    new-instance v0, Lorg/farng/mp3/MP3File;

    iget-object v1, p1, Lorg/farng/mp3/filename/FilenameTag;->mp3file:Lorg/farng/mp3/MP3File;

    invoke-direct {v0, v1}, Lorg/farng/mp3/MP3File;-><init>(Lorg/farng/mp3/MP3File;)V

    iput-object v0, p0, Lorg/farng/mp3/filename/FilenameTag;->mp3file:Lorg/farng/mp3/MP3File;

    .line 61
    iget-object v0, p1, Lorg/farng/mp3/filename/FilenameTag;->extension:Ljava/lang/String;

    iput-object v0, p0, Lorg/farng/mp3/filename/FilenameTag;->extension:Ljava/lang/String;

    .line 62
    return-void
.end method


# virtual methods
.method public append(Ljava/io/RandomAccessFile;)V
    .locals 2
    .parameter "file"

    .prologue
    .line 183
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Method append() not yet implemented."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public append(Lorg/farng/mp3/AbstractMP3Tag;)V
    .locals 2
    .parameter "abstractMP3Tag"

    .prologue
    .line 178
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Method append() not yet implemented."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public composeFilename()Ljava/lang/String;
    .locals 2

    .prologue
    .line 187
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 188
    .local v0, filename:Ljava/lang/StringBuffer;
    iget-object v1, p0, Lorg/farng/mp3/filename/FilenameTag;->composite:Lorg/farng/mp3/filename/AbstractFilenameComposite;

    if-eqz v1, :cond_0

    .line 189
    iget-object v1, p0, Lorg/farng/mp3/filename/FilenameTag;->composite:Lorg/farng/mp3/filename/AbstractFilenameComposite;

    invoke-virtual {v1}, Lorg/farng/mp3/filename/AbstractFilenameComposite;->composeFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 190
    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 191
    iget-object v1, p0, Lorg/farng/mp3/filename/FilenameTag;->extension:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 193
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public delete(Ljava/io/RandomAccessFile;)V
    .locals 2
    .parameter "file"

    .prologue
    .line 198
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Method delete() not yet implemented."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAlbumTitle()Ljava/lang/String;
    .locals 4

    .prologue
    .line 294
    const/4 v2, 0x0

    .line 295
    .local v2, text:Ljava/lang/String;
    const-string v3, "TALB"

    invoke-virtual {p0, v3}, Lorg/farng/mp3/filename/FilenameTag;->getFrame(Ljava/lang/String;)Lorg/farng/mp3/id3/AbstractID3v2Frame;

    move-result-object v1

    .line 296
    .local v1, frame:Lorg/farng/mp3/id3/AbstractID3v2Frame;
    if-eqz v1, :cond_0

    .line 297
    invoke-virtual {v1}, Lorg/farng/mp3/AbstractMP3Fragment;->getBody()Lorg/farng/mp3/AbstractMP3FragmentBody;

    move-result-object v0

    check-cast v0, Lorg/farng/mp3/id3/FrameBodyTALB;

    .line 298
    .local v0, body:Lorg/farng/mp3/id3/FrameBodyTALB;
    invoke-virtual {v0}, Lorg/farng/mp3/id3/AbstractFrameBodyTextInformation;->getText()Ljava/lang/String;

    move-result-object v2

    .line 300
    .end local v0           #body:Lorg/farng/mp3/id3/FrameBodyTALB;
    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public getAuthorComposer()Ljava/lang/String;
    .locals 4

    .prologue
    .line 361
    const/4 v2, 0x0

    .line 362
    .local v2, text:Ljava/lang/String;
    const-string v3, "TCOM"

    invoke-virtual {p0, v3}, Lorg/farng/mp3/filename/FilenameTag;->getFrame(Ljava/lang/String;)Lorg/farng/mp3/id3/AbstractID3v2Frame;

    move-result-object v1

    .line 363
    .local v1, frame:Lorg/farng/mp3/id3/AbstractID3v2Frame;
    if-eqz v1, :cond_0

    .line 364
    invoke-virtual {v1}, Lorg/farng/mp3/AbstractMP3Fragment;->getBody()Lorg/farng/mp3/AbstractMP3FragmentBody;

    move-result-object v0

    check-cast v0, Lorg/farng/mp3/id3/FrameBodyTCOM;

    .line 365
    .local v0, body:Lorg/farng/mp3/id3/FrameBodyTCOM;
    invoke-virtual {v0}, Lorg/farng/mp3/id3/AbstractFrameBodyTextInformation;->getText()Ljava/lang/String;

    move-result-object v2

    .line 367
    .end local v0           #body:Lorg/farng/mp3/id3/FrameBodyTCOM;
    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public getComposite()Lorg/farng/mp3/filename/AbstractFilenameComposite;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lorg/farng/mp3/filename/FilenameTag;->composite:Lorg/farng/mp3/filename/AbstractFilenameComposite;

    return-object v0
.end method

.method public getExtension()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lorg/farng/mp3/filename/FilenameTag;->extension:Ljava/lang/String;

    return-object v0
.end method

.method public getFrame(Ljava/lang/String;)Lorg/farng/mp3/id3/AbstractID3v2Frame;
    .locals 2
    .parameter "identifier"

    .prologue
    .line 122
    const/4 v0, 0x0

    .line 123
    .local v0, frame:Lorg/farng/mp3/id3/AbstractID3v2Frame;
    iget-object v1, p0, Lorg/farng/mp3/filename/FilenameTag;->id3tag:Lorg/farng/mp3/id3/ID3v2_4;

    if-eqz v1, :cond_0

    .line 124
    iget-object v1, p0, Lorg/farng/mp3/filename/FilenameTag;->id3tag:Lorg/farng/mp3/id3/ID3v2_4;

    invoke-virtual {v1, p1}, Lorg/farng/mp3/id3/AbstractID3v2;->getFrame(Ljava/lang/String;)Lorg/farng/mp3/id3/AbstractID3v2Frame;

    move-result-object v0

    .line 126
    :cond_0
    return-object v0
.end method

.method public getFrameOfType(Ljava/lang/String;)Ljava/util/Iterator;
    .locals 1
    .parameter "identifier"

    .prologue
    .line 130
    iget-object v0, p0, Lorg/farng/mp3/filename/FilenameTag;->id3tag:Lorg/farng/mp3/id3/ID3v2_4;

    invoke-virtual {v0, p1}, Lorg/farng/mp3/id3/AbstractID3v2;->getFrameOfType(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public getId3tag()Lorg/farng/mp3/id3/ID3v2_4;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lorg/farng/mp3/filename/FilenameTag;->id3tag:Lorg/farng/mp3/id3/ID3v2_4;

    return-object v0
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 161
    const-string v0, "FilenameTagv1.00"

    return-object v0
.end method

.method public getLeadArtist()Ljava/lang/String;
    .locals 4

    .prologue
    .line 284
    const/4 v2, 0x0

    .line 285
    .local v2, text:Ljava/lang/String;
    const-string v3, "TPE1"

    invoke-virtual {p0, v3}, Lorg/farng/mp3/filename/FilenameTag;->getFrame(Ljava/lang/String;)Lorg/farng/mp3/id3/AbstractID3v2Frame;

    move-result-object v1

    .line 286
    .local v1, frame:Lorg/farng/mp3/id3/AbstractID3v2Frame;
    if-eqz v1, :cond_0

    .line 287
    invoke-virtual {v1}, Lorg/farng/mp3/AbstractMP3Fragment;->getBody()Lorg/farng/mp3/AbstractMP3FragmentBody;

    move-result-object v0

    check-cast v0, Lorg/farng/mp3/id3/FrameBodyTPE1;

    .line 288
    .local v0, body:Lorg/farng/mp3/id3/FrameBodyTPE1;
    invoke-virtual {v0}, Lorg/farng/mp3/id3/AbstractFrameBodyTextInformation;->getText()Ljava/lang/String;

    move-result-object v2

    .line 290
    .end local v0           #body:Lorg/farng/mp3/id3/FrameBodyTPE1;
    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public getMp3file()Lorg/farng/mp3/MP3File;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lorg/farng/mp3/filename/FilenameTag;->mp3file:Lorg/farng/mp3/MP3File;

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 173
    invoke-virtual {p0}, Lorg/farng/mp3/filename/FilenameTag;->composeFilename()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method public getSongComment()Ljava/lang/String;
    .locals 4

    .prologue
    .line 314
    const/4 v2, 0x0

    .line 315
    .local v2, text:Ljava/lang/String;
    const-string v3, "COMM"

    invoke-virtual {p0, v3}, Lorg/farng/mp3/filename/FilenameTag;->getFrame(Ljava/lang/String;)Lorg/farng/mp3/id3/AbstractID3v2Frame;

    move-result-object v1

    .line 316
    .local v1, frame:Lorg/farng/mp3/id3/AbstractID3v2Frame;
    if-eqz v1, :cond_0

    .line 317
    invoke-virtual {v1}, Lorg/farng/mp3/AbstractMP3Fragment;->getBody()Lorg/farng/mp3/AbstractMP3FragmentBody;

    move-result-object v0

    check-cast v0, Lorg/farng/mp3/id3/FrameBodyCOMM;

    .line 318
    .local v0, body:Lorg/farng/mp3/id3/FrameBodyCOMM;
    invoke-virtual {v0}, Lorg/farng/mp3/id3/FrameBodyCOMM;->getText()Ljava/lang/String;

    move-result-object v2

    .line 320
    .end local v0           #body:Lorg/farng/mp3/id3/FrameBodyCOMM;
    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public getSongGenre()Ljava/lang/String;
    .locals 4

    .prologue
    .line 324
    const/4 v2, 0x0

    .line 325
    .local v2, text:Ljava/lang/String;
    const-string v3, "TCON"

    invoke-virtual {p0, v3}, Lorg/farng/mp3/filename/FilenameTag;->getFrame(Ljava/lang/String;)Lorg/farng/mp3/id3/AbstractID3v2Frame;

    move-result-object v1

    .line 326
    .local v1, frame:Lorg/farng/mp3/id3/AbstractID3v2Frame;
    if-eqz v1, :cond_0

    .line 327
    invoke-virtual {v1}, Lorg/farng/mp3/AbstractMP3Fragment;->getBody()Lorg/farng/mp3/AbstractMP3FragmentBody;

    move-result-object v0

    check-cast v0, Lorg/farng/mp3/id3/FrameBodyTCON;

    .line 328
    .local v0, body:Lorg/farng/mp3/id3/FrameBodyTCON;
    invoke-virtual {v0}, Lorg/farng/mp3/id3/AbstractFrameBodyTextInformation;->getText()Ljava/lang/String;

    move-result-object v2

    .line 330
    .end local v0           #body:Lorg/farng/mp3/id3/FrameBodyTCON;
    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public getSongLyric()Ljava/lang/String;
    .locals 4

    .prologue
    .line 344
    const/4 v2, 0x0

    .line 345
    .local v2, text:Ljava/lang/String;
    const-string v3, "SYLT"

    invoke-virtual {p0, v3}, Lorg/farng/mp3/filename/FilenameTag;->getFrame(Ljava/lang/String;)Lorg/farng/mp3/id3/AbstractID3v2Frame;

    move-result-object v1

    .line 346
    .local v1, frame:Lorg/farng/mp3/id3/AbstractID3v2Frame;
    if-eqz v1, :cond_0

    .line 347
    invoke-virtual {v1}, Lorg/farng/mp3/AbstractMP3Fragment;->getBody()Lorg/farng/mp3/AbstractMP3FragmentBody;

    move-result-object v0

    check-cast v0, Lorg/farng/mp3/id3/FrameBodySYLT;

    .line 348
    .local v0, body:Lorg/farng/mp3/id3/FrameBodySYLT;
    invoke-virtual {v0}, Lorg/farng/mp3/id3/FrameBodySYLT;->getLyric()Ljava/lang/String;

    move-result-object v2

    .line 350
    .end local v0           #body:Lorg/farng/mp3/id3/FrameBodySYLT;
    :cond_0
    if-nez v2, :cond_1

    .line 351
    const-string v3, "USLT"

    invoke-virtual {p0, v3}, Lorg/farng/mp3/filename/FilenameTag;->getFrame(Ljava/lang/String;)Lorg/farng/mp3/id3/AbstractID3v2Frame;

    move-result-object v1

    .line 352
    if-eqz v1, :cond_1

    .line 353
    invoke-virtual {v1}, Lorg/farng/mp3/AbstractMP3Fragment;->getBody()Lorg/farng/mp3/AbstractMP3FragmentBody;

    move-result-object v0

    check-cast v0, Lorg/farng/mp3/id3/FrameBodyUSLT;

    .line 354
    .local v0, body:Lorg/farng/mp3/id3/FrameBodyUSLT;
    invoke-virtual {v0}, Lorg/farng/mp3/id3/FrameBodyUSLT;->getLyric()Ljava/lang/String;

    move-result-object v2

    .line 357
    .end local v0           #body:Lorg/farng/mp3/id3/FrameBodyUSLT;
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public getSongTitle()Ljava/lang/String;
    .locals 4

    .prologue
    .line 274
    const/4 v2, 0x0

    .line 275
    .local v2, text:Ljava/lang/String;
    const-string v3, "TIT2"

    invoke-virtual {p0, v3}, Lorg/farng/mp3/filename/FilenameTag;->getFrame(Ljava/lang/String;)Lorg/farng/mp3/id3/AbstractID3v2Frame;

    move-result-object v1

    .line 276
    .local v1, frame:Lorg/farng/mp3/id3/AbstractID3v2Frame;
    if-eqz v1, :cond_0

    .line 277
    invoke-virtual {v1}, Lorg/farng/mp3/AbstractMP3Fragment;->getBody()Lorg/farng/mp3/AbstractMP3FragmentBody;

    move-result-object v0

    check-cast v0, Lorg/farng/mp3/id3/FrameBodyTIT2;

    .line 278
    .local v0, body:Lorg/farng/mp3/id3/FrameBodyTIT2;
    invoke-virtual {v0}, Lorg/farng/mp3/id3/AbstractFrameBodyTextInformation;->getText()Ljava/lang/String;

    move-result-object v2

    .line 280
    .end local v0           #body:Lorg/farng/mp3/id3/FrameBodyTIT2;
    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public getTrackNumberOnAlbum()Ljava/lang/String;
    .locals 4

    .prologue
    .line 334
    const/4 v2, 0x0

    .line 335
    .local v2, text:Ljava/lang/String;
    const-string v3, "TRCK"

    invoke-virtual {p0, v3}, Lorg/farng/mp3/filename/FilenameTag;->getFrame(Ljava/lang/String;)Lorg/farng/mp3/id3/AbstractID3v2Frame;

    move-result-object v1

    .line 336
    .local v1, frame:Lorg/farng/mp3/id3/AbstractID3v2Frame;
    if-eqz v1, :cond_0

    .line 337
    invoke-virtual {v1}, Lorg/farng/mp3/AbstractMP3Fragment;->getBody()Lorg/farng/mp3/AbstractMP3FragmentBody;

    move-result-object v0

    check-cast v0, Lorg/farng/mp3/id3/FrameBodyTRCK;

    .line 338
    .local v0, body:Lorg/farng/mp3/id3/FrameBodyTRCK;
    invoke-virtual {v0}, Lorg/farng/mp3/id3/AbstractFrameBodyTextInformation;->getText()Ljava/lang/String;

    move-result-object v2

    .line 340
    .end local v0           #body:Lorg/farng/mp3/id3/FrameBodyTRCK;
    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public getYearReleased()Ljava/lang/String;
    .locals 4

    .prologue
    .line 304
    const/4 v2, 0x0

    .line 305
    .local v2, text:Ljava/lang/String;
    const-string v3, "TDRC"

    invoke-virtual {p0, v3}, Lorg/farng/mp3/filename/FilenameTag;->getFrame(Ljava/lang/String;)Lorg/farng/mp3/id3/AbstractID3v2Frame;

    move-result-object v1

    .line 306
    .local v1, frame:Lorg/farng/mp3/id3/AbstractID3v2Frame;
    if-eqz v1, :cond_0

    .line 307
    invoke-virtual {v1}, Lorg/farng/mp3/AbstractMP3Fragment;->getBody()Lorg/farng/mp3/AbstractMP3FragmentBody;

    move-result-object v0

    check-cast v0, Lorg/farng/mp3/id3/FrameBodyTDRC;

    .line 308
    .local v0, body:Lorg/farng/mp3/id3/FrameBodyTDRC;
    invoke-virtual {v0}, Lorg/farng/mp3/id3/FrameBodyTDRC;->getText()Ljava/lang/String;

    move-result-object v2

    .line 310
    .end local v0           #body:Lorg/farng/mp3/id3/FrameBodyTDRC;
    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public hasFrame(Ljava/lang/String;)Z
    .locals 1
    .parameter "identifier"

    .prologue
    .line 202
    iget-object v0, p0, Lorg/farng/mp3/filename/FilenameTag;->id3tag:Lorg/farng/mp3/id3/ID3v2_4;

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lorg/farng/mp3/filename/FilenameTag;->id3tag:Lorg/farng/mp3/id3/ID3v2_4;

    invoke-virtual {v0, p1}, Lorg/farng/mp3/id3/AbstractID3v2;->hasFrame(Ljava/lang/String;)Z

    move-result v0

    .line 205
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasFrameOfType(Ljava/lang/String;)Z
    .locals 1
    .parameter "identifier"

    .prologue
    .line 209
    iget-object v0, p0, Lorg/farng/mp3/filename/FilenameTag;->id3tag:Lorg/farng/mp3/id3/ID3v2_4;

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lorg/farng/mp3/filename/FilenameTag;->id3tag:Lorg/farng/mp3/id3/ID3v2_4;

    invoke-virtual {v0, p1}, Lorg/farng/mp3/id3/AbstractID3v2;->hasFrameOfType(Ljava/lang/String;)Z

    move-result v0

    .line 212
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2

    .prologue
    .line 216
    const/4 v0, 0x0

    .line 217
    .local v0, iterator:Ljava/util/Iterator;
    iget-object v1, p0, Lorg/farng/mp3/filename/FilenameTag;->composite:Lorg/farng/mp3/filename/AbstractFilenameComposite;

    if-eqz v1, :cond_0

    .line 218
    iget-object v1, p0, Lorg/farng/mp3/filename/FilenameTag;->composite:Lorg/farng/mp3/filename/AbstractFilenameComposite;

    invoke-virtual {v1}, Lorg/farng/mp3/filename/AbstractFilenameComposite;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 220
    :cond_0
    return-object v0
.end method

.method public overwrite(Ljava/io/RandomAccessFile;)V
    .locals 0
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/farng/mp3/TagException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 229
    invoke-virtual {p0, p1}, Lorg/farng/mp3/filename/FilenameTag;->write(Ljava/io/RandomAccessFile;)V

    .line 230
    return-void
.end method

.method public overwrite(Lorg/farng/mp3/AbstractMP3Tag;)V
    .locals 2
    .parameter "abstractMP3Tag"

    .prologue
    .line 225
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Method overwrite() not yet implemented."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public read(Ljava/io/RandomAccessFile;)V
    .locals 2
    .parameter "file"

    .prologue
    .line 234
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Method read() not yet implemented."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public seek(Ljava/io/RandomAccessFile;)Z
    .locals 2
    .parameter "file"

    .prologue
    .line 239
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Method seek() not yet implemented."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAlbumTitle(Ljava/lang/String;)V
    .locals 4
    .parameter "albumTitle"

    .prologue
    .line 391
    const-string v1, "TALB"

    invoke-virtual {p0, v1}, Lorg/farng/mp3/filename/FilenameTag;->getFrame(Ljava/lang/String;)Lorg/farng/mp3/id3/AbstractID3v2Frame;

    move-result-object v0

    .line 392
    .local v0, field:Lorg/farng/mp3/id3/AbstractID3v2Frame;
    if-nez v0, :cond_0

    .line 393
    new-instance v0, Lorg/farng/mp3/id3/ID3v2_3Frame;

    .end local v0           #field:Lorg/farng/mp3/id3/AbstractID3v2Frame;
    new-instance v1, Lorg/farng/mp3/id3/FrameBodyTALB;

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/farng/mp3/id3/FrameBodyTALB;-><init>(BLjava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/farng/mp3/id3/ID3v2_3Frame;-><init>(Lorg/farng/mp3/id3/AbstractID3v2FrameBody;)V

    .line 394
    .restart local v0       #field:Lorg/farng/mp3/id3/AbstractID3v2Frame;
    invoke-virtual {p0, v0}, Lorg/farng/mp3/filename/FilenameTag;->setFrame(Lorg/farng/mp3/id3/AbstractID3v2Frame;)V

    .line 398
    :goto_0
    return-void

    .line 396
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
    .line 451
    const-string v1, "TCOM"

    invoke-virtual {p0, v1}, Lorg/farng/mp3/filename/FilenameTag;->getFrame(Ljava/lang/String;)Lorg/farng/mp3/id3/AbstractID3v2Frame;

    move-result-object v0

    .line 452
    .local v0, field:Lorg/farng/mp3/id3/AbstractID3v2Frame;
    if-nez v0, :cond_0

    .line 453
    new-instance v0, Lorg/farng/mp3/id3/ID3v2_3Frame;

    .end local v0           #field:Lorg/farng/mp3/id3/AbstractID3v2Frame;
    new-instance v1, Lorg/farng/mp3/id3/FrameBodyTCOM;

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/farng/mp3/id3/FrameBodyTCOM;-><init>(BLjava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/farng/mp3/id3/ID3v2_3Frame;-><init>(Lorg/farng/mp3/id3/AbstractID3v2FrameBody;)V

    .line 454
    .restart local v0       #field:Lorg/farng/mp3/id3/AbstractID3v2Frame;
    invoke-virtual {p0, v0}, Lorg/farng/mp3/filename/FilenameTag;->setFrame(Lorg/farng/mp3/id3/AbstractID3v2Frame;)V

    .line 458
    :goto_0
    return-void

    .line 456
    :cond_0
    invoke-virtual {v0}, Lorg/farng/mp3/AbstractMP3Fragment;->getBody()Lorg/farng/mp3/AbstractMP3FragmentBody;

    move-result-object v1

    check-cast v1, Lorg/farng/mp3/id3/FrameBodyTCOM;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/farng/mp3/id3/AbstractFrameBodyTextInformation;->setText(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setComposite(Lorg/farng/mp3/filename/AbstractFilenameComposite;)V
    .locals 0
    .parameter "composite"

    .prologue
    .line 77
    iput-object p1, p0, Lorg/farng/mp3/filename/FilenameTag;->composite:Lorg/farng/mp3/filename/AbstractFilenameComposite;

    .line 78
    return-void
.end method

.method public setExtension(Ljava/lang/String;)V
    .locals 0
    .parameter "extension"

    .prologue
    .line 90
    iput-object p1, p0, Lorg/farng/mp3/filename/FilenameTag;->extension:Ljava/lang/String;

    .line 91
    return-void
.end method

.method public setFrame(Lorg/farng/mp3/id3/AbstractID3v2Frame;)V
    .locals 1
    .parameter "frame"

    .prologue
    .line 103
    if-eqz p1, :cond_1

    .line 104
    iget-object v0, p0, Lorg/farng/mp3/filename/FilenameTag;->id3tag:Lorg/farng/mp3/id3/ID3v2_4;

    if-nez v0, :cond_0

    .line 105
    new-instance v0, Lorg/farng/mp3/id3/ID3v2_4;

    invoke-direct {v0}, Lorg/farng/mp3/id3/ID3v2_4;-><init>()V

    iput-object v0, p0, Lorg/farng/mp3/filename/FilenameTag;->id3tag:Lorg/farng/mp3/id3/ID3v2_4;

    .line 107
    :cond_0
    iget-object v0, p0, Lorg/farng/mp3/filename/FilenameTag;->id3tag:Lorg/farng/mp3/id3/ID3v2_4;

    invoke-virtual {v0, p1}, Lorg/farng/mp3/id3/AbstractID3v2;->setFrame(Lorg/farng/mp3/id3/AbstractID3v2Frame;)V

    .line 108
    iget-object v0, p0, Lorg/farng/mp3/filename/FilenameTag;->composite:Lorg/farng/mp3/filename/AbstractFilenameComposite;

    if-eqz v0, :cond_1

    .line 109
    iget-object v0, p0, Lorg/farng/mp3/filename/FilenameTag;->composite:Lorg/farng/mp3/filename/AbstractFilenameComposite;

    invoke-virtual {v0, p1}, Lorg/farng/mp3/filename/AbstractFilenameComposite;->setFrame(Lorg/farng/mp3/id3/AbstractID3v2Frame;)V

    .line 112
    :cond_1
    return-void
.end method

.method public setId3tag(Lorg/farng/mp3/id3/ID3v2_4;)V
    .locals 3
    .parameter "id3tag"

    .prologue
    .line 139
    iput-object p1, p0, Lorg/farng/mp3/filename/FilenameTag;->id3tag:Lorg/farng/mp3/id3/ID3v2_4;

    .line 140
    if-eqz p1, :cond_1

    .line 141
    invoke-virtual {p1}, Lorg/farng/mp3/id3/AbstractID3v2;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 142
    .local v0, iterator:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 143
    iget-object v2, p0, Lorg/farng/mp3/filename/FilenameTag;->composite:Lorg/farng/mp3/filename/AbstractFilenameComposite;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/farng/mp3/id3/AbstractID3v2Frame;

    invoke-virtual {v2, v1}, Lorg/farng/mp3/filename/AbstractFilenameComposite;->setFrame(Lorg/farng/mp3/id3/AbstractID3v2Frame;)V

    goto :goto_0

    .line 145
    :cond_0
    iget-object v1, p0, Lorg/farng/mp3/filename/FilenameTag;->composite:Lorg/farng/mp3/filename/AbstractFilenameComposite;

    if-eqz v1, :cond_1

    .line 146
    iget-object v1, p0, Lorg/farng/mp3/filename/FilenameTag;->composite:Lorg/farng/mp3/filename/AbstractFilenameComposite;

    invoke-virtual {v1, p1}, Lorg/farng/mp3/filename/AbstractFilenameComposite;->matchAgainstTag(Lorg/farng/mp3/AbstractMP3Tag;)V

    .line 149
    .end local v0           #iterator:Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method public setLeadArtist(Ljava/lang/String;)V
    .locals 4
    .parameter "leadArtist"

    .prologue
    .line 381
    const-string v1, "TPE1"

    invoke-virtual {p0, v1}, Lorg/farng/mp3/filename/FilenameTag;->getFrame(Ljava/lang/String;)Lorg/farng/mp3/id3/AbstractID3v2Frame;

    move-result-object v0

    .line 382
    .local v0, field:Lorg/farng/mp3/id3/AbstractID3v2Frame;
    if-nez v0, :cond_0

    .line 383
    new-instance v0, Lorg/farng/mp3/id3/ID3v2_3Frame;

    .end local v0           #field:Lorg/farng/mp3/id3/AbstractID3v2Frame;
    new-instance v1, Lorg/farng/mp3/id3/FrameBodyTPE1;

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/farng/mp3/id3/FrameBodyTPE1;-><init>(BLjava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/farng/mp3/id3/ID3v2_3Frame;-><init>(Lorg/farng/mp3/id3/AbstractID3v2FrameBody;)V

    .line 384
    .restart local v0       #field:Lorg/farng/mp3/id3/AbstractID3v2Frame;
    invoke-virtual {p0, v0}, Lorg/farng/mp3/filename/FilenameTag;->setFrame(Lorg/farng/mp3/id3/AbstractID3v2Frame;)V

    .line 388
    :goto_0
    return-void

    .line 386
    :cond_0
    invoke-virtual {v0}, Lorg/farng/mp3/AbstractMP3Fragment;->getBody()Lorg/farng/mp3/AbstractMP3FragmentBody;

    move-result-object v1

    check-cast v1, Lorg/farng/mp3/id3/FrameBodyTPE1;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/farng/mp3/id3/AbstractFrameBodyTextInformation;->setText(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setMp3file(Lorg/farng/mp3/MP3File;)V
    .locals 0
    .parameter "mp3file"

    .prologue
    .line 165
    iput-object p1, p0, Lorg/farng/mp3/filename/FilenameTag;->mp3file:Lorg/farng/mp3/MP3File;

    .line 166
    return-void
.end method

.method public setSongComment(Ljava/lang/String;)V
    .locals 6
    .parameter "songComment"

    .prologue
    .line 411
    const-string v1, "COMM"

    invoke-virtual {p0, v1}, Lorg/farng/mp3/filename/FilenameTag;->getFrame(Ljava/lang/String;)Lorg/farng/mp3/id3/AbstractID3v2Frame;

    move-result-object v0

    .line 412
    .local v0, field:Lorg/farng/mp3/id3/AbstractID3v2Frame;
    if-nez v0, :cond_0

    .line 413
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

    .line 414
    .restart local v0       #field:Lorg/farng/mp3/id3/AbstractID3v2Frame;
    invoke-virtual {p0, v0}, Lorg/farng/mp3/filename/FilenameTag;->setFrame(Lorg/farng/mp3/id3/AbstractID3v2Frame;)V

    .line 418
    :goto_0
    return-void

    .line 416
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
    .line 421
    const-string v1, "TCON"

    invoke-virtual {p0, v1}, Lorg/farng/mp3/filename/FilenameTag;->getFrame(Ljava/lang/String;)Lorg/farng/mp3/id3/AbstractID3v2Frame;

    move-result-object v0

    .line 422
    .local v0, field:Lorg/farng/mp3/id3/AbstractID3v2Frame;
    if-nez v0, :cond_0

    .line 423
    new-instance v0, Lorg/farng/mp3/id3/ID3v2_3Frame;

    .end local v0           #field:Lorg/farng/mp3/id3/AbstractID3v2Frame;
    new-instance v1, Lorg/farng/mp3/id3/FrameBodyTCON;

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/farng/mp3/id3/FrameBodyTCON;-><init>(BLjava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/farng/mp3/id3/ID3v2_3Frame;-><init>(Lorg/farng/mp3/id3/AbstractID3v2FrameBody;)V

    .line 424
    .restart local v0       #field:Lorg/farng/mp3/id3/AbstractID3v2Frame;
    invoke-virtual {p0, v0}, Lorg/farng/mp3/filename/FilenameTag;->setFrame(Lorg/farng/mp3/id3/AbstractID3v2Frame;)V

    .line 428
    :goto_0
    return-void

    .line 426
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
    .line 441
    const-string v1, "SYLT"

    invoke-virtual {p0, v1}, Lorg/farng/mp3/filename/FilenameTag;->getFrame(Ljava/lang/String;)Lorg/farng/mp3/id3/AbstractID3v2Frame;

    move-result-object v0

    .line 442
    .local v0, field:Lorg/farng/mp3/id3/AbstractID3v2Frame;
    if-nez v0, :cond_0

    .line 443
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

    .line 444
    .restart local v0       #field:Lorg/farng/mp3/id3/AbstractID3v2Frame;
    invoke-virtual {p0, v0}, Lorg/farng/mp3/filename/FilenameTag;->setFrame(Lorg/farng/mp3/id3/AbstractID3v2Frame;)V

    .line 448
    :goto_0
    return-void

    .line 446
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
    .line 371
    const-string v1, "TIT2"

    invoke-virtual {p0, v1}, Lorg/farng/mp3/filename/FilenameTag;->getFrame(Ljava/lang/String;)Lorg/farng/mp3/id3/AbstractID3v2Frame;

    move-result-object v0

    .line 372
    .local v0, field:Lorg/farng/mp3/id3/AbstractID3v2Frame;
    if-nez v0, :cond_0

    .line 373
    new-instance v0, Lorg/farng/mp3/id3/ID3v2_3Frame;

    .end local v0           #field:Lorg/farng/mp3/id3/AbstractID3v2Frame;
    new-instance v1, Lorg/farng/mp3/id3/FrameBodyTIT2;

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/farng/mp3/id3/FrameBodyTIT2;-><init>(BLjava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/farng/mp3/id3/ID3v2_3Frame;-><init>(Lorg/farng/mp3/id3/AbstractID3v2FrameBody;)V

    .line 374
    .restart local v0       #field:Lorg/farng/mp3/id3/AbstractID3v2Frame;
    invoke-virtual {p0, v0}, Lorg/farng/mp3/filename/FilenameTag;->setFrame(Lorg/farng/mp3/id3/AbstractID3v2Frame;)V

    .line 378
    :goto_0
    return-void

    .line 376
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
    .line 431
    const-string v1, "TRCK"

    invoke-virtual {p0, v1}, Lorg/farng/mp3/filename/FilenameTag;->getFrame(Ljava/lang/String;)Lorg/farng/mp3/id3/AbstractID3v2Frame;

    move-result-object v0

    .line 432
    .local v0, field:Lorg/farng/mp3/id3/AbstractID3v2Frame;
    if-nez v0, :cond_0

    .line 433
    new-instance v0, Lorg/farng/mp3/id3/ID3v2_3Frame;

    .end local v0           #field:Lorg/farng/mp3/id3/AbstractID3v2Frame;
    new-instance v1, Lorg/farng/mp3/id3/FrameBodyTRCK;

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/farng/mp3/id3/FrameBodyTRCK;-><init>(BLjava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/farng/mp3/id3/ID3v2_3Frame;-><init>(Lorg/farng/mp3/id3/AbstractID3v2FrameBody;)V

    .line 434
    .restart local v0       #field:Lorg/farng/mp3/id3/AbstractID3v2Frame;
    invoke-virtual {p0, v0}, Lorg/farng/mp3/filename/FilenameTag;->setFrame(Lorg/farng/mp3/id3/AbstractID3v2Frame;)V

    .line 438
    :goto_0
    return-void

    .line 436
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
    .line 401
    const-string v1, "TDRC"

    invoke-virtual {p0, v1}, Lorg/farng/mp3/filename/FilenameTag;->getFrame(Ljava/lang/String;)Lorg/farng/mp3/id3/AbstractID3v2Frame;

    move-result-object v0

    .line 402
    .local v0, field:Lorg/farng/mp3/id3/AbstractID3v2Frame;
    if-nez v0, :cond_0

    .line 403
    new-instance v0, Lorg/farng/mp3/id3/ID3v2_3Frame;

    .end local v0           #field:Lorg/farng/mp3/id3/AbstractID3v2Frame;
    new-instance v1, Lorg/farng/mp3/id3/FrameBodyTDRC;

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/farng/mp3/id3/FrameBodyTDRC;-><init>(BLjava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/farng/mp3/id3/ID3v2_3Frame;-><init>(Lorg/farng/mp3/id3/AbstractID3v2FrameBody;)V

    .line 404
    .restart local v0       #field:Lorg/farng/mp3/id3/AbstractID3v2Frame;
    invoke-virtual {p0, v0}, Lorg/farng/mp3/filename/FilenameTag;->setFrame(Lorg/farng/mp3/id3/AbstractID3v2Frame;)V

    .line 408
    :goto_0
    return-void

    .line 406
    :cond_0
    invoke-virtual {v0}, Lorg/farng/mp3/AbstractMP3Fragment;->getBody()Lorg/farng/mp3/AbstractMP3FragmentBody;

    move-result-object v1

    check-cast v1, Lorg/farng/mp3/id3/FrameBodyTDRC;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/farng/mp3/id3/FrameBodyTDRC;->setText(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 243
    new-instance v1, Ljava/lang/StringBuffer;

    const/16 v2, 0x80

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 244
    .local v1, stringBuffer:Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Lorg/farng/mp3/filename/FilenameTag;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 245
    .local v0, iterator:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 246
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 247
    sget-object v2, Lorg/farng/mp3/TagConstant;->SEPERATOR_LINE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 249
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public write(Ljava/io/RandomAccessFile;)V
    .locals 5
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/farng/mp3/TagException;
        }
    .end annotation

    .prologue
    .line 258
    invoke-virtual {p0}, Lorg/farng/mp3/filename/FilenameTag;->getMp3file()Lorg/farng/mp3/MP3File;

    move-result-object v2

    invoke-virtual {v2}, Lorg/farng/mp3/MP3File;->getMp3file()Ljava/io/File;

    move-result-object v1

    .line 259
    .local v1, originalFile:Ljava/io/File;
    new-instance v0, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {p0}, Lorg/farng/mp3/filename/FilenameTag;->composeFilename()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 260
    .local v0, newFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 261
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/FileDescriptor;->sync()V

    .line 262
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V

    .line 263
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->close()V

    .line 266
    invoke-static {v1, v0}, Lorg/farng/mp3/TagUtility;->copyFile(Ljava/io/File;Ljava/io/File;)V

    .line 267
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_0

    .line 268
    new-instance v2, Lorg/farng/mp3/TagException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to delete original file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/farng/mp3/TagException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 271
    :cond_0
    return-void
.end method

.method public write(Lorg/farng/mp3/AbstractMP3Tag;)V
    .locals 2
    .parameter "abstractMP3Tag"

    .prologue
    .line 254
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Method write() not yet implemented."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
