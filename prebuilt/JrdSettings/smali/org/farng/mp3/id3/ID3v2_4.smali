.class public Lorg/farng/mp3/id3/ID3v2_4;
.super Lorg/farng/mp3/id3/ID3v2_3;
.source "ID3v2_4.java"


# instance fields
.field protected footer:Z

.field protected imageEncodingRestriction:B

.field protected imageSizeRestriction:B

.field protected tagRestriction:Z

.field protected tagSizeRestriction:B

.field protected textEncodingRestriction:B

.field protected textFieldSizeRestriction:B

.field protected updateTag:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 274
    invoke-direct {p0}, Lorg/farng/mp3/id3/ID3v2_3;-><init>()V

    .line 262
    iput-boolean v0, p0, Lorg/farng/mp3/id3/ID3v2_4;->footer:Z

    .line 263
    iput-boolean v0, p0, Lorg/farng/mp3/id3/ID3v2_4;->tagRestriction:Z

    .line 264
    iput-boolean v0, p0, Lorg/farng/mp3/id3/ID3v2_4;->updateTag:Z

    .line 265
    iput-byte v0, p0, Lorg/farng/mp3/id3/ID3v2_4;->imageEncodingRestriction:B

    .line 266
    iput-byte v0, p0, Lorg/farng/mp3/id3/ID3v2_4;->imageSizeRestriction:B

    .line 267
    iput-byte v0, p0, Lorg/farng/mp3/id3/ID3v2_4;->tagSizeRestriction:B

    .line 268
    iput-byte v0, p0, Lorg/farng/mp3/id3/ID3v2_4;->textEncodingRestriction:B

    .line 269
    iput-byte v0, p0, Lorg/farng/mp3/id3/ID3v2_4;->textFieldSizeRestriction:B

    .line 275
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/farng/mp3/id3/AbstractID3v2;->setMajorVersion(B)V

    .line 276
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lorg/farng/mp3/id3/AbstractID3v2;->setRevision(B)V

    .line 277
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

    .line 379
    invoke-direct {p0}, Lorg/farng/mp3/id3/ID3v2_3;-><init>()V

    .line 262
    iput-boolean v0, p0, Lorg/farng/mp3/id3/ID3v2_4;->footer:Z

    .line 263
    iput-boolean v0, p0, Lorg/farng/mp3/id3/ID3v2_4;->tagRestriction:Z

    .line 264
    iput-boolean v0, p0, Lorg/farng/mp3/id3/ID3v2_4;->updateTag:Z

    .line 265
    iput-byte v0, p0, Lorg/farng/mp3/id3/ID3v2_4;->imageEncodingRestriction:B

    .line 266
    iput-byte v0, p0, Lorg/farng/mp3/id3/ID3v2_4;->imageSizeRestriction:B

    .line 267
    iput-byte v0, p0, Lorg/farng/mp3/id3/ID3v2_4;->tagSizeRestriction:B

    .line 268
    iput-byte v0, p0, Lorg/farng/mp3/id3/ID3v2_4;->textEncodingRestriction:B

    .line 269
    iput-byte v0, p0, Lorg/farng/mp3/id3/ID3v2_4;->textFieldSizeRestriction:B

    .line 380
    invoke-virtual {p0, p1}, Lorg/farng/mp3/id3/ID3v2_4;->read(Ljava/io/RandomAccessFile;)V

    .line 381
    return-void
.end method

