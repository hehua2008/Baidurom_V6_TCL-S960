.class public abstract Lorg/cybergarage/upnp/std/av/server/Directory;
.super Lorg/cybergarage/upnp/std/av/server/object/container/ContainerNode;
.source "Directory.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/cybergarage/upnp/std/av/server/Directory;-><init>(Lorg/cybergarage/upnp/std/av/server/ContentDirectory;Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Lorg/cybergarage/upnp/std/av/server/ContentDirectory;Ljava/lang/String;)V
    .locals 0
    .parameter "cdir"
    .parameter "name"

    .prologue
    .line 33
    invoke-direct {p0}, Lorg/cybergarage/upnp/std/av/server/object/container/ContainerNode;-><init>()V

    .line 34
    invoke-virtual {p0, p1}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->setContentDirectory(Lorg/cybergarage/upnp/std/av/server/ContentDirectory;)V

    .line 35
    invoke-virtual {p0, p2}, Lorg/cybergarage/upnp/std/av/server/Directory;->setFriendlyName(Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method private updateContainer(Lorg/cybergarage/upnp/std/av/server/object/container/ContainerNode;[Ljava/net/InetAddress;)V
    .locals 5
    .parameter "container"
    .parameter "addrs"

    .prologue
    .line 102
    invoke-virtual {p1}, Lorg/cybergarage/upnp/std/av/server/object/container/ContainerNode;->getNContentNodes()I

    move-result v2

    .line 103
    .local v2, itemNodeCnt:I
    const/4 v3, 0x0

    .local v3, n:I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 104
    invoke-virtual {p0, v3}, Lorg/cybergarage/upnp/std/av/server/object/container/ContainerNode;->getContentNode(I)Lorg/cybergarage/upnp/std/av/server/object/ContentNode;

    move-result-object v0

    .line 105
    .local v0, cn:Lorg/cybergarage/upnp/std/av/server/object/ContentNode;
    invoke-virtual {v0}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->isItemNode()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v1, v0

    .line 106
    check-cast v1, Lorg/cybergarage/upnp/std/av/server/object/item/ItemNode;

    .line 107
    .local v1, itemNode:Lorg/cybergarage/upnp/std/av/server/object/item/ItemNode;
    invoke-direct {p0, v1, p2}, Lorg/cybergarage/upnp/std/av/server/Directory;->updateItemNodeResource(Lorg/cybergarage/upnp/std/av/server/object/item/ItemNode;[Ljava/net/InetAddress;)V

    .line 103
    .end local v0           #cn:Lorg/cybergarage/upnp/std/av/server/object/ContentNode;
    .end local v1           #itemNode:Lorg/cybergarage/upnp/std/av/server/object/item/ItemNode;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 109
    .restart local v0       #cn:Lorg/cybergarage/upnp/std/av/server/object/ContentNode;
    :cond_0
    check-cast v0, Lorg/cybergarage/upnp/std/av/server/object/container/ContainerNode;

    .end local v0           #cn:Lorg/cybergarage/upnp/std/av/server/object/ContentNode;
    invoke-direct {p0, v0, p2}, Lorg/cybergarage/upnp/std/av/server/Directory;->updateContainer(Lorg/cybergarage/upnp/std/av/server/object/container/ContainerNode;[Ljava/net/InetAddress;)V

    goto :goto_1

    .line 111
    :cond_1
    return-void
.end method

.method private updateItemNodeResource(Lorg/cybergarage/upnp/std/av/server/object/item/ItemNode;[Ljava/net/InetAddress;)V
    .locals 11
    .parameter "itemNode"
    .parameter "addrs"

    .prologue
    .line 66
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 100
    :cond_0
    :goto_0
    return-void

    .line 70
    :cond_1
    invoke-virtual {p1}, Lorg/cybergarage/upnp/std/av/server/object/item/ItemNode;->getResourceNodeList()Lorg/cybergarage/upnp/std/av/server/object/item/ResourceNodeList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Vector;->size()I

    move-result v6

    .line 71
    .local v6, resCount:I
    invoke-virtual {p1}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->getID()Ljava/lang/String;

    move-result-object v1

    .line 72
    .local v1, id:Ljava/lang/String;
    array-length v9, p2

    if-le v6, v9, :cond_2

    .line 73
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v9, p2

    sub-int v9, v6, v9

    if-ge v0, v9, :cond_2

    .line 74
    invoke-virtual {p1}, Lorg/cybergarage/upnp/std/av/server/object/item/ItemNode;->getResourceNodeList()Lorg/cybergarage/upnp/std/av/server/object/item/ResourceNodeList;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    .line 73
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 76
    .end local v0           #i:I
    :cond_2
    array-length v9, p2

    invoke-static {v6, v9}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 77
    .local v4, loops:I
    array-length v9, p2

    if-ge v6, v9, :cond_6

    .line 78
    invoke-virtual {p1}, Lorg/cybergarage/upnp/std/av/server/object/item/ItemNode;->getFirstResource()Lorg/cybergarage/upnp/std/av/server/object/item/ResourceNode;

    move-result-object v5

    .line 79
    .local v5, r0:Lorg/cybergarage/upnp/std/av/server/object/item/ResourceNode;
    if-nez v5, :cond_3

    .line 80
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v10, "updateItemNodeResource ========== (null == r0)"

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 83
    :cond_3
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_2
    array-length v9, p2

    sub-int/2addr v9, v6

    if-ge v0, v9, :cond_6

    .line 84
    new-instance v7, Lorg/cybergarage/upnp/std/av/server/object/item/ResourceNode;

    invoke-direct {v7}, Lorg/cybergarage/upnp/std/av/server/object/item/ResourceNode;-><init>()V

    .line 86
    .local v7, rn:Lorg/cybergarage/upnp/std/av/server/object/item/ResourceNode;
    const/4 v2, 0x0

    .local v2, j:I
    :goto_3
    invoke-virtual {v5}, Lorg/cybergarage/xml/Node;->getNAttributes()I

    move-result v9

    if-ge v2, v9, :cond_4

    .line 87
    invoke-virtual {v5, v2}, Lorg/cybergarage/xml/Node;->getAttribute(I)Lorg/cybergarage/xml/Attribute;

    move-result-object v9

    invoke-virtual {v7, v9}, Lorg/cybergarage/xml/Node;->addAttribute(Lorg/cybergarage/xml/Attribute;)V

    .line 86
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 88
    :cond_4
    const/4 v2, 0x0

    :goto_4
    invoke-virtual {v5}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->getNProperties()I

    move-result v9

    if-ge v2, v9, :cond_5

    .line 89
    invoke-virtual {v5, v2}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->getProperty(I)Lorg/cybergarage/upnp/std/av/server/object/ContentProperty;

    move-result-object v9

    invoke-virtual {v7, v9}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->addProperty(Lorg/cybergarage/upnp/std/av/server/object/ContentProperty;)V

    .line 88
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 90
    :cond_5
    invoke-virtual {p1, v7}, Lorg/cybergarage/upnp/std/av/server/object/item/ItemNode;->addResourceNode(Lorg/cybergarage/upnp/std/av/server/object/item/ResourceNode;)V

    .line 83
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 93
    .end local v0           #i:I
    .end local v2           #j:I
    .end local v5           #r0:Lorg/cybergarage/upnp/std/av/server/object/item/ResourceNode;
    .end local v7           #rn:Lorg/cybergarage/upnp/std/av/server/object/item/ResourceNode;
    :cond_6
    const/4 v3, 0x0

    .local v3, k:I
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_5
    if-ge v3, v4, :cond_0

    .line 94
    invoke-virtual {p1, v3}, Lorg/cybergarage/upnp/std/av/server/object/item/ItemNode;->getResourceNode(I)Lorg/cybergarage/upnp/std/av/server/object/item/ResourceNode;

    move-result-object v7

    .line 95
    .restart local v7       #rn:Lorg/cybergarage/upnp/std/av/server/object/item/ResourceNode;
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->getContentDirectory()Lorg/cybergarage/upnp/std/av/server/ContentDirectory;

    move-result-object v9

    aget-object v10, p2, v0

    invoke-virtual {v10}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10, v1}, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->getContentExportURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 96
    .local v8, url:Ljava/lang/String;
    invoke-virtual {v7, v8}, Lorg/cybergarage/xml/Node;->setValue(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->getContentDirectory()Lorg/cybergarage/upnp/std/av/server/ContentDirectory;

    move-result-object v9

    aget-object v10, p2, v0

    invoke-virtual {v10}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10, v1}, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->getContentImportURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 98
    const-string v9, "importUri"

    invoke-virtual {v7, v9, v8}, Lorg/cybergarage/xml/Node;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    add-int/lit8 v3, v3, 0x1

    goto :goto_5
.end method


# virtual methods
.method public getFriendlyName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setFriendlyName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->setTitle(Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method public abstract update()Z
.end method

.method public updateContentList()V
    .locals 3

    .prologue
    .line 118
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/Directory;->update()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 119
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/object/container/ContainerNode;->getNContentNodes()I

    move-result v0

    .line 120
    .local v0, nContents:I
    invoke-virtual {p0, v0}, Lorg/cybergarage/upnp/std/av/server/object/container/ContainerNode;->setChildCount(I)V

    .line 121
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/object/ContentNode;->getContentDirectory()Lorg/cybergarage/upnp/std/av/server/ContentDirectory;

    move-result-object v1

    invoke-virtual {v1}, Lorg/cybergarage/upnp/std/av/server/ContentDirectory;->updateSystemUpdateID()V

    .line 123
    .end local v0           #nContents:I
    :cond_0
    return-void
.end method

.method public updateResources([Ljava/net/InetAddress;)V
    .locals 0
    .parameter "addrs"

    .prologue
    .line 113
    invoke-direct {p0, p0, p1}, Lorg/cybergarage/upnp/std/av/server/Directory;->updateContainer(Lorg/cybergarage/upnp/std/av/server/object/container/ContainerNode;[Ljava/net/InetAddress;)V

    .line 114
    invoke-virtual {p0}, Lorg/cybergarage/upnp/std/av/server/object/container/ContainerNode;->incUpdateId()V

    .line 115
    return-void
.end method
