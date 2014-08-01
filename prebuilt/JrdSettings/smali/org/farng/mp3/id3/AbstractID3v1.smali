.class public abstract Lorg/farng/mp3/id3/AbstractID3v1;
.super Lorg/farng/mp3/id3/AbstractID3;
.source "AbstractID3v1.java"


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lorg/farng/mp3/id3/AbstractID3;-><init>()V

    .line 22
    return-void
.end method

.method protected constructor <init>(Lorg/farng/mp3/id3/AbstractID3v1;)V
    .locals 0
    .parameter "copyObject"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lorg/farng/mp3/id3/AbstractID3;-><init>(Lorg/farng/mp3/id3/AbstractID3;)V

    .line 29
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
    .line 34
    :try_start_0
    new-instance v2, Lorg/farng/mp3/id3/ID3v1_1;

    invoke-direct {v2, p1}, Lorg/farng/mp3/id3/ID3v1_1;-><init>(Ljava/io/RandomAccessFile;)V

    .line 35
    .local v2, oldTag:Lorg/farng/mp3/id3/AbstractID3v1;
    invoke-virtual {v2, p0}, Lorg/farng/mp3/id3/ID3v1_1;->append(Lorg/farng/mp3/AbstractMP3Tag;)V

    .line 36
    invoke-virtual {v2, p1}, Lorg/farng/mp3/id3/ID3v1_1;->write(Ljava/io/RandomAccessFile;)V
    :try_end_0
    .catch Lorg/farng/mp3/TagNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    .end local v2           #oldTag:Lorg/farng/mp3/id3/AbstractID3v1;
    :goto_0
    return-void

    .line 37
    :catch_0
    move-exception v0

    .line 39
    .local v0, ex:Lorg/farng/mp3/TagNotFoundException;
    :try_start_1
    new-instance v2, Lorg/farng/mp3/id3/ID3v1;

    invoke-direct {v2, p1}, Lorg/farng/mp3/id3/ID3v1;-><init>(Ljava/io/RandomAccessFile;)V

    .line 40
    .restart local v2       #oldTag:Lorg/farng/mp3/id3/AbstractID3v1;
    invoke-virtual {v2, p0}, Lorg/farng/mp3/id3/ID3v1;->append(Lorg/farng/mp3/AbstractMP3Tag;)V

    .line 41
    invoke-virtual {v2, p1}, Lorg/farng/mp3/id3/ID3v1;->write(Ljava/io/RandomAccessFile;)V
    :try_end_1
    .catch Lorg/farng/mp3/TagNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 42
    .end local v2           #oldTag:Lorg/farng/mp3/id3/AbstractID3v1;
    :catch_1
    move-exception v1

    .line 43
    .local v1, ex2:Lorg/farng/mp3/TagNotFoundException;
    invoke-virtual {p0, p1}, Lorg/farng/mp3/AbstractMP3FileItem;->write(Ljava/io/RandomAccessFile;)V

    goto :goto_0
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
    .line 51
    :try_start_0
    new-instance v2, Lorg/farng/mp3/id3/ID3v1_1;

    invoke-direct {v2, p1}, Lorg/farng/mp3/id3/ID3v1_1;-><init>(Ljava/io/RandomAccessFile;)V

    .line 52
    .local v2, oldTag:Lorg/farng/mp3/id3/AbstractID3v1;
    invoke-virtual {v2, p0}, Lorg/farng/mp3/id3/ID3v1_1;->overwrite(Lorg/farng/mp3/AbstractMP3Tag;)V

    .line 53
    invoke-virtual {v2, p1}, Lorg/farng/mp3/id3/ID3v1_1;->write(Ljava/io/RandomAccessFile;)V
    :try_end_0
    .catch Lorg/farng/mp3/TagNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    .end local v2           #oldTag:Lorg/farng/mp3/id3/AbstractID3v1;
    :goto_0
    return-void

    .line 54
    :catch_0
    move-exception v0

    .line 56
    .local v0, ex:Lorg/farng/mp3/TagNotFoundException;
    :try_start_1
    new-instance v2, Lorg/farng/mp3/id3/ID3v1;

    invoke-direct {v2, p1}, Lorg/farng/mp3/id3/ID3v1;-><init>(Ljava/io/RandomAccessFile;)V

    .line 57
    .restart local v2       #oldTag:Lorg/farng/mp3/id3/AbstractID3v1;
    invoke-virtual {v2, p0}, Lorg/farng/mp3/id3/ID3v1;->overwrite(Lorg/farng/mp3/AbstractMP3Tag;)V

    .line 58
    invoke-virtual {v2, p1}, Lorg/farng/mp3/id3/ID3v1;->write(Ljava/io/RandomAccessFile;)V
    :try_end_1
    .catch Lorg/farng/mp3/TagNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 59
    .end local v2           #oldTag:Lorg/farng/mp3/id3/AbstractID3v1;
    :catch_1
    move-exception v1

    .line 60
    .local v1, ex2:Lorg/farng/mp3/TagNotFoundException;
    invoke-virtual {p0, p1}, Lorg/farng/mp3/AbstractMP3FileItem;->write(Ljava/io/RandomAccessFile;)V

    goto :goto_0
.end method
