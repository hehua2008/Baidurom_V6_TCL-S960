.class public Lorg/farng/mp3/id3/FrameBodyPIC;
.super Lorg/farng/mp3/id3/AbstractID3v2FrameBody;
.source "FrameBodyPIC.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Lorg/farng/mp3/id3/AbstractID3v2FrameBody;-><init>()V

    .line 67
    return-void
.end method

.method public constructor <init>(BLjava/lang/String;BLjava/lang/String;[B)V
    .locals 2
    .parameter "textEncoding"
    .parameter "imageFormat"
    .parameter "pictureType"
    .parameter "description"
    .parameter "data"

    .prologue
    .line 83
    invoke-direct {p0}, Lorg/farng/mp3/id3/AbstractID3v2FrameBody;-><init>()V

    .line 84
    const-string v0, "Text Encoding"

    new-instance v1, Ljava/lang/Byte;

    invoke-direct {v1, p1}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {p0, v0, v1}, Lorg/farng/mp3/AbstractMP3FragmentBody;->setObject(Ljava/lang/String;Ljava/lang/Object;)V

    .line 85
    const-string v0, "Image Format"

    invoke-virtual {p0, v0, p2}, Lorg/farng/mp3/AbstractMP3FragmentBody;->setObject(Ljava/lang/String;Ljava/lang/Object;)V

    .line 86
    const-string v0, "Picture Type"

    new-instance v1, Ljava/lang/Byte;

    invoke-direct {v1, p3}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {p0, v0, v1}, Lorg/farng/mp3/AbstractMP3FragmentBody;->setObject(Ljava/lang/String;Ljava/lang/Object;)V

    .line 87
    const-string v0, "Description"

    invoke-virtual {p0, v0, p4}, Lorg/farng/mp3/AbstractMP3FragmentBody;->setObject(Ljava/lang/String;Ljava/lang/Object;)V

    .line 88
    const-string v0, "Picture Data"

    invoke-virtual {p0, v0, p5}, Lorg/farng/mp3/AbstractMP3FragmentBody;->setObject(Ljava/lang/String;Ljava/lang/Object;)V

    .line 89
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
    .line 94
    invoke-direct {p0}, Lorg/farng/mp3/id3/AbstractID3v2FrameBody;-><init>()V

    .line 95
    invoke-virtual {p0, p1}, Lorg/farng/mp3/AbstractMP3FragmentBody;->read(Ljava/io/RandomAccessFile;)V

    .line 96
    return-void
.end method

.method public constructor <init>(Lorg/farng/mp3/id3/FrameBodyPIC;)V
    .locals 0
    .parameter "body"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lorg/farng/mp3/id3/AbstractID3v2FrameBody;-><init>(Lorg/farng/mp3/id3/AbstractID3v2FrameBody;)V

    .line 74
    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    const-string v0, "Description"

    invoke-virtual {p0, v0}, Lorg/farng/mp3/AbstractMP3FragmentBody;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 2

    .prologue
    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PIC\u0000"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/farng/mp3/id3/FrameBodyPIC;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 1
    .parameter "description"

    .prologue
    .line 99
    const-string v0, "Description"

    invoke-virtual {p0, v0, p1}, Lorg/farng/mp3/AbstractMP3FragmentBody;->setObject(Ljava/lang/String;Ljava/lang/Object;)V

    .line 100
    return-void
.end method

.method protected setupObjectList()V
    .locals 3

    .prologue
    .line 111
    new-instance v0, Lorg/farng/mp3/object/ObjectNumberHashMap;

    const-string v1, "Text Encoding"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/farng/mp3/object/ObjectNumberHashMap;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lorg/farng/mp3/AbstractMP3FragmentBody;->appendToObjectList(Lorg/farng/mp3/object/AbstractMP3Object;)V

    .line 112
    new-instance v0, Lorg/farng/mp3/object/ObjectStringNullTerminated;

    const-string v1, "Image Format"

    invoke-direct {v0, v1}, Lorg/farng/mp3/object/ObjectStringNullTerminated;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/farng/mp3/AbstractMP3FragmentBody;->appendToObjectList(Lorg/farng/mp3/object/AbstractMP3Object;)V

    .line 113
    new-instance v0, Lorg/farng/mp3/object/ObjectNumberHashMap;

    const-string v1, "Picture Type"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lorg/farng/mp3/object/ObjectNumberHashMap;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lorg/farng/mp3/AbstractMP3FragmentBody;->appendToObjectList(Lorg/farng/mp3/object/AbstractMP3Object;)V

    .line 114
    new-instance v0, Lorg/farng/mp3/object/ObjectStringNullTerminated;

    const-string v1, "Description"

    invoke-direct {v0, v1}, Lorg/farng/mp3/object/ObjectStringNullTerminated;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/farng/mp3/AbstractMP3FragmentBody;->appendToObjectList(Lorg/farng/mp3/object/AbstractMP3Object;)V

    .line 115
    new-instance v0, Lorg/farng/mp3/object/ObjectByteArraySizeTerminated;

    const-string v1, "Picture Data"

    invoke-direct {v0, v1}, Lorg/farng/mp3/object/ObjectByteArraySizeTerminated;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/farng/mp3/AbstractMP3FragmentBody;->appendToObjectList(Lorg/farng/mp3/object/AbstractMP3Object;)V

    .line 116
    return-void
.end method
