.class public Lorg/farng/mp3/id3/FrameBodyTPE1;
.super Lorg/farng/mp3/id3/AbstractFrameBodyTextInformation;
.source "FrameBodyTPE1.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lorg/farng/mp3/id3/AbstractFrameBodyTextInformation;-><init>()V

    .line 21
    return-void
.end method

.method public constructor <init>(BLjava/lang/String;)V
    .locals 0
    .parameter "textEncoding"
    .parameter "text"

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lorg/farng/mp3/id3/AbstractFrameBodyTextInformation;-><init>(BLjava/lang/String;)V

    .line 35
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
    invoke-direct {p0, p1}, Lorg/farng/mp3/id3/AbstractFrameBodyTextInformation;-><init>(Ljava/io/RandomAccessFile;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Lorg/farng/mp3/id3/FrameBodyTPE1;)V
    .locals 0
    .parameter "body"

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lorg/farng/mp3/id3/AbstractFrameBodyTextInformation;-><init>(Lorg/farng/mp3/id3/AbstractFrameBodyTextInformation;)V

    .line 28
    return-void
.end method


# virtual methods
.method public getIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    const-string v0, "TPE1"

    return-object v0
.end method
