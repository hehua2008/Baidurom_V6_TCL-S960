.class public Lorg/farng/mp3/id3/FrameBodyLINK;
.super Lorg/farng/mp3/id3/AbstractID3v2FrameBody;
.source "FrameBodyLINK.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Lorg/farng/mp3/id3/AbstractID3v2FrameBody;-><init>()V

    .line 69
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
    .line 90
    invoke-direct {p0}, Lorg/farng/mp3/id3/AbstractID3v2FrameBody;-><init>()V

    .line 91
    invoke-virtual {p0, p1}, Lorg/farng/mp3/AbstractMP3FragmentBody;->read(Ljava/io/RandomAccessFile;)V

    .line 92
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "frameIdentifier"
    .parameter "url"
    .parameter "additionalData"

    .prologue
    .line 81
    invoke-direct {p0}, Lorg/farng/mp3/id3/AbstractID3v2FrameBody;-><init>()V

    .line 82
    const-string v0, "Frame Identifier"

    invoke-virtual {p0, v0, p1}, Lorg/farng/mp3/AbstractMP3FragmentBody;->setObject(Ljava/lang/String;Ljava/lang/Object;)V

    .line 83
    const-string v0, "URL"

    invoke-virtual {p0, v0, p2}, Lorg/farng/mp3/AbstractMP3FragmentBody;->setObject(Ljava/lang/String;Ljava/lang/Object;)V

    .line 84
    const-string v0, "ID and Additional Data"

    invoke-virtual {p0, v0, p3}, Lorg/farng/mp3/AbstractMP3FragmentBody;->setObject(Ljava/lang/String;Ljava/lang/Object;)V

    .line 85
    return-void
.end method

.method public constructor <init>(Lorg/farng/mp3/id3/FrameBodyLINK;)V
    .locals 0
    .parameter "body"

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lorg/farng/mp3/id3/AbstractID3v2FrameBody;-><init>(Lorg/farng/mp3/id3/AbstractID3v2FrameBody;)V

    .line 76
    return-void
.end method


# virtual methods
.method public getAdditionalData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    const-string v0, "ID and Additional Data"

    invoke-virtual {p0, v0}, Lorg/farng/mp3/AbstractMP3FragmentBody;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getAdditionalData(Ljava/lang/String;)V
    .locals 1
    .parameter "additionalData"

    .prologue
    .line 99
    const-string v0, "ID and Additional Data"

    invoke-virtual {p0, v0, p1}, Lorg/farng/mp3/AbstractMP3FragmentBody;->setObject(Ljava/lang/String;Ljava/lang/Object;)V

    .line 100
    return-void
.end method

.method public getFrameIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    const-string v0, "Frame Identifier"

    invoke-virtual {p0, v0}, Lorg/farng/mp3/AbstractMP3FragmentBody;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getFrameIdentifier(Ljava/lang/String;)V
    .locals 1
    .parameter "frameIdentifier"

    .prologue
    .line 107
    const-string v0, "Frame Identifier"

    invoke-virtual {p0, v0, p1}, Lorg/farng/mp3/AbstractMP3FragmentBody;->setObject(Ljava/lang/String;Ljava/lang/Object;)V

    .line 108
    return-void
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 2

    .prologue
    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LINK\u0000"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/farng/mp3/id3/FrameBodyLINK;->getFrameIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/farng/mp3/id3/FrameBodyLINK;->getAdditionalData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected setupObjectList()V
    .locals 3

    .prologue
    .line 115
    new-instance v0, Lorg/farng/mp3/object/ObjectStringFixedLength;

    const-string v1, "Frame Identifier"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lorg/farng/mp3/object/ObjectStringFixedLength;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lorg/farng/mp3/AbstractMP3FragmentBody;->appendToObjectList(Lorg/farng/mp3/object/AbstractMP3Object;)V

    .line 116
    new-instance v0, Lorg/farng/mp3/object/ObjectStringNullTerminated;

    const-string v1, "URL"

    invoke-direct {v0, v1}, Lorg/farng/mp3/object/ObjectStringNullTerminated;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/farng/mp3/AbstractMP3FragmentBody;->appendToObjectList(Lorg/farng/mp3/object/AbstractMP3Object;)V

    .line 117
    new-instance v0, Lorg/farng/mp3/object/ObjectStringSizeTerminated;

    const-string v1, "ID and Additional Data"

    invoke-direct {v0, v1}, Lorg/farng/mp3/object/ObjectStringSizeTerminated;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/farng/mp3/AbstractMP3FragmentBody;->appendToObjectList(Lorg/farng/mp3/object/AbstractMP3Object;)V

    .line 118
    return-void
.end method
