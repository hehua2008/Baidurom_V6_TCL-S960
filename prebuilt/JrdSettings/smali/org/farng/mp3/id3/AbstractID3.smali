.class public abstract Lorg/farng/mp3/id3/AbstractID3;
.super Lorg/farng/mp3/AbstractMP3Tag;
.source "AbstractID3.java"


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lorg/farng/mp3/AbstractMP3Tag;-><init>()V

    .line 18
    return-void
.end method

.method protected constructor <init>(Lorg/farng/mp3/id3/AbstractID3;)V
    .locals 0
    .parameter "copyObject"

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lorg/farng/mp3/AbstractMP3Tag;-><init>(Lorg/farng/mp3/AbstractMP3Tag;)V

    .line 25
    return-void
.end method
