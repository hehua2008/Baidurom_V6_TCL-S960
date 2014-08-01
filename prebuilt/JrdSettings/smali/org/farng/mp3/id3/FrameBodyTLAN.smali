.class public Lorg/farng/mp3/id3/FrameBodyTLAN;
.super Lorg/farng/mp3/id3/AbstractFrameBodyTextInformation;
.source "FrameBodyTLAN.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lorg/farng/mp3/id3/AbstractFrameBodyTextInformation;-><init>()V

    .line 26
    return-void
.end method

.method public constructor <init>(BLjava/lang/String;)V
    .locals 0
    .parameter "textEncoding"
    .parameter "text"

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lorg/farng/mp3/id3/AbstractFrameBodyTextInformation;-><init>(BLjava/lang/String;)V

    .line 40
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
    .line 46
    invoke-direct {p0, p1}, Lorg/farng/mp3/id3/AbstractFrameBodyTextInformation;-><init>(Ljava/io/RandomAccessFile;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Lorg/farng/mp3/id3/FrameBodyTLAN;)V
    .locals 0
    .parameter "body"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lorg/farng/mp3/id3/AbstractFrameBodyTextInformation;-><init>(Lorg/farng/mp3/id3/AbstractFrameBodyTextInformation;)V

    .line 33
    return-void
.end method


# virtual methods
.method public getIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    const-string v0, "TLAN"

    return-object v0
.end method

.method protected setupObjectList()V
    .locals 3

    .prologue
    .line 54
    new-instance v0, Lorg/farng/mp3/object/ObjectNumberHashMap;

    const-string v1, "Text Encoding"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/farng/mp3/object/ObjectNumberHashMap;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lorg/farng/mp3/AbstractMP3FragmentBody;->appendToObjectList(Lorg/farng/mp3/object/AbstractMP3Object;)V

    .line 55
    new-instance v0, Lorg/farng/mp3/object/ObjectStringHashMap;

    const-string v1, "Language"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lorg/farng/mp3/object/ObjectStringHashMap;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lorg/farng/mp3/AbstractMP3FragmentBody;->appendToObjectList(Lorg/farng/mp3/object/AbstractMP3Object;)V

    .line 56
    return-void
.end method
