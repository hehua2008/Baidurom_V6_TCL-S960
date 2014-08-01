.class public Lorg/farng/mp3/id3/FrameBodyWPAY;
.super Lorg/farng/mp3/id3/AbstractFrameBodyUrlLink;
.source "FrameBodyWPAY.java"


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

.method public constructor <init>(Lorg/farng/mp3/id3/FrameBodyWPAY;)V
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
    .locals 1

    .prologue
    .line 46
    const-string v0, "WPAY"

    return-object v0
.end method
