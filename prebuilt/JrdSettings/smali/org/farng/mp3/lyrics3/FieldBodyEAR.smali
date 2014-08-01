.class public Lorg/farng/mp3/lyrics3/FieldBodyEAR;
.super Lorg/farng/mp3/lyrics3/AbstractLyrics3v2FieldBody;
.source "FieldBodyEAR.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lorg/farng/mp3/lyrics3/AbstractLyrics3v2FieldBody;-><init>()V

    .line 26
    return-void
.end method

.method public constructor <init>(Ljava/io/RandomAccessFile;)V
    .locals 0
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/farng/mp3/InvalidTagException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 45
    invoke-direct {p0}, Lorg/farng/mp3/lyrics3/AbstractLyrics3v2FieldBody;-><init>()V

    .line 46
    invoke-virtual {p0, p1}, Lorg/farng/mp3/AbstractMP3FragmentBody;->read(Ljava/io/RandomAccessFile;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "artist"

    .prologue
    .line 38
    invoke-direct {p0}, Lorg/farng/mp3/lyrics3/AbstractLyrics3v2FieldBody;-><init>()V

    .line 39
    const-string v0, "Artist"

    invoke-virtual {p0, v0, p1}, Lorg/farng/mp3/AbstractMP3FragmentBody;->setObject(Ljava/lang/String;Ljava/lang/Object;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Lorg/farng/mp3/lyrics3/FieldBodyEAR;)V
    .locals 0
    .parameter "body"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lorg/farng/mp3/lyrics3/AbstractLyrics3v2FieldBody;-><init>(Lorg/farng/mp3/lyrics3/AbstractLyrics3v2FieldBody;)V

    .line 33
    return-void
.end method


# virtual methods
.method public getArtist()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    const-string v0, "Artist"

    invoke-virtual {p0, v0}, Lorg/farng/mp3/AbstractMP3FragmentBody;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    const-string v0, "EAR"

    return-object v0
.end method

.method public setArtist(Ljava/lang/String;)V
    .locals 1
    .parameter "artist"

    .prologue
    .line 50
    const-string v0, "Artist"

    invoke-virtual {p0, v0, p1}, Lorg/farng/mp3/AbstractMP3FragmentBody;->setObject(Ljava/lang/String;Ljava/lang/Object;)V

    .line 51
    return-void
.end method

.method protected setupObjectList()V
    .locals 2

    .prologue
    .line 62
    new-instance v0, Lorg/farng/mp3/object/ObjectStringSizeTerminated;

    const-string v1, "Artist"

    invoke-direct {v0, v1}, Lorg/farng/mp3/object/ObjectStringSizeTerminated;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/farng/mp3/AbstractMP3FragmentBody;->appendToObjectList(Lorg/farng/mp3/object/AbstractMP3Object;)V

    .line 63
    return-void
.end method
