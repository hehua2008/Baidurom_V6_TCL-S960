.class public Lorg/farng/mp3/id3/ID3v1;
.super Lorg/farng/mp3/id3/AbstractID3v1;
.source "ID3v1.java"


# instance fields
.field protected album:Ljava/lang/String;

.field protected artist:Ljava/lang/String;

.field protected comment:Ljava/lang/String;

.field protected genre:B

.field protected title:Ljava/lang/String;

.field protected year:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Lorg/farng/mp3/id3/AbstractID3v1;-><init>()V

    .line 45
    const-string v0, ""

    iput-object v0, p0, Lorg/farng/mp3/id3/ID3v1;->album:Ljava/lang/String;

    .line 46
    const-string v0, ""

    iput-object v0, p0, Lorg/farng/mp3/id3/ID3v1;->artist:Ljava/lang/String;

    .line 47
    const-string v0, ""

    iput-object v0, p0, Lorg/farng/mp3/id3/ID3v1;->comment:Ljava/lang/String;

    .line 48
    const-string v0, ""

    iput-object v0, p0, Lorg/farng/mp3/id3/ID3v1;->title:Ljava/lang/String;

    .line 49
    const-string v0, ""

    iput-object v0, p0, Lorg/farng/mp3/id3/ID3v1;->year:Ljava/lang/String;

    .line 50
    const/4 v0, -0x1

    iput-byte v0, p0, Lorg/farng/mp3/id3/ID3v1;->genre:B

    .line 57
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
    .line 98
    invoke-direct {p0}, Lorg/farng/mp3/id3/AbstractID3v1;-><init>()V

    .line 45
    const-string v0, ""

    iput-object v0, p0, Lorg/farng/mp3/id3/ID3v1;->album:Ljava/lang/String;

    .line 46
    const-string v0, ""

    iput-object v0, p0, Lorg/farng/mp3/id3/ID3v1;->artist:Ljava/lang/String;

    .line 47
    const-string v0, ""

    iput-object v0, p0, Lorg/farng/mp3/id3/ID3v1;->comment:Ljava/lang/String;

    .line 48
    const-string v0, ""

    iput-object v0, p0, Lorg/farng/mp3/id3/ID3v1;->title:Ljava/lang/String;

    .line 49
    const-string v0, ""

    iput-object v0, p0, Lorg/farng/mp3/id3/ID3v1;->year:Ljava/lang/String;

    .line 50
    const/4 v0, -0x1

    iput-byte v0, p0, Lorg/farng/mp3/id3/ID3v1;->genre:B

    .line 99
    invoke-virtual {p0, p1}, Lorg/farng/mp3/id3/ID3v1;->read(Ljava/io/RandomAccessFile;)V

    .line 100
    return-void
.end method

.method public constructor <init>(Lorg/farng/mp3/AbstractMP3Tag;)V
    .locals 3
    .parameter "mp3tag"

    .prologue
    .line 75
    invoke-direct {p0}, Lorg/farng/mp3/id3/AbstractID3v1;-><init>()V

    .line 45
    const-string v1, ""

    iput-object v1, p0, Lorg/farng/mp3/id3/ID3v1;->album:Ljava/lang/String;

    .line 46
    const-string v1, ""

    iput-object v1, p0, Lorg/farng/mp3/id3/ID3v1;->artist:Ljava/lang/String;

    .line 47
    const-string v1, ""

    iput-object v1, p0, Lorg/farng/mp3/id3/ID3v1;->comment:Ljava/lang/String;

    .line 48
    const-string v1, ""

    iput-object v1, p0, Lorg/farng/mp3/id3/ID3v1;->title:Ljava/lang/String;

    .line 49
    const-string v1, ""

    iput-object v1, p0, Lorg/farng/mp3/id3/ID3v1;->year:Ljava/lang/String;

    .line 50
    const/4 v1, -0x1

    iput-byte v1, p0, Lorg/farng/mp3/id3/ID3v1;->genre:B

    .line 76
    if-eqz p1, :cond_1

    .line 78
    instance-of v1, p1, Lorg/farng/mp3/id3/ID3v1;

    if-eqz v1, :cond_0

    instance-of v1, p1, Lorg/farng/mp3/id3/ID3v1_1;

    if-nez v1, :cond_0

    .line 79
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Copy Constructor not called. Please type cast the argument"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 81
    :cond_0
    instance-of v1, p1, Lorg/farng/mp3/id3/ID3v1_1;

    if-eqz v1, :cond_2

    move-object v0, p1

    .line 82
    check-cast v0, Lorg/farng/mp3/id3/ID3v1_1;

    .line 86
    .local v0, convertedTag:Lorg/farng/mp3/id3/ID3v1_1;
    :goto_0
    new-instance v1, Ljava/lang/String;

    iget-object v2, v0, Lorg/farng/mp3/id3/ID3v1;->album:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lorg/farng/mp3/id3/ID3v1;->album:Ljava/lang/String;

    .line 87
    new-instance v1, Ljava/lang/String;

    iget-object v2, v0, Lorg/farng/mp3/id3/ID3v1;->artist:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lorg/farng/mp3/id3/ID3v1;->artist:Ljava/lang/String;

    .line 88
    new-instance v1, Ljava/lang/String;

    iget-object v2, v0, Lorg/farng/mp3/id3/ID3v1;->comment:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lorg/farng/mp3/id3/ID3v1;->comment:Ljava/lang/String;

    .line 89
    new-instance v1, Ljava/lang/String;

    iget-object v2, v0, Lorg/farng/mp3/id3/ID3v1;->title:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lorg/farng/mp3/id3/ID3v1;->title:Ljava/lang/String;

    .line 90
    new-instance v1, Ljava/lang/String;

    iget-object v2, v0, Lorg/farng/mp3/id3/ID3v1;->year:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lorg/farng/mp3/id3/ID3v1;->year:Ljava/lang/String;

    .line 91
    iget-byte v1, v0, Lorg/farng/mp3/id3/ID3v1;->genre:B

    iput-byte v1, p0, Lorg/farng/mp3/id3/ID3v1;->genre:B

    .line 93
    .end local v0           #convertedTag:Lorg/farng/mp3/id3/ID3v1_1;
    :cond_1
    return-void

    .line 84
    :cond_2
    new-instance v0, Lorg/farng/mp3/id3/ID3v1_1;

    invoke-direct {v0, p1}, Lorg/farng/mp3/id3/ID3v1_1;-><init>(Lorg/farng/mp3/AbstractMP3Tag;)V

    .restart local v0       #convertedTag:Lorg/farng/mp3/id3/ID3v1_1;
    goto :goto_0
