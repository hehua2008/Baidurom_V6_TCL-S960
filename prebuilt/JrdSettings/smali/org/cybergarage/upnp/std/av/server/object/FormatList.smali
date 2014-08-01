.class public Lorg/cybergarage/upnp/std/av/server/object/FormatList;
.super Ljava/util/Vector;
.source "FormatList.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/util/Vector;-><init>()V

    .line 25
    return-void
.end method


# virtual methods
.method public getFormat(I)Lorg/cybergarage/upnp/std/av/server/object/Format;
    .locals 1
    .parameter "n"

    .prologue
    .line 29
    invoke-virtual {p0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cybergarage/upnp/std/av/server/object/Format;

    return-object v0
.end method

.method public getFormat(Ljava/io/File;)Lorg/cybergarage/upnp/std/av/server/object/Format;
    .locals 5
    .parameter "file"

    .prologue
    const/4 v3, 0x0

    .line 48
    if-nez p1, :cond_1

    move-object v0, v3

    .line 58
    :cond_0
    :goto_0
    return-object v0

    .line 51
    :cond_1
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v2

    .line 52
    .local v2, nLists:I
    const/4 v1, 0x0

    .local v1, n:I
    :goto_1
    if-ge v1, v2, :cond_2

    .line 53
    invoke-virtual {p0, v1}, Lorg/cybergarage/upnp/std/av/server/object/FormatList;->getFormat(I)Lorg/cybergarage/upnp/std/av/server/object/Format;

    move-result-object v0

    .line 54
    .local v0, format:Lorg/cybergarage/upnp/std/av/server/object/Format;
    invoke-interface {v0, p1}, Lorg/cybergarage/upnp/std/av/server/object/Format;->equals(Ljava/io/File;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 52
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v0           #format:Lorg/cybergarage/upnp/std/av/server/object/Format;
    :cond_2
    move-object v0, v3

    .line 58
    goto :goto_0
.end method

.method public getFormat(Ljava/lang/String;)Lorg/cybergarage/upnp/std/av/server/object/Format;
    .locals 5
    .parameter "type"

    .prologue
    const/4 v3, 0x0

    .line 34
    if-nez p1, :cond_1

    move-object v0, v3

    .line 43
    :cond_0
    :goto_0
    return-object v0

    .line 37
    :cond_1
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v2

    .line 38
    .local v2, nLists:I
    const/4 v1, 0x0

    .local v1, n:I
    :goto_1
    if-ge v1, v2, :cond_2

    .line 39
    invoke-virtual {p0, v1}, Lorg/cybergarage/upnp/std/av/server/object/FormatList;->getFormat(I)Lorg/cybergarage/upnp/std/av/server/object/Format;

    move-result-object v0

    .line 40
    .local v0, format:Lorg/cybergarage/upnp/std/av/server/object/Format;
    invoke-interface {v0}, Lorg/cybergarage/upnp/std/av/server/object/Format;->getMimeType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_0

    .line 38
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v0           #format:Lorg/cybergarage/upnp/std/av/server/object/Format;
    :cond_2
    move-object v0, v3

    .line 43
    goto :goto_0
.end method
