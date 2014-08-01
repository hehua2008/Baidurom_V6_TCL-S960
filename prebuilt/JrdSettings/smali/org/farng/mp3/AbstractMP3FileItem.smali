.class public abstract Lorg/farng/mp3/AbstractMP3FileItem;
.super Ljava/lang/Object;
.source "AbstractMP3FileItem.java"


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method

.method protected constructor <init>(Lorg/farng/mp3/AbstractMP3FileItem;)V
    .locals 0
    .parameter "copyObject"

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .parameter "obj"

    .prologue
    .line 79
    instance-of v0, p1, Lorg/farng/mp3/AbstractMP3FileItem;

    return v0
.end method

.method public abstract getIdentifier()Ljava/lang/String;
.end method

.method public abstract getSize()I
.end method

.method public isSubsetOf(Ljava/lang/Object;)Z
    .locals 1
    .parameter "object"

    .prologue
    .line 67
    instance-of v0, p1, Lorg/farng/mp3/AbstractMP3FileItem;

    return v0
.end method

.method public abstract read(Ljava/io/RandomAccessFile;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/farng/mp3/TagException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract write(Ljava/io/RandomAccessFile;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/farng/mp3/TagException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method