.end method

.method public constructor <init>(Lorg/farng/mp3/id3/ID3v1;)V
    .locals 2
    .parameter "copyObject"

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lorg/farng/mp3/id3/AbstractID3v1;-><init>(Lorg/farng/mp3/id3/AbstractID3v1;)V

    .line 45
    const-string v0, ""

    iput-object v0, p0, Lorg/farng/mp3/id3/ID3v1;->album:Ljava/lang/String;

    .line 46
    const-string v0, ""

    iput-object v0, p0, Lorg/farng/mp3/id3/ID3v1;->artist:Ljava/lang/String;

    .line 47
    const-string v0, ""

    iput-object v0, p0, Lorg/farng/mp3/id3/ID3v1;->comment:Ljava/lang/String;

    .line 48
    const-string v0, ""

    iput-object v0, p0, Lorg/farng/mp3/id3/ID3v1;->title:Ljava/lang/String;

    .line 49
    const-string v0, ""

    iput-object v0, p0, Lorg/farng/mp3/id3/ID3v1;->year:Ljava/lang/String;

    .line 50
    const/4 v0, -0x1

    iput-byte v0, p0, Lorg/farng/mp3/id3/ID3v1;->genre:B

    .line 64
    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Lorg/farng/mp3/id3/ID3v1;->album:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/farng/mp3/id3/ID3v1;->album:Ljava/lang/String;

    .line 65
    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Lorg/farng/mp3/id3/ID3v1;->artist:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/farng/mp3/id3/ID3v1;->artist:Ljava/lang/String;

    .line 66
    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Lorg/farng/mp3/id3/ID3v1;->comment:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/farng/mp3/id3/ID3v1;->comment:Ljava/lang/String;

    .line 67
    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Lorg/farng/mp3/id3/ID3v1;->title:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/farng/mp3/id3/ID3v1;->title:Ljava/lang/String;

    .line 68
    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Lorg/farng/mp3/id3/ID3v1;->year:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/farng/mp3/id3/ID3v1;->year:Ljava/lang/String;

    .line 69
    iget-byte v0, p1, Lorg/farng/mp3/id3/ID3v1;->genre:B

    iput-byte v0, p0, Lorg/farng/mp3/id3/ID3v1;->genre:B

    .line 70
    return-void
.end method


