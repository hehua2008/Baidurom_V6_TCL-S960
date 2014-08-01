.class public Lorg/farng/mp3/id3/FrameBodySYTC;
.super Lorg/farng/mp3/id3/AbstractID3v2FrameBody;
.source "FrameBodySYTC.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lorg/farng/mp3/id3/AbstractID3v2FrameBody;-><init>()V

    .line 46
    return-void
.end method

.method public constructor <init>(Lorg/farng/mp3/id3/FrameBodySYTC;)V
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
    .locals 2

    .prologue
    .line 60
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This frame has not been implemented."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected setupObjectList()V
    .locals 2

    .prologue
    .line 56
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This frame has not been implemented."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
