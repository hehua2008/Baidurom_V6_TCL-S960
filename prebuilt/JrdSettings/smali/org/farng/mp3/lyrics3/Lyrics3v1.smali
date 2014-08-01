.class public Lorg/farng/mp3/lyrics3/Lyrics3v1;
.super Lorg/farng/mp3/lyrics3/AbstractLyrics3;
.source "Lyrics3v1.java"


# instance fields
.field private lyric:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Lorg/farng/mp3/lyrics3/AbstractLyrics3;-><init>()V

    .line 39
    const-string v0, ""

    iput-object v0, p0, Lorg/farng/mp3/lyrics3/Lyrics3v1;->lyric:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/io/RandomAccessFile;)V
    .locals 1
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/farng/mp3/TagNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 78
    invoke-direct {p0}, Lorg/farng/mp3/lyrics3/AbstractLyrics3;-><init>()V

    .line 39
    const-string v0, ""

    iput-object v0, p0, Lorg/farng/mp3/lyrics3/Lyrics3v1;->lyric:Ljava/lang/String;

    .line 79
    invoke-virtual {p0, p1}, Lorg/farng/mp3/lyrics3/Lyrics3v1;->read(Ljava/io/RandomAccessFile;)V

    .line 80
    return-void
.end method

.method public constructor <init>(Lorg/farng/mp3/AbstractMP3Tag;)V
    .locals 4
    .parameter "mp3Tag"

    .prologue
    .line 59
    invoke-direct {p0}, Lorg/farng/mp3/lyrics3/AbstractLyrics3;-><init>()V

    .line 39
    const-string v2, ""

    iput-object v2, p0, Lorg/farng/mp3/lyrics3/Lyrics3v1;->lyric:Ljava/lang/String;

    .line 60
    if-eqz p1, :cond_1

    .line 62
    instance-of v2, p1, Lorg/farng/mp3/lyrics3/Lyrics3v1;

    if-eqz v2, :cond_0

    .line 63
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string v3, "Copy Constructor not called. Please type cast the argument"

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 64
    :cond_0
    instance-of v2, p1, Lorg/farng/mp3/lyrics3/Lyrics3v2;

    if-eqz v2, :cond_2

    move-object v1, p1

    .line 65
    check-cast v1, Lorg/farng/mp3/lyrics3/Lyrics3v2;

    .line 70
    .local v1, lyricTag:Lorg/farng/mp3/lyrics3/Lyrics3v2;
    :goto_0
    const-string v2, "LYR"

    invoke-virtual {v1, v2}, Lorg/farng/mp3/lyrics3/Lyrics3v2;->getField(Ljava/lang/String;)Lorg/farng/mp3/lyrics3/Lyrics3v2Field;

    move-result-object v2

    invoke-virtual {v2}, Lorg/farng/mp3/AbstractMP3Fragment;->getBody()Lorg/farng/mp3/AbstractMP3FragmentBody;

    move-result-object v0

    check-cast v0, Lorg/farng/mp3/lyrics3/FieldBodyLYR;

    .line 71
    .local v0, lyricField:Lorg/farng/mp3/lyrics3/FieldBodyLYR;
    new-instance v2, Ljava/lang/String;

    invoke-virtual {v0}, Lorg/farng/mp3/lyrics3/FieldBodyLYR;->getLyric()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lorg/farng/mp3/lyrics3/Lyrics3v1;->lyric:Ljava/lang/String;

    .line 73
    .end local v0           #lyricField:Lorg/farng/mp3/lyrics3/FieldBodyLYR;
    .end local v1           #lyricTag:Lorg/farng/mp3/lyrics3/Lyrics3v2;
    :cond_1
    return-void

    .line 67
    :cond_2
    new-instance v1, Lorg/farng/mp3/lyrics3/Lyrics3v2;

    invoke-direct {v1, p1}, Lorg/farng/mp3/lyrics3/Lyrics3v2;-><init>(Lorg/farng/mp3/AbstractMP3Tag;)V

    .restart local v1       #lyricTag:Lorg/farng/mp3/lyrics3/Lyrics3v2;
    goto :goto_0
.end method

