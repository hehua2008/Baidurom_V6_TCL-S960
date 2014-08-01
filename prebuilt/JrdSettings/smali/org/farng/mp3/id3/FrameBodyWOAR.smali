.class public Lorg/farng/mp3/id3/FrameBodyWOAR;
.super Lorg/farng/mp3/id3/AbstractFrameBodyUrlLink;
.source "FrameBodyWOAR.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lorg/farng/mp3/id3/AbstractFrameBodyUrlLink;-><init>()V

    .line 22
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
    .line 42
    invoke-direct {p0, p1}, Lorg/farng/mp3/id3/AbstractFrameBodyUrlLink;-><init>(Ljava/io/RandomAccessFile;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "urlLink"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lorg/farng/mp3/id3/AbstractFrameBodyUrlLink;-><init>(Ljava/lang/String;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Lorg/farng/mp3/id3/FrameBodyWOAR;)V
    .locals 0
    .parameter "body"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lorg/farng/mp3/id3/AbstractFrameBodyUrlLink;-><init>(Lorg/farng/mp3/id3/AbstractFrameBodyUrlLink;)V

    .line 36
    return-void
.end method


# virtual methods
.method public getIdentifier()Ljava/lang/String;
    .locals 2

    .prologue
    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WOAR\u0000"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/farng/mp3/id3/AbstractFrameBodyUrlLink;->getUrlLink()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