.method public constructor <init>(Lorg/farng/mp3/AbstractMP3Tag;)V
    .locals 14
    .parameter "mp3tag"

    .prologue
    const/4 v1, 0x0

    .line 297
    invoke-direct {p0}, Lorg/farng/mp3/id3/ID3v2_3;-><init>()V

    .line 262
    iput-boolean v1, p0, Lorg/farng/mp3/id3/ID3v2_4;->footer:Z

    .line 263
    iput-boolean v1, p0, Lorg/farng/mp3/id3/ID3v2_4;->tagRestriction:Z

    .line 264
    iput-boolean v1, p0, Lorg/farng/mp3/id3/ID3v2_4;->updateTag:Z

    .line 265
    iput-byte v1, p0, Lorg/farng/mp3/id3/ID3v2_4;->imageEncodingRestriction:B

    .line 266
    iput-byte v1, p0, Lorg/farng/mp3/id3/ID3v2_4;->imageSizeRestriction:B

    .line 267
    iput-byte v1, p0, Lorg/farng/mp3/id3/ID3v2_4;->tagSizeRestriction:B

    .line 268
    iput-byte v1, p0, Lorg/farng/mp3/id3/ID3v2_4;->textEncodingRestriction:B

    .line 269
    iput-byte v1, p0, Lorg/farng/mp3/id3/ID3v2_4;->textFieldSizeRestriction:B

    .line 298
    if-eqz p1, :cond_0

    .line 302
    instance-of v2, p1, Lorg/farng/mp3/id3/AbstractID3v2;

    if-eqz v2, :cond_1

    .line 303
    check-cast p1, Lorg/farng/mp3/id3/AbstractID3v2;

    .end local p1
    invoke-direct {p0, p1}, Lorg/farng/mp3/id3/ID3v2_4;->copyFromID3v2Tag(Lorg/farng/mp3/id3/AbstractID3v2;)V

    .line 374
    :cond_0
    :goto_0
    return-void

    .line 304
    .restart local p1
    :cond_1
    instance-of v2, p1, Lorg/farng/mp3/id3/ID3v1;

    if-eqz v2, :cond_8

    move-object v10, p1

    .line 306
    check-cast v10, Lorg/farng/mp3/id3/ID3v1;

    .line 309
    .local v10, id3tag:Lorg/farng/mp3/id3/ID3v1;
    iget-object v2, v10, Lorg/farng/mp3/id3/ID3v1;->title:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 310
    new-instance v7, Lorg/farng/mp3/id3/FrameBodyTIT2;

    iget-object v2, v10, Lorg/farng/mp3/id3/ID3v1;->title:Ljava/lang/String;

    invoke-direct {v7, v1, v2}, Lorg/farng/mp3/id3/FrameBodyTIT2;-><init>(BLjava/lang/String;)V

    .line 311
    .local v7, newBody:Lorg/farng/mp3/id3/AbstractID3v2FrameBody;
    new-instance v0, Lorg/farng/mp3/id3/ID3v2_4Frame;

    move v2, v1

    move v3, v1

    move v4, v1

    move v5, v1

    move v6, v1

    invoke-direct/range {v0 .. v7}, Lorg/farng/mp3/id3/ID3v2_4Frame;-><init>(ZZZZZZLorg/farng/mp3/id3/AbstractID3v2FrameBody;)V

    .line 312
    .local v0, newFrame:Lorg/farng/mp3/id3/ID3v2_4Frame;
    invoke-virtual {p0, v0}, Lorg/farng/mp3/id3/AbstractID3v2;->setFrame(Lorg/farng/mp3/id3/AbstractID3v2Frame;)V

    .line 314
    .end local v0           #newFrame:Lorg/farng/mp3/id3/ID3v2_4Frame;
    .end local v7           #newBody:Lorg/farng/mp3/id3/AbstractID3v2FrameBody;
    :cond_2
    iget-object v2, v10, Lorg/farng/mp3/id3/ID3v1;->artist:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    .line 315
    new-instance v7, Lorg/farng/mp3/id3/FrameBodyTPE1;

    iget-object v2, v10, Lorg/farng/mp3/id3/ID3v1;->artist:Ljava/lang/String;

    invoke-direct {v7, v1, v2}, Lorg/farng/mp3/id3/FrameBodyTPE1;-><init>(BLjava/lang/String;)V

    .line 316
    .restart local v7       #newBody:Lorg/farng/mp3/id3/AbstractID3v2FrameBody;
    new-instance v0, Lorg/farng/mp3/id3/ID3v2_4Frame;

    move v2, v1

    move v3, v1

    move v4, v1

    move v5, v1

    move v6, v1

    invoke-direct/range {v0 .. v7}, Lorg/farng/mp3/id3/ID3v2_4Frame;-><init>(ZZZZZZLorg/farng/mp3/id3/AbstractID3v2FrameBody;)V

    .line 317
    .restart local v0       #newFrame:Lorg/farng/mp3/id3/ID3v2_4Frame;
    invoke-virtual {p0, v0}, Lorg/farng/mp3/id3/AbstractID3v2;->setFrame(Lorg/farng/mp3/id3/AbstractID3v2Frame;)V

    .line 319
    .end local v0           #newFrame:Lorg/farng/mp3/id3/ID3v2_4Frame;
    .end local v7           #newBody:Lorg/farng/mp3/id3/AbstractID3v2FrameBody;
    :cond_3
    iget-object v2, v10, Lorg/farng/mp3/id3/ID3v1;->album:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_4

    .line 320
    new-instance v7, Lorg/farng/mp3/id3/FrameBodyTALB;

    iget-object v2, v10, Lorg/farng/mp3/id3/ID3v1;->album:Ljava/lang/String;

    invoke-direct {v7, v1, v2}, Lorg/farng/mp3/id3/FrameBodyTALB;-><init>(BLjava/lang/String;)V

    .line 321
    .restart local v7       #newBody:Lorg/farng/mp3/id3/AbstractID3v2FrameBody;
    new-instance v0, Lorg/farng/mp3/id3/ID3v2_4Frame;

    move v2, v1

    move v3, v1

    move v4, v1

    move v5, v1

    move v6, v1

    invoke-direct/range {v0 .. v7}, Lorg/farng/mp3/id3/ID3v2_4Frame;-><init>(ZZZZZZLorg/farng/mp3/id3/AbstractID3v2FrameBody;)V

    .line 322
    .restart local v0       #newFrame:Lorg/farng/mp3/id3/ID3v2_4Frame;
    invoke-virtual {p0, v0}, Lorg/farng/mp3/id3/AbstractID3v2;->setFrame(Lorg/farng/mp3/id3/AbstractID3v2Frame;)V

    .line 324
    .end local v0           #newFrame:Lorg/farng/mp3/id3/ID3v2_4Frame;
    .end local v7           #newBody:Lorg/farng/mp3/id3/AbstractID3v2FrameBody;
    :cond_4
    iget-object v2, v10, Lorg/farng/mp3/id3/ID3v1;->year:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_5

    .line 325
    new-instance v7, Lorg/farng/mp3/id3/FrameBodyTDRC;

    iget-object v2, v10, Lorg/farng/mp3/id3/ID3v1;->year:Ljava/lang/String;

    invoke-direct {v7, v1, v2}, Lorg/farng/mp3/id3/FrameBodyTDRC;-><init>(BLjava/lang/String;)V

    .line 326
    .restart local v7       #newBody:Lorg/farng/mp3/id3/AbstractID3v2FrameBody;
    new-instance v0, Lorg/farng/mp3/id3/ID3v2_4Frame;

    move v2, v1

    move v3, v1

    move v4, v1

    move v5, v1

    move v6, v1

    invoke-direct/range {v0 .. v7}, Lorg/farng/mp3/id3/ID3v2_4Frame;-><init>(ZZZZZZLorg/farng/mp3/id3/AbstractID3v2FrameBody;)V

    .line 327
    .restart local v0       #newFrame:Lorg/farng/mp3/id3/ID3v2_4Frame;
    invoke-virtual {p0, v0}, Lorg/farng/mp3/id3/AbstractID3v2;->setFrame(Lorg/farng/mp3/id3/AbstractID3v2Frame;)V

    .line 329
    .end local v0           #newFrame:Lorg/farng/mp3/id3/ID3v2_4Frame;
    .end local v7           #newBody:Lorg/farng/mp3/id3/AbstractID3v2FrameBody;
    :cond_5
    iget-object v2, v10, Lorg/farng/mp3/id3/ID3v1;->comment:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_6

    .line 330
    new-instance v7, Lorg/farng/mp3/id3/FrameBodyCOMM;

    const-string v2, "ENG"

    const-string v3, ""

    iget-object v4, v10, Lorg/farng/mp3/id3/ID3v1;->comment:Ljava/lang/String;

    invoke-direct {v7, v1, v2, v3, v4}, Lorg/farng/mp3/id3/FrameBodyCOMM;-><init>(BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    .restart local v7       #newBody:Lorg/farng/mp3/id3/AbstractID3v2FrameBody;
    new-instance v0, Lorg/farng/mp3/id3/ID3v2_4Frame;

    move v2, v1

    move v3, v1

    move v4, v1

    move v5, v1

    move v6, v1

    invoke-direct/range {v0 .. v7}, Lorg/farng/mp3/id3/ID3v2_4Frame;-><init>(ZZZZZZLorg/farng/mp3/id3/AbstractID3v2FrameBody;)V

    .line 332
    .restart local v0       #newFrame:Lorg/farng/mp3/id3/ID3v2_4Frame;
    invoke-virtual {p0, v0}, Lorg/farng/mp3/id3/AbstractID3v2;->setFrame(Lorg/farng/mp3/id3/AbstractID3v2Frame;)V

    .line 334
    .end local v0           #newFrame:Lorg/farng/mp3/id3/ID3v2_4Frame;
    .end local v7           #newBody:Lorg/farng/mp3/id3/AbstractID3v2FrameBody;
    :cond_6
    iget-byte v2, v10, Lorg/farng/mp3/id3/ID3v1;->genre:B

    if-ltz v2, :cond_7

    .line 335
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-byte v3, v10, Lorg/farng/mp3/id3/ID3v1;->genre:B

    invoke-static {v3}, Ljava/lang/Byte;->toString(B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lorg/farng/mp3/TagConstant;->genreIdToString:Ljava/util/HashMap;

    new-instance v4, Ljava/lang/Long;

    iget-byte v5, v10, Lorg/farng/mp3/id3/ID3v1;->genre:B

    int-to-long v5, v5

    invoke-direct {v4, v5, v6}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 339
    .local v9, genre:Ljava/lang/String;
    new-instance v7, Lorg/farng/mp3/id3/FrameBodyTCON;

    invoke-direct {v7, v1, v9}, Lorg/farng/mp3/id3/FrameBodyTCON;-><init>(BLjava/lang/String;)V

    .line 340
    .restart local v7       #newBody:Lorg/farng/mp3/id3/AbstractID3v2FrameBody;
    new-instance v0, Lorg/farng/mp3/id3/ID3v2_4Frame;

    move v2, v1

    move v3, v1

    move v4, v1

    move v5, v1

    move v6, v1

    invoke-direct/range {v0 .. v7}, Lorg/farng/mp3/id3/ID3v2_4Frame;-><init>(ZZZZZZLorg/farng/mp3/id3/AbstractID3v2FrameBody;)V

    .line 341
    .restart local v0       #newFrame:Lorg/farng/mp3/id3/ID3v2_4Frame;
    invoke-virtual {p0, v0}, Lorg/farng/mp3/id3/AbstractID3v2;->setFrame(Lorg/farng/mp3/id3/AbstractID3v2Frame;)V

    .line 343
    .end local v0           #newFrame:Lorg/farng/mp3/id3/ID3v2_4Frame;
    .end local v7           #newBody:Lorg/farng/mp3/id3/AbstractID3v2FrameBody;
    .end local v9           #genre:Ljava/lang/String;
    :cond_7
    instance-of v2, p1, Lorg/farng/mp3/id3/ID3v1_1;

    if-eqz v2, :cond_0

    move-object v11, p1

    .line 344
    check-cast v11, Lorg/farng/mp3/id3/ID3v1_1;

    .line 345
    .local v11, id3tag2:Lorg/farng/mp3/id3/ID3v1_1;
    iget-byte v2, v11, Lorg/farng/mp3/id3/ID3v1_1;->track:B

    if-lez v2, :cond_0

    .line 346
    new-instance v7, Lorg/farng/mp3/id3/FrameBodyTRCK;

    iget-byte v2, v11, Lorg/farng/mp3/id3/ID3v1_1;->track:B

    invoke-static {v2}, Ljava/lang/Byte;->toString(B)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v7, v1, v2}, Lorg/farng/mp3/id3/FrameBodyTRCK;-><init>(BLjava/lang/String;)V

    .line 347
    .restart local v7       #newBody:Lorg/farng/mp3/id3/AbstractID3v2FrameBody;
    new-instance v0, Lorg/farng/mp3/id3/ID3v2_4Frame;

    move v2, v1

    move v3, v1

    move v4, v1

    move v5, v1

    move v6, v1

    invoke-direct/range {v0 .. v7}, Lorg/farng/mp3/id3/ID3v2_4Frame;-><init>(ZZZZZZLorg/farng/mp3/id3/AbstractID3v2FrameBody;)V

    .line 348
    .restart local v0       #newFrame:Lorg/farng/mp3/id3/ID3v2_4Frame;
    invoke-virtual {p0, v0}, Lorg/farng/mp3/id3/AbstractID3v2;->setFrame(Lorg/farng/mp3/id3/AbstractID3v2Frame;)V

    goto/16 :goto_0

    .line 351
    .end local v0           #newFrame:Lorg/farng/mp3/id3/ID3v2_4Frame;
    .end local v7           #newBody:Lorg/farng/mp3/id3/AbstractID3v2FrameBody;
    .end local v10           #id3tag:Lorg/farng/mp3/id3/ID3v1;
    .end local v11           #id3tag2:Lorg/farng/mp3/id3/ID3v1_1;
    :cond_8
    instance-of v1, p1, Lorg/farng/mp3/lyrics3/AbstractLyrics3;

    if-eqz v1, :cond_a

    .line 354
    instance-of v1, p1, Lorg/farng/mp3/lyrics3/Lyrics3v2;

    if-eqz v1, :cond_9

    .line 355
    new-instance v13, Lorg/farng/mp3/lyrics3/Lyrics3v2;

    check-cast p1, Lorg/farng/mp3/lyrics3/Lyrics3v2;

    .end local p1
    invoke-direct {v13, p1}, Lorg/farng/mp3/lyrics3/Lyrics3v2;-><init>(Lorg/farng/mp3/lyrics3/Lyrics3v2;)V

    .line 359
    .local v13, lyric:Lorg/farng/mp3/lyrics3/Lyrics3v2;
    :goto_1
    invoke-virtual {v13}, Lorg/farng/mp3/lyrics3/Lyrics3v2;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .line 362
    .local v12, iterator:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 364
    :try_start_0
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/farng/mp3/lyrics3/Lyrics3v2Field;

    .line 365
    .local v8, field:Lorg/farng/mp3/lyrics3/Lyrics3v2Field;
    new-instance v0, Lorg/farng/mp3/id3/ID3v2_4Frame;

    invoke-direct {v0, v8}, Lorg/farng/mp3/id3/ID3v2_4Frame;-><init>(Lorg/farng/mp3/lyrics3/Lyrics3v2Field;)V

    .line 366
    .restart local v0       #newFrame:Lorg/farng/mp3/id3/ID3v2_4Frame;
    invoke-virtual {p0, v0}, Lorg/farng/mp3/id3/AbstractID3v2;->setFrame(Lorg/farng/mp3/id3/AbstractID3v2Frame;)V
    :try_end_0
    .catch Lorg/farng/mp3/InvalidTagException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 367
    .end local v0           #newFrame:Lorg/farng/mp3/id3/ID3v2_4Frame;
    .end local v8           #field:Lorg/farng/mp3/lyrics3/Lyrics3v2Field;
    :catch_0
    move-exception v1

    goto :goto_2

    .line 357
    .end local v12           #iterator:Ljava/util/Iterator;
    .end local v13           #lyric:Lorg/farng/mp3/lyrics3/Lyrics3v2;
    .restart local p1
    :cond_9
    new-instance v13, Lorg/farng/mp3/lyrics3/Lyrics3v2;

    invoke-direct {v13, p1}, Lorg/farng/mp3/lyrics3/Lyrics3v2;-><init>(Lorg/farng/mp3/AbstractMP3Tag;)V

    .restart local v13       #lyric:Lorg/farng/mp3/lyrics3/Lyrics3v2;
    goto :goto_1

    .line 370
    .end local v13           #lyric:Lorg/farng/mp3/lyrics3/Lyrics3v2;
    :cond_a
    instance-of v1, p1, Lorg/farng/mp3/filename/FilenameTag;

    if-eqz v1, :cond_0

    .line 371
    check-cast p1, Lorg/farng/mp3/filename/FilenameTag;

    .end local p1
    invoke-virtual {p1}, Lorg/farng/mp3/filename/FilenameTag;->getId3tag()Lorg/farng/mp3/id3/ID3v2_4;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/farng/mp3/id3/ID3v2_4;->copyFromID3v2Tag(Lorg/farng/mp3/id3/AbstractID3v2;)V

    goto/16 :goto_0
.end method

.method public constructor <init>(Lorg/farng/mp3/id3/ID3v2_4;)V
    .locals 1
    .parameter "copyObject"

    .prologue
    const/4 v0, 0x0

    .line 283
    invoke-direct {p0, p1}, Lorg/farng/mp3/id3/ID3v2_3;-><init>(Lorg/farng/mp3/id3/ID3v2_3;)V

    .line 262
    iput-boolean v0, p0, Lorg/farng/mp3/id3/ID3v2_4;->footer:Z

    .line 263
    iput-boolean v0, p0, Lorg/farng/mp3/id3/ID3v2_4;->tagRestriction:Z

    .line 264
    iput-boolean v0, p0, Lorg/farng/mp3/id3/ID3v2_4;->updateTag:Z

    .line 265
    iput-byte v0, p0, Lorg/farng/mp3/id3/ID3v2_4;->imageEncodingRestriction:B

    .line 266
    iput-byte v0, p0, Lorg/farng/mp3/id3/ID3v2_4;->imageSizeRestriction:B

    .line 267
    iput-byte v0, p0, Lorg/farng/mp3/id3/ID3v2_4;->tagSizeRestriction:B

    .line 268
    iput-byte v0, p0, Lorg/farng/mp3/id3/ID3v2_4;->textEncodingRestriction:B

    .line 269
    iput-byte v0, p0, Lorg/farng/mp3/id3/ID3v2_4;->textFieldSizeRestriction:B

    .line 284
    iget-boolean v0, p1, Lorg/farng/mp3/id3/ID3v2_4;->footer:Z

    iput-boolean v0, p0, Lorg/farng/mp3/id3/ID3v2_4;->footer:Z

    .line 285
    iget-boolean v0, p1, Lorg/farng/mp3/id3/ID3v2_4;->tagRestriction:Z

    iput-boolean v0, p0, Lorg/farng/mp3/id3/ID3v2_4;->tagRestriction:Z

    .line 286
    iget-boolean v0, p1, Lorg/farng/mp3/id3/ID3v2_4;->updateTag:Z

    iput-boolean v0, p0, Lorg/farng/mp3/id3/ID3v2_4;->updateTag:Z

    .line 287
    iget-byte v0, p1, Lorg/farng/mp3/id3/ID3v2_4;->imageEncodingRestriction:B

    iput-byte v0, p0, Lorg/farng/mp3/id3/ID3v2_4;->imageEncodingRestriction:B

    .line 288
    iget-byte v0, p1, Lorg/farng/mp3/id3/ID3v2_4;->imageSizeRestriction:B

    iput-byte v0, p0, Lorg/farng/mp3/id3/ID3v2_4;->imageSizeRestriction:B

    .line 289
    iget-byte v0, p1, Lorg/farng/mp3/id3/ID3v2_4;->tagSizeRestriction:B

    iput-byte v0, p0, Lorg/farng/mp3/id3/ID3v2_4;->tagSizeRestriction:B

    .line 290
    iget-byte v0, p1, Lorg/farng/mp3/id3/ID3v2_4;->textEncodingRestriction:B

    iput-byte v0, p0, Lorg/farng/mp3/id3/ID3v2_4;->textEncodingRestriction:B

    .line 291
    iget-byte v0, p1, Lorg/farng/mp3/id3/ID3v2_4;->textFieldSizeRestriction:B

    iput-byte v0, p0, Lorg/farng/mp3/id3/ID3v2_4;->textFieldSizeRestriction:B

    .line 292
    return-void
.end method

.method private copyFromID3v2Tag(Lorg/farng/mp3/id3/AbstractID3v2;)V
    .locals 6
    .parameter "mp3tag"

    .prologue
    .line 727
    instance-of v5, p1, Lorg/farng/mp3/id3/ID3v2_4;

    if-eqz v5, :cond_0

    move-object v4, p1

    .line 728
    check-cast v4, Lorg/farng/mp3/id3/ID3v2_4;

    .line 729
    .local v4, tag:Lorg/farng/mp3/id3/ID3v2_4;
    iget-boolean v5, v4, Lorg/farng/mp3/id3/ID3v2_4;->footer:Z

    iput-boolean v5, p0, Lorg/farng/mp3/id3/ID3v2_4;->footer:Z

    .line 730
    iget-boolean v5, v4, Lorg/farng/mp3/id3/ID3v2_4;->tagRestriction:Z

    iput-boolean v5, p0, Lorg/farng/mp3/id3/ID3v2_4;->tagRestriction:Z

    .line 731
    iget-boolean v5, v4, Lorg/farng/mp3/id3/ID3v2_4;->updateTag:Z

    iput-boolean v5, p0, Lorg/farng/mp3/id3/ID3v2_4;->updateTag:Z

    .line 732
    iget-byte v5, v4, Lorg/farng/mp3/id3/ID3v2_4;->imageEncodingRestriction:B

    iput-byte v5, p0, Lorg/farng/mp3/id3/ID3v2_4;->imageEncodingRestriction:B

    .line 733
    iget-byte v5, v4, Lorg/farng/mp3/id3/ID3v2_4;->imageSizeRestriction:B

    iput-byte v5, p0, Lorg/farng/mp3/id3/ID3v2_4;->imageSizeRestriction:B

    .line 734
    iget-byte v5, v4, Lorg/farng/mp3/id3/ID3v2_4;->tagSizeRestriction:B

    iput-byte v5, p0, Lorg/farng/mp3/id3/ID3v2_4;->tagSizeRestriction:B

    .line 735
    iget-byte v5, v4, Lorg/farng/mp3/id3/ID3v2_4;->textEncodingRestriction:B

    iput-byte v5, p0, Lorg/farng/mp3/id3/ID3v2_4;->textEncodingRestriction:B

    .line 736
    iget-byte v5, v4, Lorg/farng/mp3/id3/ID3v2_4;->textFieldSizeRestriction:B

    iput-byte v5, p0, Lorg/farng/mp3/id3/ID3v2_4;->textFieldSizeRestriction:B

    .line 738
    .end local v4           #tag:Lorg/farng/mp3/id3/ID3v2_4;
    :cond_0
    instance-of v5, p1, Lorg/farng/mp3/id3/ID3v2_3;

    if-eqz v5, :cond_1

    move-object v1, p1

    .line 740
    check-cast v1, Lorg/farng/mp3/id3/ID3v2_3;

    .line 741
    .local v1, id3tag:Lorg/farng/mp3/id3/ID3v2_3;
    iget-boolean v5, v1, Lorg/farng/mp3/id3/ID3v2_3;->extended:Z

    iput-boolean v5, p0, Lorg/farng/mp3/id3/ID3v2_3;->extended:Z

    .line 742
    iget-boolean v5, v1, Lorg/farng/mp3/id3/ID3v2_3;->experimental:Z

    iput-boolean v5, p0, Lorg/farng/mp3/id3/ID3v2_3;->experimental:Z

    .line 743
    iget-boolean v5, v1, Lorg/farng/mp3/id3/ID3v2_3;->crcDataFlag:Z

    iput-boolean v5, p0, Lorg/farng/mp3/id3/ID3v2_3;->crcDataFlag:Z

    .line 744
    iget v5, v1, Lorg/farng/mp3/id3/ID3v2_3;->crcData:I

    iput v5, p0, Lorg/farng/mp3/id3/ID3v2_3;->crcData:I

    .line 745
    iget v5, v1, Lorg/farng/mp3/id3/ID3v2_3;->paddingSize:I

    iput v5, p0, Lorg/farng/mp3/id3/ID3v2_3;->paddingSize:I

    .line 747
    .end local v1           #id3tag:Lorg/farng/mp3/id3/ID3v2_3;
    :cond_1
    instance-of v5, p1, Lorg/farng/mp3/id3/ID3v2_2;

    if-eqz v5, :cond_2

    move-object v1, p1

    .line 748
    check-cast v1, Lorg/farng/mp3/id3/ID3v2_2;

    .line 749
    .local v1, id3tag:Lorg/farng/mp3/id3/ID3v2_2;
    iget-boolean v5, v1, Lorg/farng/mp3/id3/ID3v2_2;->compression:Z

    iput-boolean v5, p0, Lorg/farng/mp3/id3/ID3v2_2;->compression:Z

    .line 750
    iget-boolean v5, v1, Lorg/farng/mp3/id3/ID3v2_2;->unsynchronization:Z

    iput-boolean v5, p0, Lorg/farng/mp3/id3/ID3v2_2;->unsynchronization:Z

    .line 752
    .end local v1           #id3tag:Lorg/farng/mp3/id3/ID3v2_2;
    :cond_2
    move-object v1, p1

    .line 753
    .local v1, id3tag:Lorg/farng/mp3/id3/AbstractID3v2;
    invoke-virtual {v1}, Lorg/farng/mp3/id3/AbstractID3v2;->getFrameIterator()Ljava/util/Iterator;

    move-result-object v2

    .line 756
    .local v2, iterator:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 757
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/farng/mp3/id3/AbstractID3v2Frame;

    .line 758
    .local v0, frame:Lorg/farng/mp3/id3/AbstractID3v2Frame;
    new-instance v3, Lorg/farng/mp3/id3/ID3v2_4Frame;

    invoke-direct {v3, v0}, Lorg/farng/mp3/id3/ID3v2_4Frame;-><init>(Lorg/farng/mp3/id3/AbstractID3v2Frame;)V

    .line 759
    .local v3, newFrame:Lorg/farng/mp3/id3/ID3v2_4Frame;
    invoke-virtual {p0, v3}, Lorg/farng/mp3/id3/AbstractID3v2;->setFrame(Lorg/farng/mp3/id3/AbstractID3v2Frame;)V

    goto :goto_0

    .line 761
    .end local v0           #frame:Lorg/farng/mp3/id3/AbstractID3v2Frame;
    .end local v3           #newFrame:Lorg/farng/mp3/id3/ID3v2_4Frame;
    :cond_3
    return-void
.end method


# virtual methods
.method public append(Lorg/farng/mp3/AbstractMP3Tag;)V
    .locals 1
    .parameter "tag"

    .prologue
    .line 411
    instance-of v0, p1, Lorg/farng/mp3/id3/ID3v2_4;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 412
    check-cast v0, Lorg/farng/mp3/id3/ID3v2_4;

    iget-boolean v0, v0, Lorg/farng/mp3/id3/ID3v2_4;->updateTag:Z

    iput-boolean v0, p0, Lorg/farng/mp3/id3/ID3v2_4;->updateTag:Z

    move-object v0, p1

    .line 413
    check-cast v0, Lorg/farng/mp3/id3/ID3v2_4;

    iget-boolean v0, v0, Lorg/farng/mp3/id3/ID3v2_4;->footer:Z

    iput-boolean v0, p0, Lorg/farng/mp3/id3/ID3v2_4;->footer:Z

    move-object v0, p1

    .line 414
    check-cast v0, Lorg/farng/mp3/id3/ID3v2_4;

    iget-boolean v0, v0, Lorg/farng/mp3/id3/ID3v2_4;->tagRestriction:Z

    iput-boolean v0, p0, Lorg/farng/mp3/id3/ID3v2_4;->tagRestriction:Z

    move-object v0, p1

    .line 415
    check-cast v0, Lorg/farng/mp3/id3/ID3v2_4;

    iget-byte v0, v0, Lorg/farng/mp3/id3/ID3v2_4;->tagSizeRestriction:B

    iput-byte v0, p0, Lorg/farng/mp3/id3/ID3v2_4;->tagSizeRestriction:B

    move-object v0, p1

    .line 416
    check-cast v0, Lorg/farng/mp3/id3/ID3v2_4;

    iget-byte v0, v0, Lorg/farng/mp3/id3/ID3v2_4;->textEncodingRestriction:B

    iput-byte v0, p0, Lorg/farng/mp3/id3/ID3v2_4;->textEncodingRestriction:B

    move-object v0, p1

    .line 417
    check-cast v0, Lorg/farng/mp3/id3/ID3v2_4;

    iget-byte v0, v0, Lorg/farng/mp3/id3/ID3v2_4;->textFieldSizeRestriction:B

    iput-byte v0, p0, Lorg/farng/mp3/id3/ID3v2_4;->textFieldSizeRestriction:B

    move-object v0, p1

    .line 418
    check-cast v0, Lorg/farng/mp3/id3/ID3v2_4;

    iget-byte v0, v0, Lorg/farng/mp3/id3/ID3v2_4;->imageEncodingRestriction:B

    iput-byte v0, p0, Lorg/farng/mp3/id3/ID3v2_4;->imageEncodingRestriction:B

    move-object v0, p1

    .line 419
    check-cast v0, Lorg/farng/mp3/id3/ID3v2_4;

    iget-byte v0, v0, Lorg/farng/mp3/id3/ID3v2_4;->imageSizeRestriction:B

    iput-byte v0, p0, Lorg/farng/mp3/id3/ID3v2_4;->imageSizeRestriction:B

    .line 421
    :cond_0
    invoke-super {p0, p1}, Lorg/farng/mp3/id3/ID3v2_3;->append(Lorg/farng/mp3/AbstractMP3Tag;)V

    .line 422
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "obj"

    .prologue
    const/4 v1, 0x0

    .line 425
    instance-of v2, p1, Lorg/farng/mp3/id3/ID3v2_4;

    if-nez v2, :cond_1

    .line 453
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 428
    check-cast v0, Lorg/farng/mp3/id3/ID3v2_4;

    .line 429
    .local v0, id3v2_4:Lorg/farng/mp3/id3/ID3v2_4;
    iget-boolean v2, p0, Lorg/farng/mp3/id3/ID3v2_4;->footer:Z

    iget-boolean v3, v0, Lorg/farng/mp3/id3/ID3v2_4;->footer:Z

    if-ne v2, v3, :cond_0

    .line 432
    iget-byte v2, p0, Lorg/farng/mp3/id3/ID3v2_4;->imageEncodingRestriction:B

    iget-byte v3, v0, Lorg/farng/mp3/id3/ID3v2_4;->imageEncodingRestriction:B

    if-ne v2, v3, :cond_0

    .line 435
    iget-byte v2, p0, Lorg/farng/mp3/id3/ID3v2_4;->imageSizeRestriction:B

    iget-byte v3, v0, Lorg/farng/mp3/id3/ID3v2_4;->imageSizeRestriction:B

    if-ne v2, v3, :cond_0

    .line 438
    iget-boolean v2, p0, Lorg/farng/mp3/id3/ID3v2_4;->tagRestriction:Z

    iget-boolean v3, v0, Lorg/farng/mp3/id3/ID3v2_4;->tagRestriction:Z

    if-ne v2, v3, :cond_0

    .line 441
    iget-byte v2, p0, Lorg/farng/mp3/id3/ID3v2_4;->tagSizeRestriction:B

    iget-byte v3, v0, Lorg/farng/mp3/id3/ID3v2_4;->tagSizeRestriction:B

    if-ne v2, v3, :cond_0

    .line 444
    iget-byte v2, p0, Lorg/farng/mp3/id3/ID3v2_4;->textEncodingRestriction:B

    iget-byte v3, v0, Lorg/farng/mp3/id3/ID3v2_4;->textEncodingRestriction:B

    if-ne v2, v3, :cond_0

    .line 447
    iget-byte v2, p0, Lorg/farng/mp3/id3/ID3v2_4;->textFieldSizeRestriction:B

    iget-byte v3, v0, Lorg/farng/mp3/id3/ID3v2_4;->textFieldSizeRestriction:B

    if-ne v2, v3, :cond_0

    .line 450
    iget-boolean v2, p0, Lorg/farng/mp3/id3/ID3v2_4;->updateTag:Z

    iget-boolean v3, v0, Lorg/farng/mp3/id3/ID3v2_4;->updateTag:Z

    if-ne v2, v3, :cond_0

    .line 453
    invoke-super {p0, p1}, Lorg/farng/mp3/id3/ID3v2_3;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 384
    const-string v0, "ID3v2.40"

    return-object v0
.end method

.method public getSize()I
    .locals 4

    .prologue
    .line 388
    const/16 v2, 0xa

    .line 389
    .local v2, size:I
    iget-boolean v3, p0, Lorg/farng/mp3/id3/ID3v2_3;->extended:Z

    if-eqz v3, :cond_2

    .line 390
    add-int/lit8 v2, v2, 0x6

    .line 391
    iget-boolean v3, p0, Lorg/farng/mp3/id3/ID3v2_4;->updateTag:Z

    if-eqz v3, :cond_0

    .line 392
    add-int/lit8 v2, v2, 0x1

    .line 394
    :cond_0
    iget-boolean v3, p0, Lorg/farng/mp3/id3/ID3v2_3;->crcDataFlag:Z

    if-eqz v3, :cond_1

    .line 395
    add-int/lit8 v2, v2, 0x5

    .line 397
    :cond_1
    iget-boolean v3, p0, Lorg/farng/mp3/id3/ID3v2_4;->tagRestriction:Z

    if-eqz v3, :cond_2

    .line 398
    add-int/lit8 v2, v2, 0x2

    .line 401
    :cond_2
    invoke-virtual {p0}, Lorg/farng/mp3/id3/AbstractID3v2;->getFrameIterator()Ljava/util/Iterator;

    move-result-object v1

    .line 403
    .local v1, iterator:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 404
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/farng/mp3/id3/AbstractID3v2Frame;

    .line 405
    .local v0, frame:Lorg/farng/mp3/id3/AbstractID3v2Frame;
    invoke-virtual {v0}, Lorg/farng/mp3/AbstractMP3FileItem;->getSize()I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 407
    .end local v0           #frame:Lorg/farng/mp3/id3/AbstractID3v2Frame;
    :cond_3
    return v2
.end method

.method public getYearReleased()Ljava/lang/String;
    .locals 4

    .prologue
    .line 764
    const-string v2, ""

    .line 765
    .local v2, text:Ljava/lang/String;
    const-string v3, "TDRC"

    invoke-virtual {p0, v3}, Lorg/farng/mp3/id3/AbstractID3v2;->getFrame(Ljava/lang/String;)Lorg/farng/mp3/id3/AbstractID3v2Frame;

    move-result-object v1

    .line 766
    .local v1, frame:Lorg/farng/mp3/id3/AbstractID3v2Frame;
    if-eqz v1, :cond_0

    .line 767
    invoke-virtual {v1}, Lorg/farng/mp3/AbstractMP3Fragment;->getBody()Lorg/farng/mp3/AbstractMP3FragmentBody;

    move-result-object v0

    check-cast v0, Lorg/farng/mp3/id3/FrameBodyTDRC;

    .line 768
    .local v0, body:Lorg/farng/mp3/id3/FrameBodyTDRC;
    invoke-virtual {v0}, Lorg/farng/mp3/id3/FrameBodyTDRC;->getText()Ljava/lang/String;

    move-result-object v2

    .line 770
    .end local v0           #body:Lorg/farng/mp3/id3/FrameBodyTDRC;
    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public overwrite(Lorg/farng/mp3/AbstractMP3Tag;)V
    .locals 1
    .parameter "tag"

    .prologue
    .line 457
    instance-of v0, p1, Lorg/farng/mp3/id3/ID3v2_4;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 458
    check-cast v0, Lorg/farng/mp3/id3/ID3v2_4;

    iget-boolean v0, v0, Lorg/farng/mp3/id3/ID3v2_4;->updateTag:Z

    iput-boolean v0, p0, Lorg/farng/mp3/id3/ID3v2_4;->updateTag:Z

    move-object v0, p1

    .line 459
    check-cast v0, Lorg/farng/mp3/id3/ID3v2_4;

    iget-boolean v0, v0, Lorg/farng/mp3/id3/ID3v2_4;->footer:Z

    iput-boolean v0, p0, Lorg/farng/mp3/id3/ID3v2_4;->footer:Z

    move-object v0, p1

    .line 460
    check-cast v0, Lorg/farng/mp3/id3/ID3v2_4;

    iget-boolean v0, v0, Lorg/farng/mp3/id3/ID3v2_4;->tagRestriction:Z

    iput-boolean v0, p0, Lorg/farng/mp3/id3/ID3v2_4;->tagRestriction:Z

    move-object v0, p1

    .line 461
    check-cast v0, Lorg/farng/mp3/id3/ID3v2_4;

    iget-byte v0, v0, Lorg/farng/mp3/id3/ID3v2_4;->tagSizeRestriction:B

    iput-byte v0, p0, Lorg/farng/mp3/id3/ID3v2_4;->tagSizeRestriction:B

    move-object v0, p1

    .line 462
    check-cast v0, Lorg/farng/mp3/id3/ID3v2_4;

    iget-byte v0, v0, Lorg/farng/mp3/id3/ID3v2_4;->textEncodingRestriction:B

    iput-byte v0, p0, Lorg/farng/mp3/id3/ID3v2_4;->textEncodingRestriction:B

    move-object v0, p1

    .line 463
    check-cast v0, Lorg/farng/mp3/id3/ID3v2_4;

    iget-byte v0, v0, Lorg/farng/mp3/id3/ID3v2_4;->textFieldSizeRestriction:B

    iput-byte v0, p0, Lorg/farng/mp3/id3/ID3v2_4;->textFieldSizeRestriction:B

    move-object v0, p1

    .line 464
    check-cast v0, Lorg/farng/mp3/id3/ID3v2_4;

    iget-byte v0, v0, Lorg/farng/mp3/id3/ID3v2_4;->imageEncodingRestriction:B

    iput-byte v0, p0, Lorg/farng/mp3/id3/ID3v2_4;->imageEncodingRestriction:B

    move-object v0, p1

    .line 465
    check-cast v0, Lorg/farng/mp3/id3/ID3v2_4;

    iget-byte v0, v0, Lorg/farng/mp3/id3/ID3v2_4;->imageSizeRestriction:B

    iput-byte v0, p0, Lorg/farng/mp3/id3/ID3v2_4;->imageSizeRestriction:B

    .line 467
    :cond_0
    invoke-super {p0, p1}, Lorg/farng/mp3/id3/ID3v2_3;->overwrite(Lorg/farng/mp3/AbstractMP3Tag;)V

    .line 468
    return-void
.end method

.method public read(Ljava/io/RandomAccessFile;)V
    .locals 16
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/farng/mp3/TagException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 472
    const/4 v12, 0x4

    new-array v1, v12, [B

    .line 473
    .local v1, buffer:[B
    const-wide/16 v12, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 474
    invoke-virtual/range {p0 .. p1}, Lorg/farng/mp3/id3/ID3v2_4;->seek(Ljava/io/RandomAccessFile;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 475
    new-instance v12, Lorg/farng/mp3/TagNotFoundException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lorg/farng/mp3/id3/ID3v2_4;->getIdentifier()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " tag not found"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Lorg/farng/mp3/TagNotFoundException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 479
    :cond_0
    const/4 v12, 0x0

    const/4 v13, 0x3

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v12, v13}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 480
    const/4 v12, 0x0

    aget-byte v12, v1, v12

    const/4 v13, 0x4

    if-ne v12, v13, :cond_1

    const/4 v12, 0x1

    aget-byte v12, v1, v12

    if-eqz v12, :cond_2

    .line 481
    :cond_1
    new-instance v12, Lorg/farng/mp3/TagNotFoundException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lorg/farng/mp3/id3/ID3v2_4;->getIdentifier()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " tag not found"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Lorg/farng/mp3/TagNotFoundException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 483
    :cond_2
    const/4 v12, 0x0

    aget-byte v12, v1, v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lorg/farng/mp3/id3/AbstractID3v2;->setMajorVersion(B)V

    .line 484
    const/4 v12, 0x1

    aget-byte v12, v1, v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lorg/farng/mp3/id3/AbstractID3v2;->setRevision(B)V

    .line 485
    const/4 v12, 0x2

    aget-byte v12, v1, v12

    and-int/lit16 v12, v12, 0x80

    if-eqz v12, :cond_3

    const/4 v12, 0x1

    :goto_0
    move-object/from16 v0, p0

    iput-boolean v12, v0, Lorg/farng/mp3/id3/ID3v2_2;->unsynchronization:Z

    .line 486
    const/4 v12, 0x2

    aget-byte v12, v1, v12

    and-int/lit8 v12, v12, 0x40

    if-eqz v12, :cond_4

    const/4 v12, 0x1

    :goto_1
    move-object/from16 v0, p0

    iput-boolean v12, v0, Lorg/farng/mp3/id3/ID3v2_3;->extended:Z

    .line 487
    const/4 v12, 0x2

    aget-byte v12, v1, v12

    and-int/lit8 v12, v12, 0x20

    if-eqz v12, :cond_5

    const/4 v12, 0x1

    :goto_2
    move-object/from16 v0, p0

    iput-boolean v12, v0, Lorg/farng/mp3/id3/ID3v2_3;->experimental:Z

    .line 488
    const/4 v12, 0x2

    aget-byte v12, v1, v12

    and-int/lit8 v12, v12, 0x10

    if-eqz v12, :cond_6

    const/4 v12, 0x1

    :goto_3
    move-object/from16 v0, p0

    iput-boolean v12, v0, Lorg/farng/mp3/id3/ID3v2_4;->footer:Z

    .line 491
    const/4 v12, 0x0

    const/4 v13, 0x4

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v12, v13}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 492
    invoke-static {v1}, Lorg/farng/mp3/id3/ID3v2_4;->byteArrayToSize([B)I

    move-result v11

    .line 493
    .local v11, size:I
    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v4

    .line 494
    .local v4, filePointer:J
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lorg/farng/mp3/id3/ID3v2_3;->extended:Z

    if-eqz v12, :cond_d

    .line 496
    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v3

    .line 499
    .local v3, extendedHeaderSize:I
    const/4 v12, 0x6

    if-gt v3, v12, :cond_7

    .line 500
    new-instance v12, Lorg/farng/mp3/InvalidTagException;

    const-string v13, "Invalid Extended Header Size."

    invoke-direct {v12, v13}, Lorg/farng/mp3/InvalidTagException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 485
    .end local v3           #extendedHeaderSize:I
    .end local v4           #filePointer:J
    .end local v11           #size:I
    :cond_3
    const/4 v12, 0x0

    goto :goto_0

    .line 486
    :cond_4
    const/4 v12, 0x0

    goto :goto_1

    .line 487
    :cond_5
    const/4 v12, 0x0

    goto :goto_2

    .line 488
    :cond_6
    const/4 v12, 0x0

    goto :goto_3

    .line 502
    .restart local v3       #extendedHeaderSize:I
    .restart local v4       #filePointer:J
    .restart local v11       #size:I
    :cond_7
    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->readByte()B

    move-result v10

    .line 505
    .local v10, numberOfFlagBytes:B
    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v12, v10}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 506
    const/4 v12, 0x0

    aget-byte v12, v1, v12

    and-int/lit8 v12, v12, 0x40

    if-eqz v12, :cond_9

    const/4 v12, 0x1

    :goto_4
    move-object/from16 v0, p0

    iput-boolean v12, v0, Lorg/farng/mp3/id3/ID3v2_4;->updateTag:Z

    .line 507
    const/4 v12, 0x0

    aget-byte v12, v1, v12

    and-int/lit8 v12, v12, 0x20

    if-eqz v12, :cond_a

    const/4 v12, 0x1

    :goto_5
    move-object/from16 v0, p0

    iput-boolean v12, v0, Lorg/farng/mp3/id3/ID3v2_3;->crcDataFlag:Z

    .line 508
    const/4 v12, 0x0

    aget-byte v12, v1, v12

    and-int/lit8 v12, v12, 0x10

    if-eqz v12, :cond_b

    const/4 v12, 0x1

    :goto_6
    move-object/from16 v0, p0

    iput-boolean v12, v0, Lorg/farng/mp3/id3/ID3v2_4;->tagRestriction:Z

    .line 513
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lorg/farng/mp3/id3/ID3v2_4;->updateTag:Z

    if-eqz v12, :cond_8

    .line 514
    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->readByte()B

    move-result v8

    .line 515
    .local v8, len:I
    new-array v1, v8, [B

    .line 516
    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v12, v8}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 518
    .end local v8           #len:I
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lorg/farng/mp3/id3/ID3v2_3;->crcDataFlag:Z

    if-eqz v12, :cond_c

    .line 520
    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->readByte()B

    move-result v8

    .line 521
    .restart local v8       #len:I
    new-array v1, v8, [B

    .line 522
    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v12, v8}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 523
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lorg/farng/mp3/id3/ID3v2_3;->crcData:I

    .line 524
    const/4 v6, 0x0

    .local v6, i:I
    :goto_7
    if-ge v6, v8, :cond_c

    .line 525
    move-object/from16 v0, p0

    iget v12, v0, Lorg/farng/mp3/id3/ID3v2_3;->crcData:I

    shl-int/lit8 v12, v12, 0x8

    move-object/from16 v0, p0

    iput v12, v0, Lorg/farng/mp3/id3/ID3v2_3;->crcData:I

    .line 526
    move-object/from16 v0, p0

    iget v12, v0, Lorg/farng/mp3/id3/ID3v2_3;->crcData:I

    aget-byte v13, v1, v6

    add-int/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lorg/farng/mp3/id3/ID3v2_3;->crcData:I

    .line 524
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    .line 506
    .end local v6           #i:I
    .end local v8           #len:I
    :cond_9
    const/4 v12, 0x0

    goto :goto_4

    .line 507
    :cond_a
    const/4 v12, 0x0

    goto :goto_5

    .line 508
    :cond_b
    const/4 v12, 0x0

    goto :goto_6

    .line 529
    :cond_c
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lorg/farng/mp3/id3/ID3v2_4;->tagRestriction:Z

    if-eqz v12, :cond_d

    .line 530
    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->readByte()B

    move-result v8

    .line 531
    .restart local v8       #len:I
    new-array v1, v8, [B

    .line 532
    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v12, v8}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 533
    const/4 v12, 0x0

    aget-byte v12, v1, v12

    and-int/lit8 v12, v12, -0x40

    shr-int/lit8 v12, v12, 0x6

    int-to-byte v12, v12

    move-object/from16 v0, p0

    iput-byte v12, v0, Lorg/farng/mp3/id3/ID3v2_4;->tagSizeRestriction:B

    .line 534
    const/4 v12, 0x0

    aget-byte v12, v1, v12

    and-int/lit8 v12, v12, 0x20

    shr-int/lit8 v12, v12, 0x5

    int-to-byte v12, v12

    move-object/from16 v0, p0

    iput-byte v12, v0, Lorg/farng/mp3/id3/ID3v2_4;->textEncodingRestriction:B

    .line 536
    const/4 v12, 0x0

    aget-byte v12, v1, v12

    and-int/lit8 v12, v12, 0x18

    shr-int/lit8 v12, v12, 0x3

    int-to-byte v12, v12

    move-object/from16 v0, p0

    iput-byte v12, v0, Lorg/farng/mp3/id3/ID3v2_4;->textFieldSizeRestriction:B

    .line 538
    const/4 v12, 0x0

    aget-byte v12, v1, v12

    and-int/lit8 v12, v12, 0x4

    shr-int/lit8 v12, v12, 0x2

    int-to-byte v12, v12

    move-object/from16 v0, p0

    iput-byte v12, v0, Lorg/farng/mp3/id3/ID3v2_4;->imageEncodingRestriction:B

    .line 539
    const/4 v12, 0x0

    aget-byte v12, v1, v12

    and-int/lit8 v12, v12, 0x6

    int-to-byte v12, v12

    move-object/from16 v0, p0

    iput-byte v12, v0, Lorg/farng/mp3/id3/ID3v2_4;->imageSizeRestriction:B

    .line 543
    .end local v3           #extendedHeaderSize:I
    .end local v8           #len:I
    .end local v10           #numberOfFlagBytes:B
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lorg/farng/mp3/id3/AbstractID3v2;->clearFrameMap()V

    .line 546
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lorg/farng/mp3/id3/AbstractID3v2;->setFileReadBytes(I)V

    .line 547
    invoke-static {}, Lorg/farng/mp3/id3/ID3v2_4;->resetPaddingCounter()V

    .line 548
    :goto_8
    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v12

    sub-long/2addr v12, v4

    int-to-long v14, v11

    cmp-long v12, v12, v14

    if-gtz v12, :cond_10

    .line 550
    :try_start_0
    new-instance v9, Lorg/farng/mp3/id3/ID3v2_4Frame;

    move-object/from16 v0, p1

    invoke-direct {v9, v0}, Lorg/farng/mp3/id3/ID3v2_4Frame;-><init>(Ljava/io/RandomAccessFile;)V

    .line 551
    .local v9, next:Lorg/farng/mp3/id3/ID3v2_4Frame;
    invoke-virtual {v9}, Lorg/farng/mp3/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v7

    .line 552
    .local v7, id:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lorg/farng/mp3/id3/AbstractID3v2;->hasFrame(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_e

    .line 553
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "; "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lorg/farng/mp3/id3/AbstractID3v2;->appendDuplicateFrameId(Ljava/lang/String;)V

    .line 554
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lorg/farng/mp3/id3/AbstractID3v2;->getFrame(Ljava/lang/String;)Lorg/farng/mp3/id3/AbstractID3v2Frame;

    move-result-object v12

    invoke-virtual {v12}, Lorg/farng/mp3/AbstractMP3FileItem;->getSize()I

    move-result v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lorg/farng/mp3/id3/AbstractID3v2;->incrementDuplicateBytes(I)V

    .line 556
    :cond_e
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lorg/farng/mp3/id3/AbstractID3v2;->setFrame(Lorg/farng/mp3/id3/AbstractID3v2Frame;)V
    :try_end_0
    .catch Lorg/farng/mp3/InvalidTagException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_8

    .line 557
    .end local v7           #id:Ljava/lang/String;
    .end local v9           #next:Lorg/farng/mp3/id3/ID3v2_4Frame;
    :catch_0
    move-exception v2

    .line 558
    .local v2, ex:Lorg/farng/mp3/InvalidTagException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v12

    const-string v13, "Found empty frame"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_f

    .line 559
    const/16 v12, 0xa

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lorg/farng/mp3/id3/AbstractID3v2;->incrementEmptyFrameBytes(I)V

    goto :goto_8

    .line 561
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lorg/farng/mp3/id3/AbstractID3v2;->incrementInvalidFrameBytes()V

    goto :goto_8

    .line 565
    .end local v2           #ex:Lorg/farng/mp3/InvalidTagException;
    :cond_10
    invoke-static {}, Lorg/farng/mp3/id3/ID3v2_4;->getPaddingCounter()I

    move-result v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lorg/farng/mp3/id3/AbstractID3v2;->setPaddingSize(I)V

    .line 575
    return-void
.end method

.method public seek(Ljava/io/RandomAccessFile;)Z
    .locals 8
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v6, 0x3

    const/4 v3, 0x0

    .line 578
    new-array v0, v6, [B

    .line 579
    .local v0, buffer:[B
    const-wide/16 v4, 0x0

    invoke-virtual {p1, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 582
    invoke-virtual {p1, v0, v3, v6}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 583
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0, v3, v6}, Ljava/lang/String;-><init>([BII)V

    .line 584
    .local v1, tag:Ljava/lang/String;
    const-string v4, "ID3"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 593
    :goto_0
    return v3

    .line 589
    :cond_0
    const/4 v4, 0x2

    invoke-virtual {p1, v0, v3, v4}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 592
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v4

    const-wide/16 v6, 0x2

    sub-long/2addr v4, v6

    invoke-virtual {p1, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 593
    aget-byte v4, v0, v3

    const/4 v5, 0x4

    if-ne v4, v5, :cond_1

    aget-byte v4, v0, v2

    if-nez v4, :cond_1

    :goto_1
    move v3, v2

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1
.end method

.method public setYearReleased(Ljava/lang/String;)V
    .locals 3
    .parameter "yearReleased"

    .prologue
    .line 774
    const-string v1, "TDRC"

    invoke-virtual {p0, v1}, Lorg/farng/mp3/id3/AbstractID3v2;->getFrame(Ljava/lang/String;)Lorg/farng/mp3/id3/AbstractID3v2Frame;

    move-result-object v0

    .line 775
    .local v0, field:Lorg/farng/mp3/id3/AbstractID3v2Frame;
    if-nez v0, :cond_0

    .line 776
    new-instance v0, Lorg/farng/mp3/id3/ID3v2_3Frame;

    .end local v0           #field:Lorg/farng/mp3/id3/AbstractID3v2Frame;
    new-instance v1, Lorg/farng/mp3/id3/FrameBodyTDRC;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1}, Lorg/farng/mp3/id3/FrameBodyTDRC;-><init>(BLjava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/farng/mp3/id3/ID3v2_3Frame;-><init>(Lorg/farng/mp3/id3/AbstractID3v2FrameBody;)V

    .line 777
    .restart local v0       #field:Lorg/farng/mp3/id3/AbstractID3v2Frame;
    invoke-virtual {p0, v0}, Lorg/farng/mp3/id3/AbstractID3v2;->setFrame(Lorg/farng/mp3/id3/AbstractID3v2Frame;)V

    .line 781
    :goto_0
    return-void

    .line 779
    :cond_0
    invoke-virtual {v0}, Lorg/farng/mp3/AbstractMP3Fragment;->getBody()Lorg/farng/mp3/AbstractMP3FragmentBody;

    move-result-object v1

    check-cast v1, Lorg/farng/mp3/id3/FrameBodyTDRC;

    invoke-virtual {v1, p1}, Lorg/farng/mp3/id3/FrameBodyTDRC;->setText(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 597
    invoke-virtual {p0}, Lorg/farng/mp3/id3/AbstractID3v2;->getFrameIterator()Ljava/util/Iterator;

    move-result-object v1

    .line 599
    .local v1, iterator:Ljava/util/Iterator;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/farng/mp3/id3/ID3v2_4;->getIdentifier()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lorg/farng/mp3/id3/ID3v2_4;->getSize()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 600
    .local v2, str:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "compression              = "

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

    .line 601
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "unsynchronization        = "

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

    .line 602
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "crcData                  = "

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

    .line 603
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "crcDataFlag              = "

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

    .line 604
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "experimental             = "

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

    .line 605
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "extended                 = "

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

    .line 606
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "paddingSize              = "

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

    .line 607
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "footer                   = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lorg/farng/mp3/id3/ID3v2_4;->footer:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 608
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "imageEncodingRestriction = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-byte v4, p0, Lorg/farng/mp3/id3/ID3v2_4;->imageEncodingRestriction:B

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 609
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "imageSizeRestriction     = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-byte v4, p0, Lorg/farng/mp3/id3/ID3v2_4;->imageSizeRestriction:B

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 610
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "tagRestriction           = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lorg/farng/mp3/id3/ID3v2_4;->tagRestriction:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 611
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "tagSizeRestriction       = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-byte v4, p0, Lorg/farng/mp3/id3/ID3v2_4;->tagSizeRestriction:B

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 612
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "textEncodingRestriction  = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-byte v4, p0, Lorg/farng/mp3/id3/ID3v2_4;->textEncodingRestriction:B

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 613
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "textFieldSizeRestriction = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-byte v4, p0, Lorg/farng/mp3/id3/ID3v2_4;->textFieldSizeRestriction:B

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 614
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "updateTag                = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lorg/farng/mp3/id3/ID3v2_4;->updateTag:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 615
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 616
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/farng/mp3/id3/ID3v2_4Frame;

    .line 617
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

    .line 619
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
    .locals 11
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 641
    const/4 v9, 0x6

    new-array v0, v9, [B

    .line 642
    .local v0, buffer:[B
    new-instance v4, Lorg/farng/mp3/MP3File;

    invoke-direct {v4}, Lorg/farng/mp3/MP3File;-><init>()V

    .line 643
    .local v4, mp3:Lorg/farng/mp3/MP3File;
    invoke-virtual {v4, p1}, Lorg/farng/mp3/MP3File;->seekMP3Frame(Ljava/io/RandomAccessFile;)Z

    .line 644
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v5

    .line 645
    .local v5, mp3start:J
    const-wide/16 v9, 0x0

    invoke-virtual {p1, v9, v10}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 646
    const-string v8, "ID3"

    .line 647
    .local v8, str:Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v2, v9, :cond_0

    .line 648
    invoke-virtual {v8, v2}, Ljava/lang/String;->charAt(I)C

    move-result v9

    int-to-byte v9, v9

    aput-byte v9, v0, v2

    .line 647
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 650
    :cond_0
    const/4 v9, 0x3

    const/4 v10, 0x4

    aput-byte v10, v0, v9

    .line 651
    const/4 v9, 0x4

    const/4 v10, 0x0

    aput-byte v10, v0, v9

    .line 652
    iget-boolean v9, p0, Lorg/farng/mp3/id3/ID3v2_2;->unsynchronization:Z

    if-eqz v9, :cond_1

    .line 653
    const/4 v9, 0x5

    aget-byte v10, v0, v9

    or-int/lit16 v10, v10, 0x80

    int-to-byte v10, v10

    aput-byte v10, v0, v9

    .line 655
    :cond_1
    iget-boolean v9, p0, Lorg/farng/mp3/id3/ID3v2_3;->extended:Z

    if-eqz v9, :cond_2

    .line 656
    const/4 v9, 0x5

    aget-byte v10, v0, v9

    or-int/lit8 v10, v10, 0x40

    int-to-byte v10, v10

    aput-byte v10, v0, v9

    .line 658
    :cond_2
    iget-boolean v9, p0, Lorg/farng/mp3/id3/ID3v2_3;->experimental:Z

    if-eqz v9, :cond_3

    .line 659
    const/4 v9, 0x5

    aget-byte v10, v0, v9

    or-int/lit8 v10, v10, 0x20

    int-to-byte v10, v10

    aput-byte v10, v0, v9

    .line 661
    :cond_3
    iget-boolean v9, p0, Lorg/farng/mp3/id3/ID3v2_4;->footer:Z

    if-eqz v9, :cond_4

    .line 662
    const/4 v9, 0x5

    aget-byte v10, v0, v9

    or-int/lit8 v10, v10, 0x10

    int-to-byte v10, v10

    aput-byte v10, v0, v9

    .line 664
    :cond_4
    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->write([B)V

    .line 667
    long-to-int v9, v5

    add-int/lit8 v9, v9, -0xa

    invoke-static {v9}, Lorg/farng/mp3/id3/ID3v2_4;->sizeToByteArray(I)[B

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/RandomAccessFile;->write([B)V

    .line 668
    iget-boolean v9, p0, Lorg/farng/mp3/id3/ID3v2_3;->extended:Z

    if-eqz v9, :cond_e

    .line 669
    const/4 v7, 0x6

    .line 670
    .local v7, size:I
    iget-boolean v9, p0, Lorg/farng/mp3/id3/ID3v2_4;->updateTag:Z

    if-eqz v9, :cond_5

    .line 671
    add-int/lit8 v7, v7, 0x1

    .line 673
    :cond_5
    iget-boolean v9, p0, Lorg/farng/mp3/id3/ID3v2_3;->crcDataFlag:Z

    if-eqz v9, :cond_6

    .line 674
    add-int/lit8 v7, v7, 0x5

    .line 676
    :cond_6
    iget-boolean v9, p0, Lorg/farng/mp3/id3/ID3v2_4;->tagRestriction:Z

    if-eqz v9, :cond_7

    .line 677
    add-int/lit8 v7, v7, 0x2

    .line 679
    :cond_7
    invoke-virtual {p1, v7}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 680
    const/4 v9, 0x1

    invoke-virtual {p1, v9}, Ljava/io/RandomAccessFile;->writeByte(I)V

    .line 681
    const/4 v9, 0x0

    const/4 v10, 0x0

    aput-byte v10, v0, v9

    .line 682
    iget-boolean v9, p0, Lorg/farng/mp3/id3/ID3v2_4;->updateTag:Z

    if-eqz v9, :cond_8

    .line 683
    const/4 v9, 0x0

    aget-byte v10, v0, v9

    or-int/lit8 v10, v10, 0x40

    int-to-byte v10, v10

    aput-byte v10, v0, v9

    .line 685
    :cond_8
    iget-boolean v9, p0, Lorg/farng/mp3/id3/ID3v2_3;->crcDataFlag:Z

    if-eqz v9, :cond_9

    .line 686
    const/4 v9, 0x0

    aget-byte v10, v0, v9

    or-int/lit8 v10, v10, 0x20

    int-to-byte v10, v10

    aput-byte v10, v0, v9

    .line 688
    :cond_9
    iget-boolean v9, p0, Lorg/farng/mp3/id3/ID3v2_4;->tagRestriction:Z

    if-eqz v9, :cond_a

    .line 689
    const/4 v9, 0x0

    aget-byte v10, v0, v9

    or-int/lit8 v10, v10, 0x10

    int-to-byte v10, v10

    aput-byte v10, v0, v9

    .line 691
    :cond_a
    const/4 v9, 0x0

    aget-byte v9, v0, v9

    invoke-virtual {p1, v9}, Ljava/io/RandomAccessFile;->writeByte(I)V

    .line 692
    iget-boolean v9, p0, Lorg/farng/mp3/id3/ID3v2_4;->updateTag:Z

    if-eqz v9, :cond_b

    .line 693
    const/4 v9, 0x0

    invoke-virtual {p1, v9}, Ljava/io/RandomAccessFile;->writeByte(I)V

    .line 697
    :cond_b
    iget-boolean v9, p0, Lorg/farng/mp3/id3/ID3v2_3;->crcDataFlag:Z

    if-eqz v9, :cond_c

    .line 698
    const/4 v9, 0x4

    invoke-virtual {p1, v9}, Ljava/io/RandomAccessFile;->writeByte(I)V

    .line 699
    iget v9, p0, Lorg/farng/mp3/id3/ID3v2_3;->crcData:I

    invoke-virtual {p1, v9}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 701
    :cond_c
    iget-boolean v9, p0, Lorg/farng/mp3/id3/ID3v2_4;->tagRestriction:Z

    if-eqz v9, :cond_e

    .line 703
    const/4 v9, 0x1

    invoke-virtual {p1, v9}, Ljava/io/RandomAccessFile;->writeByte(I)V

    .line 704
    const/4 v9, 0x0

    const/4 v10, 0x0

    aput-byte v10, v0, v9

    .line 705
    iget-boolean v9, p0, Lorg/farng/mp3/id3/ID3v2_4;->tagRestriction:Z

    if-eqz v9, :cond_d

    .line 706
    const/4 v9, 0x0

    aget-byte v10, v0, v9

    or-int/lit8 v10, v10, -0x40

    int-to-byte v10, v10

    aput-byte v10, v0, v9

    .line 708
    :cond_d
    iget-byte v9, p0, Lorg/farng/mp3/id3/ID3v2_4;->tagSizeRestriction:B

    invoke-virtual {p1, v9}, Ljava/io/RandomAccessFile;->writeByte(I)V

    .line 709
    iget-byte v9, p0, Lorg/farng/mp3/id3/ID3v2_4;->textEncodingRestriction:B

    invoke-virtual {p1, v9}, Ljava/io/RandomAccessFile;->writeByte(I)V

    .line 710
    iget-byte v9, p0, Lorg/farng/mp3/id3/ID3v2_4;->textFieldSizeRestriction:B

    invoke-virtual {p1, v9}, Ljava/io/RandomAccessFile;->writeByte(I)V

    .line 711
    iget-byte v9, p0, Lorg/farng/mp3/id3/ID3v2_4;->imageEncodingRestriction:B

    invoke-virtual {p1, v9}, Ljava/io/RandomAccessFile;->writeByte(I)V

    .line 712
    iget-byte v9, p0, Lorg/farng/mp3/id3/ID3v2_4;->imageSizeRestriction:B

    invoke-virtual {p1, v9}, Ljava/io/RandomAccessFile;->writeByte(I)V

    .line 713
    const/4 v9, 0x0

    aget-byte v9, v0, v9

    invoke-virtual {p1, v9}, Ljava/io/RandomAccessFile;->writeByte(I)V

    .line 718
    .end local v7           #size:I
    :cond_e
    invoke-virtual {p0}, Lorg/farng/mp3/id3/AbstractID3v2;->getFrameIterator()Ljava/util/Iterator;

    move-result-object v3

    .line 719
    .local v3, iterator:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_f

    .line 720
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/farng/mp3/id3/ID3v2_4Frame;

    .line 721
    .local v1, frame:Lorg/farng/mp3/id3/ID3v2_4Frame;
    invoke-virtual {v1, p1}, Lorg/farng/mp3/id3/ID3v2_4Frame;->write(Ljava/io/RandomAccessFile;)V

    goto :goto_1

    .line 723
    .end local v1           #frame:Lorg/farng/mp3/id3/ID3v2_4Frame;
    :cond_f
    return-void
.end method

.method public write(Lorg/farng/mp3/AbstractMP3Tag;)V
    .locals 1
    .parameter "tag"

    .prologue
    .line 623
    instance-of v0, p1, Lorg/farng/mp3/id3/ID3v2_4;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 624
    check-cast v0, Lorg/farng/mp3/id3/ID3v2_4;

    iget-boolean v0, v0, Lorg/farng/mp3/id3/ID3v2_4;->updateTag:Z

    iput-boolean v0, p0, Lorg/farng/mp3/id3/ID3v2_4;->updateTag:Z

    move-object v0, p1

    .line 625
    check-cast v0, Lorg/farng/mp3/id3/ID3v2_4;

    iget-boolean v0, v0, Lorg/farng/mp3/id3/ID3v2_4;->footer:Z

    iput-boolean v0, p0, Lorg/farng/mp3/id3/ID3v2_4;->footer:Z

    move-object v0, p1

    .line 626
    check-cast v0, Lorg/farng/mp3/id3/ID3v2_4;

    iget-boolean v0, v0, Lorg/farng/mp3/id3/ID3v2_4;->tagRestriction:Z

    iput-boolean v0, p0, Lorg/farng/mp3/id3/ID3v2_4;->tagRestriction:Z

    move-object v0, p1

    .line 627
    check-cast v0, Lorg/farng/mp3/id3/ID3v2_4;

    iget-byte v0, v0, Lorg/farng/mp3/id3/ID3v2_4;->tagSizeRestriction:B

    iput-byte v0, p0, Lorg/farng/mp3/id3/ID3v2_4;->tagSizeRestriction:B

    move-object v0, p1

    .line 628
    check-cast v0, Lorg/farng/mp3/id3/ID3v2_4;

    iget-byte v0, v0, Lorg/farng/mp3/id3/ID3v2_4;->textEncodingRestriction:B

    iput-byte v0, p0, Lorg/farng/mp3/id3/ID3v2_4;->textEncodingRestriction:B

    move-object v0, p1

    .line 629
    check-cast v0, Lorg/farng/mp3/id3/ID3v2_4;

    iget-byte v0, v0, Lorg/farng/mp3/id3/ID3v2_4;->textFieldSizeRestriction:B

    iput-byte v0, p0, Lorg/farng/mp3/id3/ID3v2_4;->textFieldSizeRestriction:B

    move-object v0, p1

    .line 630
    check-cast v0, Lorg/farng/mp3/id3/ID3v2_4;

    iget-byte v0, v0, Lorg/farng/mp3/id3/ID3v2_4;->imageEncodingRestriction:B

    iput-byte v0, p0, Lorg/farng/mp3/id3/ID3v2_4;->imageEncodingRestriction:B

    move-object v0, p1

    .line 631
    check-cast v0, Lorg/farng/mp3/id3/ID3v2_4;

    iget-byte v0, v0, Lorg/farng/mp3/id3/ID3v2_4;->imageSizeRestriction:B

    iput-byte v0, p0, Lorg/farng/mp3/id3/ID3v2_4;->imageSizeRestriction:B

    .line 633
    :cond_0
    invoke-super {p0, p1}, Lorg/farng/mp3/id3/ID3v2_3;->write(Lorg/farng/mp3/AbstractMP3Tag;)V

    .line 634
    return-void
.end method
