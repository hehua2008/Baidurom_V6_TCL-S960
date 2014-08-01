.class public Lorg/cybergarage/upnp/std/av/server/object/item/file/FileItemNodeList;
.super Ljava/util/Vector;
.source "FileItemNodeList.java"


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
.method public getFileItemNode(I)Lorg/cybergarage/upnp/std/av/server/object/item/file/FileItemNode;
    .locals 1
    .parameter "n"

    .prologue
    .line 29
    invoke-virtual {p0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cybergarage/upnp/std/av/server/object/item/file/FileItemNode;

    return-object v0
.end method

.method public getFileItemNode(Ljava/io/File;)Lorg/cybergarage/upnp/std/av/server/object/item/file/FileItemNode;
    .locals 6
    .parameter "file"

    .prologue
    .line 34
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v1

    .line 35
    .local v1, itemNodeCnt:I
    const/4 v3, 0x0

    .local v3, n:I
    :goto_0
    if-ge v3, v1, :cond_2

    .line 36
    invoke-virtual {p0, v3}, Lorg/cybergarage/upnp/std/av/server/object/item/file/FileItemNodeList;->getFileItemNode(I)Lorg/cybergarage/upnp/std/av/server/object/item/file/FileItemNode;

    move-result-object v0

    .line 37
    .local v0, itemNode:Lorg/cybergarage/upnp/std/av/server/object/item/file/FileItemNode;
    invoke-virtual {v0}, Lorg/cybergarage/upnp/std/av/server/object/item/file/FileItemNode;->getFile()Ljava/io/File;

    move-result-object v2

    .line 38
    .local v2, itemNodeFile:Ljava/io/File;
    if-nez v2, :cond_1

    .line 35
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 40
    :cond_1
    invoke-virtual {v0, p1}, Lorg/cybergarage/upnp/std/av/server/object/item/file/FileItemNode;->equals(Ljava/io/File;)Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 43
    .end local v0           #itemNode:Lorg/cybergarage/upnp/std/av/server/object/item/file/FileItemNode;
    .end local v2           #itemNodeFile:Ljava/io/File;
    :goto_1
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method
