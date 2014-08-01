.class public abstract Lorg/farng/mp3/lyrics3/AbstractLyrics3;
.super Lorg/farng/mp3/AbstractMP3Tag;
.source "AbstractLyrics3.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lorg/farng/mp3/AbstractMP3Tag;-><init>()V

    .line 24
    return-void
.end method

.method public constructor <init>(Lorg/farng/mp3/lyrics3/AbstractLyrics3;)V
    .locals 0
    .parameter "copyObject"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lorg/farng/mp3/AbstractMP3Tag;-><init>(Lorg/farng/mp3/AbstractMP3Tag;)V

    .line 31
    return-void
.end method


# virtual methods
.method public append(Ljava/io/RandomAccessFile;)V
    .locals 3
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/farng/mp3/TagException;
        }
    .end annotation

    .prologue
    .line 36
    :try_start_0
    new-instance v2, Lorg/farng/mp3/lyrics3/Lyrics3v2;

    invoke-direct {v2, p1}, Lorg/farng/mp3/lyrics3/Lyrics3v2;-><init>(Ljava/io/RandomAccessFile;)V

    .line 37
    .local v2, oldTag:Lorg/farng/mp3/lyrics3/AbstractLyrics3;
    invoke-virtual {v2, p0}, Lorg/farng/mp3/lyrics3/Lyrics3v2;->append(Lorg/farng/mp3/AbstractMP3Tag;)V

    .line 38
    invoke-virtual {v2, p1}, Lorg/farng/mp3/lyrics3/Lyrics3v2;->write(Ljava/io/RandomAccessFile;)V
    :try_end_0
    .catch Lorg/farng/mp3/TagNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    .end local v2           #oldTag:Lorg/farng/mp3/lyrics3/AbstractLyrics3;
    :goto_0
    return-void

    .line 39
    :catch_0
    move-exception v0

    .line 41
    .local v0, ex:Lorg/farng/mp3/TagNotFoundException;
    :try_start_1
    new-instance v2, Lorg/farng/mp3/lyrics3/Lyrics3v1;

    invoke-direct {v2, p1}, Lorg/farng/mp3/lyrics3/Lyrics3v1;-><init>(Ljava/io/RandomAccessFile;)V

    .line 42
    .restart local v2       #oldTag:Lorg/farng/mp3/lyrics3/AbstractLyrics3;
    invoke-virtual {v2, p0}, Lorg/farng/mp3/lyrics3/Lyrics3v1;->append(Lorg/farng/mp3/AbstractMP3Tag;)V

    .line 43
    invoke-virtual {v2, p1}, Lorg/farng/mp3/lyrics3/Lyrics3v1;->write(Ljava/io/RandomAccessFile;)V
    :try_end_1
    .catch Lorg/farng/mp3/TagNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 44
    .end local v2           #oldTag:Lorg/farng/mp3/lyrics3/AbstractLyrics3;
    :catch_1
    move-exception v1

    .line 45
    .local v1, ex2:Lorg/farng/mp3/TagNotFoundException;
    invoke-virtual {p0, p1}, Lorg/farng/mp3/AbstractMP3FileItem;->write(Ljava/io/RandomAccessFile;)V

    goto :goto_0
.end method

.method public delete(Ljava/io/RandomAccessFile;)V
    .locals 5
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 52
    new-instance v2, Lorg/farng/mp3/id3/ID3v1;

    invoke-direct {v2}, Lorg/farng/mp3/id3/ID3v1;-><init>()V

    .line 53
    .local v2, id3v1tag:Lorg/farng/mp3/id3/ID3v1;
    invoke-virtual {p0, p1}, Lorg/farng/mp3/AbstractMP3Tag;->seek(Ljava/io/RandomAccessFile;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 54
    invoke-virtual {v2, p1}, Lorg/farng/mp3/id3/ID3v1;->getID3tag(Ljava/io/RandomAccessFile;)Lorg/farng/mp3/id3/ID3v1;

    move-result-object v2

    .line 55
    invoke-virtual {p0, p1}, Lorg/farng/mp3/AbstractMP3Tag;->seek(Ljava/io/RandomAccessFile;)Z

    .line 56
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v0

    .line 59
    .local v0, filePointer:J
    const-wide/16 v3, 0xb

    sub-long/2addr v0, v3

    .line 60
    invoke-virtual {p1, v0, v1}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 61
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 62
    if-eqz v2, :cond_0

    .line 63
    invoke-virtual {v2, p1}, Lorg/farng/mp3/id3/ID3v1;->write(Ljava/io/RandomAccessFile;)V

    .line 66
    .end local v0           #filePointer:J
    :cond_0
    return-void
.end method

.method public overwrite(Ljava/io/RandomAccessFile;)V
    .locals 3
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/farng/mp3/TagException;
        }
    .end annotation

    .prologue
    .line 71
    :try_start_0
    new-instance v2, Lorg/farng/mp3/lyrics3/Lyrics3v2;

    invoke-direct {v2, p1}, Lorg/farng/mp3/lyrics3/Lyrics3v2;-><init>(Ljava/io/RandomAccessFile;)V

    .line 72
    .local v2, oldTag:Lorg/farng/mp3/lyrics3/AbstractLyrics3;
    invoke-virtual {v2, p0}, Lorg/farng/mp3/lyrics3/Lyrics3v2;->overwrite(Lorg/farng/mp3/AbstractMP3Tag;)V

    .line 73
    invoke-virtual {v2, p1}, Lorg/farng/mp3/lyrics3/Lyrics3v2;->write(Ljava/io/RandomAccessFile;)V
    :try_end_0
    .catch Lorg/farng/mp3/TagNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    .end local v2           #oldTag:Lorg/farng/mp3/lyrics3/AbstractLyrics3;
    :goto_0
    return-void

    .line 74
    :catch_0
    move-exception v0

    .line 76
    .local v0, ex:Lorg/farng/mp3/TagNotFoundException;
    :try_start_1
    new-instance v2, Lorg/farng/mp3/lyrics3/Lyrics3v1;

    invoke-direct {v2, p1}, Lorg/farng/mp3/lyrics3/Lyrics3v1;-><init>(Ljava/io/RandomAccessFile;)V

    .line 77
    .restart local v2       #oldTag:Lorg/farng/mp3/lyrics3/AbstractLyrics3;
    invoke-virtual {v2, p0}, Lorg/farng/mp3/lyrics3/Lyrics3v1;->overwrite(Lorg/farng/mp3/AbstractMP3Tag;)V

    .line 78
    invoke-virtual {v2, p1}, Lorg/farng/mp3/lyrics3/Lyrics3v1;->write(Ljava/io/RandomAccessFile;)V
    :try_end_1
    .catch Lorg/farng/mp3/TagNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 79
    .end local v2           #oldTag:Lorg/farng/mp3/lyrics3/AbstractLyrics3;
    :catch_1
    move-exception v1

    .line 80
    .local v1, ex2:Lorg/farng/mp3/TagNotFoundException;
    invoke-virtual {p0, p1}, Lorg/farng/mp3/AbstractMP3FileItem;->write(Ljava/io/RandomAccessFile;)V

    goto :goto_0
.end method