# virtual methods
.method public append(Lorg/farng/mp3/AbstractMP3Tag;)V
    .locals 4
    .parameter "tag"

    .prologue
    const/4 v3, 0x0

    .line 190
    move-object v1, p0

    .line 192
    .local v1, oldTag:Lorg/farng/mp3/id3/ID3v1;
    if-eqz p1, :cond_1

    .line 193
    instance-of v2, p1, Lorg/farng/mp3/id3/ID3v1;

    if-eqz v2, :cond_2

    move-object v0, p1

    .line 194
    check-cast v0, Lorg/farng/mp3/id3/ID3v1;

    .line 198
    .local v0, newTag:Lorg/farng/mp3/id3/ID3v1;
    :goto_0
    instance-of v2, p1, Lorg/farng/mp3/lyrics3/AbstractLyrics3;

    if-eqz v2, :cond_0

    .line 199
    invoke-static {}, Lorg/farng/mp3/TagOptionSingleton;->getInstance()Lorg/farng/mp3/TagOptionSingleton;

    move-result-object v2

    invoke-virtual {v2, v3}, Lorg/farng/mp3/TagOptionSingleton;->setId3v1SaveYear(Z)V

    .line 200
    invoke-static {}, Lorg/farng/mp3/TagOptionSingleton;->getInstance()Lorg/farng/mp3/TagOptionSingleton;

    move-result-object v2

    invoke-virtual {v2, v3}, Lorg/farng/mp3/TagOptionSingleton;->setId3v1SaveComment(Z)V

    .line 202
    :cond_0
    invoke-static {}, Lorg/farng/mp3/TagOptionSingleton;->getInstance()Lorg/farng/mp3/TagOptionSingleton;

    move-result-object v2

    invoke-virtual {v2}, Lorg/farng/mp3/TagOptionSingleton;->isId3v1SaveTitle()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, v1, Lorg/farng/mp3/id3/ID3v1;->title:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, v0, Lorg/farng/mp3/id3/ID3v1;->title:Ljava/lang/String;

    :goto_1
    iput-object v2, v1, Lorg/farng/mp3/id3/ID3v1;->title:Ljava/lang/String;

    .line 205
    invoke-static {}, Lorg/farng/mp3/TagOptionSingleton;->getInstance()Lorg/farng/mp3/TagOptionSingleton;

    move-result-object v2

    invoke-virtual {v2}, Lorg/farng/mp3/TagOptionSingleton;->isId3v1SaveArtist()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, v1, Lorg/farng/mp3/id3/ID3v1;->artist:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, v0, Lorg/farng/mp3/id3/ID3v1;->artist:Ljava/lang/String;

    :goto_2
    iput-object v2, v1, Lorg/farng/mp3/id3/ID3v1;->artist:Ljava/lang/String;

    .line 208
    invoke-static {}, Lorg/farng/mp3/TagOptionSingleton;->getInstance()Lorg/farng/mp3/TagOptionSingleton;

    move-result-object v2

    invoke-virtual {v2}, Lorg/farng/mp3/TagOptionSingleton;->isId3v1SaveAlbum()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, v1, Lorg/farng/mp3/id3/ID3v1;->album:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, v0, Lorg/farng/mp3/id3/ID3v1;->album:Ljava/lang/String;

    :goto_3
    iput-object v2, v1, Lorg/farng/mp3/id3/ID3v1;->album:Ljava/lang/String;

    .line 211
    invoke-static {}, Lorg/farng/mp3/TagOptionSingleton;->getInstance()Lorg/farng/mp3/TagOptionSingleton;

    move-result-object v2

    invoke-virtual {v2}, Lorg/farng/mp3/TagOptionSingleton;->isId3v1SaveYear()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, v1, Lorg/farng/mp3/id3/ID3v1;->year:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, v0, Lorg/farng/mp3/id3/ID3v1;->year:Ljava/lang/String;

    :goto_4
    iput-object v2, v1, Lorg/farng/mp3/id3/ID3v1;->year:Ljava/lang/String;

    .line 214
    invoke-static {}, Lorg/farng/mp3/TagOptionSingleton;->getInstance()Lorg/farng/mp3/TagOptionSingleton;

    move-result-object v2

    invoke-virtual {v2}, Lorg/farng/mp3/TagOptionSingleton;->isId3v1SaveComment()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, v1, Lorg/farng/mp3/id3/ID3v1;->comment:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, v0, Lorg/farng/mp3/id3/ID3v1;->comment:Ljava/lang/String;

    :goto_5
    iput-object v2, v1, Lorg/farng/mp3/id3/ID3v1;->comment:Ljava/lang/String;

    .line 217
    invoke-static {}, Lorg/farng/mp3/TagOptionSingleton;->getInstance()Lorg/farng/mp3/TagOptionSingleton;

    move-result-object v2

    invoke-virtual {v2}, Lorg/farng/mp3/TagOptionSingleton;->isId3v1SaveGenre()Z

    move-result v2

    if-eqz v2, :cond_8

    iget-byte v2, v1, Lorg/farng/mp3/id3/ID3v1;->genre:B

    if-gez v2, :cond_8

    iget-byte v2, v0, Lorg/farng/mp3/id3/ID3v1;->genre:B

    :goto_6
    iput-byte v2, v1, Lorg/farng/mp3/id3/ID3v1;->genre:B

    .line 224
    .end local v0           #newTag:Lorg/farng/mp3/id3/ID3v1;
    :cond_1
    return-void

    .line 196
    :cond_2
    new-instance v0, Lorg/farng/mp3/id3/ID3v1;

    invoke-direct {v0}, Lorg/farng/mp3/id3/ID3v1;-><init>()V

    .restart local v0       #newTag:Lorg/farng/mp3/id3/ID3v1;
    goto/16 :goto_0

    .line 202
    :cond_3
    iget-object v2, v1, Lorg/farng/mp3/id3/ID3v1;->title:Ljava/lang/String;

    goto :goto_1

    .line 205
    :cond_4
    iget-object v2, v1, Lorg/farng/mp3/id3/ID3v1;->artist:Ljava/lang/String;

    goto :goto_2

    .line 208
    :cond_5
    iget-object v2, v1, Lorg/farng/mp3/id3/ID3v1;->album:Ljava/lang/String;

    goto :goto_3

    .line 211
    :cond_6
    iget-object v2, v1, Lorg/farng/mp3/id3/ID3v1;->year:Ljava/lang/String;

    goto :goto_4

    .line 214
    :cond_7
    iget-object v2, v1, Lorg/farng/mp3/id3/ID3v1;->comment:Ljava/lang/String;

    goto :goto_5

    .line 217
    :cond_8
    iget-byte v2, v1, Lorg/farng/mp3/id3/ID3v1;->genre:B

    goto :goto_6
.end method

