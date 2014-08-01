.class public Lorg/farng/mp3/lyrics3/Lyrics3v2;
.super Lorg/farng/mp3/lyrics3/AbstractLyrics3;
.source "Lyrics3v2.java"


# instance fields
.field private fieldMap:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 87
    invoke-direct {p0}, Lorg/farng/mp3/lyrics3/AbstractLyrics3;-><init>()V

    .line 81
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lorg/farng/mp3/lyrics3/Lyrics3v2;->fieldMap:Ljava/util/Map;

    .line 88
    return-void
.end method

.method public constructor <init>(Ljava/io/RandomAccessFile;)V
    .locals 2
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/farng/mp3/TagNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 140
    invoke-direct {p0}, Lorg/farng/mp3/lyrics3/AbstractLyrics3;-><init>()V

    .line 81
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lorg/farng/mp3/lyrics3/Lyrics3v2;->fieldMap:Ljava/util/Map;

    .line 141
    invoke-virtual {p0, p1}, Lorg/farng/mp3/lyrics3/Lyrics3v2;->read(Ljava/io/RandomAccessFile;)V

    .line 142
    return-void
.end method

.method public constructor <init>(Lorg/farng/mp3/AbstractMP3Tag;)V
    .locals 5
    .parameter "mp3tag"

    .prologue
    .line 111
    invoke-direct {p0}, Lorg/farng/mp3/lyrics3/AbstractLyrics3;-><init>()V

    .line 81
    new-instance v3, Ljava/util/HashMap;

    const/16 v4, 0x8

    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(I)V

    iput-object v3, p0, Lorg/farng/mp3/lyrics3/Lyrics3v2;->fieldMap:Ljava/util/Map;

    .line 112
    if-eqz p1, :cond_1

    .line 114
    instance-of v3, p1, Lorg/farng/mp3/lyrics3/Lyrics3v2;

    if-eqz v3, :cond_0

    .line 115
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    const-string v4, "Copy Constructor not called. Please type cast the argument"

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 116
    :cond_0
    instance-of v3, p1, Lorg/farng/mp3/lyrics3/Lyrics3v1;

    if-eqz v3, :cond_2

    move-object v1, p1

    .line 117
    check-cast v1, Lorg/farng/mp3/lyrics3/Lyrics3v1;

    .line 118
    .local v1, lyricOld:Lorg/farng/mp3/lyrics3/Lyrics3v1;
    new-instance v2, Lorg/farng/mp3/lyrics3/Lyrics3v2Field;

    new-instance v3, Lorg/farng/mp3/lyrics3/FieldBodyLYR;

    invoke-virtual {v1}, Lorg/farng/mp3/lyrics3/Lyrics3v1;->getLyric()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/farng/mp3/lyrics3/FieldBodyLYR;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lorg/farng/mp3/lyrics3/Lyrics3v2Field;-><init>(Lorg/farng/mp3/lyrics3/AbstractLyrics3v2FieldBody;)V

    .line 119
    .local v2, newField:Lorg/farng/mp3/lyrics3/Lyrics3v2Field;
    iget-object v3, p0, Lorg/farng/mp3/lyrics3/Lyrics3v2;->fieldMap:Ljava/util/Map;

    invoke-virtual {v2}, Lorg/farng/mp3/lyrics3/Lyrics3v2Field;->getIdentifier()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    .end local v1           #lyricOld:Lorg/farng/mp3/lyrics3/Lyrics3v1;
    .end local v2           #newField:Lorg/farng/mp3/lyrics3/Lyrics3v2Field;
    :cond_1
    return-void

    .line 123
    :cond_2
    new-instance v3, Lorg/farng/mp3/id3/ID3v2_4;

    invoke-direct {v3, p1}, Lorg/farng/mp3/id3/ID3v2_4;-><init>(Lorg/farng/mp3/AbstractMP3Tag;)V

    invoke-virtual {v3}, Lorg/farng/mp3/id3/AbstractID3v2;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 124
    .local v0, iterator:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 126
    :try_start_0
    new-instance v2, Lorg/farng/mp3/lyrics3/Lyrics3v2Field;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/farng/mp3/id3/AbstractID3v2Frame;

    invoke-direct {v2, v3}, Lorg/farng/mp3/lyrics3/Lyrics3v2Field;-><init>(Lorg/farng/mp3/id3/AbstractID3v2Frame;)V

    .line 127
    .restart local v2       #newField:Lorg/farng/mp3/lyrics3/Lyrics3v2Field;
    iget-object v3, p0, Lorg/farng/mp3/lyrics3/Lyrics3v2;->fieldMap:Ljava/util/Map;

    invoke-virtual {v2}, Lorg/farng/mp3/lyrics3/Lyrics3v2Field;->getIdentifier()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/farng/mp3/TagException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 128
    .end local v2           #newField:Lorg/farng/mp3/lyrics3/Lyrics3v2Field;
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public constructor <init>(Lorg/farng/mp3/lyrics3/Lyrics3v2;)V
    .locals 6
    .parameter "copyObject"

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lorg/farng/mp3/lyrics3/AbstractLyrics3;-><init>(Lorg/farng/mp3/lyrics3/AbstractLyrics3;)V

    .line 81
    new-instance v4, Ljava/util/HashMap;

    const/16 v5, 0x8

    invoke-direct {v4, v5}, Ljava/util/HashMap;-><init>(I)V

    iput-object v4, p0, Lorg/farng/mp3/lyrics3/Lyrics3v2;->fieldMap:Ljava/util/Map;

    .line 95
    iget-object v4, p1, Lorg/farng/mp3/lyrics3/Lyrics3v2;->fieldMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 99
    .local v0, iterator:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 100
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 101
    .local v3, oldIdentifier:Ljava/lang/String;
    move-object v1, v3

    .line 102
    .local v1, newIdentifier:Ljava/lang/String;
    new-instance v2, Lorg/farng/mp3/lyrics3/Lyrics3v2Field;

    iget-object v4, p1, Lorg/farng/mp3/lyrics3/Lyrics3v2;->fieldMap:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/farng/mp3/lyrics3/Lyrics3v2Field;

    invoke-direct {v2, v4}, Lorg/farng/mp3/lyrics3/Lyrics3v2Field;-><init>(Lorg/farng/mp3/lyrics3/Lyrics3v2Field;)V

    .line 103
    .local v2, newObject:Lorg/farng/mp3/lyrics3/Lyrics3v2Field;
    iget-object v4, p0, Lorg/farng/mp3/lyrics3/Lyrics3v2;->fieldMap:Ljava/util/Map;

    invoke-interface {v4, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 105
    .end local v1           #newIdentifier:Ljava/lang/String;
    .end local v2           #newObject:Lorg/farng/mp3/lyrics3/Lyrics3v2Field;
    .end local v3           #oldIdentifier:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private seekSize(Ljava/io/RandomAccessFile;)I
    .locals 13
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v11, 0x9

    const/4 v10, 0x6

    const/16 v9, 0x9

    const/4 v8, 0x0

    .line 432
    const/16 v4, 0xb

    new-array v0, v4, [B

    .line 437
    .local v0, buffer:[B
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x80

    sub-long/2addr v4, v6

    sub-long/2addr v4, v11

    invoke-virtual {p1, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 438
    invoke-virtual {p1, v0, v8, v9}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 439
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0, v8, v9}, Ljava/lang/String;-><init>([BII)V

    .line 440
    .local v3, lyricEnd:Ljava/lang/String;
    const-string v4, "LYRICS200"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 441
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v1

    .line 456
    .local v1, filePointer:J
    :goto_0
    const-wide/16 v4, 0xf

    sub-long/2addr v1, v4

    .line 457
    invoke-virtual {p1, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 458
    invoke-virtual {p1, v0, v8, v10}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 459
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v0, v8, v10}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .end local v1           #filePointer:J
    :goto_1
    return v4

    .line 445
    :cond_0
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v4

    sub-long/2addr v4, v11

    invoke-virtual {p1, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 446
    invoke-virtual {p1, v0, v8, v9}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 447
    new-instance v3, Ljava/lang/String;

    .end local v3           #lyricEnd:Ljava/lang/String;
    invoke-direct {v3, v0, v8, v9}, Ljava/lang/String;-><init>([BII)V

    .line 448
    .restart local v3       #lyricEnd:Ljava/lang/String;
    const-string v4, "LYRICS200"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 449
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v1

    .restart local v1       #filePointer:J
    goto :goto_0

    .line 451
    .end local v1           #filePointer:J
    :cond_1
    const/4 v4, -0x1

    goto :goto_1
.end method


# virtual methods
.method public append(Lorg/farng/mp3/AbstractMP3Tag;)V
    .locals 9
    .parameter "tag"

    .prologue
    .line 183
    move-object v5, p0

    .line 185
    .local v5, oldTag:Lorg/farng/mp3/lyrics3/Lyrics3v2;
    if-eqz p1, :cond_4

    .line 186
    instance-of v7, p1, Lorg/farng/mp3/lyrics3/Lyrics3v2;

    if-eqz v7, :cond_1

    move-object v4, p1

    .line 187
    check-cast v4, Lorg/farng/mp3/lyrics3/Lyrics3v2;

    .line 191
    .local v4, newTag:Lorg/farng/mp3/lyrics3/Lyrics3v2;
    :goto_0
    iget-object v7, v4, Lorg/farng/mp3/lyrics3/Lyrics3v2;->fieldMap:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 194
    .local v3, iterator:Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 195
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/farng/mp3/lyrics3/Lyrics3v2Field;

    .line 196
    .local v1, field:Lorg/farng/mp3/lyrics3/Lyrics3v2Field;
    invoke-virtual {v1}, Lorg/farng/mp3/lyrics3/Lyrics3v2Field;->getIdentifier()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lorg/farng/mp3/lyrics3/Lyrics3v2;->hasField(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 197
    invoke-virtual {v5, v1}, Lorg/farng/mp3/lyrics3/Lyrics3v2;->setField(Lorg/farng/mp3/lyrics3/Lyrics3v2Field;)V

    goto :goto_1

    .line 189
    .end local v1           #field:Lorg/farng/mp3/lyrics3/Lyrics3v2Field;
    .end local v3           #iterator:Ljava/util/Iterator;
    .end local v4           #newTag:Lorg/farng/mp3/lyrics3/Lyrics3v2;
    :cond_1
    new-instance v4, Lorg/farng/mp3/lyrics3/Lyrics3v2;

    invoke-direct {v4, p1}, Lorg/farng/mp3/lyrics3/Lyrics3v2;-><init>(Lorg/farng/mp3/AbstractMP3Tag;)V

    .restart local v4       #newTag:Lorg/farng/mp3/lyrics3/Lyrics3v2;
    goto :goto_0

    .line 199
    .restart local v1       #field:Lorg/farng/mp3/lyrics3/Lyrics3v2Field;
    .restart local v3       #iterator:Ljava/util/Iterator;
    :cond_2
    invoke-virtual {v1}, Lorg/farng/mp3/lyrics3/Lyrics3v2Field;->getIdentifier()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lorg/farng/mp3/lyrics3/Lyrics3v2;->getField(Ljava/lang/String;)Lorg/farng/mp3/lyrics3/Lyrics3v2Field;

    move-result-object v7

    invoke-virtual {v7}, Lorg/farng/mp3/AbstractMP3Fragment;->getBody()Lorg/farng/mp3/AbstractMP3FragmentBody;

    move-result-object v0

    check-cast v0, Lorg/farng/mp3/lyrics3/AbstractLyrics3v2FieldBody;

    .line 200
    .local v0, body:Lorg/farng/mp3/lyrics3/AbstractLyrics3v2FieldBody;
    invoke-static {}, Lorg/farng/mp3/TagOptionSingleton;->getInstance()Lorg/farng/mp3/TagOptionSingleton;

    move-result-object v7

    invoke-virtual {v1}, Lorg/farng/mp3/lyrics3/Lyrics3v2Field;->getIdentifier()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/farng/mp3/TagOptionSingleton;->getLyrics3SaveField(Ljava/lang/String;)Z

    move-result v6

    .line 201
    .local v6, save:Z
    invoke-virtual {v0}, Lorg/farng/mp3/AbstractMP3FragmentBody;->getSize()I

    move-result v7

    if-nez v7, :cond_0

    if-eqz v6, :cond_0

    .line 202
    invoke-virtual {v5, v1}, Lorg/farng/mp3/lyrics3/Lyrics3v2;->setField(Lorg/farng/mp3/lyrics3/Lyrics3v2Field;)V

    goto :goto_1

    .line 208
    .end local v0           #body:Lorg/farng/mp3/lyrics3/AbstractLyrics3v2FieldBody;
    .end local v1           #field:Lorg/farng/mp3/lyrics3/Lyrics3v2Field;
    .end local v6           #save:Z
    :cond_3
    iget-object v7, v5, Lorg/farng/mp3/lyrics3/Lyrics3v2;->fieldMap:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 210
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 211
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 212
    .local v2, id:Ljava/lang/String;
    invoke-static {}, Lorg/farng/mp3/TagOptionSingleton;->getInstance()Lorg/farng/mp3/TagOptionSingleton;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v2, v8}, Lorg/farng/mp3/TagOptionSingleton;->setLyrics3SaveField(Ljava/lang/String;Z)V

    goto :goto_2

    .line 215
    .end local v2           #id:Ljava/lang/String;
    .end local v3           #iterator:Ljava/util/Iterator;
    .end local v4           #newTag:Lorg/farng/mp3/lyrics3/Lyrics3v2;
    :cond_4
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "obj"

    .prologue
    const/4 v1, 0x0

    .line 218
    instance-of v2, p1, Lorg/farng/mp3/lyrics3/Lyrics3v2;

    if-nez v2, :cond_1

    .line 225
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 221
    check-cast v0, Lorg/farng/mp3/lyrics3/Lyrics3v2;

    .line 222
    .local v0, lyrics3v2:Lorg/farng/mp3/lyrics3/Lyrics3v2;
    iget-object v2, p0, Lorg/farng/mp3/lyrics3/Lyrics3v2;->fieldMap:Ljava/util/Map;

    iget-object v3, v0, Lorg/farng/mp3/lyrics3/Lyrics3v2;->fieldMap:Ljava/util/Map;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 225
    invoke-super {p0, p1}, Lorg/farng/mp3/AbstractMP3Tag;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getAlbumTitle()Ljava/lang/String;
    .locals 4

    .prologue
    .line 483
    const-string v0, ""

    .line 484
    .local v0, album:Ljava/lang/String;
    const-string v3, "EAL"

    invoke-virtual {p0, v3}, Lorg/farng/mp3/lyrics3/Lyrics3v2;->getField(Ljava/lang/String;)Lorg/farng/mp3/lyrics3/Lyrics3v2Field;

    move-result-object v2

    .line 485
    .local v2, field:Lorg/farng/mp3/lyrics3/Lyrics3v2Field;
    if-eqz v2, :cond_0

    .line 486
    invoke-virtual {v2}, Lorg/farng/mp3/AbstractMP3Fragment;->getBody()Lorg/farng/mp3/AbstractMP3FragmentBody;

    move-result-object v1

    check-cast v1, Lorg/farng/mp3/lyrics3/FieldBodyEAL;

    .line 487
    .local v1, body:Lorg/farng/mp3/lyrics3/FieldBodyEAL;
    invoke-virtual {v1}, Lorg/farng/mp3/lyrics3/FieldBodyEAL;->getAlbum()Ljava/lang/String;

    move-result-object v0

    .line 489
    .end local v1           #body:Lorg/farng/mp3/lyrics3/FieldBodyEAL;
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public getAuthorComposer()Ljava/lang/String;
    .locals 4

    .prologue
    .line 525
    const-string v0, ""

    .line 526
    .local v0, author:Ljava/lang/String;
    const-string v3, "AUT"

    invoke-virtual {p0, v3}, Lorg/farng/mp3/lyrics3/Lyrics3v2;->getField(Ljava/lang/String;)Lorg/farng/mp3/lyrics3/Lyrics3v2Field;

    move-result-object v2

    .line 527
    .local v2, field:Lorg/farng/mp3/lyrics3/Lyrics3v2Field;
    if-eqz v2, :cond_0

    .line 528
    invoke-virtual {v2}, Lorg/farng/mp3/AbstractMP3Fragment;->getBody()Lorg/farng/mp3/AbstractMP3FragmentBody;

    move-result-object v1

    check-cast v1, Lorg/farng/mp3/lyrics3/FieldBodyAUT;

    .line 529
    .local v1, body:Lorg/farng/mp3/lyrics3/FieldBodyAUT;
    invoke-virtual {v1}, Lorg/farng/mp3/lyrics3/FieldBodyAUT;->getAuthor()Ljava/lang/String;

    move-result-object v0

    .line 531
    .end local v1           #body:Lorg/farng/mp3/lyrics3/FieldBodyAUT;
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public getField(Ljava/lang/String;)Lorg/farng/mp3/lyrics3/Lyrics3v2Field;
    .locals 1
    .parameter "identifier"

    .prologue
    .line 158
    iget-object v0, p0, Lorg/farng/mp3/lyrics3/Lyrics3v2;->fieldMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/farng/mp3/lyrics3/Lyrics3v2Field;

    return-object v0
.end method

.method public getFieldCount()I
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lorg/farng/mp3/lyrics3/Lyrics3v2;->fieldMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 166
    const-string v0, "Lyrics3v2.00"

    return-object v0
.end method

.method public getLeadArtist()Ljava/lang/String;
    .locals 4

    .prologue
    .line 473
    const-string v0, ""

    .line 474
    .local v0, artist:Ljava/lang/String;
    const-string v3, "EAR"

    invoke-virtual {p0, v3}, Lorg/farng/mp3/lyrics3/Lyrics3v2;->getField(Ljava/lang/String;)Lorg/farng/mp3/lyrics3/Lyrics3v2Field;

    move-result-object v2

    .line 475
    .local v2, field:Lorg/farng/mp3/lyrics3/Lyrics3v2Field;
    if-eqz v2, :cond_0

    .line 476
    invoke-virtual {v2}, Lorg/farng/mp3/AbstractMP3Fragment;->getBody()Lorg/farng/mp3/AbstractMP3FragmentBody;

    move-result-object v1

    check-cast v1, Lorg/farng/mp3/lyrics3/FieldBodyEAR;

    .line 477
    .local v1, body:Lorg/farng/mp3/lyrics3/FieldBodyEAR;
    invoke-virtual {v1}, Lorg/farng/mp3/lyrics3/FieldBodyEAR;->getArtist()Ljava/lang/String;

    move-result-object v0

    .line 479
    .end local v1           #body:Lorg/farng/mp3/lyrics3/FieldBodyEAR;
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public getSize()I
    .locals 4

    .prologue
    .line 170
    const/4 v2, 0x0

    .line 171
    .local v2, size:I
    iget-object v3, p0, Lorg/farng/mp3/lyrics3/Lyrics3v2;->fieldMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 173
    .local v1, iterator:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 174
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/farng/mp3/lyrics3/Lyrics3v2Field;

    .line 175
    .local v0, field:Lorg/farng/mp3/lyrics3/Lyrics3v2Field;
    invoke-virtual {v0}, Lorg/farng/mp3/lyrics3/Lyrics3v2Field;->getSize()I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 179
    .end local v0           #field:Lorg/farng/mp3/lyrics3/Lyrics3v2Field;
    :cond_0
    add-int/lit8 v3, v2, 0xb

    return v3
.end method

.method public getSongComment()Ljava/lang/String;
    .locals 4

    .prologue
    .line 497
    const-string v0, ""

    .line 498
    .local v0, additionalInformation:Ljava/lang/String;
    const-string v3, "INF"

    invoke-virtual {p0, v3}, Lorg/farng/mp3/lyrics3/Lyrics3v2;->getField(Ljava/lang/String;)Lorg/farng/mp3/lyrics3/Lyrics3v2Field;

    move-result-object v2

    .line 499
    .local v2, field:Lorg/farng/mp3/lyrics3/Lyrics3v2Field;
    if-eqz v2, :cond_0

    .line 500
    invoke-virtual {v2}, Lorg/farng/mp3/AbstractMP3Fragment;->getBody()Lorg/farng/mp3/AbstractMP3FragmentBody;

    move-result-object v1

    check-cast v1, Lorg/farng/mp3/lyrics3/FieldBodyINF;

    .line 501
    .local v1, body:Lorg/farng/mp3/lyrics3/FieldBodyINF;
    invoke-virtual {v1}, Lorg/farng/mp3/lyrics3/FieldBodyINF;->getAdditionalInformation()Ljava/lang/String;

    move-result-object v0

    .line 503
    .end local v1           #body:Lorg/farng/mp3/lyrics3/FieldBodyINF;
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public getSongGenre()Ljava/lang/String;
    .locals 2

    .prologue
    .line 507
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This tag does not contain that information"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSongLyric()Ljava/lang/String;
    .locals 4

    .prologue
    .line 515
    const-string v2, ""

    .line 516
    .local v2, lyrics:Ljava/lang/String;
    const-string v3, "LYR"

    invoke-virtual {p0, v3}, Lorg/farng/mp3/lyrics3/Lyrics3v2;->getField(Ljava/lang/String;)Lorg/farng/mp3/lyrics3/Lyrics3v2Field;

    move-result-object v1

    .line 517
    .local v1, field:Lorg/farng/mp3/lyrics3/Lyrics3v2Field;
    if-eqz v1, :cond_0

    .line 518
    invoke-virtual {v1}, Lorg/farng/mp3/AbstractMP3Fragment;->getBody()Lorg/farng/mp3/AbstractMP3FragmentBody;

    move-result-object v0

    check-cast v0, Lorg/farng/mp3/lyrics3/FieldBodyLYR;

    .line 519
    .local v0, body:Lorg/farng/mp3/lyrics3/FieldBodyLYR;
    invoke-virtual {v0}, Lorg/farng/mp3/lyrics3/FieldBodyLYR;->getLyric()Ljava/lang/String;

    move-result-object v2

    .line 521
    .end local v0           #body:Lorg/farng/mp3/lyrics3/FieldBodyLYR;
    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public getSongTitle()Ljava/lang/String;
    .locals 4

    .prologue
    .line 463
    const-string v2, ""

    .line 464
    .local v2, title:Ljava/lang/String;
    const-string v3, "ETT"

    invoke-virtual {p0, v3}, Lorg/farng/mp3/lyrics3/Lyrics3v2;->getField(Ljava/lang/String;)Lorg/farng/mp3/lyrics3/Lyrics3v2Field;

    move-result-object v1

    .line 465
    .local v1, field:Lorg/farng/mp3/lyrics3/Lyrics3v2Field;
    if-eqz v1, :cond_0

    .line 466
    invoke-virtual {v1}, Lorg/farng/mp3/AbstractMP3Fragment;->getBody()Lorg/farng/mp3/AbstractMP3FragmentBody;

    move-result-object v0

    check-cast v0, Lorg/farng/mp3/lyrics3/FieldBodyETT;

    .line 467
    .local v0, body:Lorg/farng/mp3/lyrics3/FieldBodyETT;
    invoke-virtual {v0}, Lorg/farng/mp3/lyrics3/FieldBodyETT;->getTitle()Ljava/lang/String;

    move-result-object v2

    .line 469
    .end local v0           #body:Lorg/farng/mp3/lyrics3/FieldBodyETT;
    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public getTrackNumberOnAlbum()Ljava/lang/String;
    .locals 2

    .prologue
    .line 511
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This tag does not contain that information"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getYearReleased()Ljava/lang/String;
    .locals 2

    .prologue
    .line 493
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This tag does not contain that information"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hasField(Ljava/lang/String;)Z
    .locals 1
    .parameter "identifier"

    .prologue
    .line 229
    iget-object v0, p0, Lorg/farng/mp3/lyrics3/Lyrics3v2;->fieldMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lorg/farng/mp3/lyrics3/Lyrics3v2;->fieldMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public overwrite(Lorg/farng/mp3/AbstractMP3Tag;)V
    .locals 7
    .parameter "tag"

    .prologue
    .line 237
    move-object v4, p0

    .line 239
    .local v4, oldTag:Lorg/farng/mp3/lyrics3/Lyrics3v2;
    if-eqz p1, :cond_3

    .line 240
    instance-of v5, p1, Lorg/farng/mp3/lyrics3/Lyrics3v2;

    if-eqz v5, :cond_1

    move-object v3, p1

    .line 241
    check-cast v3, Lorg/farng/mp3/lyrics3/Lyrics3v2;

    .line 245
    .local v3, newTag:Lorg/farng/mp3/lyrics3/Lyrics3v2;
    :goto_0
    iget-object v5, v3, Lorg/farng/mp3/lyrics3/Lyrics3v2;->fieldMap:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 247
    .local v2, iterator:Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 248
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/farng/mp3/lyrics3/Lyrics3v2Field;

    .line 249
    .local v0, field:Lorg/farng/mp3/lyrics3/Lyrics3v2Field;
    invoke-static {}, Lorg/farng/mp3/TagOptionSingleton;->getInstance()Lorg/farng/mp3/TagOptionSingleton;

    move-result-object v5

    invoke-virtual {v0}, Lorg/farng/mp3/lyrics3/Lyrics3v2Field;->getIdentifier()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/farng/mp3/TagOptionSingleton;->getLyrics3SaveField(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 250
    invoke-virtual {v4, v0}, Lorg/farng/mp3/lyrics3/Lyrics3v2;->setField(Lorg/farng/mp3/lyrics3/Lyrics3v2Field;)V

    goto :goto_1

    .line 243
    .end local v0           #field:Lorg/farng/mp3/lyrics3/Lyrics3v2Field;
    .end local v2           #iterator:Ljava/util/Iterator;
    .end local v3           #newTag:Lorg/farng/mp3/lyrics3/Lyrics3v2;
    :cond_1
    new-instance v3, Lorg/farng/mp3/lyrics3/Lyrics3v2;

    invoke-direct {v3, p1}, Lorg/farng/mp3/lyrics3/Lyrics3v2;-><init>(Lorg/farng/mp3/AbstractMP3Tag;)V

    .restart local v3       #newTag:Lorg/farng/mp3/lyrics3/Lyrics3v2;
    goto :goto_0

    .line 255
    .restart local v2       #iterator:Ljava/util/Iterator;
    :cond_2
    iget-object v5, v4, Lorg/farng/mp3/lyrics3/Lyrics3v2;->fieldMap:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 257
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 258
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 259
    .local v1, id:Ljava/lang/String;
    invoke-static {}, Lorg/farng/mp3/TagOptionSingleton;->getInstance()Lorg/farng/mp3/TagOptionSingleton;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v1, v6}, Lorg/farng/mp3/TagOptionSingleton;->setLyrics3SaveField(Ljava/lang/String;Z)V

    goto :goto_2

    .line 262
    .end local v1           #id:Ljava/lang/String;
    .end local v2           #iterator:Ljava/util/Iterator;
    .end local v3           #newTag:Lorg/farng/mp3/lyrics3/Lyrics3v2;
    :cond_3
    return-void
.end method

.method public read(Ljava/io/RandomAccessFile;)V
    .locals 8
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/farng/mp3/TagNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 267
    invoke-virtual {p0, p1}, Lorg/farng/mp3/lyrics3/Lyrics3v2;->seek(Ljava/io/RandomAccessFile;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 268
    invoke-direct {p0, p1}, Lorg/farng/mp3/lyrics3/Lyrics3v2;->seekSize(Ljava/io/RandomAccessFile;)I

    move-result v3

    .line 274
    .local v3, lyricSize:I
    invoke-virtual {p0, p1}, Lorg/farng/mp3/lyrics3/Lyrics3v2;->seek(Ljava/io/RandomAccessFile;)Z

    .line 275
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v0

    .line 276
    .local v0, filePointer:J
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lorg/farng/mp3/lyrics3/Lyrics3v2;->fieldMap:Ljava/util/Map;

    .line 280
    :goto_0
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v4

    sub-long/2addr v4, v0

    add-int/lit8 v6, v3, -0xb

    int-to-long v6, v6

    cmp-long v4, v4, v6

    if-gez v4, :cond_1

    .line 282
    :try_start_0
    new-instance v2, Lorg/farng/mp3/lyrics3/Lyrics3v2Field;

    invoke-direct {v2, p1}, Lorg/farng/mp3/lyrics3/Lyrics3v2Field;-><init>(Ljava/io/RandomAccessFile;)V

    .line 283
    .local v2, lyric:Lorg/farng/mp3/lyrics3/Lyrics3v2Field;
    invoke-virtual {p0, v2}, Lorg/farng/mp3/lyrics3/Lyrics3v2;->setField(Lorg/farng/mp3/lyrics3/Lyrics3v2Field;)V
    :try_end_0
    .catch Lorg/farng/mp3/InvalidTagException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 284
    .end local v2           #lyric:Lorg/farng/mp3/lyrics3/Lyrics3v2Field;
    :catch_0
    move-exception v4

    goto :goto_0

    .line 270
    .end local v0           #filePointer:J
    .end local v3           #lyricSize:I
    :cond_0
    new-instance v4, Lorg/farng/mp3/TagNotFoundException;

    const-string v5, "Lyrics3v2.00 Tag Not Found"

    invoke-direct {v4, v5}, Lorg/farng/mp3/TagNotFoundException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 288
    .restart local v0       #filePointer:J
    .restart local v3       #lyricSize:I
    :cond_1
    return-void
.end method

.method public removeField(Ljava/lang/String;)V
    .locals 1
    .parameter "identifier"

    .prologue
    .line 291
    iget-object v0, p0, Lorg/farng/mp3/lyrics3/Lyrics3v2;->fieldMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    return-void
.end method

.method public seek(Ljava/io/RandomAccessFile;)Z
    .locals 11
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 295
    const/16 v7, 0xb

    new-array v0, v7, [B

    .line 302
    .local v0, buffer:[B
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v7

    const-wide/16 v9, 0x80

    sub-long/2addr v7, v9

    const-wide/16 v9, 0x9

    sub-long/2addr v7, v9

    invoke-virtual {p1, v7, v8}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 303
    const/4 v7, 0x0

    const/16 v8, 0x9

    invoke-virtual {p1, v0, v7, v8}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 304
    new-instance v3, Ljava/lang/String;

    const/4 v7, 0x0

    const/16 v8, 0x9

    invoke-direct {v3, v0, v7, v8}, Ljava/lang/String;-><init>([BII)V

    .line 305
    .local v3, lyricEnd:Ljava/lang/String;
    const-string v7, "LYRICS200"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 306
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v1

    .line 321
    .local v1, filePointer:J
    :goto_0
    const-wide/16 v7, 0xf

    sub-long/2addr v1, v7

    .line 322
    invoke-virtual {p1, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 323
    const/4 v7, 0x0

    const/4 v8, 0x6

    invoke-virtual {p1, v0, v7, v8}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 324
    new-instance v7, Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x6

    invoke-direct {v7, v0, v8, v9}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    int-to-long v4, v7

    .line 327
    .local v4, lyricSize:J
    sub-long v7, v1, v4

    invoke-virtual {p1, v7, v8}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 328
    const/4 v7, 0x0

    const/16 v8, 0xb

    invoke-virtual {p1, v0, v7, v8}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 329
    new-instance v6, Ljava/lang/String;

    const/4 v7, 0x0

    const/16 v8, 0xb

    invoke-direct {v6, v0, v7, v8}, Ljava/lang/String;-><init>([BII)V

    .line 330
    .local v6, lyricStart:Ljava/lang/String;
    const-string v7, "LYRICSBEGIN"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_2

    const/4 v7, 0x1

    .end local v1           #filePointer:J
    .end local v4           #lyricSize:J
    .end local v6           #lyricStart:Ljava/lang/String;
    :goto_1
    return v7

    .line 310
    :cond_0
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v7

    const-wide/16 v9, 0x9

    sub-long/2addr v7, v9

    invoke-virtual {p1, v7, v8}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 311
    const/4 v7, 0x0

    const/16 v8, 0x9

    invoke-virtual {p1, v0, v7, v8}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 312
    new-instance v3, Ljava/lang/String;

    .end local v3           #lyricEnd:Ljava/lang/String;
    const/4 v7, 0x0

    const/16 v8, 0x9

    invoke-direct {v3, v0, v7, v8}, Ljava/lang/String;-><init>([BII)V

    .line 313
    .restart local v3       #lyricEnd:Ljava/lang/String;
    const-string v7, "LYRICS200"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 314
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v1

    .restart local v1       #filePointer:J
    goto :goto_0

    .line 316
    .end local v1           #filePointer:J
    :cond_1
    const/4 v7, 0x0

    goto :goto_1

    .line 330
    .restart local v1       #filePointer:J
    .restart local v4       #lyricSize:J
    .restart local v6       #lyricStart:Ljava/lang/String;
    :cond_2
    const/4 v7, 0x0

    goto :goto_1
.end method

.method public setAlbumTitle(Ljava/lang/String;)V
    .locals 3
    .parameter "albumTitle"

    .prologue
    .line 555
    const-string v1, "EAL"

    invoke-virtual {p0, v1}, Lorg/farng/mp3/lyrics3/Lyrics3v2;->getField(Ljava/lang/String;)Lorg/farng/mp3/lyrics3/Lyrics3v2Field;

    move-result-object v0

    .line 556
    .local v0, field:Lorg/farng/mp3/lyrics3/Lyrics3v2Field;
    if-nez v0, :cond_0

    .line 557
    new-instance v0, Lorg/farng/mp3/lyrics3/Lyrics3v2Field;

    .end local v0           #field:Lorg/farng/mp3/lyrics3/Lyrics3v2Field;
    new-instance v1, Lorg/farng/mp3/lyrics3/FieldBodyEAL;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/farng/mp3/lyrics3/FieldBodyEAL;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/farng/mp3/lyrics3/Lyrics3v2Field;-><init>(Lorg/farng/mp3/lyrics3/AbstractLyrics3v2FieldBody;)V

    .line 558
    .restart local v0       #field:Lorg/farng/mp3/lyrics3/Lyrics3v2Field;
    invoke-virtual {p0, v0}, Lorg/farng/mp3/lyrics3/Lyrics3v2;->setField(Lorg/farng/mp3/lyrics3/Lyrics3v2Field;)V

    .line 562
    :goto_0
    return-void

    .line 560
    :cond_0
    invoke-virtual {v0}, Lorg/farng/mp3/AbstractMP3Fragment;->getBody()Lorg/farng/mp3/AbstractMP3FragmentBody;

    move-result-object v1

    check-cast v1, Lorg/farng/mp3/lyrics3/FieldBodyEAL;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/farng/mp3/lyrics3/FieldBodyEAL;->setAlbum(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setAuthorComposer(Ljava/lang/String;)V
    .locals 3
    .parameter "authorComposer"

    .prologue
    .line 597
    const-string v1, "AUT"

    invoke-virtual {p0, v1}, Lorg/farng/mp3/lyrics3/Lyrics3v2;->getField(Ljava/lang/String;)Lorg/farng/mp3/lyrics3/Lyrics3v2Field;

    move-result-object v0

    .line 598
    .local v0, field:Lorg/farng/mp3/lyrics3/Lyrics3v2Field;
    if-nez v0, :cond_0

    .line 599
    new-instance v0, Lorg/farng/mp3/lyrics3/Lyrics3v2Field;

    .end local v0           #field:Lorg/farng/mp3/lyrics3/Lyrics3v2Field;
    new-instance v1, Lorg/farng/mp3/lyrics3/FieldBodyAUT;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/farng/mp3/lyrics3/FieldBodyAUT;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/farng/mp3/lyrics3/Lyrics3v2Field;-><init>(Lorg/farng/mp3/lyrics3/AbstractLyrics3v2FieldBody;)V

    .line 600
    .restart local v0       #field:Lorg/farng/mp3/lyrics3/Lyrics3v2Field;
    invoke-virtual {p0, v0}, Lorg/farng/mp3/lyrics3/Lyrics3v2;->setField(Lorg/farng/mp3/lyrics3/Lyrics3v2Field;)V

    .line 604
    :goto_0
    return-void

    .line 602
    :cond_0
    invoke-virtual {v0}, Lorg/farng/mp3/AbstractMP3Fragment;->getBody()Lorg/farng/mp3/AbstractMP3FragmentBody;

    move-result-object v1

    check-cast v1, Lorg/farng/mp3/lyrics3/FieldBodyAUT;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/farng/mp3/lyrics3/FieldBodyAUT;->setAuthor(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setField(Lorg/farng/mp3/lyrics3/Lyrics3v2Field;)V
    .locals 2
    .parameter "field"

    .prologue
    .line 145
    invoke-virtual {p1}, Lorg/farng/mp3/AbstractMP3Fragment;->getBody()Lorg/farng/mp3/AbstractMP3FragmentBody;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lorg/farng/mp3/lyrics3/Lyrics3v2;->fieldMap:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/farng/mp3/lyrics3/Lyrics3v2Field;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    :cond_0
    return-void
.end method

.method public setLeadArtist(Ljava/lang/String;)V
    .locals 3
    .parameter "leadArtist"

    .prologue
    .line 545
    const-string v1, "EAR"

    invoke-virtual {p0, v1}, Lorg/farng/mp3/lyrics3/Lyrics3v2;->getField(Ljava/lang/String;)Lorg/farng/mp3/lyrics3/Lyrics3v2Field;

    move-result-object v0

    .line 546
    .local v0, field:Lorg/farng/mp3/lyrics3/Lyrics3v2Field;
    if-nez v0, :cond_0

    .line 547
    new-instance v0, Lorg/farng/mp3/lyrics3/Lyrics3v2Field;

    .end local v0           #field:Lorg/farng/mp3/lyrics3/Lyrics3v2Field;
    new-instance v1, Lorg/farng/mp3/lyrics3/FieldBodyEAR;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/farng/mp3/lyrics3/FieldBodyEAR;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/farng/mp3/lyrics3/Lyrics3v2Field;-><init>(Lorg/farng/mp3/lyrics3/AbstractLyrics3v2FieldBody;)V

    .line 548
    .restart local v0       #field:Lorg/farng/mp3/lyrics3/Lyrics3v2Field;
    invoke-virtual {p0, v0}, Lorg/farng/mp3/lyrics3/Lyrics3v2;->setField(Lorg/farng/mp3/lyrics3/Lyrics3v2Field;)V

    .line 552
    :goto_0
    return-void

    .line 550
    :cond_0
    invoke-virtual {v0}, Lorg/farng/mp3/AbstractMP3Fragment;->getBody()Lorg/farng/mp3/AbstractMP3FragmentBody;

    move-result-object v1

    check-cast v1, Lorg/farng/mp3/lyrics3/FieldBodyEAR;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/farng/mp3/lyrics3/FieldBodyEAR;->setArtist(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setSongComment(Ljava/lang/String;)V
    .locals 3
    .parameter "songComment"

    .prologue
    .line 569
    const-string v1, "INF"

    invoke-virtual {p0, v1}, Lorg/farng/mp3/lyrics3/Lyrics3v2;->getField(Ljava/lang/String;)Lorg/farng/mp3/lyrics3/Lyrics3v2Field;

    move-result-object v0

    .line 570
    .local v0, field:Lorg/farng/mp3/lyrics3/Lyrics3v2Field;
    if-nez v0, :cond_0

    .line 571
    new-instance v0, Lorg/farng/mp3/lyrics3/Lyrics3v2Field;

    .end local v0           #field:Lorg/farng/mp3/lyrics3/Lyrics3v2Field;
    new-instance v1, Lorg/farng/mp3/lyrics3/FieldBodyINF;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/farng/mp3/lyrics3/FieldBodyINF;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/farng/mp3/lyrics3/Lyrics3v2Field;-><init>(Lorg/farng/mp3/lyrics3/AbstractLyrics3v2FieldBody;)V

    .line 572
    .restart local v0       #field:Lorg/farng/mp3/lyrics3/Lyrics3v2Field;
    invoke-virtual {p0, v0}, Lorg/farng/mp3/lyrics3/Lyrics3v2;->setField(Lorg/farng/mp3/lyrics3/Lyrics3v2Field;)V

    .line 576
    :goto_0
    return-void

    .line 574
    :cond_0
    invoke-virtual {v0}, Lorg/farng/mp3/AbstractMP3Fragment;->getBody()Lorg/farng/mp3/AbstractMP3FragmentBody;

    move-result-object v1

    check-cast v1, Lorg/farng/mp3/lyrics3/FieldBodyINF;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/farng/mp3/lyrics3/FieldBodyINF;->setAdditionalInformation(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setSongGenre(Ljava/lang/String;)V
    .locals 2
    .parameter "songGenre"

    .prologue
    .line 579
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This tag does not contain that information"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setSongLyric(Ljava/lang/String;)V
    .locals 3
    .parameter "songLyrics"

    .prologue
    .line 587
    const-string v1, "LYR"

    invoke-virtual {p0, v1}, Lorg/farng/mp3/lyrics3/Lyrics3v2;->getField(Ljava/lang/String;)Lorg/farng/mp3/lyrics3/Lyrics3v2Field;

    move-result-object v0

    .line 588
    .local v0, field:Lorg/farng/mp3/lyrics3/Lyrics3v2Field;
    if-nez v0, :cond_0

    .line 589
    new-instance v0, Lorg/farng/mp3/lyrics3/Lyrics3v2Field;

    .end local v0           #field:Lorg/farng/mp3/lyrics3/Lyrics3v2Field;
    new-instance v1, Lorg/farng/mp3/lyrics3/FieldBodyLYR;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/farng/mp3/lyrics3/FieldBodyLYR;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/farng/mp3/lyrics3/Lyrics3v2Field;-><init>(Lorg/farng/mp3/lyrics3/AbstractLyrics3v2FieldBody;)V

    .line 590
    .restart local v0       #field:Lorg/farng/mp3/lyrics3/Lyrics3v2Field;
    invoke-virtual {p0, v0}, Lorg/farng/mp3/lyrics3/Lyrics3v2;->setField(Lorg/farng/mp3/lyrics3/Lyrics3v2Field;)V

    .line 594
    :goto_0
    return-void

    .line 592
    :cond_0
    invoke-virtual {v0}, Lorg/farng/mp3/AbstractMP3Fragment;->getBody()Lorg/farng/mp3/AbstractMP3FragmentBody;

    move-result-object v1

    check-cast v1, Lorg/farng/mp3/lyrics3/FieldBodyLYR;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/farng/mp3/lyrics3/FieldBodyLYR;->setLyric(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setSongTitle(Ljava/lang/String;)V
    .locals 3
    .parameter "songTitle"

    .prologue
    .line 535
    const-string v1, "ETT"

    invoke-virtual {p0, v1}, Lorg/farng/mp3/lyrics3/Lyrics3v2;->getField(Ljava/lang/String;)Lorg/farng/mp3/lyrics3/Lyrics3v2Field;

    move-result-object v0

    .line 536
    .local v0, field:Lorg/farng/mp3/lyrics3/Lyrics3v2Field;
    if-nez v0, :cond_0

    .line 537
    new-instance v0, Lorg/farng/mp3/lyrics3/Lyrics3v2Field;

    .end local v0           #field:Lorg/farng/mp3/lyrics3/Lyrics3v2Field;
    new-instance v1, Lorg/farng/mp3/lyrics3/FieldBodyETT;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/farng/mp3/lyrics3/FieldBodyETT;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/farng/mp3/lyrics3/Lyrics3v2Field;-><init>(Lorg/farng/mp3/lyrics3/AbstractLyrics3v2FieldBody;)V

    .line 538
    .restart local v0       #field:Lorg/farng/mp3/lyrics3/Lyrics3v2Field;
    invoke-virtual {p0, v0}, Lorg/farng/mp3/lyrics3/Lyrics3v2;->setField(Lorg/farng/mp3/lyrics3/Lyrics3v2Field;)V

    .line 542
    :goto_0
    return-void

    .line 540
    :cond_0
    invoke-virtual {v0}, Lorg/farng/mp3/AbstractMP3Fragment;->getBody()Lorg/farng/mp3/AbstractMP3FragmentBody;

    move-result-object v1

    check-cast v1, Lorg/farng/mp3/lyrics3/FieldBodyETT;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/farng/mp3/lyrics3/FieldBodyETT;->setTitle(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setTrackNumberOnAlbum(Ljava/lang/String;)V
    .locals 2
    .parameter "trackNumberOnAlbum"

    .prologue
    .line 583
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This tag does not contain that information"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setYearReleased(Ljava/lang/String;)V
    .locals 2
    .parameter "yearReleased"

    .prologue
    .line 565
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This tag does not contain that information"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 334
    iget-object v3, p0, Lorg/farng/mp3/lyrics3/Lyrics3v2;->fieldMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 336
    .local v1, iterator:Ljava/util/Iterator;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/farng/mp3/lyrics3/Lyrics3v2;->getIdentifier()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lorg/farng/mp3/lyrics3/Lyrics3v2;->getSize()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 337
    .local v2, str:Ljava/lang/String;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 338
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/farng/mp3/lyrics3/Lyrics3v2Field;

    .line 339
    .local v0, field:Lorg/farng/mp3/lyrics3/Lyrics3v2Field;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lorg/farng/mp3/lyrics3/Lyrics3v2Field;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 341
    .end local v0           #field:Lorg/farng/mp3/lyrics3/Lyrics3v2Field;
    :cond_0
    return-object v2
.end method

.method public updateField(Ljava/lang/String;)V
    .locals 6
    .parameter "identifier"

    .prologue
    .line 346
    const-string v4, "IND"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 347
    iget-object v4, p0, Lorg/farng/mp3/lyrics3/Lyrics3v2;->fieldMap:Ljava/util/Map;

    const-string v5, "LYR"

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    .line 348
    .local v2, lyricsPresent:Z
    const/4 v3, 0x0

    .line 349
    .local v3, timeStampPresent:Z
    if-eqz v2, :cond_0

    .line 350
    iget-object v4, p0, Lorg/farng/mp3/lyrics3/Lyrics3v2;->fieldMap:Ljava/util/Map;

    const-string v5, "LYR"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/farng/mp3/lyrics3/Lyrics3v2Field;

    .line 351
    .local v1, lyrField:Lorg/farng/mp3/lyrics3/Lyrics3v2Field;
    invoke-virtual {v1}, Lorg/farng/mp3/AbstractMP3Fragment;->getBody()Lorg/farng/mp3/AbstractMP3FragmentBody;

    move-result-object v0

    check-cast v0, Lorg/farng/mp3/lyrics3/FieldBodyLYR;

    .line 352
    .local v0, lyrBody:Lorg/farng/mp3/lyrics3/FieldBodyLYR;
    invoke-virtual {v0}, Lorg/farng/mp3/lyrics3/FieldBodyLYR;->hasTimeStamp()Z

    move-result v3

    .line 354
    .end local v0           #lyrBody:Lorg/farng/mp3/lyrics3/FieldBodyLYR;
    .end local v1           #lyrField:Lorg/farng/mp3/lyrics3/Lyrics3v2Field;
    :cond_0
    new-instance v1, Lorg/farng/mp3/lyrics3/Lyrics3v2Field;

    new-instance v4, Lorg/farng/mp3/lyrics3/FieldBodyIND;

    invoke-direct {v4, v2, v3}, Lorg/farng/mp3/lyrics3/FieldBodyIND;-><init>(ZZ)V

    invoke-direct {v1, v4}, Lorg/farng/mp3/lyrics3/Lyrics3v2Field;-><init>(Lorg/farng/mp3/lyrics3/AbstractLyrics3v2FieldBody;)V

    .line 355
    .restart local v1       #lyrField:Lorg/farng/mp3/lyrics3/Lyrics3v2Field;
    invoke-virtual {p0, v1}, Lorg/farng/mp3/lyrics3/Lyrics3v2;->setField(Lorg/farng/mp3/lyrics3/Lyrics3v2Field;)V

    .line 357
    .end local v1           #lyrField:Lorg/farng/mp3/lyrics3/Lyrics3v2Field;
    .end local v2           #lyricsPresent:Z
    .end local v3           #timeStampPresent:Z
    :cond_1
    return-void
.end method

.method public write(Ljava/io/RandomAccessFile;)V
    .locals 16
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 379
    const/4 v9, 0x0

    .line 381
    .local v9, offset:I
    const/16 v14, 0xf

    new-array v1, v14, [B

    .line 385
    .local v1, buffer:[B
    new-instance v7, Lorg/farng/mp3/id3/ID3v1;

    invoke-direct {v7}, Lorg/farng/mp3/id3/ID3v1;-><init>()V

    .line 386
    .local v7, id3v1tag:Lorg/farng/mp3/id3/ID3v1;
    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Lorg/farng/mp3/id3/ID3v1;->getID3tag(Ljava/io/RandomAccessFile;)Lorg/farng/mp3/id3/ID3v1;

    move-result-object v7

    .line 387
    invoke-virtual/range {p0 .. p1}, Lorg/farng/mp3/lyrics3/AbstractLyrics3;->delete(Ljava/io/RandomAccessFile;)V

    .line 388
    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 389
    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v3

    .line 390
    .local v3, filePointer:J
    const-string v13, "LYRICSBEGIN"

    .line 391
    .local v13, str:Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v14

    if-ge v5, v14, :cond_0

    .line 392
    invoke-virtual {v13, v5}, Ljava/lang/String;->charAt(I)C

    move-result v14

    int-to-byte v14, v14

    aput-byte v14, v1, v5

    .line 391
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 394
    :cond_0
    const/4 v14, 0x0

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v14, v15}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 397
    const-string v14, "IND"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lorg/farng/mp3/lyrics3/Lyrics3v2;->updateField(Ljava/lang/String;)V

    .line 398
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/farng/mp3/lyrics3/Lyrics3v2;->fieldMap:Ljava/util/Map;

    const-string v15, "IND"

    invoke-interface {v14, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/farng/mp3/lyrics3/Lyrics3v2Field;

    .line 399
    .local v2, field:Lorg/farng/mp3/lyrics3/Lyrics3v2Field;
    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lorg/farng/mp3/lyrics3/Lyrics3v2Field;->write(Ljava/io/RandomAccessFile;)V

    .line 400
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/farng/mp3/lyrics3/Lyrics3v2;->fieldMap:Ljava/util/Map;

    invoke-interface {v14}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 401
    .local v8, iterator:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_2

    .line 402
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .end local v2           #field:Lorg/farng/mp3/lyrics3/Lyrics3v2Field;
    check-cast v2, Lorg/farng/mp3/lyrics3/Lyrics3v2Field;

    .line 403
    .restart local v2       #field:Lorg/farng/mp3/lyrics3/Lyrics3v2Field;
    invoke-virtual {v2}, Lorg/farng/mp3/lyrics3/Lyrics3v2Field;->getIdentifier()Ljava/lang/String;

    move-result-object v6

    .line 404
    .local v6, id:Ljava/lang/String;
    invoke-static {}, Lorg/farng/mp3/TagOptionSingleton;->getInstance()Lorg/farng/mp3/TagOptionSingleton;

    move-result-object v14

    invoke-virtual {v14, v6}, Lorg/farng/mp3/TagOptionSingleton;->getLyrics3SaveField(Ljava/lang/String;)Z

    move-result v10

    .line 405
    .local v10, save:Z
    const-string v14, "IND"

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_1

    if-eqz v10, :cond_1

    .line 406
    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lorg/farng/mp3/lyrics3/Lyrics3v2Field;->write(Ljava/io/RandomAccessFile;)V

    goto :goto_1

    .line 410
    .end local v6           #id:Ljava/lang/String;
    .end local v10           #save:Z
    :cond_2
    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v14

    sub-long v11, v14, v3

    .line 411
    .local v11, size:J
    invoke-static {v11, v12}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v13

    .line 412
    const/4 v5, 0x0

    :goto_2
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v14

    rsub-int/lit8 v14, v14, 0x6

    if-ge v5, v14, :cond_3

    .line 413
    const/16 v14, 0x30

    aput-byte v14, v1, v5

    .line 412
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 415
    :cond_3
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v14

    rsub-int/lit8 v14, v14, 0x6

    add-int/2addr v9, v14

    .line 416
    const/4 v5, 0x0

    :goto_3
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v14

    if-ge v5, v14, :cond_4

    .line 417
    add-int v14, v5, v9

    invoke-virtual {v13, v5}, Ljava/lang/String;->charAt(I)C

    move-result v15

    int-to-byte v15, v15

    aput-byte v15, v1, v14

    .line 416
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 419
    :cond_4
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v14

    add-int/2addr v9, v14

    .line 420
    const-string v13, "LYRICS200"

    .line 421
    const/4 v5, 0x0

    :goto_4
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v14

    if-ge v5, v14, :cond_5

    .line 422
    add-int v14, v5, v9

    invoke-virtual {v13, v5}, Ljava/lang/String;->charAt(I)C

    move-result v15

    int-to-byte v15, v15

    aput-byte v15, v1, v14

    .line 421
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 424
    :cond_5
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v14

    add-int/2addr v9, v14

    .line 425
    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v14, v9}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 426
    if-eqz v7, :cond_6

    .line 427
    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Lorg/farng/mp3/id3/ID3v1;->write(Ljava/io/RandomAccessFile;)V

    .line 429
    :cond_6
    return-void
.end method

.method public write(Lorg/farng/mp3/AbstractMP3Tag;)V
    .locals 5
    .parameter "tag"

    .prologue
    .line 360
    move-object v3, p0

    .line 362
    .local v3, oldTag:Lorg/farng/mp3/lyrics3/Lyrics3v2;
    if-eqz p1, :cond_1

    .line 363
    instance-of v4, p1, Lorg/farng/mp3/lyrics3/Lyrics3v2;

    if-eqz v4, :cond_0

    move-object v2, p1

    .line 364
    check-cast v2, Lorg/farng/mp3/lyrics3/Lyrics3v2;

    .line 368
    .local v2, newTag:Lorg/farng/mp3/lyrics3/Lyrics3v2;
    :goto_0
    iget-object v4, v2, Lorg/farng/mp3/lyrics3/Lyrics3v2;->fieldMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 370
    .local v1, iterator:Ljava/util/Iterator;
    iget-object v4, v3, Lorg/farng/mp3/lyrics3/Lyrics3v2;->fieldMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    .line 371
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 372
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/farng/mp3/lyrics3/Lyrics3v2Field;

    .line 373
    .local v0, field:Lorg/farng/mp3/lyrics3/Lyrics3v2Field;
    invoke-virtual {v3, v0}, Lorg/farng/mp3/lyrics3/Lyrics3v2;->setField(Lorg/farng/mp3/lyrics3/Lyrics3v2Field;)V

    goto :goto_1

    .line 366
    .end local v0           #field:Lorg/farng/mp3/lyrics3/Lyrics3v2Field;
    .end local v1           #iterator:Ljava/util/Iterator;
    .end local v2           #newTag:Lorg/farng/mp3/lyrics3/Lyrics3v2;
    :cond_0
    new-instance v2, Lorg/farng/mp3/lyrics3/Lyrics3v2;

    invoke-direct {v2, p1}, Lorg/farng/mp3/lyrics3/Lyrics3v2;-><init>(Lorg/farng/mp3/AbstractMP3Tag;)V

    .restart local v2       #newTag:Lorg/farng/mp3/lyrics3/Lyrics3v2;
    goto :goto_0

    .line 376
    .end local v2           #newTag:Lorg/farng/mp3/lyrics3/Lyrics3v2;
    :cond_1
    return-void
.end method
