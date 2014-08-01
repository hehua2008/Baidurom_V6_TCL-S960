.class public abstract Lorg/farng/mp3/id3/AbstractFrameBodyUrlLink;
.super Lorg/farng/mp3/id3/AbstractID3v2FrameBody;
.source "AbstractFrameBodyUrlLink.java"


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lorg/farng/mp3/id3/AbstractID3v2FrameBody;-><init>()V

    .line 22
    return-void
.end method

.method protected constructor <init>(Ljava/io/RandomAccessFile;)V
    .locals 0
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/farng/mp3/InvalidTagException;
        }
    .end annotation

    .prologue
    .line 43
    invoke-direct {p0}, Lorg/farng/mp3/id3/AbstractID3v2FrameBody;-><init>()V

    .line 44
    invoke-virtual {p0, p1}, Lorg/farng/mp3/AbstractMP3FragmentBody;->read(Ljava/io/RandomAccessFile;)V

    .line 45
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "urlLink"

    .prologue
    .line 35
    invoke-direct {p0}, Lorg/farng/mp3/id3/AbstractID3v2FrameBody;-><init>()V

    .line 36
    const-string v0, "URL Link"

    invoke-virtual {p0, v0, p1}, Lorg/farng/mp3/AbstractMP3FragmentBody;->setObject(Ljava/lang/String;Ljava/lang/Object;)V

    .line 37
    return-void
.end method

.method protected constructor <init>(Lorg/farng/mp3/id3/AbstractFrameBodyUrlLink;)V
    .locals 0
    .parameter "body"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lorg/farng/mp3/id3/AbstractID3v2FrameBody;-><init>(Lorg/farng/mp3/id3/AbstractID3v2FrameBody;)V

    .line 29
    return-void
.end method


# virtual methods
.method public getBriefDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0}, Lorg/farng/mp3/id3/AbstractFrameBodyUrlLink;->getUrlLink()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUrlLink()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    const-string v0, "URL Link"

    invoke-virtual {p0, v0}, Lorg/farng/mp3/AbstractMP3FragmentBody;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public setUrlLink(Ljava/lang/String;)V
    .locals 1
    .parameter "urlLink"

    .prologue
    .line 52
    const-string v0, "URL Link"

    invoke-virtual {p0, v0, p1}, Lorg/farng/mp3/AbstractMP3FragmentBody;->setObject(Ljava/lang/String;Ljava/lang/Object;)V

    .line 53
    return-void
.end method

.method protected setupObjectList()V
    .locals 2

    .prologue
    .line 60
    new-instance v0, Lorg/farng/mp3/object/ObjectStringSizeTerminated;

    const-string v1, "URL Link"

    invoke-direct {v0, v1}, Lorg/farng/mp3/object/ObjectStringSizeTerminated;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/farng/mp3/AbstractMP3FragmentBody;->appendToObjectList(Lorg/farng/mp3/object/AbstractMP3Object;)V

    .line 61
    return-void
.end method
