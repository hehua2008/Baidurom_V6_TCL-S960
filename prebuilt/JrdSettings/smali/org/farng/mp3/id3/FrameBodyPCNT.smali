.class public Lorg/farng/mp3/id3/FrameBodyPCNT;
.super Lorg/farng/mp3/id3/AbstractID3v2FrameBody;
.source "FrameBodyPCNT.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lorg/farng/mp3/id3/AbstractID3v2FrameBody;-><init>()V

    .line 34
    return-void
.end method

.method public constructor <init>(J)V
    .locals 2
    .parameter "counter"

    .prologue
    .line 46
    invoke-direct {p0}, Lorg/farng/mp3/id3/AbstractID3v2FrameBody;-><init>()V

    .line 47
    const-string v0, "Counter"

    new-instance v1, Ljava/lang/Long;

    invoke-direct {v1, p1, p2}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {p0, v0, v1}, Lorg/farng/mp3/AbstractMP3FragmentBody;->setObject(Ljava/lang/String;Ljava/lang/Object;)V

    .line 48
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
    .line 53
    invoke-direct {p0}, Lorg/farng/mp3/id3/AbstractID3v2FrameBody;-><init>()V

    .line 54
    invoke-virtual {p0, p1}, Lorg/farng/mp3/AbstractMP3FragmentBody;->read(Ljava/io/RandomAccessFile;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Lorg/farng/mp3/id3/FrameBodyPCNT;)V
    .locals 0
    .parameter "body"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lorg/farng/mp3/id3/AbstractID3v2FrameBody;-><init>(Lorg/farng/mp3/id3/AbstractID3v2FrameBody;)V

    .line 41
    return-void
.end method


# virtual methods
.method public getIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    const-string v0, "PCNT"

    return-object v0
.end method

.method protected setupObjectList()V
    .locals 3

    .prologue
    .line 62
    new-instance v0, Lorg/farng/mp3/object/ObjectNumberVariableLength;

    const-string v1, "Counter"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lorg/farng/mp3/object/ObjectNumberVariableLength;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lorg/farng/mp3/AbstractMP3FragmentBody;->appendToObjectList(Lorg/farng/mp3/object/AbstractMP3Object;)V

    .line 63
    return-void
.end method
