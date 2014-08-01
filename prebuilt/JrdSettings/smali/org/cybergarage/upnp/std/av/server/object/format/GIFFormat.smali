.class public Lorg/cybergarage/upnp/std/av/server/object/format/GIFFormat;
.super Lorg/cybergarage/upnp/std/av/server/object/format/ImageIOFormat;
.source "GIFFormat.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lorg/cybergarage/upnp/std/av/server/object/format/ImageIOFormat;-><init>()V

    .line 34
    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 0
    .parameter "file"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lorg/cybergarage/upnp/std/av/server/object/format/ImageIOFormat;-><init>(Ljava/io/File;)V

    .line 39
    return-void
.end method


# virtual methods
.method public createObject(Ljava/io/File;)Lorg/cybergarage/upnp/std/av/server/object/FormatObject;
    .locals 1
    .parameter "file"

    .prologue
    .line 55
    new-instance v0, Lorg/cybergarage/upnp/std/av/server/object/format/GIFFormat;

    invoke-direct {v0, p1}, Lorg/cybergarage/upnp/std/av/server/object/format/GIFFormat;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public equals(Ljava/io/File;)Z
    .locals 3
    .parameter "file"

    .prologue
    const/4 v1, 0x1

    .line 47
    const/4 v2, 0x3

    invoke-static {p1, v2}, Lorg/cybergarage/upnp/std/av/server/object/format/Header;->getIDString(Ljava/io/File;I)Ljava/lang/String;

    move-result-object v0

    .line 48
    .local v0, headerID:Ljava/lang/String;
    const-string v2, "GIF"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-ne v2, v1, :cond_0

    .line 50
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    const-string v0, "image/gif"

    return-object v0
.end method
