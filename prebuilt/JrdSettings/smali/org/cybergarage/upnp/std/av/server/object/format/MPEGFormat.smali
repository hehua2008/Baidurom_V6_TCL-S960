.class public Lorg/cybergarage/upnp/std/av/server/object/format/MPEGFormat;
.super Ljava/lang/Object;
.source "MPEGFormat.java"

# interfaces
.implements Lorg/cybergarage/upnp/std/av/server/object/Format;
.implements Lorg/cybergarage/upnp/std/av/server/object/FormatObject;


# instance fields
.field private mpegFile:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 0
    .parameter "file"

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lorg/cybergarage/upnp/std/av/server/object/format/MPEGFormat;->mpegFile:Ljava/io/File;

    .line 44
    return-void
.end method


# virtual methods
.method public createObject(Ljava/io/File;)Lorg/cybergarage/upnp/std/av/server/object/FormatObject;
    .locals 1
    .parameter "file"

    .prologue
    .line 62
    new-instance v0, Lorg/cybergarage/upnp/std/av/server/object/format/MPEGFormat;

    invoke-direct {v0, p1}, Lorg/cybergarage/upnp/std/av/server/object/format/MPEGFormat;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public equals(Ljava/io/File;)Z
    .locals 3
    .parameter "file"

    .prologue
    const/4 v1, 0x0

    .line 52
    invoke-static {p1}, Lorg/cybergarage/upnp/std/av/server/object/format/Header;->getSuffix(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 53
    .local v0, ext:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 57
    :cond_0
    :goto_0
    return v1

    .line 55
    :cond_1
    const-string v2, "mpeg"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "mpg"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 56
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getAttributeList()Lorg/cybergarage/xml/AttributeList;
    .locals 7

    .prologue
    .line 77
    new-instance v0, Lorg/cybergarage/xml/AttributeList;

    invoke-direct {v0}, Lorg/cybergarage/xml/AttributeList;-><init>()V

    .line 81
    .local v0, attrList:Lorg/cybergarage/xml/AttributeList;
    :try_start_0
    iget-object v5, p0, Lorg/cybergarage/upnp/std/av/server/object/format/MPEGFormat;->mpegFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v2

    .line 82
    .local v2, fsize:J
    new-instance v4, Lorg/cybergarage/xml/Attribute;

    const-string v5, "size"

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/cybergarage/xml/Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    .local v4, sizeStr:Lorg/cybergarage/xml/Attribute;
    invoke-virtual {v0, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    .end local v2           #fsize:J
    .end local v4           #sizeStr:Lorg/cybergarage/xml/Attribute;
    :goto_0
    return-object v0

    .line 85
    :catch_0
    move-exception v1

    .line 86
    .local v1, e:Ljava/lang/Exception;
    invoke-static {v1}, Lorg/cybergarage/util/Debug;->warning(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public getCreator()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    const-string v0, ""

    return-object v0
.end method

.method public getMediaClass()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    const-string v0, "object.item.videoItem.movie"

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    const-string v0, "video/mpeg"

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 4

    .prologue
    .line 94
    iget-object v3, p0, Lorg/cybergarage/upnp/std/av/server/object/format/MPEGFormat;->mpegFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 95
    .local v0, fname:Ljava/lang/String;
    const-string v3, "."

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 96
    .local v1, idx:I
    if-gez v1, :cond_0

    .line 97
    const-string v2, ""

    .line 99
    :goto_0
    return-object v2

    .line 98
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 99
    .local v2, title:Ljava/lang/String;
    goto :goto_0
.end method
