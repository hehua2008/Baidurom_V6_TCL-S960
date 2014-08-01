.class public Lorg/farng/mp3/id3/FrameBodyTBPM;
.super Lorg/farng/mp3/id3/AbstractFrameBodyTextInformation;
.source "FrameBodyTBPM.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lorg/farng/mp3/id3/AbstractFrameBodyTextInformation;-><init>()V

    .line 23
    return-void
.end method

.method public constructor <init>(BLjava/lang/String;)V
    .locals 0
    .parameter "textEncoding"
    .parameter "text"

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lorg/farng/mp3/id3/AbstractFrameBodyTextInformation;-><init>(BLjava/lang/String;)V

    .line 37
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
    .line 43
    invoke-direct {p0, p1}, Lorg/farng/mp3/id3/AbstractFrameBodyTextInformation;-><init>(Ljava/io/RandomAccessFile;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Lorg/farng/mp3/id3/FrameBodyTBPM;)V
    .locals 0
    .parameter "body"

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lorg/farng/mp3/id3/AbstractFrameBodyTextInformation;-><init>(Lorg/farng/mp3/id3/AbstractFrameBodyTextInformation;)V

    .line 30
    return-void
.end method


# virtual methods
.method public getIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    const-string v0, "TBPM"

    return-object v0
.end method
