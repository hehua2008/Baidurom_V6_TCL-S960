.class public Lorg/farng/mp3/id3/FrameBodyEQUA;
.super Lorg/farng/mp3/id3/AbstractID3v2FrameBody;
.source "FrameBodyEQUA.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lorg/farng/mp3/id3/AbstractID3v2FrameBody;-><init>()V

    .line 42
    return-void
.end method

.method public constructor <init>(Lorg/farng/mp3/id3/FrameBodyEQUA;)V
    .locals 0
    .parameter "body"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lorg/farng/mp3/id3/AbstractID3v2FrameBody;-><init>(Lorg/farng/mp3/id3/AbstractID3v2FrameBody;)V

    .line 49
    return-void
.end method


# virtual methods
.method public getIdentifier()Ljava/lang/String;
    .locals 2

    .prologue
    .line 56
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This frame has not been implemented."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected setupObjectList()V
    .locals 2

    .prologue
    .line 52
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This frame has not been implemented."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
