.class public Lorg/farng/mp3/id3/FrameBodyWPUB;
.super Lorg/farng/mp3/id3/AbstractFrameBodyUrlLink;
.source "FrameBodyWPUB.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lorg/farng/mp3/id3/AbstractFrameBodyUrlLink;-><init>()V

    .line 21
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
    .line 41
    invoke-direct {p0, p1}, Lorg/farng/mp3/id3/AbstractFrameBodyUrlLink;-><init>(Ljava/io/RandomAccessFile;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "urlLink"

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lorg/farng/mp3/id3/AbstractFrameBodyUrlLink;-><init>(Ljava/lang/String;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Lorg/farng/mp3/id3/FrameBodyWPUB;)V
    .locals 0
    .parameter "body"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lorg/farng/mp3/id3/AbstractFrameBodyUrlLink;-><init>(Lorg/farng/mp3/id3/AbstractFrameBodyUrlLink;)V

    .line 35
    return-void
.end method


# virtual methods
.method public getIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    const-string v0, "WPUB"

    return-object v0
.end method
