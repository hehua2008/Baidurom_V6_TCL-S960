.class public Lorg/farng/mp3/id3/FrameBodyPOSS;
.super Lorg/farng/mp3/id3/AbstractID3v2FrameBody;
.source "FrameBodyPOSS.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lorg/farng/mp3/id3/AbstractID3v2FrameBody;-><init>()V

    .line 44
    return-void
.end method

.method public constructor <init>(BJ)V
    .locals 2
    .parameter "timeStampFormat"
    .parameter "position"

    .prologue
    .line 56
    invoke-direct {p0}, Lorg/farng/mp3/id3/AbstractID3v2FrameBody;-><init>()V

    .line 57
    const-string v0, "Time Stamp Format"

    new-instance v1, Ljava/lang/Byte;

    invoke-direct {v1, p1}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {p0, v0, v1}, Lorg/farng/mp3/AbstractMP3FragmentBody;->setObject(Ljava/lang/String;Ljava/lang/Object;)V

    .line 58
    const-string v0, "Position"

    new-instance v1, Ljava/lang/Long;

    invoke-direct {v1, p2, p3}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {p0, v0, v1}, Lorg/farng/mp3/AbstractMP3FragmentBody;->setObject(Ljava/lang/String;Ljava/lang/Object;)V

    .line 59
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
    .line 64
    invoke-direct {p0}, Lorg/farng/mp3/id3/AbstractID3v2FrameBody;-><init>()V

    .line 65
    invoke-virtual {p0, p1}, Lorg/farng/mp3/AbstractMP3FragmentBody;->read(Ljava/io/RandomAccessFile;)V

    .line 66
    return-void
.end method

.method public constructor <init>(Lorg/farng/mp3/id3/FrameBodyPOSS;)V
    .locals 0
    .parameter "body"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lorg/farng/mp3/id3/AbstractID3v2FrameBody;-><init>(Lorg/farng/mp3/id3/AbstractID3v2FrameBody;)V

    .line 51
    return-void
.end method


# virtual methods
.method public getIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    const-string v0, "POSS"

    return-object v0
.end method

.method protected setupObjectList()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 73
    new-instance v0, Lorg/farng/mp3/object/ObjectNumberHashMap;

    const-string v1, "Time Stamp Format"

    invoke-direct {v0, v1, v2}, Lorg/farng/mp3/object/ObjectNumberHashMap;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lorg/farng/mp3/AbstractMP3FragmentBody;->appendToObjectList(Lorg/farng/mp3/object/AbstractMP3Object;)V

    .line 74
    new-instance v0, Lorg/farng/mp3/object/ObjectNumberVariableLength;

    const-string v1, "Position"

    invoke-direct {v0, v1, v2}, Lorg/farng/mp3/object/ObjectNumberVariableLength;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lorg/farng/mp3/AbstractMP3FragmentBody;->appendToObjectList(Lorg/farng/mp3/object/AbstractMP3Object;)V

    .line 75
    return-void
.end method
