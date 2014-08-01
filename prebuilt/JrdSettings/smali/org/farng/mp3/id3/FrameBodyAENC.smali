.class public Lorg/farng/mp3/id3/FrameBodyAENC;
.super Lorg/farng/mp3/id3/AbstractID3v2FrameBody;
.source "FrameBodyAENC.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Lorg/farng/mp3/id3/AbstractID3v2FrameBody;-><init>()V

    .line 52
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
    .line 76
    invoke-direct {p0}, Lorg/farng/mp3/id3/AbstractID3v2FrameBody;-><init>()V

    .line 77
    invoke-virtual {p0, p1}, Lorg/farng/mp3/AbstractMP3FragmentBody;->read(Ljava/io/RandomAccessFile;)V

    .line 78
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;SS[B)V
    .locals 2
    .parameter "owner"
    .parameter "previewStart"
    .parameter "previewLength"
    .parameter "data"

    .prologue
    .line 65
    invoke-direct {p0}, Lorg/farng/mp3/id3/AbstractID3v2FrameBody;-><init>()V

    .line 66
    const-string v0, "Owner"

    invoke-virtual {p0, v0, p1}, Lorg/farng/mp3/AbstractMP3FragmentBody;->setObject(Ljava/lang/String;Ljava/lang/Object;)V

    .line 67
    const-string v0, "Preview Start"

    new-instance v1, Ljava/lang/Short;

    invoke-direct {v1, p2}, Ljava/lang/Short;-><init>(S)V

    invoke-virtual {p0, v0, v1}, Lorg/farng/mp3/AbstractMP3FragmentBody;->setObject(Ljava/lang/String;Ljava/lang/Object;)V

    .line 68
    const-string v0, "Preview Length"

    new-instance v1, Ljava/lang/Short;

    invoke-direct {v1, p3}, Ljava/lang/Short;-><init>(S)V

    invoke-virtual {p0, v0, v1}, Lorg/farng/mp3/AbstractMP3FragmentBody;->setObject(Ljava/lang/String;Ljava/lang/Object;)V

    .line 69
    const-string v0, "Encryption Info"

    invoke-virtual {p0, v0, p4}, Lorg/farng/mp3/AbstractMP3FragmentBody;->setObject(Ljava/lang/String;Ljava/lang/Object;)V

    .line 70
    return-void
.end method

.method public constructor <init>(Lorg/farng/mp3/id3/FrameBodyAENC;)V
    .locals 0
    .parameter "body"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lorg/farng/mp3/id3/AbstractID3v2FrameBody;-><init>(Lorg/farng/mp3/id3/AbstractID3v2FrameBody;)V

    .line 59
    return-void
.end method


# virtual methods
.method public getIdentifier()Ljava/lang/String;
    .locals 2

    .prologue
    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AENC\u0000"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/farng/mp3/id3/FrameBodyAENC;->getOwner()Ljava/lang/String;

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
    .line 85
    const-string v0, "Owner"

    invoke-virtual {p0, v0}, Lorg/farng/mp3/AbstractMP3FragmentBody;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getOwner(Ljava/lang/String;)V
    .locals 1
    .parameter "description"

    .prologue
    .line 89
    const-string v0, "Owner"

    invoke-virtual {p0, v0, p1}, Lorg/farng/mp3/AbstractMP3FragmentBody;->setObject(Ljava/lang/String;Ljava/lang/Object;)V

    .line 90
    return-void
.end method

.method protected setupObjectList()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 93
    new-instance v0, Lorg/farng/mp3/object/ObjectStringNullTerminated;

    const-string v1, "Owner"

    invoke-direct {v0, v1}, Lorg/farng/mp3/object/ObjectStringNullTerminated;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/farng/mp3/AbstractMP3FragmentBody;->appendToObjectList(Lorg/farng/mp3/object/AbstractMP3Object;)V

    .line 94
    new-instance v0, Lorg/farng/mp3/object/ObjectNumberFixedLength;

    const-string v1, "Preview Start"

    invoke-direct {v0, v1, v2}, Lorg/farng/mp3/object/ObjectNumberFixedLength;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lorg/farng/mp3/AbstractMP3FragmentBody;->appendToObjectList(Lorg/farng/mp3/object/AbstractMP3Object;)V

    .line 95
    new-instance v0, Lorg/farng/mp3/object/ObjectNumberFixedLength;

    const-string v1, "Preview Length"

    invoke-direct {v0, v1, v2}, Lorg/farng/mp3/object/ObjectNumberFixedLength;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lorg/farng/mp3/AbstractMP3FragmentBody;->appendToObjectList(Lorg/farng/mp3/object/AbstractMP3Object;)V

    .line 96
    new-instance v0, Lorg/farng/mp3/object/ObjectByteArraySizeTerminated;

    const-string v1, "Encryption Info"

    invoke-direct {v0, v1}, Lorg/farng/mp3/object/ObjectByteArraySizeTerminated;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/farng/mp3/AbstractMP3FragmentBody;->appendToObjectList(Lorg/farng/mp3/object/AbstractMP3Object;)V

    .line 97
    return-void
.end method
