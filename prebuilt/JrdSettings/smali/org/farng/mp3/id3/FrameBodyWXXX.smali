.class public Lorg/farng/mp3/id3/FrameBodyWXXX;
.super Lorg/farng/mp3/id3/AbstractID3v2FrameBody;
.source "FrameBodyWXXX.java"


# instance fields
.field description:Ljava/lang/String;

.field textEncoding:B

.field urlLink:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Lorg/farng/mp3/id3/AbstractID3v2FrameBody;-><init>()V

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lorg/farng/mp3/id3/FrameBodyWXXX;->description:Ljava/lang/String;

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lorg/farng/mp3/id3/FrameBodyWXXX;->urlLink:Ljava/lang/String;

    .line 33
    const/4 v0, 0x0

    iput-byte v0, p0, Lorg/farng/mp3/id3/FrameBodyWXXX;->textEncoding:B

    .line 40
    return-void
.end method

.method public constructor <init>(BLjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "textEncoding"
    .parameter "description"
    .parameter "urlLink"

    .prologue
    .line 52
    invoke-direct {p0}, Lorg/farng/mp3/id3/AbstractID3v2FrameBody;-><init>()V

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lorg/farng/mp3/id3/FrameBodyWXXX;->description:Ljava/lang/String;

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lorg/farng/mp3/id3/FrameBodyWXXX;->urlLink:Ljava/lang/String;

    .line 33
    const/4 v0, 0x0

    iput-byte v0, p0, Lorg/farng/mp3/id3/FrameBodyWXXX;->textEncoding:B

    .line 53
    const-string v0, "Text Encoding"

    new-instance v1, Ljava/lang/Byte;

    invoke-direct {v1, p1}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {p0, v0, v1}, Lorg/farng/mp3/AbstractMP3FragmentBody;->setObject(Ljava/lang/String;Ljava/lang/Object;)V

    .line 54
    const-string v0, "Description"

    invoke-virtual {p0, v0, p2}, Lorg/farng/mp3/AbstractMP3FragmentBody;->setObject(Ljava/lang/String;Ljava/lang/Object;)V

    .line 55
    const-string v0, "URL"

    invoke-virtual {p0, v0, p3}, Lorg/farng/mp3/AbstractMP3FragmentBody;->setObject(Ljava/lang/String;Ljava/lang/Object;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Ljava/io/RandomAccessFile;)V
    .locals 1
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

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lorg/farng/mp3/id3/FrameBodyWXXX;->description:Ljava/lang/String;

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lorg/farng/mp3/id3/FrameBodyWXXX;->urlLink:Ljava/lang/String;

    .line 33
    const/4 v0, 0x0

    iput-byte v0, p0, Lorg/farng/mp3/id3/FrameBodyWXXX;->textEncoding:B

    .line 62
    invoke-virtual {p0, p1}, Lorg/farng/mp3/AbstractMP3FragmentBody;->read(Ljava/io/RandomAccessFile;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Lorg/farng/mp3/id3/FrameBodyWXXX;)V
    .locals 1
    .parameter "body"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lorg/farng/mp3/id3/AbstractID3v2FrameBody;-><init>(Lorg/farng/mp3/id3/AbstractID3v2FrameBody;)V

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lorg/farng/mp3/id3/FrameBodyWXXX;->description:Ljava/lang/String;

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lorg/farng/mp3/id3/FrameBodyWXXX;->urlLink:Ljava/lang/String;

    .line 33
    const/4 v0, 0x0

    iput-byte v0, p0, Lorg/farng/mp3/id3/FrameBodyWXXX;->textEncoding:B

    .line 47
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "obj"

    .prologue
    const/4 v1, 0x0

    .line 82
    instance-of v2, p1, Lorg/farng/mp3/id3/FrameBodyWXXX;

    if-nez v2, :cond_1

    .line 95
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 85
    check-cast v0, Lorg/farng/mp3/id3/FrameBodyWXXX;

    .line 86
    .local v0, frameBodyWXXX:Lorg/farng/mp3/id3/FrameBodyWXXX;
    iget-object v2, p0, Lorg/farng/mp3/id3/FrameBodyWXXX;->description:Ljava/lang/String;

    iget-object v3, v0, Lorg/farng/mp3/id3/FrameBodyWXXX;->description:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 89
    iget-byte v2, p0, Lorg/farng/mp3/id3/FrameBodyWXXX;->textEncoding:B

    iget-byte v3, v0, Lorg/farng/mp3/id3/FrameBodyWXXX;->textEncoding:B

    if-ne v2, v3, :cond_0

    .line 92
    iget-object v2, p0, Lorg/farng/mp3/id3/FrameBodyWXXX;->urlLink:Ljava/lang/String;

    iget-object v3, v0, Lorg/farng/mp3/id3/FrameBodyWXXX;->urlLink:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 95
    invoke-super {p0, p1}, Lorg/farng/mp3/id3/AbstractID3v2FrameBody;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getBriefDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    invoke-virtual {p0}, Lorg/farng/mp3/id3/FrameBodyWXXX;->getUrlLink()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 2

    .prologue
    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WXXX\u0000"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/farng/mp3/id3/FrameBodyWXXX;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUrlLink()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    const-string v0, "URL"

    invoke-virtual {p0, v0}, Lorg/farng/mp3/AbstractMP3FragmentBody;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public setUrlLink(Ljava/lang/String;)V
    .locals 1
    .parameter "urlLink"

    .prologue
    .line 74
    const-string v0, "URL"

    invoke-virtual {p0, v0, p1}, Lorg/farng/mp3/AbstractMP3FragmentBody;->setObject(Ljava/lang/String;Ljava/lang/Object;)V

    .line 75
    return-void
.end method

.method protected setupObjectList()V
    .locals 3

    .prologue
    .line 99
    new-instance v0, Lorg/farng/mp3/object/ObjectNumberHashMap;

    const-string v1, "Text Encoding"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/farng/mp3/object/ObjectNumberHashMap;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lorg/farng/mp3/AbstractMP3FragmentBody;->appendToObjectList(Lorg/farng/mp3/object/AbstractMP3Object;)V

    .line 100
    new-instance v0, Lorg/farng/mp3/object/ObjectStringNullTerminated;

    const-string v1, "Description"

    invoke-direct {v0, v1}, Lorg/farng/mp3/object/ObjectStringNullTerminated;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/farng/mp3/AbstractMP3FragmentBody;->appendToObjectList(Lorg/farng/mp3/object/AbstractMP3Object;)V

    .line 101
    new-instance v0, Lorg/farng/mp3/object/ObjectStringSizeTerminated;

    const-string v1, "URL"

    invoke-direct {v0, v1}, Lorg/farng/mp3/object/ObjectStringSizeTerminated;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/farng/mp3/AbstractMP3FragmentBody;->appendToObjectList(Lorg/farng/mp3/object/AbstractMP3Object;)V

    .line 102
    return-void
.end method
