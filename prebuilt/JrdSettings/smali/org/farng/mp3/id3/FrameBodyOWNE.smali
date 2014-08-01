.class public Lorg/farng/mp3/id3/FrameBodyOWNE;
.super Lorg/farng/mp3/id3/AbstractID3v2FrameBody;
.source "FrameBodyOWNE.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lorg/farng/mp3/id3/AbstractID3v2FrameBody;-><init>()V

    .line 46
    return-void
.end method

.method public constructor <init>(BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "textEncoding"
    .parameter "pricePaid"
    .parameter "dateOfPurchase"
    .parameter "seller"

    .prologue
    .line 61
    invoke-direct {p0}, Lorg/farng/mp3/id3/AbstractID3v2FrameBody;-><init>()V

    .line 62
    const-string v0, "Text Encoding"

    new-instance v1, Ljava/lang/Byte;

    invoke-direct {v1, p1}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {p0, v0, v1}, Lorg/farng/mp3/AbstractMP3FragmentBody;->setObject(Ljava/lang/String;Ljava/lang/Object;)V

    .line 63
    const-string v0, "Price Paid"

    invoke-virtual {p0, v0, p2}, Lorg/farng/mp3/AbstractMP3FragmentBody;->setObject(Ljava/lang/String;Ljava/lang/Object;)V

    .line 64
    const-string v0, "Date Of Purchase"

    invoke-virtual {p0, v0, p3}, Lorg/farng/mp3/AbstractMP3FragmentBody;->setObject(Ljava/lang/String;Ljava/lang/Object;)V

    .line 65
    const-string v0, "Seller"

    invoke-virtual {p0, v0, p4}, Lorg/farng/mp3/AbstractMP3FragmentBody;->setObject(Ljava/lang/String;Ljava/lang/Object;)V

    .line 66
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
    .line 71
    invoke-direct {p0}, Lorg/farng/mp3/id3/AbstractID3v2FrameBody;-><init>()V

    .line 72
    invoke-virtual {p0, p1}, Lorg/farng/mp3/AbstractMP3FragmentBody;->read(Ljava/io/RandomAccessFile;)V

    .line 73
    return-void
.end method

.method public constructor <init>(Lorg/farng/mp3/id3/FrameBodyOWNE;)V
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
    .locals 1

    .prologue
    .line 76
    const-string v0, "OWNE"

    return-object v0
.end method

.method protected setupObjectList()V
    .locals 3

    .prologue
    .line 80
    new-instance v0, Lorg/farng/mp3/object/ObjectNumberHashMap;

    const-string v1, "Text Encoding"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/farng/mp3/object/ObjectNumberHashMap;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lorg/farng/mp3/AbstractMP3FragmentBody;->appendToObjectList(Lorg/farng/mp3/object/AbstractMP3Object;)V

    .line 81
    new-instance v0, Lorg/farng/mp3/object/ObjectStringNullTerminated;

    const-string v1, "Price Paid"

    invoke-direct {v0, v1}, Lorg/farng/mp3/object/ObjectStringNullTerminated;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/farng/mp3/AbstractMP3FragmentBody;->appendToObjectList(Lorg/farng/mp3/object/AbstractMP3Object;)V

    .line 82
    new-instance v0, Lorg/farng/mp3/object/ObjectStringDate;

    const-string v1, "Date Of Purchase"

    invoke-direct {v0, v1}, Lorg/farng/mp3/object/ObjectStringDate;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/farng/mp3/AbstractMP3FragmentBody;->appendToObjectList(Lorg/farng/mp3/object/AbstractMP3Object;)V

    .line 83
    new-instance v0, Lorg/farng/mp3/object/ObjectStringSizeTerminated;

    const-string v1, "Seller"

    invoke-direct {v0, v1}, Lorg/farng/mp3/object/ObjectStringSizeTerminated;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/farng/mp3/AbstractMP3FragmentBody;->appendToObjectList(Lorg/farng/mp3/object/AbstractMP3Object;)V

    .line 84
    return-void
.end method