.method public constructor <init>(Lorg/farng/mp3/lyrics3/Lyrics3v1;)V
    .locals 2
    .parameter "copyObject"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lorg/farng/mp3/lyrics3/AbstractLyrics3;-><init>(Lorg/farng/mp3/lyrics3/AbstractLyrics3;)V

    .line 39
    const-string v0, ""

    iput-object v0, p0, Lorg/farng/mp3/lyrics3/Lyrics3v1;->lyric:Ljava/lang/String;

    .line 53
    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Lorg/farng/mp3/lyrics3/Lyrics3v1;->lyric:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/farng/mp3/lyrics3/Lyrics3v1;->lyric:Ljava/lang/String;

    .line 54
    return-void
.end method


# virtual methods
.method public append(Lorg/farng/mp3/AbstractMP3Tag;)V
    .locals 4
    .parameter "tag"

    .prologue
    .line 106
    move-object v1, p0

    .line 108
    .local v1, oldTag:Lorg/farng/mp3/lyrics3/Lyrics3v1;
    if-eqz p1, :cond_0

    .line 109
    instance-of v2, p1, Lorg/farng/mp3/lyrics3/Lyrics3v1;

    if-eqz v2, :cond_1

    move-object v0, p1

    .line 110
    check-cast v0, Lorg/farng/mp3/lyrics3/Lyrics3v1;

    .line 114
    .local v0, newTag:Lorg/farng/mp3/lyrics3/Lyrics3v1;
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v1, Lorg/farng/mp3/lyrics3/Lyrics3v1;->lyric:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lorg/farng/mp3/lyrics3/Lyrics3v1;->lyric:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/farng/mp3/lyrics3/Lyrics3v1;->lyric:Ljava/lang/String;

    .line 116
    .end local v0           #newTag:Lorg/farng/mp3/lyrics3/Lyrics3v1;
    :cond_0
    return-void

    .line 112
    :cond_1
    new-instance v0, Lorg/farng/mp3/lyrics3/Lyrics3v1;

    invoke-direct {v0}, Lorg/farng/mp3/lyrics3/Lyrics3v1;-><init>()V

    .restart local v0       #newTag:Lorg/farng/mp3/lyrics3/Lyrics3v1;
    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "obj"

    .prologue
    const/4 v1, 0x0

    .line 119
    instance-of v2, p1, Lorg/farng/mp3/lyrics3/Lyrics3v1;

    if-nez v2, :cond_1

    .line 126
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 122
    check-cast v0, Lorg/farng/mp3/lyrics3/Lyrics3v1;

    .line 123
    .local v0, lyrics3v1:Lorg/farng/mp3/lyrics3/Lyrics3v1;
    iget-object v2, p0, Lorg/farng/mp3/lyrics3/Lyrics3v1;->lyric:Ljava/lang/String;

    iget-object v3, v0, Lorg/farng/mp3/lyrics3/Lyrics3v1;->lyric:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 126
    invoke-super {p0, p1}, Lorg/farng/mp3/AbstractMP3Tag;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getAlbumTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 254
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This tag does not contain that information"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAuthorComposer()Ljava/lang/String;
    .locals 2

    .prologue
    .line 278
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This tag does not contain that information"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    const-string v0, "Lyrics3v1.00"

    return-object v0
.end method

