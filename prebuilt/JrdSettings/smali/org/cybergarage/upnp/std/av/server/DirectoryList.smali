.class public Lorg/cybergarage/upnp/std/av/server/DirectoryList;
.super Ljava/util/Vector;
.source "DirectoryList.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/util/Vector;-><init>()V

    .line 29
    return-void
.end method


# virtual methods
.method public getDirectory(I)Lorg/cybergarage/upnp/std/av/server/Directory;
    .locals 1
    .parameter "n"

    .prologue
    .line 37
    invoke-virtual {p0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cybergarage/upnp/std/av/server/Directory;

    return-object v0
.end method

.method public getDirectory(Ljava/lang/String;)Lorg/cybergarage/upnp/std/av/server/Directory;
    .locals 6
    .parameter "name"

    .prologue
    .line 42
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v1

    .line 43
    .local v1, dirCnt:I
    const/4 v3, 0x0

    .local v3, n:I
    :goto_0
    if-ge v3, v1, :cond_2

    .line 44
    invoke-virtual {p0, v3}, Lorg/cybergarage/upnp/std/av/server/DirectoryList;->getDirectory(I)Lorg/cybergarage/upnp/std/av/server/Directory;

    move-result-object v0

    .line 45
    .local v0, dir:Lorg/cybergarage/upnp/std/av/server/Directory;
    invoke-virtual {v0}, Lorg/cybergarage/upnp/std/av/server/Directory;->getFriendlyName()Ljava/lang/String;

    move-result-object v2

    .line 46
    .local v2, dirName:Ljava/lang/String;
    if-nez v2, :cond_1

    .line 43
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 48
    :cond_1
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 51
    .end local v0           #dir:Lorg/cybergarage/upnp/std/av/server/Directory;
    .end local v2           #dirName:Ljava/lang/String;
    :goto_1
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public update()V
    .locals 3

    .prologue
    .line 60
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v1

    .line 61
    .local v1, dirCnt:I
    const/4 v2, 0x0

    .local v2, n:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 62
    invoke-virtual {p0, v2}, Lorg/cybergarage/upnp/std/av/server/DirectoryList;->getDirectory(I)Lorg/cybergarage/upnp/std/av/server/Directory;

    move-result-object v0

    .line 63
    .local v0, dir:Lorg/cybergarage/upnp/std/av/server/Directory;
    invoke-virtual {v0}, Lorg/cybergarage/upnp/std/av/server/Directory;->updateContentList()V

    .line 61
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 65
    .end local v0           #dir:Lorg/cybergarage/upnp/std/av/server/Directory;
    :cond_0
    return-void
.end method

.method public updateResources([Ljava/net/InetAddress;)V
    .locals 3
    .parameter "addrs"

    .prologue
    .line 67
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v1

    .line 68
    .local v1, dirCnt:I
    const/4 v2, 0x0

    .local v2, n:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 69
    invoke-virtual {p0, v2}, Lorg/cybergarage/upnp/std/av/server/DirectoryList;->getDirectory(I)Lorg/cybergarage/upnp/std/av/server/Directory;

    move-result-object v0

    .line 70
    .local v0, dir:Lorg/cybergarage/upnp/std/av/server/Directory;
    invoke-virtual {v0, p1}, Lorg/cybergarage/upnp/std/av/server/Directory;->updateResources([Ljava/net/InetAddress;)V

    .line 68
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 72
    .end local v0           #dir:Lorg/cybergarage/upnp/std/av/server/Directory;
    :cond_0
    return-void
.end method
