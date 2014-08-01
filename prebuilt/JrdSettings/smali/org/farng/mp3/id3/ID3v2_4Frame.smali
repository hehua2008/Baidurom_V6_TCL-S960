.class public Lorg/farng/mp3/id3/ID3v2_4Frame;
.super Lorg/farng/mp3/id3/ID3v2_3Frame;
.source "ID3v2_4Frame.java"


# instance fields
.field protected dataLengthIndicator:Z

.field protected unsynchronization:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 211
    invoke-direct {p0}, Lorg/farng/mp3/id3/ID3v2_3Frame;-><init>()V

    .line 205
    iput-boolean v0, p0, Lorg/farng/mp3/id3/ID3v2_4Frame;->dataLengthIndicator:Z

    .line 206
    iput-boolean v0, p0, Lorg/farng/mp3/id3/ID3v2_4Frame;->unsynchronization:Z

    .line 213
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

    .line 343
    invoke-direct {p0}, Lorg/farng/mp3/id3/ID3v2_3Frame;-><init>()V

    .line 205
    iput-boolean v0, p0, Lorg/farng/mp3/id3/ID3v2_4Frame;->dataLengthIndicator:Z

    .line 206
    iput-boolean v0, p0, Lorg/farng/mp3/id3/ID3v2_4Frame;->unsynchronization:Z

    .line 344
    invoke-virtual {p0, p1}, Lorg/farng/mp3/id3/ID3v2_4Frame;->read(Ljava/io/RandomAccessFile;)V

    .line 345
    return-void
.end method

