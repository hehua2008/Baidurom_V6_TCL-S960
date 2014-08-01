.class public abstract Lorg/farng/mp3/AbstractMP3Tag;
.super Lorg/farng/mp3/AbstractMP3FileItem;
.source "AbstractMP3Tag.java"


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 129
    invoke-direct {p0}, Lorg/farng/mp3/AbstractMP3FileItem;-><init>()V

    .line 130
    return-void
.end method

.method protected constructor <init>(Lorg/farng/mp3/AbstractMP3Tag;)V
    .locals 0
    .parameter "copyObject"

    .prologue
    .line 136
    invoke-direct {p0, p1}, Lorg/farng/mp3/AbstractMP3FileItem;-><init>(Lorg/farng/mp3/AbstractMP3FileItem;)V

    .line 137
    return-void
.end method


# virtual methods
.method public abstract append(Ljava/io/RandomAccessFile;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/farng/mp3/TagException;
        }
    .end annotation
.end method

.method public abstract append(Lorg/farng/mp3/AbstractMP3Tag;)V
.end method

.method public abstract delete(Ljava/io/RandomAccessFile;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .parameter "obj"

    .prologue
    .line 224
    instance-of v0, p1, Lorg/farng/mp3/AbstractMP3Tag;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lorg/farng/mp3/AbstractMP3FileItem;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract getAlbumTitle()Ljava/lang/String;
.end method

.method public abstract getAuthorComposer()Ljava/lang/String;
.end method

.method public abstract getLeadArtist()Ljava/lang/String;
.end method

.method public abstract getSongComment()Ljava/lang/String;
.end method

.method public abstract getSongGenre()Ljava/lang/String;
.end method

.method public abstract getSongLyric()Ljava/lang/String;
.end method

.method public abstract getSongTitle()Ljava/lang/String;
.end method

.method public abstract getTrackNumberOnAlbum()Ljava/lang/String;
.end method

.method public abstract getYearReleased()Ljava/lang/String;
.end method

.method public isSubsetOf(Lorg/farng/mp3/AbstractMP3Tag;)Z
    .locals 8
    .parameter "abstractMP3Tag"

    .prologue
    const/4 v6, 0x0

    .line 195
    new-instance v2, Lorg/farng/mp3/id3/ID3v2_4;

    invoke-direct {v2, p0}, Lorg/farng/mp3/id3/ID3v2_4;-><init>(Lorg/farng/mp3/AbstractMP3Tag;)V

    .line 196
    .local v2, subset:Lorg/farng/mp3/id3/AbstractID3v2;
    new-instance v4, Lorg/farng/mp3/id3/ID3v2_4;

    invoke-direct {v4, p1}, Lorg/farng/mp3/id3/ID3v2_4;-><init>(Lorg/farng/mp3/AbstractMP3Tag;)V

    .line 197
    .local v4, superset:Lorg/farng/mp3/id3/AbstractID3v2;
    invoke-virtual {v2}, Lorg/farng/mp3/id3/AbstractID3v2;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 198
    .local v1, iterator:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 199
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/farng/mp3/id3/AbstractID3v2Frame;

    .line 200
    .local v3, subsetFrame:Lorg/farng/mp3/id3/AbstractID3v2Frame;
    invoke-virtual {v3}, Lorg/farng/mp3/id3/AbstractID3v2Frame;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    .line 201
    .local v0, identifier:Ljava/lang/String;
    invoke-virtual {v4, v0}, Lorg/farng/mp3/id3/AbstractID3v2;->getFrame(Ljava/lang/String;)Lorg/farng/mp3/id3/AbstractID3v2Frame;

    move-result-object v5

    .line 202
    .local v5, supersetFrame:Lorg/farng/mp3/id3/AbstractID3v2Frame;
    if-nez v5, :cond_1

    .line 209
    .end local v0           #identifier:Ljava/lang/String;
    .end local v3           #subsetFrame:Lorg/farng/mp3/id3/AbstractID3v2Frame;
    .end local v5           #supersetFrame:Lorg/farng/mp3/id3/AbstractID3v2Frame;
    :goto_0
    return v6

    .line 205
    .restart local v0       #identifier:Ljava/lang/String;
    .restart local v3       #subsetFrame:Lorg/farng/mp3/id3/AbstractID3v2Frame;
    .restart local v5       #supersetFrame:Lorg/farng/mp3/id3/AbstractID3v2Frame;
    :cond_1
    invoke-virtual {v3, v5}, Lorg/farng/mp3/AbstractMP3Fragment;->isSubsetOf(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    goto :goto_0

    .line 209
    .end local v0           #identifier:Ljava/lang/String;
    .end local v3           #subsetFrame:Lorg/farng/mp3/id3/AbstractID3v2Frame;
    .end local v5           #supersetFrame:Lorg/farng/mp3/id3/AbstractID3v2Frame;
    :cond_2
    const/4 v6, 0x1

    goto :goto_0
.end method

.method public abstract iterator()Ljava/util/Iterator;
.end method

.method public abstract overwrite(Ljava/io/RandomAccessFile;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/farng/mp3/TagException;
        }
    .end annotation
.end method

.method public abstract overwrite(Lorg/farng/mp3/AbstractMP3Tag;)V
.end method

.method public abstract seek(Ljava/io/RandomAccessFile;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract setAlbumTitle(Ljava/lang/String;)V
.end method

.method public abstract setAuthorComposer(Ljava/lang/String;)V
.end method

.method public abstract setLeadArtist(Ljava/lang/String;)V
.end method

.method public abstract setSongComment(Ljava/lang/String;)V
.end method

.method public abstract setSongGenre(Ljava/lang/String;)V
.end method

.method public abstract setSongLyric(Ljava/lang/String;)V
.end method

.method public abstract setSongTitle(Ljava/lang/String;)V
.end method

.method public abstract setTrackNumberOnAlbum(Ljava/lang/String;)V
.end method

.method public abstract setYearReleased(Ljava/lang/String;)V
.end method

.method public abstract write(Lorg/farng/mp3/AbstractMP3Tag;)V
.end method