.method public getLeadArtist()Ljava/lang/String;
    .locals 2

    .prologue
    .line 250
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This tag does not contain that information"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getLyric()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lorg/farng/mp3/lyrics3/Lyrics3v1;->lyric:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()I
    .locals 2

    .prologue
    .line 95
    const-string v0, "LYRICSBEGIN"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p0, Lorg/farng/mp3/lyrics3/Lyrics3v1;->lyric:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    const-string v1, "LYRICSEND"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getSongComment()Ljava/lang/String;
    .locals 2

    .prologue
    .line 262
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This tag does not contain that information"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSongGenre()Ljava/lang/String;
    .locals 2

    .prologue
    .line 266
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This tag does not contain that information"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSongLyric()Ljava/lang/String;
    .locals 1

    .prologue
    .line 274
    invoke-virtual {p0}, Lorg/farng/mp3/lyrics3/Lyrics3v1;->getLyric()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSongTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 246
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This tag does not contain that information"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getTrackNumberOnAlbum()Ljava/lang/String;
    .locals 2

    .prologue
    .line 270
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This tag does not contain that information"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getYearReleased()Ljava/lang/String;
    .locals 2

    .prologue
    .line 258
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This tag does not contain that information"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isSubsetOf(Ljava/lang/Object;)Z
    .locals 3
    .parameter "object"

    .prologue
    const/4 v0, 0x0

    .line 99
    instance-of v1, p1, Lorg/farng/mp3/lyrics3/Lyrics3v1;

    if-nez v1, :cond_1

    .line 102
    .end local p1
    :cond_0
    :goto_0
    return v0

    .restart local p1
    :cond_1
    check-cast p1, Lorg/farng/mp3/lyrics3/Lyrics3v1;

    .end local p1
    iget-object v1, p1, Lorg/farng/mp3/lyrics3/Lyrics3v1;->lyric:Ljava/lang/String;

    iget-object v2, p0, Lorg/farng/mp3/lyrics3/Lyrics3v1;->lyric:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2

    .prologue
    .line 131
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Method iterator() not yet implemented."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public overwrite(Lorg/farng/mp3/AbstractMP3Tag;)V
    .locals 3
    .parameter "tag"

    .prologue
    .line 135
    move-object v1, p0

    .line 137
    .local v1, oldTag:Lorg/farng/mp3/lyrics3/Lyrics3v1;
    if-eqz p1, :cond_0

    .line 138
    instance-of v2, p1, Lorg/farng/mp3/lyrics3/Lyrics3v1;

    if-eqz v2, :cond_1

    move-object v0, p1

    .line 139
    check-cast v0, Lorg/farng/mp3/lyrics3/Lyrics3v1;

    .line 143
    .local v0, newTag:Lorg/farng/mp3/lyrics3/Lyrics3v1;
    :goto_0
    invoke-static {}, Lorg/farng/mp3/TagOptionSingleton;->getInstance()Lorg/farng/mp3/TagOptionSingleton;

    move-result-object v2

    invoke-virtual {v2}, Lorg/farng/mp3/TagOptionSingleton;->isLyrics3Save()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v0, Lorg/farng/mp3/lyrics3/Lyrics3v1;->lyric:Ljava/lang/String;

    :goto_1
    iput-object v2, p0, Lorg/farng/mp3/lyrics3/Lyrics3v1;->lyric:Ljava/lang/String;

    .line 145
    .end local v0           #newTag:Lorg/farng/mp3/lyrics3/Lyrics3v1;
    :cond_0
    return-void

    .line 141
    :cond_1
    new-instance v0, Lorg/farng/mp3/lyrics3/Lyrics3v1;

    invoke-direct {v0}, Lorg/farng/mp3/lyrics3/Lyrics3v1;-><init>()V

    .restart local v0       #newTag:Lorg/farng/mp3/lyrics3/Lyrics3v1;
    goto :goto_0

    .line 143
    :cond_2
    iget-object v2, v1, Lorg/farng/mp3/lyrics3/Lyrics3v1;->lyric:Ljava/lang/String;

    goto :goto_1
.end method

