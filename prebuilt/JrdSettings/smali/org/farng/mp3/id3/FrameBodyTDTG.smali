.class public Lorg/farng/mp3/id3/FrameBodyTDTG;
.super Lorg/farng/mp3/id3/AbstractFrameBodyTextInformation;
.source "FrameBodyTDTG.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lorg/farng/mp3/id3/AbstractFrameBodyTextInformation;-><init>()V

    .line 25
    return-void
.end method

.method public constructor <init>(BLjava/lang/String;)V
    .locals 2
    .parameter "textEncoding"
    .parameter "text"

    .prologue
    .line 37
    invoke-direct {p0}, Lorg/farng/mp3/id3/AbstractFrameBodyTextInformation;-><init>()V

    .line 38
    const-string v0, "Text Encoding"

    new-instance v1, Ljava/lang/Byte;

    invoke-direct {v1, p1}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {p0, v0, v1}, Lorg/farng/mp3/AbstractMP3FragmentBody;->setObject(Ljava/lang/String;Ljava/lang/Object;)V

    .line 39
    const-string v0, "Date Time"

    invoke-virtual {p0, v0, p2}, Lorg/farng/mp3/AbstractMP3FragmentBody;->setObject(Ljava/lang/String;Ljava/lang/Object;)V

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

.method public constructor <init>(Lorg/farng/mp3/id3/FrameBodyTDTG;)V
    .locals 0
    .parameter "body"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lorg/farng/mp3/id3/AbstractFrameBodyTextInformation;-><init>(Lorg/farng/mp3/id3/AbstractFrameBodyTextInformation;)V

    .line 32
    return-void
.end method


# virtual methods
.method public getIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    const-string v0, "TDTG"

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    const-string v0, "Date Time"

    invoke-virtual {p0, v0}, Lorg/farng/mp3/AbstractMP3FragmentBody;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 54
    const-string v0, "Date Time"

    invoke-virtual {p0, v0, p1}, Lorg/farng/mp3/AbstractMP3FragmentBody;->setObject(Ljava/lang/String;Ljava/lang/Object;)V

    .line 55
    return-void
.end method

.method protected setupObjectList()V
    .locals 3

    .prologue
    .line 62
    new-instance v0, Lorg/farng/mp3/object/ObjectNumberHashMap;

    const-string v1, "Text Encoding"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/farng/mp3/object/ObjectNumberHashMap;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lorg/farng/mp3/AbstractMP3FragmentBody;->appendToObjectList(Lorg/farng/mp3/object/AbstractMP3Object;)V

    .line 63
    new-instance v0, Lorg/farng/mp3/object/ObjectStringDateTime;

    const-string v1, "Date Time"

    invoke-direct {v0, v1}, Lorg/farng/mp3/object/ObjectStringDateTime;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/farng/mp3/AbstractMP3FragmentBody;->appendToObjectList(Lorg/farng/mp3/object/AbstractMP3Object;)V

    .line 64
    return-void
.end method
