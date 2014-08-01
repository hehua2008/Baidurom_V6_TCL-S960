.class public Lorg/cybergarage/upnp/std/av/server/object/format/JPEGFormat;
.super Lorg/cybergarage/upnp/std/av/server/object/format/ImageIOFormat;
.source "JPEGFormat.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lorg/cybergarage/upnp/std/av/server/object/format/ImageIOFormat;-><init>()V

    .line 30
    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 0
    .parameter "file"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lorg/cybergarage/upnp/std/av/server/object/format/ImageIOFormat;-><init>(Ljava/io/File;)V

    .line 35
    return-void
.end method


# virtual methods
.method public createObject(Ljava/io/File;)Lorg/cybergarage/upnp/std/av/server/object/FormatObject;
    .locals 1
    .parameter "file"

    .prologue
    .line 53
    new-instance v0, Lorg/cybergarage/upnp/std/av/server/object/format/JPEGFormat;

    invoke-direct {v0, p1}, Lorg/cybergarage/upnp/std/av/server/object/format/JPEGFormat;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public equals(Ljava/io/File;)Z
    .locals 6
    .parameter "file"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 43
    const/4 v5, 0x2

    invoke-static {p1, v5}, Lorg/cybergarage/upnp/std/av/server/object/format/Header;->getID(Ljava/io/File;I)[B

    move-result-object v2

    .line 44
    .local v2, headerID:[B
    aget-byte v5, v2, v4

    and-int/lit16 v0, v5, 0xff

    .line 45
    .local v0, header1:I
    aget-byte v5, v2, v3

    and-int/lit16 v1, v5, 0xff

    .line 46
    .local v1, header2:I
    const/16 v5, 0xff

    if-ne v0, v5, :cond_0

    const/16 v5, 0xd8

    if-ne v1, v5, :cond_0

    .line 48
    :goto_0
    return v3

    :cond_0
    move v3, v4

    goto :goto_0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    const-string v0, "image/jpeg"

    return-object v0
.end method
