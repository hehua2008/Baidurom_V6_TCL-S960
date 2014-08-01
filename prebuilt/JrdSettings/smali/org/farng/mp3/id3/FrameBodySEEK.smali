.class public Lorg/farng/mp3/id3/FrameBodySEEK;
.super Lorg/farng/mp3/id3/AbstractID3v2FrameBody;
.source "FrameBodySEEK.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lorg/farng/mp3/id3/AbstractID3v2FrameBody;-><init>()V

    .line 29
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .parameter "minOffsetToNextTag"

    .prologue
    .line 34
    invoke-direct {p0}, Lorg/farng/mp3/id3/AbstractID3v2FrameBody;-><init>()V

    .line 35
    const-string v0, "Minimum Offset to Next Tag"

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lorg/farng/mp3/AbstractMP3FragmentBody;->setObject(Ljava/lang/String;Ljava/lang/Object;)V

    .line 36
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
    .line 48
    invoke-direct {p0}, Lorg/farng/mp3/id3/AbstractID3v2FrameBody;-><init>()V

    .line 49
    invoke-virtual {p0, p1}, Lorg/farng/mp3/AbstractMP3FragmentBody;->read(Ljava/io/RandomAccessFile;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Lorg/farng/mp3/id3/FrameBodySEEK;)V
    .locals 0
    .parameter "body"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lorg/farng/mp3/id3/AbstractID3v2FrameBody;-><init>(Lorg/farng/mp3/id3/AbstractID3v2FrameBody;)V

    .line 43
    return-void
.end method


# virtual methods
.method public getIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    const-string v0, "SEEK"

    return-object v0
.end method

.method protected setupObjectList()V
    .locals 3

    .prologue
    .line 57
    new-instance v0, Lorg/farng/mp3/object/ObjectNumberFixedLength;

    const-string v1, "Minimum Offset to Next Tag"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lorg/farng/mp3/object/ObjectNumberFixedLength;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lorg/farng/mp3/AbstractMP3FragmentBody;->appendToObjectList(Lorg/farng/mp3/object/AbstractMP3Object;)V

    .line 58
    return-void
.end method
