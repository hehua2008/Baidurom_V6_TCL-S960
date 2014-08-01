.class public Lorg/farng/mp3/id3/FrameBodyMCDI;
.super Lorg/farng/mp3/id3/AbstractID3v2FrameBody;
.source "FrameBodyMCDI.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lorg/farng/mp3/id3/AbstractID3v2FrameBody;-><init>()V

    .line 42
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
    .line 61
    invoke-direct {p0}, Lorg/farng/mp3/id3/AbstractID3v2FrameBody;-><init>()V

    .line 62
    invoke-virtual {p0, p1}, Lorg/farng/mp3/AbstractMP3FragmentBody;->read(Ljava/io/RandomAccessFile;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Lorg/farng/mp3/id3/FrameBodyMCDI;)V
    .locals 0
    .parameter "body"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lorg/farng/mp3/id3/AbstractID3v2FrameBody;-><init>(Lorg/farng/mp3/id3/AbstractID3v2FrameBody;)V

    .line 49
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .parameter "cdTOC"

    .prologue
    .line 54
    invoke-direct {p0}, Lorg/farng/mp3/id3/AbstractID3v2FrameBody;-><init>()V

    .line 55
    const-string v0, "CD Table of Contents"

    invoke-virtual {p0, v0, p1}, Lorg/farng/mp3/AbstractMP3FragmentBody;->setObject(Ljava/lang/String;Ljava/lang/Object;)V

    .line 56
    return-void
.end method


# virtual methods
.method public getIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    const-string v0, "MCDI"

    return-object v0
.end method

.method protected setupObjectList()V
    .locals 2

    .prologue
    .line 70
    new-instance v0, Lorg/farng/mp3/object/ObjectByteArraySizeTerminated;

    const-string v1, "CD Table of Contents"

    invoke-direct {v0, v1}, Lorg/farng/mp3/object/ObjectByteArraySizeTerminated;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/farng/mp3/AbstractMP3FragmentBody;->appendToObjectList(Lorg/farng/mp3/object/AbstractMP3Object;)V

    .line 71
    return-void
.end method