.method public read(Ljava/io/RandomAccessFile;)V
    .locals 4
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/farng/mp3/TagNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 148
    const/16 v2, 0x1400

    new-array v0, v2, [B

    .line 150
    .local v0, buffer:[B
    invoke-virtual {p0, p1}, Lorg/farng/mp3/lyrics3/Lyrics3v1;->seek(Ljava/io/RandomAccessFile;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 151
    new-instance v2, Lorg/farng/mp3/TagNotFoundException;

    const-string v3, "ID3v1 tag not found"

    invoke-direct {v2, v3}, Lorg/farng/mp3/TagNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 153
    :cond_0
    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->read([B)I

    .line 154
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    .line 155
    .local v1, lyricBuffer:Ljava/lang/String;
    const/4 v2, 0x0

    const-string v3, "LYRICSEND"

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/farng/mp3/lyrics3/Lyrics3v1;->lyric:Ljava/lang/String;

    .line 156
    return-void
.end method

.method public seek(Ljava/io/RandomAccessFile;)Z
    .locals 14
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v12, 0x9

    const/16 v11, 0x9

    const/4 v6, 0x0

    .line 159
    const/16 v7, 0x1400

    new-array v0, v7, [B

    .line 165
    .local v0, buffer:[B
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v7

    const-wide/16 v9, 0x80

    sub-long/2addr v7, v9

    sub-long/2addr v7, v12

    invoke-virtual {p1, v7, v8}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 166
    invoke-virtual {p1, v0, v6, v11}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 167
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0, v6, v11}, Ljava/lang/String;-><init>([BII)V

    .line 168
    .local v2, lyricsEnd:Ljava/lang/String;
    const-string v7, "LYRICSEND"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 169
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v4

    .line 184
    .local v4, offset:J
    :goto_0
    const-wide/16 v7, 0x1400

    sub-long/2addr v4, v7

    .line 185
    invoke-virtual {p1, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 186
    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->read([B)I

    .line 187
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([B)V

    .line 190
    .local v3, lyricsStart:Ljava/lang/String;
    const-string v7, "LYRICSBEGIN"

    invoke-virtual {v3, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 191
    .local v1, i:I
    const/4 v7, -0x1

    if-ne v1, v7, :cond_2

    .line 195
    .end local v1           #i:I
    .end local v3           #lyricsStart:Ljava/lang/String;
    .end local v4           #offset:J
    :cond_0
    :goto_1
    return v6

    .line 173
    :cond_1
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v7

    sub-long/2addr v7, v12

    invoke-virtual {p1, v7, v8}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 174
    invoke-virtual {p1, v0, v6, v11}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 175
    new-instance v2, Ljava/lang/String;

    .end local v2           #lyricsEnd:Ljava/lang/String;
    invoke-direct {v2, v0, v6, v11}, Ljava/lang/String;-><init>([BII)V

    .line 176
    .restart local v2       #lyricsEnd:Ljava/lang/String;
    const-string v7, "LYRICSEND"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 177
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v4

    .restart local v4       #offset:J
    goto :goto_0

    .line 194
    .restart local v1       #i:I
    .restart local v3       #lyricsStart:Ljava/lang/String;
    :cond_2
    int-to-long v6, v1

    add-long/2addr v6, v4

    const-wide/16 v8, 0xb

    add-long/2addr v6, v8

    invoke-virtual {p1, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 195
    const/4 v6, 0x1

    goto :goto_1
.end method

.method public setAlbumTitle(Ljava/lang/String;)V
    .locals 2
    .parameter "albumTitle"

    .prologue
    .line 290
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This tag does not contain that information"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAuthorComposer(Ljava/lang/String;)V
    .locals 2
    .parameter "authorComposer"

    .prologue
    .line 314
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This tag does not contain that information"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setLeadArtist(Ljava/lang/String;)V
    .locals 2
    .parameter "leadArtist"

    .prologue
    .line 286
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This tag does not contain that information"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setLyric(Ljava/lang/String;)V
    .locals 1
    .parameter "lyric"

    .prologue
    .line 87
    const/16 v0, 0x13ec

    invoke-static {p1, v0}, Lorg/farng/mp3/TagUtility;->truncate(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/farng/mp3/lyrics3/Lyrics3v1;->lyric:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public setSongComment(Ljava/lang/String;)V
    .locals 2
    .parameter "songComment"

    .prologue
    .line 298
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This tag does not contain that information"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setSongGenre(Ljava/lang/String;)V
    .locals 2
    .parameter "songGenre"

    .prologue
    .line 302
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This tag does not contain that information"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setSongLyric(Ljava/lang/String;)V
    .locals 1
    .parameter "songLyrics"

    .prologue
    .line 310
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/farng/mp3/lyrics3/Lyrics3v1;->setLyric(Ljava/lang/String;)V

    .line 311
    return-void
.end method

.method public setSongTitle(Ljava/lang/String;)V
    .locals 2
    .parameter "songTitle"

    .prologue
    .line 282
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This tag does not contain that information"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setTrackNumberOnAlbum(Ljava/lang/String;)V
    .locals 2
    .parameter "trackNumberOnAlbum"

    .prologue
    .line 306
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This tag does not contain that information"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setYearReleased(Ljava/lang/String;)V
    .locals 2
    .parameter "yearReleased"

    .prologue
    .line 294
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This tag does not contain that information"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 199
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/farng/mp3/lyrics3/Lyrics3v1;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/farng/mp3/lyrics3/Lyrics3v1;->getSize()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 200
    .local v0, str:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/farng/mp3/lyrics3/Lyrics3v1;->lyric:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public write(Ljava/io/RandomAccessFile;)V
    .locals 7
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 220
    new-instance v5, Lorg/farng/mp3/id3/ID3v1;

    invoke-direct {v5}, Lorg/farng/mp3/id3/ID3v1;-><init>()V

    invoke-virtual {v5, p1}, Lorg/farng/mp3/id3/ID3v1;->getID3tag(Ljava/io/RandomAccessFile;)Lorg/farng/mp3/id3/ID3v1;

    move-result-object v2

    .line 221
    .local v2, id3v1tag:Lorg/farng/mp3/id3/ID3v1;
    invoke-virtual {p0, p1}, Lorg/farng/mp3/lyrics3/AbstractLyrics3;->delete(Ljava/io/RandomAccessFile;)V

    .line 222
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v5

    invoke-virtual {p1, v5, v6}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 223
    iget-object v5, p0, Lorg/farng/mp3/lyrics3/Lyrics3v1;->lyric:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0xb

    add-int/lit8 v5, v5, 0x9

    new-array v0, v5, [B

    .line 224
    .local v0, buffer:[B
    const-string v4, "LYRICSBEGIN"

    .line 225
    .local v4, str:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v1, v5, :cond_0

    .line 226
    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, v0, v1

    .line 225
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 228
    :cond_0
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    .line 229
    .local v3, offset:I
    iget-object v5, p0, Lorg/farng/mp3/lyrics3/Lyrics3v1;->lyric:Ljava/lang/String;

    const/16 v6, 0x13ec

    invoke-static {v5, v6}, Lorg/farng/mp3/TagUtility;->truncate(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 230
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v1, v5, :cond_1

    .line 231
    add-int v5, v1, v3

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    int-to-byte v6, v6

    aput-byte v6, v0, v5

    .line 230
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 233
    :cond_1
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v3, v5

    .line 234
    const-string v4, "LYRICSEND"

    .line 235
    const/4 v1, 0x0

    :goto_2
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v1, v5, :cond_2

    .line 236
    add-int v5, v1, v3

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    int-to-byte v6, v6

    aput-byte v6, v0, v5

    .line 235
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 238
    :cond_2
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v3, v5

    .line 239
    const/4 v5, 0x0

    invoke-virtual {p1, v0, v5, v3}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 240
    if-eqz v2, :cond_3

    .line 241
    invoke-virtual {v2, p1}, Lorg/farng/mp3/id3/ID3v1;->write(Ljava/io/RandomAccessFile;)V

    .line 243
    :cond_3
    return-void
.end method

.method public write(Lorg/farng/mp3/AbstractMP3Tag;)V
    .locals 2
    .parameter "tag"

    .prologue
    .line 205
    if-eqz p1, :cond_0

    .line 206
    instance-of v1, p1, Lorg/farng/mp3/lyrics3/Lyrics3v1;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 207
    check-cast v0, Lorg/farng/mp3/lyrics3/Lyrics3v1;

    .line 211
    .local v0, newTag:Lorg/farng/mp3/lyrics3/Lyrics3v1;
    :goto_0
    iget-object v1, v0, Lorg/farng/mp3/lyrics3/Lyrics3v1;->lyric:Ljava/lang/String;

    iput-object v1, p0, Lorg/farng/mp3/lyrics3/Lyrics3v1;->lyric:Ljava/lang/String;

    .line 213
    .end local v0           #newTag:Lorg/farng/mp3/lyrics3/Lyrics3v1;
    :cond_0
    return-void

    .line 209
    :cond_1
    new-instance v0, Lorg/farng/mp3/lyrics3/Lyrics3v1;

    invoke-direct {v0}, Lorg/farng/mp3/lyrics3/Lyrics3v1;-><init>()V

    .restart local v0       #newTag:Lorg/farng/mp3/lyrics3/Lyrics3v1;
    goto :goto_0
.end method