.method public constructor <init>(Lorg/farng/mp3/id3/AbstractID3v2Frame;)V
    .locals 2
    .parameter "frame"

    .prologue
    const/4 v1, 0x0

    .line 234
    invoke-direct {p0}, Lorg/farng/mp3/id3/ID3v2_3Frame;-><init>()V

    .line 205
    iput-boolean v1, p0, Lorg/farng/mp3/id3/ID3v2_4Frame;->dataLengthIndicator:Z

    .line 206
    iput-boolean v1, p0, Lorg/farng/mp3/id3/ID3v2_4Frame;->unsynchronization:Z

    .line 235
    instance-of v1, p1, Lorg/farng/mp3/id3/ID3v2_4Frame;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 236
    check-cast v0, Lorg/farng/mp3/id3/ID3v2_4Frame;

    .line 237
    .local v0, f:Lorg/farng/mp3/id3/ID3v2_4Frame;
    iget-boolean v1, v0, Lorg/farng/mp3/id3/ID3v2_4Frame;->unsynchronization:Z

    iput-boolean v1, p0, Lorg/farng/mp3/id3/ID3v2_4Frame;->unsynchronization:Z

    .line 238
    iget-boolean v1, v0, Lorg/farng/mp3/id3/ID3v2_4Frame;->dataLengthIndicator:Z

    iput-boolean v1, p0, Lorg/farng/mp3/id3/ID3v2_4Frame;->dataLengthIndicator:Z

    .line 240
    .end local v0           #f:Lorg/farng/mp3/id3/ID3v2_4Frame;
    :cond_0
    instance-of v1, p1, Lorg/farng/mp3/id3/ID3v2_3Frame;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 242
    check-cast v0, Lorg/farng/mp3/id3/ID3v2_3Frame;

    .line 243
    .local v0, f:Lorg/farng/mp3/id3/ID3v2_3Frame;
    iget-boolean v1, v0, Lorg/farng/mp3/id3/ID3v2_3Frame;->tagAlterPreservation:Z

    iput-boolean v1, p0, Lorg/farng/mp3/id3/ID3v2_3Frame;->tagAlterPreservation:Z

    .line 244
    iget-boolean v1, v0, Lorg/farng/mp3/id3/ID3v2_3Frame;->fileAlterPreservation:Z

    iput-boolean v1, p0, Lorg/farng/mp3/id3/ID3v2_3Frame;->fileAlterPreservation:Z

    .line 245
    iget-boolean v1, v0, Lorg/farng/mp3/id3/ID3v2_3Frame;->readOnly:Z

    iput-boolean v1, p0, Lorg/farng/mp3/id3/ID3v2_3Frame;->readOnly:Z

    .line 246
    iget-boolean v1, v0, Lorg/farng/mp3/id3/ID3v2_3Frame;->groupingIdentity:Z

    iput-boolean v1, p0, Lorg/farng/mp3/id3/ID3v2_3Frame;->groupingIdentity:Z

    .line 247
    iget-boolean v1, v0, Lorg/farng/mp3/id3/ID3v2_3Frame;->compression:Z

    iput-boolean v1, p0, Lorg/farng/mp3/id3/ID3v2_3Frame;->compression:Z

    .line 248
    iget-boolean v1, v0, Lorg/farng/mp3/id3/ID3v2_3Frame;->encryption:Z

    iput-boolean v1, p0, Lorg/farng/mp3/id3/ID3v2_3Frame;->encryption:Z

    .line 250
    .end local v0           #f:Lorg/farng/mp3/id3/ID3v2_3Frame;
    :cond_1
    instance-of v1, p1, Lorg/farng/mp3/id3/ID3v2_2Frame;

    if-eqz v1, :cond_2

    .line 253
    :cond_2
    invoke-virtual {p1}, Lorg/farng/mp3/AbstractMP3Fragment;->getBody()Lorg/farng/mp3/AbstractMP3FragmentBody;

    move-result-object v1

    if-nez v1, :cond_4

    .line 264
    :cond_3
    :goto_0
    return-void

    .line 255
    :cond_4
    invoke-virtual {p1}, Lorg/farng/mp3/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/farng/mp3/TagUtility;->isID3v2_4FrameIdentifier(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 256
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

    .line 228
    invoke-direct {p0, p1}, Lorg/farng/mp3/id3/ID3v2_3Frame;-><init>(Lorg/farng/mp3/id3/AbstractID3v2FrameBody;)V

    .line 205
    iput-boolean v0, p0, Lorg/farng/mp3/id3/ID3v2_4Frame;->dataLengthIndicator:Z

    .line 206
    iput-boolean v0, p0, Lorg/farng/mp3/id3/ID3v2_4Frame;->unsynchronization:Z

    .line 229
    return-void
.end method

.method public constructor <init>(Lorg/farng/mp3/id3/ID3v2_4Frame;)V
    .locals 1
    .parameter "copyObject"

    .prologue
    const/4 v0, 0x0

    .line 219
    invoke-direct {p0, p1}, Lorg/farng/mp3/id3/ID3v2_3Frame;-><init>(Lorg/farng/mp3/id3/ID3v2_3Frame;)V

    .line 205
    iput-boolean v0, p0, Lorg/farng/mp3/id3/ID3v2_4Frame;->dataLengthIndicator:Z

    .line 206
    iput-boolean v0, p0, Lorg/farng/mp3/id3/ID3v2_4Frame;->unsynchronization:Z

    .line 220
    iget-boolean v0, p1, Lorg/farng/mp3/id3/ID3v2_4Frame;->dataLengthIndicator:Z

    iput-boolean v0, p0, Lorg/farng/mp3/id3/ID3v2_4Frame;->dataLengthIndicator:Z

    .line 221
    iget-boolean v0, p1, Lorg/farng/mp3/id3/ID3v2_4Frame;->unsynchronization:Z

    iput-boolean v0, p0, Lorg/farng/mp3/id3/ID3v2_4Frame;->unsynchronization:Z

    .line 222
    return-void
.end method

.method public constructor <init>(Lorg/farng/mp3/lyrics3/Lyrics3v2Field;)V
    .locals 13
    .parameter "field"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/farng/mp3/InvalidTagException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 288
    invoke-direct {p0}, Lorg/farng/mp3/id3/ID3v2_3Frame;-><init>()V

    .line 205
    iput-boolean v1, p0, Lorg/farng/mp3/id3/ID3v2_4Frame;->dataLengthIndicator:Z

    .line 206
    iput-boolean v1, p0, Lorg/farng/mp3/id3/ID3v2_4Frame;->unsynchronization:Z

    .line 289
    invoke-virtual {p1}, Lorg/farng/mp3/lyrics3/Lyrics3v2Field;->getIdentifier()Ljava/lang/String;

    move-result-object v7

    .line 291
    .local v7, id:Ljava/lang/String;
    const-string v2, "IND"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 292
    new-instance v1, Lorg/farng/mp3/InvalidTagException;

    const-string v2, "Cannot create ID3v2.40 frame from Lyrics3 indications field."

    invoke-direct {v1, v2}, Lorg/farng/mp3/InvalidTagException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 293
    :cond_0
    const-string v2, "LYR"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 294
    invoke-virtual {p1}, Lorg/farng/mp3/AbstractMP3Fragment;->getBody()Lorg/farng/mp3/AbstractMP3FragmentBody;

    move-result-object v10

    check-cast v10, Lorg/farng/mp3/lyrics3/FieldBodyLYR;

    .line 296
    .local v10, lyric:Lorg/farng/mp3/lyrics3/FieldBodyLYR;
    invoke-virtual {v10}, Lorg/farng/mp3/lyrics3/FieldBodyLYR;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 299
    .local v8, iterator:Ljava/util/Iterator;
    invoke-virtual {v10}, Lorg/farng/mp3/lyrics3/FieldBodyLYR;->hasTimeStamp()Z

    move-result v6

    .line 303
    .local v6, hasTimeStamp:Z
    new-instance v0, Lorg/farng/mp3/id3/FrameBodySYLT;

    const-string v2, "ENG"

    const/4 v3, 0x2

    const/4 v4, 0x1

    const-string v5, ""

    invoke-direct/range {v0 .. v5}, Lorg/farng/mp3/id3/FrameBodySYLT;-><init>(BLjava/lang/String;BBLjava/lang/String;)V

    .line 304
    .local v0, sync:Lorg/farng/mp3/id3/FrameBodySYLT;
    new-instance v11, Lorg/farng/mp3/id3/FrameBodyUSLT;

    const-string v2, "ENG"

    const-string v3, ""

    const-string v4, ""

    invoke-direct {v11, v1, v2, v3, v4}, Lorg/farng/mp3/id3/FrameBodyUSLT;-><init>(BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    .local v11, unsync:Lorg/farng/mp3/id3/FrameBodyUSLT;
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 306
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/farng/mp3/object/ObjectLyrics3Line;

    .line 307
    .local v9, line:Lorg/farng/mp3/object/ObjectLyrics3Line;
    if-eqz v6, :cond_1

    .line 308
    invoke-virtual {v0, v9}, Lorg/farng/mp3/id3/FrameBodySYLT;->addLyric(Lorg/farng/mp3/object/ObjectLyrics3Line;)V

    goto :goto_0

    .line 310
    :cond_1
    invoke-virtual {v11, v9}, Lorg/farng/mp3/id3/FrameBodyUSLT;->addLyric(Lorg/farng/mp3/object/ObjectLyrics3Line;)V

    goto :goto_0

    .line 313
    .end local v9           #line:Lorg/farng/mp3/object/ObjectLyrics3Line;
    :cond_2
    if-eqz v6, :cond_3

    .line 314
    invoke-virtual {p0, v0}, Lorg/farng/mp3/AbstractMP3Fragment;->setBody(Lorg/farng/mp3/AbstractMP3FragmentBody;)V

    .line 338
    .end local v0           #sync:Lorg/farng/mp3/id3/FrameBodySYLT;
    .end local v6           #hasTimeStamp:Z
    .end local v8           #iterator:Ljava/util/Iterator;
    .end local v10           #lyric:Lorg/farng/mp3/lyrics3/FieldBodyLYR;
    .end local v11           #unsync:Lorg/farng/mp3/id3/FrameBodyUSLT;
    :goto_1
    return-void

    .line 316
    .restart local v0       #sync:Lorg/farng/mp3/id3/FrameBodySYLT;
    .restart local v6       #hasTimeStamp:Z
    .restart local v8       #iterator:Ljava/util/Iterator;
    .restart local v10       #lyric:Lorg/farng/mp3/lyrics3/FieldBodyLYR;
    .restart local v11       #unsync:Lorg/farng/mp3/id3/FrameBodyUSLT;
    :cond_3
    invoke-virtual {p0, v11}, Lorg/farng/mp3/AbstractMP3Fragment;->setBody(Lorg/farng/mp3/AbstractMP3FragmentBody;)V

    goto :goto_1

    .line 318
    .end local v0           #sync:Lorg/farng/mp3/id3/FrameBodySYLT;
    .end local v6           #hasTimeStamp:Z
    .end local v8           #iterator:Ljava/util/Iterator;
    .end local v10           #lyric:Lorg/farng/mp3/lyrics3/FieldBodyLYR;
    .end local v11           #unsync:Lorg/farng/mp3/id3/FrameBodyUSLT;
    :cond_4
    const-string v2, "INF"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 319
    invoke-virtual {p1}, Lorg/farng/mp3/AbstractMP3Fragment;->getBody()Lorg/farng/mp3/AbstractMP3FragmentBody;

    move-result-object v2

    check-cast v2, Lorg/farng/mp3/lyrics3/FieldBodyINF;

    invoke-virtual {v2}, Lorg/farng/mp3/lyrics3/FieldBodyINF;->getAdditionalInformation()Ljava/lang/String;

    move-result-object v12

    .line 320
    .local v12, value:Ljava/lang/String;
    new-instance v2, Lorg/farng/mp3/id3/FrameBodyCOMM;

    const-string v3, "ENG"

    const-string v4, ""

    invoke-direct {v2, v1, v3, v4, v12}, Lorg/farng/mp3/id3/FrameBodyCOMM;-><init>(BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lorg/farng/mp3/AbstractMP3Fragment;->setBody(Lorg/farng/mp3/AbstractMP3FragmentBody;)V

    goto :goto_1

    .line 321
    .end local v12           #value:Ljava/lang/String;
    :cond_5
    const-string v2, "AUT"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 322
    invoke-virtual {p1}, Lorg/farng/mp3/AbstractMP3Fragment;->getBody()Lorg/farng/mp3/AbstractMP3FragmentBody;

    move-result-object v2

    check-cast v2, Lorg/farng/mp3/lyrics3/FieldBodyAUT;

    invoke-virtual {v2}, Lorg/farng/mp3/lyrics3/FieldBodyAUT;->getAuthor()Ljava/lang/String;

    move-result-object v12

    .line 323
    .restart local v12       #value:Ljava/lang/String;
    new-instance v2, Lorg/farng/mp3/id3/FrameBodyTCOM;

    invoke-direct {v2, v1, v12}, Lorg/farng/mp3/id3/FrameBodyTCOM;-><init>(BLjava/lang/String;)V

    invoke-virtual {p0, v2}, Lorg/farng/mp3/AbstractMP3Fragment;->setBody(Lorg/farng/mp3/AbstractMP3FragmentBody;)V

    goto :goto_1

    .line 324
    .end local v12           #value:Ljava/lang/String;
    :cond_6
    const-string v2, "EAL"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 325
    invoke-virtual {p1}, Lorg/farng/mp3/AbstractMP3Fragment;->getBody()Lorg/farng/mp3/AbstractMP3FragmentBody;

    move-result-object v2

    check-cast v2, Lorg/farng/mp3/lyrics3/FieldBodyEAL;

    invoke-virtual {v2}, Lorg/farng/mp3/lyrics3/FieldBodyEAL;->getAlbum()Ljava/lang/String;

    move-result-object v12

    .line 326
    .restart local v12       #value:Ljava/lang/String;
    new-instance v2, Lorg/farng/mp3/id3/FrameBodyTALB;

    invoke-direct {v2, v1, v12}, Lorg/farng/mp3/id3/FrameBodyTALB;-><init>(BLjava/lang/String;)V

    invoke-virtual {p0, v2}, Lorg/farng/mp3/AbstractMP3Fragment;->setBody(Lorg/farng/mp3/AbstractMP3FragmentBody;)V

    goto :goto_1

    .line 327
    .end local v12           #value:Ljava/lang/String;
    :cond_7
    const-string v2, "EAR"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 328
    invoke-virtual {p1}, Lorg/farng/mp3/AbstractMP3Fragment;->getBody()Lorg/farng/mp3/AbstractMP3FragmentBody;

    move-result-object v2

    check-cast v2, Lorg/farng/mp3/lyrics3/FieldBodyEAR;

    invoke-virtual {v2}, Lorg/farng/mp3/lyrics3/FieldBodyEAR;->getArtist()Ljava/lang/String;

    move-result-object v12

    .line 329
    .restart local v12       #value:Ljava/lang/String;
    new-instance v2, Lorg/farng/mp3/id3/FrameBodyTPE1;

    invoke-direct {v2, v1, v12}, Lorg/farng/mp3/id3/FrameBodyTPE1;-><init>(BLjava/lang/String;)V

    invoke-virtual {p0, v2}, Lorg/farng/mp3/AbstractMP3Fragment;->setBody(Lorg/farng/mp3/AbstractMP3FragmentBody;)V

    goto :goto_1

    .line 330
    .end local v12           #value:Ljava/lang/String;
    :cond_8
    const-string v2, "ETT"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 331
    invoke-virtual {p1}, Lorg/farng/mp3/AbstractMP3Fragment;->getBody()Lorg/farng/mp3/AbstractMP3FragmentBody;

    move-result-object v2

    check-cast v2, Lorg/farng/mp3/lyrics3/FieldBodyETT;

    invoke-virtual {v2}, Lorg/farng/mp3/lyrics3/FieldBodyETT;->getTitle()Ljava/lang/String;

    move-result-object v12

    .line 332
    .restart local v12       #value:Ljava/lang/String;
    new-instance v2, Lorg/farng/mp3/id3/FrameBodyTIT2;

    invoke-direct {v2, v1, v12}, Lorg/farng/mp3/id3/FrameBodyTIT2;-><init>(BLjava/lang/String;)V

    invoke-virtual {p0, v2}, Lorg/farng/mp3/AbstractMP3Fragment;->setBody(Lorg/farng/mp3/AbstractMP3FragmentBody;)V

    goto/16 :goto_1

    .line 333
    .end local v12           #value:Ljava/lang/String;
    :cond_9
    const-string v1, "IMG"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 334
    new-instance v1, Lorg/farng/mp3/InvalidTagException;

    const-string v2, "Cannot create ID3v2.40 frame from Lyrics3 image field."

    invoke-direct {v1, v2}, Lorg/farng/mp3/InvalidTagException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 336
    :cond_a
    new-instance v1, Lorg/farng/mp3/InvalidTagException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot caret ID3v2.40 frame from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Lyrics3 field"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/farng/mp3/InvalidTagException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public constructor <init>(ZZZZZZLorg/farng/mp3/id3/AbstractID3v2FrameBody;)V
    .locals 1
    .parameter "readOnly"
    .parameter "groupingIdentity"
    .parameter "compression"
    .parameter "encryption"
    .parameter "unsynchronization"
    .parameter "dataLengthIndicator"
    .parameter "body"

    .prologue
    const/4 v0, 0x0

    .line 276
    invoke-direct {p0, p7}, Lorg/farng/mp3/id3/ID3v2_3Frame;-><init>(Lorg/farng/mp3/id3/AbstractID3v2FrameBody;)V

    .line 205
    iput-boolean v0, p0, Lorg/farng/mp3/id3/ID3v2_4Frame;->dataLengthIndicator:Z

    .line 206
    iput-boolean v0, p0, Lorg/farng/mp3/id3/ID3v2_4Frame;->unsynchronization:Z

    .line 277
    iput-boolean p1, p0, Lorg/farng/mp3/id3/ID3v2_3Frame;->readOnly:Z

    .line 278
    iput-boolean p2, p0, Lorg/farng/mp3/id3/ID3v2_3Frame;->groupingIdentity:Z

    .line 279
    iput-boolean p3, p0, Lorg/farng/mp3/id3/ID3v2_3Frame;->compression:Z

    .line 280
    iput-boolean p4, p0, Lorg/farng/mp3/id3/ID3v2_3Frame;->encryption:Z

    .line 281
    iput-boolean p5, p0, Lorg/farng/mp3/id3/ID3v2_4Frame;->unsynchronization:Z

    .line 282
    iput-boolean p6, p0, Lorg/farng/mp3/id3/ID3v2_4Frame;->dataLengthIndicator:Z

    .line 283
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "obj"

    .prologue
    const/4 v1, 0x0

    .line 352
    instance-of v2, p1, Lorg/farng/mp3/id3/ID3v2_4Frame;

    if-nez v2, :cond_1

    .line 362
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 355
    check-cast v0, Lorg/farng/mp3/id3/ID3v2_4Frame;

    .line 356
    .local v0, id3v2_4Frame:Lorg/farng/mp3/id3/ID3v2_4Frame;
    iget-boolean v2, p0, Lorg/farng/mp3/id3/ID3v2_4Frame;->unsynchronization:Z

    iget-boolean v3, v0, Lorg/farng/mp3/id3/ID3v2_4Frame;->unsynchronization:Z

    if-ne v2, v3, :cond_0

    .line 359
    iget-boolean v2, p0, Lorg/farng/mp3/id3/ID3v2_4Frame;->dataLengthIndicator:Z

    iget-boolean v3, v0, Lorg/farng/mp3/id3/ID3v2_4Frame;->dataLengthIndicator:Z

    if-ne v2, v3, :cond_0

    .line 362
    invoke-super {p0, p1}, Lorg/farng/mp3/id3/ID3v2_3Frame;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 348
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

    .line 367
    new-array v1, v8, [B

    .line 372
    .local v1, buffer:[B
    :cond_0
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v2

    .line 373
    .local v2, filePointer:J
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->readByte()B

    move-result v0

    .line 374
    .local v0, b:B
    invoke-static {}, Lorg/farng/mp3/id3/AbstractID3v2;->incrementPaddingCounter()V

    .line 375
    if-eqz v0, :cond_0

    .line 376
    invoke-virtual {p1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 377
    invoke-static {}, Lorg/farng/mp3/id3/AbstractID3v2;->decrementPaddingCounter()V

    .line 380
    invoke-virtual {p1, v1, v7, v8}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 381
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v1, v7, v8}, Ljava/lang/String;-><init>([BII)V

    .line 384
    .local v4, identifier:Ljava/lang/String;
    invoke-static {v4}, Lorg/farng/mp3/id3/ID3v2_4Frame;->isValidID3v2FrameIdentifier(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 385
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v5

    const-wide/16 v7, 0x3

    sub-long/2addr v5, v7

    invoke-virtual {p1, v5, v6}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 386
    new-instance v5, Lorg/farng/mp3/InvalidTagException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is not a valid ID3v2.40 frame"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/farng/mp3/InvalidTagException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 388
    :cond_1
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v2

    .line 391
    invoke-virtual {p1, v8}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    .line 394
    const/4 v5, 0x2

    invoke-virtual {p1, v1, v7, v5}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 395
    aget-byte v5, v1, v7

    and-int/lit8 v5, v5, 0x40

    if-eqz v5, :cond_2

    move v5, v6

    :goto_0
    iput-boolean v5, p0, Lorg/farng/mp3/id3/ID3v2_3Frame;->tagAlterPreservation:Z

    .line 396
    aget-byte v5, v1, v7

    and-int/lit8 v5, v5, 0x20

    if-eqz v5, :cond_3

    move v5, v6

    :goto_1
    iput-boolean v5, p0, Lorg/farng/mp3/id3/ID3v2_3Frame;->fileAlterPreservation:Z

    .line 397
    aget-byte v5, v1, v7

    and-int/lit8 v5, v5, 0x10

    if-eqz v5, :cond_4

    move v5, v6

    :goto_2
    iput-boolean v5, p0, Lorg/farng/mp3/id3/ID3v2_3Frame;->readOnly:Z

    .line 398
    aget-byte v5, v1, v6

    and-int/lit8 v5, v5, 0x40

    if-eqz v5, :cond_5

    move v5, v6

    :goto_3
    iput-boolean v5, p0, Lorg/farng/mp3/id3/ID3v2_3Frame;->groupingIdentity:Z

    .line 399
    aget-byte v5, v1, v6

    and-int/lit8 v5, v5, 0x10

    if-eqz v5, :cond_6

    move v5, v6

    :goto_4
    iput-boolean v5, p0, Lorg/farng/mp3/id3/ID3v2_3Frame;->compression:Z

    .line 400
    aget-byte v5, v1, v6

    and-int/lit8 v5, v5, 0x8

    if-eqz v5, :cond_7

    move v5, v6

    :goto_5
    iput-boolean v5, p0, Lorg/farng/mp3/id3/ID3v2_3Frame;->encryption:Z

    .line 401
    aget-byte v5, v1, v6

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_8

    move v5, v6

    :goto_6
    iput-boolean v5, p0, Lorg/farng/mp3/id3/ID3v2_4Frame;->unsynchronization:Z

    .line 402
    aget-byte v5, v1, v6

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_9

    :goto_7
    iput-boolean v6, p0, Lorg/farng/mp3/id3/ID3v2_4Frame;->dataLengthIndicator:Z

    .line 403
    invoke-virtual {p1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 404
    invoke-static {v4, p1}, Lorg/farng/mp3/id3/ID3v2_4Frame;->readBody(Ljava/lang/String;Ljava/io/RandomAccessFile;)Lorg/farng/mp3/id3/AbstractID3v2FrameBody;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/farng/mp3/AbstractMP3Fragment;->setBody(Lorg/farng/mp3/AbstractMP3FragmentBody;)V

    .line 405
    return-void

    :cond_2
    move v5, v7

    .line 395
    goto :goto_0

    :cond_3
    move v5, v7

    .line 396
    goto :goto_1

    :cond_4
    move v5, v7

    .line 397
    goto :goto_2

    :cond_5
    move v5, v7

    .line 398
    goto :goto_3

    :cond_6
    move v5, v7

    .line 399
    goto :goto_4

    :cond_7
    move v5, v7

    .line 400
    goto :goto_5

    :cond_8
    move v5, v7

    .line 401
    goto :goto_6

    :cond_9
    move v6, v7

    .line 402
    goto :goto_7
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

    .line 408
    new-array v0, v8, [B

    .line 410
    .local v0, buffer:[B
    invoke-virtual {p0}, Lorg/farng/mp3/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v8}, Lorg/farng/mp3/TagUtility;->truncate(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 411
    .local v4, str:Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v3, v5, :cond_0

    .line 412
    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, v0, v3

    .line 411
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 414
    :cond_0
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p1, v0, v6, v5}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 415
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v1

    .line 418
    .local v1, filePointer:J
    invoke-virtual {p1, v8}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    .line 419
    invoke-virtual {p0}, Lorg/farng/mp3/id3/ID3v2_3Frame;->setAlterPreservation()V

    .line 420
    aput-byte v6, v0, v6

    .line 421
    aput-byte v6, v0, v7

    .line 422
    iget-boolean v5, p0, Lorg/farng/mp3/id3/ID3v2_3Frame;->tagAlterPreservation:Z

    if-eqz v5, :cond_1

    .line 423
    aget-byte v5, v0, v6

    or-int/lit8 v5, v5, 0x40

    int-to-byte v5, v5

    aput-byte v5, v0, v6

    .line 425
    :cond_1
    iget-boolean v5, p0, Lorg/farng/mp3/id3/ID3v2_3Frame;->fileAlterPreservation:Z

    if-eqz v5, :cond_2

    .line 426
    aget-byte v5, v0, v6

    or-int/lit8 v5, v5, 0x20

    int-to-byte v5, v5

    aput-byte v5, v0, v6

    .line 428
    :cond_2
    iget-boolean v5, p0, Lorg/farng/mp3/id3/ID3v2_3Frame;->readOnly:Z

    if-eqz v5, :cond_3

    .line 429
    aget-byte v5, v0, v6

    or-int/lit8 v5, v5, 0x10

    int-to-byte v5, v5

    aput-byte v5, v0, v6

    .line 431
    :cond_3
    iget-boolean v5, p0, Lorg/farng/mp3/id3/ID3v2_3Frame;->groupingIdentity:Z

    if-eqz v5, :cond_4

    .line 432
    aget-byte v5, v0, v7

    or-int/lit8 v5, v5, 0x40

    int-to-byte v5, v5

    aput-byte v5, v0, v7

    .line 434
    :cond_4
    iget-boolean v5, p0, Lorg/farng/mp3/id3/ID3v2_3Frame;->compression:Z

    if-eqz v5, :cond_5

    .line 435
    aget-byte v5, v0, v7

    or-int/lit8 v5, v5, 0x10

    int-to-byte v5, v5

    aput-byte v5, v0, v7

    .line 437
    :cond_5
    iget-boolean v5, p0, Lorg/farng/mp3/id3/ID3v2_3Frame;->encryption:Z

    if-eqz v5, :cond_6

    .line 438
    aget-byte v5, v0, v7

    or-int/lit8 v5, v5, 0x8

    int-to-byte v5, v5

    aput-byte v5, v0, v7

    .line 440
    :cond_6
    iget-boolean v5, p0, Lorg/farng/mp3/id3/ID3v2_4Frame;->unsynchronization:Z

    if-eqz v5, :cond_7

    .line 441
    aget-byte v5, v0, v7

    or-int/lit8 v5, v5, 0x4

    int-to-byte v5, v5

    aput-byte v5, v0, v7

    .line 443
    :cond_7
    iget-boolean v5, p0, Lorg/farng/mp3/id3/ID3v2_4Frame;->dataLengthIndicator:Z

    if-eqz v5, :cond_8

    .line 444
    aget-byte v5, v0, v7

    or-int/lit8 v5, v5, 0x2

    int-to-byte v5, v5

    aput-byte v5, v0, v7

    .line 446
    :cond_8
    const/4 v5, 0x2

    invoke-virtual {p1, v0, v6, v5}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 447
    invoke-virtual {p1, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 448
    invoke-virtual {p0}, Lorg/farng/mp3/AbstractMP3Fragment;->getBody()Lorg/farng/mp3/AbstractMP3FragmentBody;

    move-result-object v5

    invoke-virtual {v5, p1}, Lorg/farng/mp3/AbstractMP3FragmentBody;->write(Ljava/io/RandomAccessFile;)V

    .line 449
    return-void
.end method
