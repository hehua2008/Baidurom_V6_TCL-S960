.class public Lorg/farng/mp3/id3/FrameBodyENCR;
.super Lorg/farng/mp3/id3/AbstractID3v2FrameBody;
.source "FrameBodyENCR.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lorg/farng/mp3/id3/AbstractID3v2FrameBody;-><init>()V

    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/io/RandomAccessFile;)V
    .locals 0
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/farng/mp3/InvalidTagException;
        }
    .end annotation

    .prologue
    .line 67
    invoke-direct {p0}, Lorg/farng/mp3/id3/AbstractID3v2FrameBody;-><init>()V

    .line 68
    invoke-virtual {p0, p1}, Lorg/farng/mp3/AbstractMP3FragmentBody;->read(Ljava/io/RandomAccessFile;)V

    .line 69
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;B[B)V
    .locals 2
    .parameter "owner"
    .parameter "methodSymbol"
    .parameter "data"

    .prologue
    .line 58
    invoke-direct {p0}, Lorg/farng/mp3/id3/AbstractID3v2FrameBody;-><init>()V

    .line 59
    const-string v0, "Owner"

    invoke-virtual {p0, v0, p1}, Lorg/farng/mp3/AbstractMP3FragmentBody;->setObject(Ljava/lang/String;Ljava/lang/Object;)V

    .line 60
    const-string v0, "Method Symbol"

    new-instance v1, Ljava/lang/Byte;

    invoke-direct {v1, p2}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {p0, v0, v1}, Lorg/farng/mp3/AbstractMP3FragmentBody;->setObject(Ljava/lang/String;Ljava/lang/Object;)V

    .line 61
    const-string v0, "Encryption Data"

    invoke-virtual {p0, v0, p3}, Lorg/farng/mp3/AbstractMP3FragmentBody;->setObject(Ljava/lang/String;Ljava/lang/Object;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Lorg/farng/mp3/id3/FrameBodyENCR;)V
    .locals 0
    .parameter "body"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lorg/farng/mp3/id3/AbstractID3v2FrameBody;-><init>(Lorg/farng/mp3/id3/AbstractID3v2FrameBody;)V

    .line 53
    return-void
.end method


# virtual methods
.method public getIdentifier()Ljava/lang/String;
    .locals 2

    .prologue
    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ENCR\u0000"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/farng/mp3/id3/FrameBodyENCR;->getOwner()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOwner()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    const-string v0, "Owner"

    invoke-virtual {p0, v0}, Lorg/farng/mp3/AbstractMP3FragmentBody;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public setOwner(Ljava/lang/String;)V
    .locals 1
    .parameter "owner"

    .prologue
    .line 76
    const-string v0, "Owner"

    invoke-virtual {p0, v0, p1}, Lorg/farng/mp3/AbstractMP3FragmentBody;->setObject(Ljava/lang/String;Ljava/lang/Object;)V

    .line 77
    return-void
.end method

.method protected setupObjectList()V
    .locals 3

    .prologue
    .line 84
    new-instance v0, Lorg/farng/mp3/object/ObjectStringNullTerminated;

    const-string v1, "Owner"

    invoke-direct {v0, v1}, Lorg/farng/mp3/object/ObjectStringNullTerminated;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/farng/mp3/AbstractMP3FragmentBody;->appendToObjectList(Lorg/farng/mp3/object/AbstractMP3Object;)V

    .line 85
    new-instance v0, Lorg/farng/mp3/object/ObjectNumberFixedLength;

    const-string v1, "Method Symbol"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/farng/mp3/object/ObjectNumberFixedLength;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lorg/farng/mp3/AbstractMP3FragmentBody;->appendToObjectList(Lorg/farng/mp3/object/AbstractMP3Object;)V

    .line 86
    new-instance v0, Lorg/farng/mp3/object/ObjectByteArraySizeTerminated;

    const-string v1, "Encryption Data"

    invoke-direct {v0, v1}, Lorg/farng/mp3/object/ObjectByteArraySizeTerminated;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/farng/mp3/AbstractMP3FragmentBody;->appendToObjectList(Lorg/farng/mp3/object/AbstractMP3Object;)V

    .line 87
    return-void
.end method
