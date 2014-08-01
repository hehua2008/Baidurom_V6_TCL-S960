.class public Lorg/cybergarage/upnp/std/av/server/object/format/ID3FrameList;
.super Ljava/util/Vector;
.source "ID3FrameList.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/util/Vector;-><init>()V

    .line 24
    return-void
.end method


# virtual methods
.method public at(I)Lorg/cybergarage/upnp/std/av/server/object/format/ID3Frame;
    .locals 1
    .parameter "n"

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cybergarage/upnp/std/av/server/object/format/ID3Frame;

    return-object v0
.end method

.method public getFrame(I)Lorg/cybergarage/upnp/std/av/server/object/format/ID3Frame;
    .locals 1
    .parameter "n"

    .prologue
    .line 33
    invoke-virtual {p0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cybergarage/upnp/std/av/server/object/format/ID3Frame;

    return-object v0
.end method

.method public getFrame(Ljava/lang/String;)Lorg/cybergarage/upnp/std/av/server/object/format/ID3Frame;
    .locals 5
    .parameter "name"

    .prologue
    const/4 v3, 0x0

    .line 38
    if-nez p1, :cond_1

    move-object v0, v3

    .line 47
    :cond_0
    :goto_0
    return-object v0

    .line 41
    :cond_1
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v2

    .line 42
    .local v2, nLists:I
    const/4 v1, 0x0

    .local v1, n:I
    :goto_1
    if-ge v1, v2, :cond_2

    .line 43
    invoke-virtual {p0, v1}, Lorg/cybergarage/upnp/std/av/server/object/format/ID3FrameList;->getFrame(I)Lorg/cybergarage/upnp/std/av/server/object/format/ID3Frame;

    move-result-object v0

    .line 44
    .local v0, frame:Lorg/cybergarage/upnp/std/av/server/object/format/ID3Frame;
    invoke-virtual {v0}, Lorg/cybergarage/upnp/std/av/server/object/format/ID3Frame;->getID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_0

    .line 42
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v0           #frame:Lorg/cybergarage/upnp/std/av/server/object/format/ID3Frame;
    :cond_2
    move-object v0, v3

    .line 47
    goto :goto_0
.end method

.method public getFrameData(Ljava/lang/String;)[B
    .locals 2
    .parameter "name"

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lorg/cybergarage/upnp/std/av/server/object/format/ID3FrameList;->getFrame(Ljava/lang/String;)Lorg/cybergarage/upnp/std/av/server/object/format/ID3Frame;

    move-result-object v0

    .line 53
    .local v0, frame:Lorg/cybergarage/upnp/std/av/server/object/format/ID3Frame;
    if-nez v0, :cond_0

    .line 54
    const/4 v1, 0x0

    new-array v1, v1, [B

    .line 55
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lorg/cybergarage/upnp/std/av/server/object/format/ID3Frame;->getData()[B

    move-result-object v1

    goto :goto_0
.end method

.method public getFrameStringData(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "name"

    .prologue
    .line 60
    invoke-virtual {p0, p1}, Lorg/cybergarage/upnp/std/av/server/object/format/ID3FrameList;->getFrame(Ljava/lang/String;)Lorg/cybergarage/upnp/std/av/server/object/format/ID3Frame;

    move-result-object v0

    .line 61
    .local v0, frame:Lorg/cybergarage/upnp/std/av/server/object/format/ID3Frame;
    if-nez v0, :cond_0

    .line 62
    const-string v1, ""

    .line 63
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lorg/cybergarage/upnp/std/av/server/object/format/ID3Frame;->getStringData()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