.method public delete(Ljava/io/RandomAccessFile;)V
    .locals 4
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 227
    invoke-virtual {p0, p1}, Lorg/farng/mp3/id3/ID3v1;->seek(Ljava/io/RandomAccessFile;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 228
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x80

    sub-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 230
    :cond_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "obj"

    .prologue
    const/4 v1, 0x0

    .line 233
    instance-of v2, p1, Lorg/farng/mp3/id3/ID3v1;

    if-nez v2, :cond_1

    .line 255
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 236
    check-cast v0, Lorg/farng/mp3/id3/ID3v1;

    .line 237
    .local v0, id3v1:Lorg/farng/mp3/id3/ID3v1;
    iget-object v2, p0, Lorg/farng/mp3/id3/ID3v1;->album:Ljava/lang/String;

    iget-object v3, v0, Lorg/farng/mp3/id3/ID3v1;->album:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 240
    iget-object v2, p0, Lorg/farng/mp3/id3/ID3v1;->artist:Ljava/lang/String;

    iget-object v3, v0, Lorg/farng/mp3/id3/ID3v1;->artist:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 243
    iget-object v2, p0, Lorg/farng/mp3/id3/ID3v1;->comment:Ljava/lang/String;

    iget-object v3, v0, Lorg/farng/mp3/id3/ID3v1;->comment:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 246
    iget-byte v2, p0, Lorg/farng/mp3/id3/ID3v1;->genre:B

    iget-byte v3, v0, Lorg/farng/mp3/id3/ID3v1;->genre:B

    if-ne v2, v3, :cond_0

    .line 249
    iget-object v2, p0, Lorg/farng/mp3/id3/ID3v1;->title:Ljava/lang/String;

    iget-object v3, v0, Lorg/farng/mp3/id3/ID3v1;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 252
    iget-object v2, p0, Lorg/farng/mp3/id3/ID3v1;->year:Ljava/lang/String;

    iget-object v3, v0, Lorg/farng/mp3/id3/ID3v1;->year:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 255
    invoke-super {p0, p1}, Lorg/farng/mp3/AbstractMP3Tag;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getAlbum()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lorg/farng/mp3/id3/ID3v1;->album:Ljava/lang/String;

    return-object v0
.end method

.method public getAlbumTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 407
    invoke-virtual {p0}, Lorg/farng/mp3/id3/ID3v1;->getAlbum()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getArtist()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lorg/farng/mp3/id3/ID3v1;->artist:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthorComposer()Ljava/lang/String;
    .locals 2

    .prologue
    .line 431
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This tag does not contain that information"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getComment()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lorg/farng/mp3/id3/ID3v1;->comment:Ljava/lang/String;

    return-object v0
.end method

.method public getGenre()B
    .locals 1

    .prologue
    .line 131
    iget-byte v0, p0, Lorg/farng/mp3/id3/ID3v1;->genre:B

    return v0
.end method

.method public getID3tag(Ljava/io/RandomAccessFile;)Lorg/farng/mp3/id3/ID3v1;
    .locals 4
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 135
    new-instance v1, Lorg/farng/mp3/id3/ID3v1_1;

    invoke-direct {v1}, Lorg/farng/mp3/id3/ID3v1_1;-><init>()V

    .line 138
    .local v1, id3v1tag:Lorg/farng/mp3/id3/ID3v1;
    invoke-virtual {v1, p1}, Lorg/farng/mp3/id3/ID3v1_1;->seek(Ljava/io/RandomAccessFile;)Z

    move-result v2

    if-ne v2, v3, :cond_1

    .line 140
    :try_start_0
    invoke-virtual {v1, p1}, Lorg/farng/mp3/id3/ID3v1_1;->read(Ljava/io/RandomAccessFile;)V

    .line 141
    invoke-virtual {v1, p1}, Lorg/farng/mp3/id3/ID3v1;->delete(Ljava/io/RandomAccessFile;)V
    :try_end_0
    .catch Lorg/farng/mp3/TagNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    :goto_0
    if-nez v1, :cond_0

    .line 150
    new-instance v1, Lorg/farng/mp3/id3/ID3v1;

    .end local v1           #id3v1tag:Lorg/farng/mp3/id3/ID3v1;
    invoke-direct {v1}, Lorg/farng/mp3/id3/ID3v1;-><init>()V

    .line 151
    .restart local v1       #id3v1tag:Lorg/farng/mp3/id3/ID3v1;
    invoke-virtual {v1, p1}, Lorg/farng/mp3/id3/ID3v1;->seek(Ljava/io/RandomAccessFile;)Z

    move-result v2

    if-ne v2, v3, :cond_2

    .line 153
    :try_start_1
    invoke-virtual {v1, p1}, Lorg/farng/mp3/id3/ID3v1;->read(Ljava/io/RandomAccessFile;)V

    .line 154
    invoke-virtual {v1, p1}, Lorg/farng/mp3/id3/ID3v1;->delete(Ljava/io/RandomAccessFile;)V
    :try_end_1
    .catch Lorg/farng/mp3/TagNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 162
    :cond_0
    :goto_1
    return-object v1

    .line 142
    :catch_0
    move-exception v0

    .line 143
    .local v0, ex:Lorg/farng/mp3/TagNotFoundException;
    const/4 v1, 0x0

    .line 144
    goto :goto_0

    .line 146
    .end local v0           #ex:Lorg/farng/mp3/TagNotFoundException;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 155
    :catch_1
    move-exception v0

    .line 156
    .restart local v0       #ex:Lorg/farng/mp3/TagNotFoundException;
    const/4 v1, 0x0

    .line 157
    goto :goto_1

    .line 159
    .end local v0           #ex:Lorg/farng/mp3/TagNotFoundException;
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 166
    const-string v0, "ID3v1.00"

    return-object v0
.end method

.method public getLeadArtist()Ljava/lang/String;
    .locals 1

    .prologue
    .line 403
    invoke-virtual {p0}, Lorg/farng/mp3/id3/ID3v1;->getArtist()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 170
    const/16 v0, 0x80

    return v0
.end method

.method public getSongComment()Ljava/lang/String;
    .locals 1

    .prologue
    .line 415
    invoke-virtual {p0}, Lorg/farng/mp3/id3/ID3v1;->getComment()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSongGenre()Ljava/lang/String;
    .locals 1

    .prologue
    .line 419
    invoke-virtual {p0}, Lorg/farng/mp3/id3/ID3v1;->getGenre()B

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSongLyric()Ljava/lang/String;
    .locals 2

    .prologue
    .line 427
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This tag does not contain that information"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSongTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 399
    invoke-virtual {p0}, Lorg/farng/mp3/id3/ID3v1;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lorg/farng/mp3/id3/ID3v1;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getTrackNumberOnAlbum()Ljava/lang/String;
    .locals 2

    .prologue
    .line 423
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This tag does not contain that information"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getYear()Ljava/lang/String;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lorg/farng/mp3/id3/ID3v1;->year:Ljava/lang/String;

    return-object v0
.end method

.method public getYearReleased()Ljava/lang/String;
    .locals 1

    .prologue
    .line 411
    invoke-virtual {p0}, Lorg/farng/mp3/id3/ID3v1;->getYear()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 259
    new-instance v0, Lorg/farng/mp3/id3/ID3v1Iterator;

    invoke-direct {v0, p0}, Lorg/farng/mp3/id3/ID3v1Iterator;-><init>(Lorg/farng/mp3/id3/ID3v1;)V

    return-object v0
.end method

.method public overwrite(Lorg/farng/mp3/AbstractMP3Tag;)V
    .locals 4
    .parameter "tag"

    .prologue
    const/4 v3, 0x0

    .line 263
    move-object v1, p0

    .line 265
    .local v1, oldTag:Lorg/farng/mp3/id3/ID3v1;
    if-eqz p1, :cond_1

    .line 266
    instance-of v2, p1, Lorg/farng/mp3/id3/ID3v1;

    if-eqz v2, :cond_2

    move-object v0, p1

    .line 267
    check-cast v0, Lorg/farng/mp3/id3/ID3v1;

    .line 271
    .local v0, newTag:Lorg/farng/mp3/id3/ID3v1;
    :goto_0
    instance-of v2, p1, Lorg/farng/mp3/lyrics3/AbstractLyrics3;

    if-eqz v2, :cond_0

    .line 272
    invoke-static {}, Lorg/farng/mp3/TagOptionSingleton;->getInstance()Lorg/farng/mp3/TagOptionSingleton;

    move-result-object v2

    invoke-virtual {v2, v3}, Lorg/farng/mp3/TagOptionSingleton;->setId3v1SaveYear(Z)V

    .line 273
    invoke-static {}, Lorg/farng/mp3/TagOptionSingleton;->getInstance()Lorg/farng/mp3/TagOptionSingleton;

    move-result-object v2

    invoke-virtual {v2, v3}, Lorg/farng/mp3/TagOptionSingleton;->setId3v1SaveComment(Z)V

    .line 275
    :cond_0
    invoke-static {}, Lorg/farng/mp3/TagOptionSingleton;->getInstance()Lorg/farng/mp3/TagOptionSingleton;

    move-result-object v2

    invoke-virtual {v2}, Lorg/farng/mp3/TagOptionSingleton;->isId3v1SaveTitle()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, v0, Lorg/farng/mp3/id3/ID3v1;->title:Ljava/lang/String;

    :goto_1
    iput-object v2, v1, Lorg/farng/mp3/id3/ID3v1;->title:Ljava/lang/String;

    .line 276
    invoke-static {}, Lorg/farng/mp3/TagOptionSingleton;->getInstance()Lorg/farng/mp3/TagOptionSingleton;

    move-result-object v2

    invoke-virtual {v2}, Lorg/farng/mp3/TagOptionSingleton;->isId3v1SaveArtist()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, v0, Lorg/farng/mp3/id3/ID3v1;->artist:Ljava/lang/String;

    :goto_2
    iput-object v2, v1, Lorg/farng/mp3/id3/ID3v1;->artist:Ljava/lang/String;

    .line 277
    invoke-static {}, Lorg/farng/mp3/TagOptionSingleton;->getInstance()Lorg/farng/mp3/TagOptionSingleton;

    move-result-object v2

    invoke-virtual {v2}, Lorg/farng/mp3/TagOptionSingleton;->isId3v1SaveAlbum()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, v0, Lorg/farng/mp3/id3/ID3v1;->album:Ljava/lang/String;

    :goto_3
    iput-object v2, v1, Lorg/farng/mp3/id3/ID3v1;->album:Ljava/lang/String;

    .line 278
    invoke-static {}, Lorg/farng/mp3/TagOptionSingleton;->getInstance()Lorg/farng/mp3/TagOptionSingleton;

    move-result-object v2

    invoke-virtual {v2}, Lorg/farng/mp3/TagOptionSingleton;->isId3v1SaveYear()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, v0, Lorg/farng/mp3/id3/ID3v1;->year:Ljava/lang/String;

    :goto_4
    iput-object v2, v1, Lorg/farng/mp3/id3/ID3v1;->year:Ljava/lang/String;

    .line 279
    invoke-static {}, Lorg/farng/mp3/TagOptionSingleton;->getInstance()Lorg/farng/mp3/TagOptionSingleton;

    move-result-object v2

    invoke-virtual {v2}, Lorg/farng/mp3/TagOptionSingleton;->isId3v1SaveComment()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, v0, Lorg/farng/mp3/id3/ID3v1;->comment:Ljava/lang/String;

    :goto_5
    iput-object v2, v1, Lorg/farng/mp3/id3/ID3v1;->comment:Ljava/lang/String;

    .line 280
    invoke-static {}, Lorg/farng/mp3/TagOptionSingleton;->getInstance()Lorg/farng/mp3/TagOptionSingleton;

    move-result-object v2

    invoke-virtual {v2}, Lorg/farng/mp3/TagOptionSingleton;->isId3v1SaveGenre()Z

    move-result v2

    if-eqz v2, :cond_8

    iget-byte v2, v0, Lorg/farng/mp3/id3/ID3v1;->genre:B

    :goto_6
    iput-byte v2, v1, Lorg/farng/mp3/id3/ID3v1;->genre:B

    .line 285
    .end local v0           #newTag:Lorg/farng/mp3/id3/ID3v1;
    :cond_1
    return-void

    .line 269
    :cond_2
    new-instance v0, Lorg/farng/mp3/id3/ID3v1;

    invoke-direct {v0}, Lorg/farng/mp3/id3/ID3v1;-><init>()V

    .restart local v0       #newTag:Lorg/farng/mp3/id3/ID3v1;
    goto :goto_0

    .line 275
    :cond_3
    iget-object v2, v1, Lorg/farng/mp3/id3/ID3v1;->artist:Ljava/lang/String;

    goto :goto_1

    .line 276
    :cond_4
    iget-object v2, v1, Lorg/farng/mp3/id3/ID3v1;->artist:Ljava/lang/String;

    goto :goto_2

    .line 277
    :cond_5
    iget-object v2, v1, Lorg/farng/mp3/id3/ID3v1;->album:Ljava/lang/String;

    goto :goto_3

    .line 278
    :cond_6
    iget-object v2, v1, Lorg/farng/mp3/id3/ID3v1;->year:Ljava/lang/String;

    goto :goto_4

    .line 279
    :cond_7
    iget-object v2, v1, Lorg/farng/mp3/id3/ID3v1;->comment:Ljava/lang/String;

    goto :goto_5

    .line 280
    :cond_8
    iget-byte v2, v1, Lorg/farng/mp3/id3/ID3v1;->genre:B

    goto :goto_6
.end method

.method public read(Ljava/io/RandomAccessFile;)V
    .locals 6
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/farng/mp3/TagNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x4

    const/16 v4, 0x1e

    const/4 v3, 0x0

    .line 288
    new-array v0, v4, [B

    .line 289
    .local v0, buffer:[B
    invoke-virtual {p0, p1}, Lorg/farng/mp3/id3/ID3v1;->seek(Ljava/io/RandomAccessFile;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 290
    new-instance v1, Lorg/farng/mp3/TagNotFoundException;

    const-string v2, "ID3v1 tag not found"

    invoke-direct {v1, v2}, Lorg/farng/mp3/TagNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 292
    :cond_0
    invoke-virtual {p1, v0, v3, v4}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 293
    new-instance v1, Ljava/lang/String;

    const-string v2, "ISO-8859-1"

    invoke-direct {v1, v0, v3, v4, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/farng/mp3/id3/ID3v1;->title:Ljava/lang/String;

    .line 294
    invoke-virtual {p1, v0, v3, v4}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 295
    new-instance v1, Ljava/lang/String;

    const-string v2, "ISO-8859-1"

    invoke-direct {v1, v0, v3, v4, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/farng/mp3/id3/ID3v1;->artist:Ljava/lang/String;

    .line 296
    invoke-virtual {p1, v0, v3, v4}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 297
    new-instance v1, Ljava/lang/String;

    const-string v2, "ISO-8859-1"

    invoke-direct {v1, v0, v3, v4, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/farng/mp3/id3/ID3v1;->album:Ljava/lang/String;

    .line 298
    invoke-virtual {p1, v0, v3, v5}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 299
    new-instance v1, Ljava/lang/String;

    const-string v2, "ISO-8859-1"

    invoke-direct {v1, v0, v3, v5, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/farng/mp3/id3/ID3v1;->year:Ljava/lang/String;

    .line 300
    invoke-virtual {p1, v0, v3, v4}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 301
    new-instance v1, Ljava/lang/String;

    const-string v2, "ISO-8859-1"

    invoke-direct {v1, v0, v3, v4, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/farng/mp3/id3/ID3v1;->comment:Ljava/lang/String;

    .line 302
    const/4 v1, 0x1

    invoke-virtual {p1, v0, v3, v1}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 303
    aget-byte v1, v0, v3

    iput-byte v1, p0, Lorg/farng/mp3/id3/ID3v1;->genre:B

    .line 304
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
    const/4 v7, 0x0

    const/4 v6, 0x3

    .line 307
    new-array v0, v6, [B

    .line 310
    .local v0, buffer:[B
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x80

    sub-long/2addr v2, v4

    invoke-virtual {p1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 313
    invoke-virtual {p1, v0, v7, v6}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 314
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0, v7, v6}, Ljava/lang/String;-><init>([BII)V

    .line 315
    .local v1, tag:Ljava/lang/String;
    const-string v2, "TAG"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method

.method public setAlbum(Ljava/lang/String;)V
    .locals 1
    .parameter "album"

    .prologue
    .line 103
    const/16 v0, 0x1e

    invoke-static {p1, v0}, Lorg/farng/mp3/TagUtility;->truncate(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/farng/mp3/id3/ID3v1;->album:Ljava/lang/String;

    .line 104
    return-void
.end method

.method public setAlbumTitle(Ljava/lang/String;)V
    .locals 1
    .parameter "albumTitle"

    .prologue
    .line 443
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/farng/mp3/id3/ID3v1;->setAlbum(Ljava/lang/String;)V

    .line 444
    return-void
.end method

.method public setArtist(Ljava/lang/String;)V
    .locals 1
    .parameter "artist"

    .prologue
    .line 111
    const/16 v0, 0x1e

    invoke-static {p1, v0}, Lorg/farng/mp3/TagUtility;->truncate(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/farng/mp3/id3/ID3v1;->artist:Ljava/lang/String;

    .line 112
    return-void
.end method

.method public setAuthorComposer(Ljava/lang/String;)V
    .locals 2
    .parameter "authorComposer"

    .prologue
    .line 467
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This tag does not contain that information"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setComment(Ljava/lang/String;)V
    .locals 1
    .parameter "comment"

    .prologue
    .line 119
    const/16 v0, 0x1e

    invoke-static {p1, v0}, Lorg/farng/mp3/TagUtility;->truncate(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/farng/mp3/id3/ID3v1;->comment:Ljava/lang/String;

    .line 120
    return-void
.end method

.method public setGenre(B)V
    .locals 0
    .parameter "genre"

    .prologue
    .line 127
    iput-byte p1, p0, Lorg/farng/mp3/id3/ID3v1;->genre:B

    .line 128
    return-void
.end method

.method public setLeadArtist(Ljava/lang/String;)V
    .locals 1
    .parameter "leadArtist"

    .prologue
    .line 439
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/farng/mp3/id3/ID3v1;->setArtist(Ljava/lang/String;)V

    .line 440
    return-void
.end method

.method public setSongComment(Ljava/lang/String;)V
    .locals 1
    .parameter "songComment"

    .prologue
    .line 451
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/farng/mp3/id3/ID3v1;->setComment(Ljava/lang/String;)V

    .line 452
    return-void
.end method

.method public setSongGenre(Ljava/lang/String;)V
    .locals 1
    .parameter "songGenre"

    .prologue
    .line 455
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v0

    invoke-virtual {p0, v0}, Lorg/farng/mp3/id3/ID3v1;->setGenre(B)V

    .line 456
    return-void
.end method

.method public setSongLyric(Ljava/lang/String;)V
    .locals 2
    .parameter "songLyrics"

    .prologue
    .line 463
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This tag does not contain that information"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setSongTitle(Ljava/lang/String;)V
    .locals 1
    .parameter "songTitle"

    .prologue
    .line 435
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/farng/mp3/id3/ID3v1;->setTitle(Ljava/lang/String;)V

    .line 436
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1
    .parameter "title"

    .prologue
    .line 174
    const/16 v0, 0x1e

    invoke-static {p1, v0}, Lorg/farng/mp3/TagUtility;->truncate(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/farng/mp3/id3/ID3v1;->title:Ljava/lang/String;

    .line 175
    return-void
.end method

.method public setTrackNumberOnAlbum(Ljava/lang/String;)V
    .locals 2
    .parameter "trackNumberOnAlbum"

    .prologue
    .line 459
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This tag does not contain that information"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setYear(Ljava/lang/String;)V
    .locals 1
    .parameter "year"

    .prologue
    .line 182
    const/4 v0, 0x4

    invoke-static {p1, v0}, Lorg/farng/mp3/TagUtility;->truncate(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/farng/mp3/id3/ID3v1;->year:Ljava/lang/String;

    .line 183
    return-void
.end method

.method public setYearReleased(Ljava/lang/String;)V
    .locals 1
    .parameter "yearReleased"

    .prologue
    .line 447
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/farng/mp3/id3/ID3v1;->setYear(Ljava/lang/String;)V

    .line 448
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 319
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/farng/mp3/id3/ID3v1;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/farng/mp3/id3/ID3v1;->getSize()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 320
    .local v0, str:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Title = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/farng/mp3/id3/ID3v1;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 321
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Artist = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/farng/mp3/id3/ID3v1;->artist:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 322
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Album = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/farng/mp3/id3/ID3v1;->album:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 323
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Comment = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/farng/mp3/id3/ID3v1;->comment:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 324
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Year = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/farng/mp3/id3/ID3v1;->year:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 325
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Genre = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Lorg/farng/mp3/id3/ID3v1;->genre:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 326
    return-object v0
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
    const/16 v6, 0x1e

    .line 348
    const/16 v4, 0x80

    new-array v0, v4, [B

    .line 350
    .local v0, buffer:[B
    const/4 v2, 0x3

    .line 352
    .local v2, offset:I
    invoke-virtual {p0, p1}, Lorg/farng/mp3/id3/ID3v1;->delete(Ljava/io/RandomAccessFile;)V

    .line 353
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 354
    const/4 v4, 0x0

    const/16 v5, 0x54

    aput-byte v5, v0, v4

    .line 355
    const/4 v4, 0x1

    const/16 v5, 0x41

    aput-byte v5, v0, v4

    .line 356
    const/4 v4, 0x2

    const/16 v5, 0x47

    aput-byte v5, v0, v4

    .line 357
    invoke-static {}, Lorg/farng/mp3/TagOptionSingleton;->getInstance()Lorg/farng/mp3/TagOptionSingleton;

    move-result-object v4

    invoke-virtual {v4}, Lorg/farng/mp3/TagOptionSingleton;->isId3v1SaveTitle()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 358
    iget-object v4, p0, Lorg/farng/mp3/id3/ID3v1;->title:Ljava/lang/String;

    invoke-static {v4, v6}, Lorg/farng/mp3/TagUtility;->truncate(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 359
    .local v3, str:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 360
    add-int v4, v1, v2

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    .line 359
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 363
    .end local v1           #i:I
    .end local v3           #str:Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1e

    .line 364
    invoke-static {}, Lorg/farng/mp3/TagOptionSingleton;->getInstance()Lorg/farng/mp3/TagOptionSingleton;

    move-result-object v4

    invoke-virtual {v4}, Lorg/farng/mp3/TagOptionSingleton;->isId3v1SaveArtist()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 365
    iget-object v4, p0, Lorg/farng/mp3/id3/ID3v1;->artist:Ljava/lang/String;

    invoke-static {v4, v6}, Lorg/farng/mp3/TagUtility;->truncate(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 366
    .restart local v3       #str:Ljava/lang/String;
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 367
    add-int/lit8 v4, v1, 0x21

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    .line 366
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 370
    .end local v1           #i:I
    .end local v3           #str:Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v2, 0x1e

    .line 371
    invoke-static {}, Lorg/farng/mp3/TagOptionSingleton;->getInstance()Lorg/farng/mp3/TagOptionSingleton;

    move-result-object v4

    invoke-virtual {v4}, Lorg/farng/mp3/TagOptionSingleton;->isId3v1SaveAlbum()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 372
    iget-object v4, p0, Lorg/farng/mp3/id3/ID3v1;->album:Ljava/lang/String;

    invoke-static {v4, v6}, Lorg/farng/mp3/TagUtility;->truncate(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 373
    .restart local v3       #str:Ljava/lang/String;
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_2
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 374
    add-int/lit8 v4, v1, 0x3f

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    .line 373
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 377
    .end local v1           #i:I
    .end local v3           #str:Ljava/lang/String;
    :cond_2
    add-int/lit8 v2, v2, 0x1e

    .line 378
    invoke-static {}, Lorg/farng/mp3/TagOptionSingleton;->getInstance()Lorg/farng/mp3/TagOptionSingleton;

    move-result-object v4

    invoke-virtual {v4}, Lorg/farng/mp3/TagOptionSingleton;->isId3v1SaveYear()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 379
    iget-object v4, p0, Lorg/farng/mp3/id3/ID3v1;->year:Ljava/lang/String;

    const/4 v5, 0x4

    invoke-static {v4, v5}, Lorg/farng/mp3/TagUtility;->truncate(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 380
    .restart local v3       #str:Ljava/lang/String;
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_3
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_3

    .line 381
    add-int/lit8 v4, v1, 0x5d

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    .line 380
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 384
    .end local v1           #i:I
    .end local v3           #str:Ljava/lang/String;
    :cond_3
    add-int/lit8 v2, v2, 0x4

    .line 385
    invoke-static {}, Lorg/farng/mp3/TagOptionSingleton;->getInstance()Lorg/farng/mp3/TagOptionSingleton;

    move-result-object v4

    invoke-virtual {v4}, Lorg/farng/mp3/TagOptionSingleton;->isId3v1SaveComment()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 386
    iget-object v4, p0, Lorg/farng/mp3/id3/ID3v1;->comment:Ljava/lang/String;

    invoke-static {v4, v6}, Lorg/farng/mp3/TagUtility;->truncate(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 387
    .restart local v3       #str:Ljava/lang/String;
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_4
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_4

    .line 388
    add-int/lit8 v4, v1, 0x61

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    .line 387
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 391
    .end local v1           #i:I
    .end local v3           #str:Ljava/lang/String;
    :cond_4
    add-int/lit8 v2, v2, 0x1e

    .line 392
    invoke-static {}, Lorg/farng/mp3/TagOptionSingleton;->getInstance()Lorg/farng/mp3/TagOptionSingleton;

    move-result-object v4

    invoke-virtual {v4}, Lorg/farng/mp3/TagOptionSingleton;->isId3v1SaveGenre()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 393
    iget-byte v4, p0, Lorg/farng/mp3/id3/ID3v1;->genre:B

    aput-byte v4, v0, v2

    .line 395
    :cond_5
    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->write([B)V

    .line 396
    return-void
.end method

.method public write(Lorg/farng/mp3/AbstractMP3Tag;)V
    .locals 3
    .parameter "tag"

    .prologue
    .line 330
    move-object v1, p0

    .line 332
    .local v1, oldTag:Lorg/farng/mp3/id3/ID3v1;
    if-eqz p1, :cond_0

    .line 333
    instance-of v2, p1, Lorg/farng/mp3/id3/ID3v1;

    if-eqz v2, :cond_1

    move-object v0, p1

    .line 334
    check-cast v0, Lorg/farng/mp3/id3/ID3v1;

    .line 338
    .local v0, newTag:Lorg/farng/mp3/id3/ID3v1;
    :goto_0
    iget-object v2, v0, Lorg/farng/mp3/id3/ID3v1;->title:Ljava/lang/String;

    iput-object v2, v1, Lorg/farng/mp3/id3/ID3v1;->title:Ljava/lang/String;

    .line 339
    iget-object v2, v0, Lorg/farng/mp3/id3/ID3v1;->artist:Ljava/lang/String;

    iput-object v2, v1, Lorg/farng/mp3/id3/ID3v1;->artist:Ljava/lang/String;

    .line 340
    iget-object v2, v0, Lorg/farng/mp3/id3/ID3v1;->album:Ljava/lang/String;

    iput-object v2, v1, Lorg/farng/mp3/id3/ID3v1;->album:Ljava/lang/String;

    .line 341
    iget-object v2, v0, Lorg/farng/mp3/id3/ID3v1;->year:Ljava/lang/String;

    iput-object v2, v1, Lorg/farng/mp3/id3/ID3v1;->year:Ljava/lang/String;

    .line 342
    iget-object v2, v0, Lorg/farng/mp3/id3/ID3v1;->comment:Ljava/lang/String;

    iput-object v2, v1, Lorg/farng/mp3/id3/ID3v1;->comment:Ljava/lang/String;

    .line 343
    iget-byte v2, v0, Lorg/farng/mp3/id3/ID3v1;->genre:B

    iput-byte v2, v1, Lorg/farng/mp3/id3/ID3v1;->genre:B

    .line 345
    .end local v0           #newTag:Lorg/farng/mp3/id3/ID3v1;
    :cond_0
    return-void

    .line 336
    :cond_1
    new-instance v0, Lorg/farng/mp3/id3/ID3v1_1;

    invoke-direct {v0, p1}, Lorg/farng/mp3/id3/ID3v1_1;-><init>(Lorg/farng/mp3/AbstractMP3Tag;)V

    .restart local v0       #newTag:Lorg/farng/mp3/id3/ID3v1;
    goto :goto_0
.end method
